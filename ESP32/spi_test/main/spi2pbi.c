#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "freertos/FreeRTOS.h"
#include "freertos/task.h"
#include "esp_system.h"
#include "driver/spi_master.h"
#include "soc/gpio_struct.h"
#include "driver/gpio.h"


#define PIN_NUM_MISO 25
#define PIN_NUM_MOSI 23
#define PIN_NUM_CLK  19
#define PIN_NUM_CS   22


//This function is called (in irq context!) just before a transmission starts.
//void spi_pre_transfer_callback(spi_transaction_t *t) 
//{
    //int dc=(int)t->user;
    //gpio_set_level(PIN_NUM_DC, dc);
//}

static void send_pkt(spi_device_handle_t spi, unsigned char *tx_pkt, unsigned char *rx_pkt, unsigned int pkt_len) 
{
    esp_err_t ret;
    static spi_transaction_t trans;

    memset(&trans, 0, sizeof(spi_transaction_t));

    trans.tx_buffer = tx_pkt;
    trans.rx_buffer = rx_pkt;
    trans.length = pkt_len * 8;
    trans.flags = 0;

    ret=spi_device_queue_trans(spi, &trans, portMAX_DELAY);
    assert(ret==ESP_OK);
}


static unsigned int wait_pkt_finish(spi_device_handle_t spi) 
{
    spi_transaction_t *rtrans;
    esp_err_t ret;

    ret=spi_device_get_trans_result(spi, &rtrans, portMAX_DELAY);
    assert(ret==ESP_OK);

    return rtrans->length;
    
}


static void dump_pkt(unsigned char *pkt, unsigned int len, unsigned char is_master)
{
    unsigned int idx = 0;

    if (is_master) {
        printf ("MASTER PACKET\n");
        printf ("-------------\n");
        printf ("     SDSR = %2.2X\n", pkt[idx++]);
        printf ("   MTBYCR = %2.2X\n", pkt[idx++]);
        printf ("   MTBKCR = %2.2X\n", pkt[idx++]);
        printf ("MASTRBANK = %2.2X\n", pkt[idx++]);
        printf ("SLAVEBANK = %2.2X\n", pkt[idx++]);

    } else {
        printf ("SLAVE PACKET\n");
        printf ("------------\n");
        printf ("     SDCR = %2.2X\n", pkt[idx++]);
        printf ("   STBYCR = %2.2X\n", pkt[idx++]);
        printf ("   STBKCR = %2.2X\n", pkt[idx++]);
        printf ("RESERVED1 = %2.2X\n", pkt[idx++]);
        printf ("RESERVED2 = %2.2X\n", pkt[idx++]);
    }
    
    while (idx<len) {
        printf(" %4.4X ", idx - 5);
        for (unsigned int i=0; i<16 && idx<len; i++) {
            printf("%2.2X ", pkt[idx++]);
        }
        printf ("\n");
    }
}

#define PKT_LEN (5 + 256)

static void do_transfer(spi_device_handle_t spi)
{
    unsigned char tx_pkt[PKT_LEN], rx_pkt[PKT_LEN];
    unsigned int idx = 0;
    unsigned int len = 0;

    static unsigned char master_bank = 0x00;
    
    tx_pkt[idx++] = 0x03; // SDSR = master data available, slave buffer free
    tx_pkt[idx++] = 0x00; // MTBYCR = 256 bytes (high bit set in MTBKCR)
    tx_pkt[idx++] = 0x80; // MTBKCR
    tx_pkt[idx++] = master_bank; // SPI master RAM bank
    tx_pkt[idx++] = 0x00; // SPI slave RAM bank

    for (unsigned int i=0; i<256; i++) {
        tx_pkt[idx++] = master_bank;
    }

    sprintf((char*)(tx_pkt+5), "MASTER RAM BANK=%2.2X. ATARI 8-BIT: POWER WITHOUT THE PRICE.", master_bank);
    

    printf("sending pkt...\n");
    send_pkt(spi, tx_pkt, rx_pkt, PKT_LEN);
    dump_pkt(tx_pkt, PKT_LEN, 1);
             
    printf("wait pkt...\n");
    len = wait_pkt_finish(spi);

    printf ("receive spi %d bits\n", len);
    dump_pkt(rx_pkt, len / 8, 0);
    
    master_bank++;
    if (master_bank > 0x3F)
        master_bank = 0;
}



void app_main()
{
    esp_err_t ret;
    spi_device_handle_t spi;
    spi_bus_config_t buscfg={
        .miso_io_num=PIN_NUM_MISO,
        .mosi_io_num=PIN_NUM_MOSI,
        .sclk_io_num=PIN_NUM_CLK,
        .quadwp_io_num=-1,
        .quadhd_io_num=-1
    };
    spi_device_interface_config_t devcfg={
        .clock_speed_hz=4000000,               //Clock out at 8 MHz
        .mode=0,                                //SPI mode 0
        .spics_io_num=PIN_NUM_CS,               //CS pin
        .queue_size=1,                          //We want to be able to queue 7 transactions at a time
        //.pre_cb=spi_pre_transfer_callback,  //Specify pre-transfer callback to handle D/C line
    };

    printf("init SPI bus...\n");
    ret=spi_bus_initialize(HSPI_HOST, &buscfg, 1);
    assert(ret==ESP_OK);

    printf("attach SPI bus...\n");
    ret=spi_bus_add_device(HSPI_HOST, &devcfg, &spi);
    assert(ret==ESP_OK);

    while (1) {
        do_transfer(spi);
        vTaskDelay(1000 / portTICK_PERIOD_MS);
    }
}
