#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <time.h>
#include <sys/time.h>
#include "freertos/FreeRTOS.h"
#include "freertos/task.h"
#include "freertos/queue.h"
#include "freertos/event_groups.h"
#include "esp_system.h"
#include "driver/spi_master.h"
#include "soc/gpio_struct.h"
#include "driver/gpio.h"
#include "esp_event_loop.h"
#include "esp_log.h"
#include "esp_attr.h"
#include "esp_deep_sleep.h"
#include "nvs_flash.h"
#include "wifi.h"

#define PIN_NUM_MISO 19
#define PIN_NUM_MOSI 23
#define PIN_NUM_CLK  18
#define PIN_NUM_CS   5

#define GPIO_PIN_MBF	34
#define GPIO_PIN_SDAV	35

static xQueueHandle gpio_evt_queue = NULL;

//static const char *TAG = "main";



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
            char b = pkt[idx++];
            
            if (b > 31 && b < 127) {
                printf("%c", b);
            } else {
                printf(" ");
            }
        }

        printf ("\n");
    }
}



unsigned int get_slave_bytes_avail(uint8_t bytes, uint8_t banks)
{
    // MSB of STBKCR is STBYCR bit 8 (=256)
    // if MSB set, add 256 to byte count
    if (banks & 0x80) {
        bytes += 256;
    }
    
    // mask out the bank count
    // MSB and bit 6 are not used for bank count
    banks &= 0x3F;

    // banks contains (number of banks - 1), one bank is always assumed from the byte count register
    bytes += (banks * 256);

    return bytes;
}




void set_master_bytes_avail(unsigned int size, unsigned char* bytes, unsigned char* banks)
{
    unsigned int bmod = size % 256;

    if (size > 256) {
        *banks = (size / 256) | (bmod == 0) ? 0x80 : 0x00;
    } else {
        *banks = (size == 256) ? 0x80 : 0x00;
    }

    *bytes = bmod;
}

#define PKT_LEN (5 + 256)

void do_transfer(spi_device_handle_t spi, bool master_buf_free, bool slave_data_avail, unsigned char* tx_buf, uint16_t tx_len, unsigned char* rx_buf, uint16_t* rx_len)
{
    unsigned char tx_pkt[PKT_LEN];
    unsigned char rx_pkt[PKT_LEN];
    unsigned int idx = 0;
    unsigned int len = 0;
    unsigned char mbytes, mbanks;

    bzero(tx_pkt, PKT_LEN);
    bzero(rx_pkt, PKT_LEN);
    
    if (master_buf_free && tx_len) {
        unsigned char master_bank = 0x00;

        printf("master buf is free\n");

        // TODO: bounds checks on tx_len
        
        set_master_bytes_avail(tx_len, &mbytes, &mbanks);

        tx_pkt[idx++] = 0x03; // SDSR = master data available, slave buffer free
        tx_pkt[idx++] = mbytes; // MTBYCR
        tx_pkt[idx++] = mbanks; // MTBKCR
        tx_pkt[idx++] = master_bank; // SPI master RAM bank
        tx_pkt[idx++] = 0x00; // SPI slave RAM bank

        memcpy(&tx_pkt[idx], tx_buf, tx_len);
        
    } else {
        tx_pkt[idx++] = 0x01; // SDSR = master data NOT available, slave buffer free
        tx_pkt[idx++] = 0x00; // MTBYCR = 0 bytes
        tx_pkt[idx++] = 0x00; // MTBKCR = 0 banks
        tx_pkt[idx++] = 0x00; // SPI master RAM bank
        tx_pkt[idx++] = 0x00; // SPI slave RAM bank
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

        if (rx_pkt[0] & 0x01) {
            // Slave Data Available
            *rx_len = get_slave_bytes_avail(rx_pkt[1], rx_pkt[2]);
            
            if (*rx_len) {
                memcpy(rx_buf, &rx_pkt[5], *rx_len);
            }
        } else {
            *rx_len = 0;
        }
        
        
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
        .clock_speed_hz=4000000,
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
    bool gpio_evt = false;
    bool wifi_evt = false;
    uint32_t io_num;
    while(1) {
        wifi_resp_t wifi_resp;
        
        if(xQueueReceive(gpio_evt_queue, &io_num, 1)) {
            gpio_evt = true;
            printf("gpio event\n");
        }

        if(!wifi_evt && xQueueReceive(wifi_resp_queue, &wifi_resp, 1)) {
            wifi_evt = true;
            printf("wifi event\n");
        }

        if (gpio_evt || wifi_evt) {
            bool master_buf_free = gpio_get_level(GPIO_PIN_MBF);
            bool slave_data_avail = gpio_get_level(GPIO_PIN_SDAV);            

            printf("gpio_evt=%u wifi_evt=%u master_buf_free=%u mbf_wait_ack=%u slave_data_avail=%u sdav_wait_ack=%u\n", gpio_evt, wifi_evt, master_buf_free, mbf_wait_ack, slave_data_avail, sdav_wait_ack);
            
            if (gpio_evt && io_num == GPIO_PIN_MBF) {
                printf("MBF changed... master_buf_free=%s  mbf_wait_ack=%s\n", master_buf_free ? "TRUE" : "FALSE", mbf_wait_ack ? "TRUE" : "FALSE");

                if (mbf_wait_ack) {
                    printf ("got mbf ack\n");
                    mbf_wait_ack = false;
                }
                gpio_evt = false;
                
            } else if (gpio_evt && io_num == GPIO_PIN_SDAV) {
                printf("SDAV changed... slave_data_avail=%s  sdav_wait_ack=%s\n", slave_data_avail ? "TRUE" : "FALSE", sdav_wait_ack ? "TRUE" : "FALSE");

                if (sdav_wait_ack) {
                    printf ("got sdav ack\n");
                    sdav_wait_ack = false;
                }

                gpio_evt = false;
            }

            if ((wifi_evt && master_buf_free && !mbf_wait_ack) || (slave_data_avail && !sdav_wait_ack)) {
                
                unsigned char* tx_buf;
                unsigned char* rx_buf;
                uint16_t tx_len, rx_len;
                
                sdav_wait_ack = slave_data_avail;

                tx_buf = malloc(1024);
                rx_buf = malloc(1024);
                bzero(tx_buf, 1024);
                bzero(rx_buf, 1024);
                
                if (wifi_evt && master_buf_free) {
                    tx_buf[0] = 0x55;
                    tx_buf[1] = 0xAA;

                    memcpy((unsigned char*)(tx_buf + 2), &wifi_resp, sizeof(wifi_resp_t));

                    tx_len = sizeof(wifi_resp_t) + 2;
                    
                    wifi_evt = false;
                    mbf_wait_ack = true;

                    if (wifi_resp.resp == WIFI_RESP_SCAN_DONE) {
                        uint16_t buf_idx = tx_len;
                        for (unsigned int i=0; i<wifi_scan_num_records && i<6; i++) {

                            wifi_resp_ap_record_t ap;
                            strcpy((char*)ap.ssid, (char*)wifi_scan_records[i].ssid);
                            ap.rssi = wifi_scan_records[i].rssi;
                            ap.channel = wifi_scan_records[i].primary;
                            ap.authmode = wifi_scan_records[i].authmode;

                            memcpy((char*)&tx_buf[buf_idx], (char*)&ap, sizeof(wifi_resp_ap_record_t));
                            buf_idx += sizeof(wifi_resp_ap_record_t);
                        }
                        tx_len = buf_idx;
                    }

                    
                } else {
                    tx_len = 0;
                }
                
                printf("doing xfer... wifi_evt=%s   master_buf_free=%s  slave_data_avail=%s\n", wifi_evt ? "TRUE" : "FALSE", master_buf_free ? "TRUE" : "FALSE", slave_data_avail ? "TRUE" : "FALSE");
                do_transfer(spi, master_buf_free, slave_data_avail, tx_buf, tx_len, rx_buf, &rx_len);

                if (rx_len) {
                    if (rx_buf[0] == 0xAA && rx_buf[1] == 0x55) {
                        printf("wifi cmd, %u bytes\n", rx_len);

                        wifi_cmd_t* wifi_cmd = (wifi_cmd_t*)&rx_buf[2];

                        wifi_queue_cmd(wifi_cmd);
                        printf ("queued wifi command %u\n", wifi_cmd->cmd);
                    }
                }

                free(tx_buf);
                free(rx_buf);
                
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

    xTaskCreate(wifi_task, "wifi_task", 8192, NULL, 10, NULL);

    
    printf("main loop start...\n");
    while(1) {
        vTaskDelay(100 / portTICK_RATE_MS);
    }


    
}
