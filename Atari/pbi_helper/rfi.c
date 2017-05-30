#include <atari.h>
#include <stdio.h>
#include <stdlib.h>
#include <peekpoke.h>
#include <conio.h>
#include <string.h>
//#include <atari_screen_charmap.h>
#include <atari_atascii_charmap.h>
#include "wifi_cmd.h"

#define SDCR 0xD100
#define STBYCR 0xD101
#define STBKCR 0xD102
#define SDSR 0xD110
#define MTBYCR 0xD111
#define MTBKCR 0xD112
#define TCR_W 0xD113
#define MRBS 0xD120
#define SRBS 0xD121
#define FBS 0xD122
#define LMAP 0xD123
#define LBTM_W 0xD124
#define LTOP_W 0xD126

#define HWSEL 0xD1FF

#define MASTER_RAM 0xD600
#define SLAVE_RAM 0xD700


#define SDSR_BIT_BUSY 0x80
#define SDSR_BIT_MDAV 0x02
#define SDSR_BIT_SBFREE 0x01

#define SDCR_BIT_SPI_RESET 0x80
#define SDCR_BIT_MBFREE 0x02
#define SDCR_BIT_SDAV 0x01

void init_display()
{
    bordercolor(0x06);
    bgcolor(0x06);

    clrscr();
    
    gotoxy(0,0);
    revers(1);
    cprintf (" PBI R:Fi Config      2017 TangentAudio ");

    gotoxy(0,22);
    cprintf ("                                        ");
    cprintf ("                              ESC Exits ");
    revers(0);

}


unsigned int get_master_bytes_avail()
{
    unsigned int bytes = PEEK(MTBYCR);
    unsigned char banks = PEEK(MTBKCR);

    // MSB of MTBKCR is MTBYCR bit 8 (=256)
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


void dump_master_ram()
{
    unsigned int row;
    unsigned int savmsc = PEEKW(0x58);
    unsigned int addr = savmsc + (5 * 40);
    unsigned int idx = MASTER_RAM;
    unsigned char i=0;
    unsigned char bank = 0;

    POKE(MRBS, bank);

    /*
    for (row=0; row<8; row++) {
        memcpy((char*)addr, (char*)idx, 32);
        addr+=40;
        idx+=32;
        }*/

    for (row=0; row<16; row++) {
        gotoxy(0, 5 + row);
        for (i=0; i<16; i++) {
            cprintf ("%02.2X", PEEK(MASTER_RAM + (row*16) + i));
        }
                     
    }
}

void dump_slave_ram()
{
    unsigned int row;
    unsigned int savmsc = PEEKW(0x58);
    unsigned int addr = savmsc + (14 * 40);
    unsigned int idx = SLAVE_RAM;
    unsigned char bank = 0;
    
    POKE(MRBS, bank);

    for (row=0; row<8; row++) {
        memcpy((char*)addr, (char*)idx, 32);
        addr+=40;
        idx+=32;
    }
}

void set_slave_bytes_avail(unsigned int size)
{
    unsigned int bmod = size % 256;

    if (size > 256) {
        POKE(STBKCR, (size / 256) | (bmod == 0) ? 0x80 : 0x00);
    } else {
        POKE(STBKCR, (size == 256) ? 0x80 : 0x00);
    }
    
    POKE(STBYCR, bmod);
}


void wifi_cmd_init()
{
    wifi_cmd_t* cmd = (wifi_cmd_t*)(SLAVE_RAM + 2);

    bzero((char*)cmd, sizeof(wifi_cmd_t));
    cmd->cmd = WIFI_CMD_INIT;

    //strcpy(cmd->p.config.ssid, "ssidname");
    //strcpy(cmd->p.config.password, "password");

    POKE(SLAVE_RAM, 0xAA);
    POKE(SLAVE_RAM + 1, 0x55);
    //memcpy((char*)(SLAVE_RAM + 2), (char*)cmd, sizeof(cmd));

    set_slave_bytes_avail(sizeof(wifi_cmd_t) + 2);
}

void wifi_simple_cmd(unsigned char c)
{
    wifi_cmd_t* cmd = (wifi_cmd_t*)(SLAVE_RAM + 2);

    bzero((char*)cmd, sizeof(wifi_cmd_t));
    cmd->cmd = c;

    POKE(SLAVE_RAM, 0xAA);
    POKE(SLAVE_RAM + 1, 0x55);

    set_slave_bytes_avail(sizeof(wifi_cmd_t) + 2);
}

char *authmode_to_str(uint8_t mode)
{
	switch(mode) {
	case WIFI_AUTH_OPEN:
		return "open";
	case WIFI_AUTH_WEP:
		return "wep";
	case WIFI_AUTH_WPA_PSK:
		return "wpa";
	case WIFI_AUTH_WPA2_PSK:
		return "wpa2";
	case WIFI_AUTH_WPA_WPA2_PSK:
		return "wpa_wpa2";
	default:
		return "unknown";
	}
}

void wifi_parse_resp()
{
    unsigned char bank = 0;
    POKE(MRBS, bank);

    if (PEEK(MASTER_RAM) == 0xD5 && PEEK(MASTER_RAM + 1) == 0x2A) {
        wifi_resp_t* resp = (wifi_resp_t*)(MASTER_RAM + 2);
        unsigned int len = get_master_bytes_avail();

        gotoxy(10,22);
        revers(1);
        cprintf("last resp %x", resp->resp);
        revers(0);
        
        switch(resp->resp) {
        case WIFI_RESP_INIT:
            init_display();
            break;
            
        case WIFI_RESP_START:
            break;

        case WIFI_RESP_GOT_IP:
            break;

        case WIFI_RESP_DISCONNECT:
            break;

        case WIFI_RESP_STOP:
            break;

        case WIFI_RESP_SCAN_DONE:
        {
            unsigned int ofs = 2 + sizeof(wifi_resp_t);
            unsigned char idx = 0;

            gotoxy(0, 3);
            revers(1);
            cprintf("Security Ch Str SSID Name               ");
            revers(0);
            for (idx = 0; idx < 6; idx++) {
                gotoxy(0, 4+idx);
                cprintf("                                        ");
            }
            idx = 0;
            while (ofs < len && idx < 16) {
                wifi_resp_ap_record_t* ap;
                
                ap = (wifi_resp_ap_record_t*)(MASTER_RAM + ofs);

                gotoxy(0, 4+idx);
                cprintf("%8s %-2u %3d %-24s", authmode_to_str(ap->authmode), ap->channel, ap->rssi, (char*)ap->ssid);
                
                ofs += sizeof(wifi_resp_ap_record_t);
                idx++;
            }
        }
        break;
        }

    }
}

int main (void)
{
    unsigned char k=0;
    unsigned int tx_count = 0;
    unsigned char status;
    unsigned int transaction_count = 0;
    unsigned int last_transaction_count = 0;

    unsigned char new_sdcr = 0x00;
    unsigned char update_sdcr = 0;
    unsigned char send_wifi_cmd = 0;
    
    init_display();
    
    POKE(HWSEL, 0x80);

    POKE(SDCR, SDCR_BIT_MBFREE);
    
    do {
        status = PEEK(SDSR);
        transaction_count = PEEKW(TCR_W);
        
        if (!(status & SDSR_BIT_BUSY)) {

            if (transaction_count != last_transaction_count || send_wifi_cmd) {
                
                new_sdcr = 0x00;
                update_sdcr = 0;
                
                if (status & SDSR_BIT_MDAV) {
                    // master data available
                    
                    // immediately clear master buffer free flag (signaling to ESP32 that master buffer is in use)
                    POKE(SDCR, PEEK(SDCR) & ~SDCR_BIT_MBFREE);

                    bordercolor(0x99);
                    
                    // do something with the master data
                    wifi_parse_resp();
                    
                    // note that the master buffer is free (will be set later)
                    new_sdcr |= SDCR_BIT_MBFREE;
                    update_sdcr = 1;
                } else if (! (new_sdcr & SDCR_BIT_MBFREE)) {
                    new_sdcr |= SDCR_BIT_MBFREE;
                    update_sdcr = 1;
                }
                
                if (status & SDSR_BIT_SBFREE) {
                    // immediately clear slave data available flag (signaling to ESP32 that slave buffer is busy)
                    POKE(SDCR, PEEK(SDCR) & ~SDCR_BIT_SDAV);

                    if (send_wifi_cmd) {
                        send_wifi_cmd = 0;                    
                        
                        // something to send
                        revers(1);
                        gotoxy(0,22);
                        cprintf("    ");
                        revers(0);

                        bordercolor(0x66);
                    
                        if (k == '1') {
                            wifi_cmd_init();
                            gotoxy(10,23);
                            revers(1);
                            cprintf("last cmd=init    ");
                            revers(0);
                        } else if (k == '0') {
                            wifi_simple_cmd(WIFI_CMD_STOP);
                            gotoxy(10,23);
                            revers(1);
                            cprintf("last cmd=stop    ");
                            revers(0);
                        } else if (k == '2') {
                            wifi_simple_cmd(WIFI_CMD_SCAN_START);
                            gotoxy(10,23);
                            revers(1);
                            cprintf("last cmd=scan    ");
                            revers(0);
                        } else if (k == '3') {
                            wifi_simple_cmd(WIFI_CMD_SCAN_STOP);
                            gotoxy(10,23);
                            revers(1);
                            cprintf("last cmd=scanstop");
                            revers(0);
                        }

                        
                        //dump_slave_ram();
                        
                        // note that there is slave data available (will be set later)
                        new_sdcr |= SDCR_BIT_SDAV;
                        update_sdcr = 1;
                    }
                }
                
                // set both SDCR flags at once after master and slave buffer processing is done
                if(update_sdcr) {
                    POKE(SDCR, new_sdcr);
                    last_transaction_count = transaction_count;
                    revers(1);
                    gotoxy(0,23);
                    cprintf("%5.5d", transaction_count);
                    revers(0);
                    bordercolor(0x06);
                }
            }
        }
        
        //dump_master_ram(0);
        //fill_slave_ram(0);
        //dump_slave_ram(0);
        //update_registers();

        if (kbhit()) {
            k = cgetc();

            if (k >= '0' || k <= '9') {
                send_wifi_cmd = 1;
            }
        }

        
    } while (k != 27); // ESC to exit

    POKE(HWSEL, 0x00);

    
    return EXIT_SUCCESS;
}


