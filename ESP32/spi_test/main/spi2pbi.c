#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "freertos/FreeRTOS.h"
#include "freertos/task.h"
#include "freertos/queue.h"
#include "esp_system.h"
#include "driver/spi_master.h"
#include "soc/gpio_struct.h"
#include "driver/gpio.h"

#define PIN_NUM_MISO 19
#define PIN_NUM_MOSI 23
#define PIN_NUM_CLK  18
#define PIN_NUM_CS   5

#define GPIO_PIN_MBF	34
#define GPIO_PIN_SDAV	35

static xQueueHandle gpio_evt_queue = NULL;



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
        
        printf ("  ");
        idx -= 16;
        
        for (unsigned int i=0; i<16 && idx<len; i++) {
            char b = pkt[idx++] + 32;
            
            if (b > 31 && b < 127) {
                printf("%c", b);
            } else {
                printf(" ");
            }
        }

        printf ("\n");
    }
}

#define PKT_LEN (5 + 256)

static void do_transfer(spi_device_handle_t spi, bool master_buf_free, bool slave_data_avail)
{
    unsigned char tx_pkt[PKT_LEN], rx_pkt[PKT_LEN];
    unsigned int idx = 0;
    unsigned int len = 0;

    static unsigned char master_bank = 0x00;
    static unsigned int iters = 0; 
    static unsigned char dval = 0x00;

    if (master_buf_free) {

        printf("master buf is free, making pkt with iters=%d\n", iters);

        tx_pkt[idx++] = 0x03; // SDSR = master data available, slave buffer free
        tx_pkt[idx++] = 0x00; // MTBYCR = 256 bytes (high bit set in MTBKCR)
        tx_pkt[idx++] = 0x80; // MTBKCR
        tx_pkt[idx++] = master_bank; // SPI master RAM bank
        tx_pkt[idx++] = 0x00; // SPI slave RAM bank

        for (unsigned int i=0; i<256; i++) {
            tx_pkt[idx++] = dval;
        }

        unsigned int ofs = (master_bank == 0) ? 64 : 0;
        sprintf((char*)(tx_pkt+5+ofs), "ITERATION=%4.4d         BANK=%4.4d ", iters, master_bank);

        // ATASCII conversion
        idx = 5;
        for (unsigned int i=0; i<256; i++) {
            tx_pkt[idx] = tx_pkt[idx] - 32;
            idx++;
        }
        
        dval++;
        iters++;
        /*
          master_bank++;
          if (master_bank > 3)
          master_bank = 0;
        */
    } else {
        tx_pkt[idx++] = 0x01; // SDSR = master data NOT available, slave buffer free
        tx_pkt[idx++] = 0x00; // MTBYCR = 256 bytes (high bit set in MTBKCR)
        tx_pkt[idx++] = 0x00; // MTBKCR
        tx_pkt[idx++] = 0x00; // SPI master RAM bank
        tx_pkt[idx++] = 0x00; // SPI slave RAM bank

        for (unsigned int i=0; i<256; i++) {
            tx_pkt[idx++] = 0xFF;
        }
    }
    
    send_pkt(spi, tx_pkt, rx_pkt, PKT_LEN);
    printf("wait pkt...\n");
    len = wait_pkt_finish(spi);

    if (master_buf_free) {
        printf ("sent spi %d bits\n", len);
        dump_pkt(tx_pkt, PKT_LEN, 1);
    } else {
        printf ("master buf was not free, sent dummy packet %d bits\n", len);
    }
    
    if (slave_data_avail) {
        printf ("Slave Data Available was set, receive spi %d bits\n", len);
        dump_pkt(rx_pkt, len / 8, 0);
    } else {
        printf ("no Slave Data Available\n");
    }
        
}


static void IRAM_ATTR gpio_isr_handler(void* arg)
{
    uint32_t gpio_num = (uint32_t) arg;
    xQueueSendFromISR(gpio_evt_queue, &gpio_num, NULL);
}

static void gpio_task(void* arg)
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
        .clock_speed_hz=8000000,
        .mode=0,
        .spics_io_num=PIN_NUM_CS,
        .queue_size=1,
        //.pre_cb=spi_pre_transfer_callback,  //Specify pre-transfer callback to handle D/C line
    };

    printf("init SPI bus...\n");
    ret=spi_bus_initialize(HSPI_HOST, &buscfg, 1);
    assert(ret==ESP_OK);

    printf("attach SPI bus...\n");
    ret=spi_bus_add_device(HSPI_HOST, &devcfg, &spi);
    assert(ret==ESP_OK);

    printf("GPIO task start...\n");


    bool mbf_wait_ack = false;
    bool sdav_wait_ack = false;
    uint32_t io_num;
    for(;;) {
        if(xQueueReceive(gpio_evt_queue, &io_num, portMAX_DELAY)) {
            //printf("GPIO[%d] intr, val: %d\n", io_num, gpio_get_level(io_num));
            bool master_buf_free = gpio_get_level(GPIO_PIN_MBF);
            bool slave_data_avail = gpio_get_level(GPIO_PIN_SDAV);            
            
            if (io_num == GPIO_PIN_MBF) {
                printf("MBF changed... master_buf_free=%s  mbf_wait_ack=%s\n", master_buf_free ? "TRUE" : "FALSE", mbf_wait_ack ? "TRUE" : "FALSE");

                if (mbf_wait_ack && !master_buf_free) {
                    printf ("got mbf ack\n");
                    mbf_wait_ack = false;
                }
                
            } else if (io_num == GPIO_PIN_SDAV) {
                printf("SDAV changed... slave_data_avail=%s  sdav_wait_ack=%s\n", slave_data_avail ? "TRUE" : "FALSE", sdav_wait_ack ? "TRUE" : "FALSE");

                if (sdav_wait_ack && !slave_data_avail) {
                    printf ("got sdav ack\n");
                    sdav_wait_ack = false;
                }
            }

            if ((master_buf_free && !mbf_wait_ack) || (slave_data_avail && !sdav_wait_ack)) {
                printf("doing xfer... master_buf_free=%s  slave_data_avail=%s\n", master_buf_free ? "TRUE" : "FALSE", slave_data_avail ? "TRUE" : "FALSE");

                mbf_wait_ack = master_buf_free;
                sdav_wait_ack = slave_data_avail;
                
                do_transfer(spi, master_buf_free, slave_data_avail);
                
            }
            
        }
    }

    
}




void app_main()
{
    gpio_config_t io_conf;

    io_conf.intr_type = GPIO_INTR_ANYEDGE;
    io_conf.pin_bit_mask = (((uint64_t)1<<GPIO_PIN_MBF) | ((uint64_t)1<<GPIO_PIN_SDAV));
    io_conf.mode = GPIO_MODE_INPUT;
    io_conf.pull_up_en = 1;
    gpio_config(&io_conf);

    gpio_evt_queue = xQueueCreate(10, sizeof(uint32_t));
    xTaskCreate(gpio_task, "gpio_task", 4096, NULL, 10, NULL);
    
    gpio_install_isr_service(0x00);
    gpio_isr_handler_add(GPIO_PIN_MBF, gpio_isr_handler, (void*) GPIO_PIN_MBF);
    gpio_isr_handler_add(GPIO_PIN_SDAV, gpio_isr_handler, (void*) GPIO_PIN_SDAV);

    printf("main loop start...\n");
    while(1) {
        vTaskDelay(100 / portTICK_RATE_MS);
    }

}
