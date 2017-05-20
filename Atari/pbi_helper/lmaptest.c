#include <atari.h>
#include <stdio.h>
#include <stdlib.h>
#include <peekpoke.h>
#include <conio.h>
#include <string.h>
#include <atari_atascii_charmap.h>

#define SDCR 0xD100
#define STBYCR 0xD101
#define STBKCR 0xD102
#define SDSR 0xD110
#define MTBYCR 0xD111
#define MTBKCR 0xD112
#define MRBS 0xD120
#define SRBS 0xD121
#define FBS 0xD122

#define LMAP 0xD123
#define LBTM_W 0xD124
#define LTOP_W 0xD126

#define HWSEL 0xD1FF

#define MASTER_RAM 0xD600
#define SLAVE_RAM 0xD700


void set_lmap(unsigned char start_line, unsigned char end_line, unsigned char ena)
{
    POKEW(LBTM_W, PEEKW(0x58) + ((40 * start_line)));
    POKEW(LTOP_W, PEEKW(0x58) + ((40 * end_line) - 1));

    POKE(LMAP, 0x03 | (ena ? 0x80 : 0x00));

    gotoxy(2, 16);
    cprintf("ena=%d start_line=%d end_line=%d      ", ena, start_line, end_line);
}

int main (void)
{
    unsigned char k=0;
    unsigned int i;
    char s[10];
    unsigned char start_line = 0;
    unsigned char end_line = 12;
    unsigned char ena = 1;

    bordercolor(0xE5);
    bgcolor(0xE5);
    
    revers(1);
    gotoxy(0, 14);
    cprintf("  ANTIC screen map to FPGA SPI-DMA RAM  ");
    gotoxy(0, 18);
    cprintf("   \034\035 start \036\037 end <> disable/enable    ");
    cputcxy(0, 15, ' ');
    cputcxy(0, 16, ' ');
    cputcxy(0, 17, ' ');
    cputcxy(39, 15, ' ');
    cputcxy(39, 16, ' ');
    cputcxy(39, 17, ' ');

    gotoxy(0, 22);
    cprintf("    PBI R:Fi Linear Mapped RAM Test     ");
    gotoxy(0, 23);
    cprintf("        2017MAY20 TangentAudio          ");
    
    revers(0);
    
    gotoxy(2, 20);
    cprintf("Incrementing in 6502 loop:");

    cursor(0);

    POKE(HWSEL, 0x80);
    set_lmap(start_line, end_line, ena);

    i=0;
    do {
        if (kbhit()) {
            k = cgetc();
            
            if (k == '*' && end_line < 24) {
                end_line++;
                set_lmap(start_line, end_line, ena);
            } else if (k == '+' && end_line > 0 && end_line > start_line+1) {
                end_line--;
                set_lmap(start_line, end_line, ena);
            } else if (k == '-' && start_line > 0 && start_line < end_line) {
                start_line--;
                set_lmap(start_line, end_line, ena);
            } else if (k == '=' && start_line < 24 && start_line < end_line-1) {
                start_line++;
                set_lmap(start_line, end_line, ena);
            } else if (k == '<') {
                ena = 0;
                set_lmap(start_line, end_line, ena);
            } else if (k == '>') {
                ena = 1;
                set_lmap(start_line, end_line, ena);
            }
            
            

        }

        
        itoa(i++, s, 10);
        cputsxy(29, 20, s);

        
    } while (k != 27); // ESC to exit

    POKE(LMAP, 0);      
    POKE(HWSEL, 0x00);

    return EXIT_SUCCESS;
}


