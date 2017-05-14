#include <stdio.h>
#include <stdlib.h>
#include <peekpoke.h>
#include <conio.h>


#define SDCR 0xD100
#define STBYCR 0xD101
#define STBKCR 0xD102
#define SDSR 0xD110
#define MTBYCR 0xD111
#define MTBKCR 0xD112
#define MRBS 0xD120
#define SRBS 0xD121
#define FBS 0xD122

#define MASTER_RAM 0xD600
#define SLAVE_RAM 0xD700

void dump_master_ram(unsigned char bank)
{
    unsigned int idx = 0;
    unsigned char row, col;    
    
    POKE(MRBS, bank);

    for (row=0; row<8; row++) {
        gotoxy(0, row + 10);
        for (col=0; col<32; col++) {
            cputc(PEEK(MASTER_RAM + idx++));
        }
    }
}

void update_registers()
{
    gotoxy(14,2);
    printf("%02.2X", PEEK(SDCR));
    gotoxy(14,3);
    printf("%02.2X", PEEK(STBYCR));
    gotoxy(14,4);
    printf("%02.2X", PEEK(STBKCR));
    gotoxy(14,5);
    printf("%02.2X", PEEK(SDSR));
    gotoxy(14,6);
    printf("%02.2X", PEEK(MTBYCR));
    gotoxy(14,7);
    printf("%02.2X", PEEK(MTBKCR));
    
    gotoxy(34,2);
    printf("%02.2X", PEEK(MRBS));
    gotoxy(34,3);
    printf("%02.2X", PEEK(SRBS));
    gotoxy(34,4);
    printf("%02.2X", PEEK(FBS));

}

int main (void)
{
    unsigned char k=0;
    unsigned int tx_count = 0;

    bordercolor(0xA6);
    bgcolor(0xA6);
    
    gotoxy(0,0);
    revers(1);
    cprintf (" PBI2SPI Tester       2017 TangentAudio ");

    gotoxy(0,2);
    printf("$D100 SDCR   $");
    gotoxy(0,3);
    printf("$D101 STBYCR $");
    gotoxy(0,4);
    printf("$D102 STBKCR $");
    gotoxy(0,5);
    printf("$D110 SDSR   $");
    gotoxy(0,6);
    printf("$D111 MTBYCR $");
    gotoxy(0,7);
    printf("$D112 MTBKCR $");
    
    gotoxy(20,2);
    printf("$D120 MRBS   $");
    gotoxy(20,3);
    printf("$D121 SRBS   $");
    gotoxy(20,4);
    printf("$D122 FBS    $");
    
    
    gotoxy(0,22);
    cprintf ("                                        ");
    cprintf ("                              ESC Exits ");
    revers(0);

    POKE(0xD1FF, 0x80);
    
    do {
        while (PEEK(SDSR) & 0x80);
        while (!(PEEK(SDSR) & 0x80));
        tx_count++;

        gotoxy(0, 20);
        printf("%d", tx_count);

        dump_master_ram(0);
        update_registers();

        if (kbhit()) {
            k = cgetc();
        }

        
    } while (k != 27); // ESC to exit

    POKE(0xD1FF, 0x00);

    
    return EXIT_SUCCESS;
}


