#include <atari.h>
#include <stdio.h>
#include <stdlib.h>
#include <peekpoke.h>
#include <conio.h>
#include <string.h>
//#include <atari_screen_charmap.h>
#include <atari_atascii_charmap.h>

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
    bordercolor(0xA6);
    bgcolor(0xA6);
    
    gotoxy(0,0);
    revers(1);
    cprintf (" PBI2SPI Tester       2017 TangentAudio ");

    gotoxy(0,22);
    cprintf ("                                        ");
    cprintf ("                              ESC Exits ");

//    gotoxy(0,22);
//    cprintf("%4.4X", PEEKW(0x58));
    revers(0);

/*    
    gotoxy(0,1);
    cprintf("SDCR   $");
    gotoxy(0,2);
    cprintf("STBYCR $");
    gotoxy(0,3);
    cprintf("STBKCR $");

    gotoxy(12,1);
    cprintf("SDSR   $");
    gotoxy(12,2);
    cprintf("MTBYCR $");
    gotoxy(12,3);
    cprintf("MTBKCR $");
    
    gotoxy(24,1);
    cprintf("MRBS   $");
    gotoxy(24,2);
    cprintf("SRBS   $");
    gotoxy(24,3);
    cprintf("FBS    $");
*/


    
    gotoxy(0,4);
    cprintf("\016\016\016\016\016\016\016\016\016\016\016\016\016\016\016\016\016\016\016\016\016\016\016\016\016\016\016\016\016\016\016\016\016\016\016\016\016\016\016\016");
    gotoxy(33,4);
    revers(1);
    cprintf(" MASTER");
    gotoxy(33,5);
    cprintf(" RAM   ");
    revers(0);
    
    gotoxy(0,13);
    cprintf("\016\016\016\016\016\016\016\016\016\016\016\016\016\016\016\016\016\016\016\016\016\016\016\016\016\016\016\016\016\016\016\016\016\016\016\016\016\016\016\016");
    gotoxy(33,13);
    revers(1);
    cprintf("  SLAVE");
    gotoxy(33,14);
    cprintf("  RAM  ");
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

    unsigned char bank = 0;

    //unsigned int size = get_master_bytes_avail();
    //char s[10];

    //itoa(size, s, 10);
    //cputsxy(2, 4, s);
    
    POKE(MRBS, bank);

    for (row=0; row<8; row++) {
        memcpy((char*)addr, (char*)idx, 32);
        addr+=40;
        idx+=32;
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


void fill_slave_ram()
{
    unsigned int i;
    static unsigned char v='A';
    unsigned char bank = 0;

    POKE(SRBS, bank);

    //for (i=0; i<256;i++) {
    //    POKE(SLAVE_RAM + i, v);
    //}
    //v++;


    memcpy((char*)SLAVE_RAM, (char*)MASTER_RAM, 256);
    set_slave_bytes_avail(256);
    
}



void update_registers()
{
    gotoxy(8,1);
    cprintf("%02.2X", PEEK(SDCR));
    gotoxy(8,2);
    cprintf("%02.2X", PEEK(STBYCR));
    gotoxy(8,3);
    cprintf("%02.2X", PEEK(STBKCR));

    gotoxy(20,1);
    cprintf("%02.2X", PEEK(SDSR));
    gotoxy(20,2);
    cprintf("%02.2X", PEEK(MTBYCR));
    gotoxy(20,3);
    cprintf("%02.2X", PEEK(MTBKCR));
    
    gotoxy(32,1);
    cprintf("%02.2X", PEEK(MRBS));
    gotoxy(32,2);
    cprintf("%02.2X", PEEK(SRBS));
    gotoxy(32,3);
    cprintf("%02.2X", PEEK(FBS));

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
    
    init_display();
    
    POKE(HWSEL, 0x80);

    POKE(SDCR, SDCR_BIT_MBFREE);
    
    do {
        status = PEEK(SDSR);
        transaction_count = PEEKW(TCR_W);
        
        if (!(status & SDSR_BIT_BUSY)) {

            if (transaction_count != last_transaction_count) {
                last_transaction_count = transaction_count;
                revers(1);
                gotoxy(0,22);
                cprintf("%5.5d", transaction_count);
                revers(0);
                
                new_sdcr = 0x00;
                update_sdcr = 0;
                
                if (status & SDSR_BIT_MDAV) {
                    // master data available
                    
                    // immediately clear master buffer free flag (signaling to ESP32 that master buffer is in use)
                    POKE(SDCR, PEEK(SDCR) & ~SDCR_BIT_MBFREE);
                    
                    if (1) {
                        // do something with the master data
                        dump_master_ram();
                        
                        // note that the master buffer is free (will be set later)
                        new_sdcr |= SDCR_BIT_MBFREE;
                        update_sdcr = 1;
                    }
                    
                }
                
                if (status & SDSR_BIT_SBFREE) {
                    // slave buffer free
                    
                    // immediately clear slave data available flag (signaling to ESP32 that slave buffer is busy)
                    POKE(SDCR, PEEK(SDCR) & ~SDCR_BIT_SDAV);
                    
                    if (1) {
                        // something to send
                        
                        fill_slave_ram();
                        dump_slave_ram();
                        
                        // note that there is slave data available (will be set later)
                        new_sdcr |= SDCR_BIT_SDAV;
                        update_sdcr = 1;
                    }
                }
                // set both SDCR flags at once after master and slave buffer processing is done
                if(update_sdcr)
                    POKE(SDCR, new_sdcr);
                
            }
        }
        
        //dump_master_ram(0);
        //fill_slave_ram(0);
        //dump_slave_ram(0);
        //update_registers();

        if (kbhit()) {
            k = cgetc();
        }

        
    } while (k != 27); // ESC to exit

    POKE(HWSEL, 0x00);

    
    return EXIT_SUCCESS;
}


