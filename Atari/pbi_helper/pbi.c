#include <stdio.h>
#include <stdlib.h>
#include <peekpoke.h>
#include <conio.h>

void wr_d1ff(unsigned char v)
{
    POKE(0xD1FF, v);
    gotoxy(0,19);
    cprintf("HWSEL  ($D1FF) = $%02.2x\n\r", v);
}

void wr_d100(unsigned char v)
{
    POKE(0xD100, v);
    gotoxy(0,20);
    cprintf("HWPUT  ($D100) = $%02.2x\n\r", v);
}

int main (void)
{
    unsigned int i, p;
    unsigned char d;
    unsigned char d1ff_val=0;
    unsigned char d100_val=0;

    bordercolor(0x82);
    bgcolor(0x82);
    
    gotoxy(0,0);
    revers(1);
    cprintf (" PBI Helper           2017 TangentAudio ");

    gotoxy(0,22);
    cprintf (" 0-8: Activate PBI | +/- Write to $d100 ");
    cprintf ("                              ESC Exits ");
    revers(0);

    gotoxy(0, 2);
    cprintf("HATABS:\n\r");
    
    for (i=0; i<36; i += 3) {
        d = PEEK(0x31A + i);

        p = (unsigned int)(PEEK(0x31C + i)) << 8;
        p |= (unsigned int)(PEEK(0x31B + i));

        // show PBI entries in reverse video
        revers(p == 0xE48F);
        
        cprintf("%02d ", (i/3));
        if (d != 0) {
            
            cprintf("device %c: at $%04.4x", d, p);

            if (p == 0xE48F) {
                cprintf(" (PBI Device)\n\r");
            } else {
                cprintf("\n\r");
            }
        } else {
            cprintf("empty\n\r");
        }
    }

    cprintf("\n\r");
    cprintf("PDVMSK ($0247) = $%02.2x\n\r", PEEK(0x0247));
    cprintf("SHPDVS ($0248) = $%02.2x\n\r", PEEK(0x0248));
    cprintf("PDMSK  ($0249) = $%02.2x\n\r", PEEK(0x0249));

    do {
        d = cgetc();

        if (d == '0') {
            d1ff_val = 0;
            wr_d1ff(d1ff_val);
        } else if (d >= '1' && d<= '8') {
            d1ff_val = 1 << (d - '1');
            wr_d1ff(d1ff_val);
        } else if (d == '+') {
            d100_val++;
            wr_d100(d100_val);
        } else if (d == '-') {
            d100_val--;
            wr_d100(d100_val);
        }            
    } while (d != 27); // ESC to exit
    
    return EXIT_SUCCESS;
}


