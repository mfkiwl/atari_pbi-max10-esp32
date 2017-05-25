EESchema Schematic File Version 2
LIBS:power
LIBS:device
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:microcontrollers
LIBS:dsp
LIBS:microchip
LIBS:analog_switches
LIBS:motorola
LIBS:texas
LIBS:intel
LIBS:audio
LIBS:interface
LIBS:digital-audio
LIBS:philips
LIBS:display
LIBS:cypress
LIBS:siliconi
LIBS:opto
LIBS:atmel
LIBS:contrib
LIBS:valves
LIBS:800xl
LIBS:800xl-cache
EELAYER 25 0
EELAYER END
$Descr B 17000 11000
encoding utf-8
Sheet 1 1
Title "Atari 800XL RAM, MMU & Decode"
Date "2017-05-17"
Rev "1"
Comp "TangentAudio"
Comment1 "http://www.tangentaudio.com/"
Comment2 ""
Comment3 ""
Comment4 "drawn by Steve Richardson"
$EndDescr
$Comp
L 74HC14 U19
U 6 1 591C4627
P 9700 8850
F 0 "U19" H 9850 8950 50  0000 C CNN
F 1 "74HC14" H 9900 8750 50  0000 C CNN
F 2 "" H 9700 8850 50  0001 C CNN
F 3 "" H 9700 8850 50  0001 C CNN
	6    9700 8850
	1    0    0    -1  
$EndComp
$Comp
L 74LS51 U30
U 1 1 591C46AA
P 13900 8500
F 0 "U30" H 14100 8700 50  0000 C CNN
F 1 "74LS51" H 14150 8300 50  0000 C CNN
F 2 "" H 13900 8500 50  0001 C CNN
F 3 "" H 13900 8500 50  0001 C CNN
	1    13900 8500
	1    0    0    -1  
$EndComp
$Comp
L 74LS51 U30
U 2 1 591C4719
P 14350 6550
F 0 "U30" H 14550 6750 50  0000 C CNN
F 1 "74LS51" H 14600 6350 50  0000 C CNN
F 2 "" H 14350 6550 50  0001 C CNN
F 3 "" H 14350 6550 50  0001 C CNN
	2    14350 6550
	1    0    0    -1  
$EndComp
$Comp
L 74LS375 U28
U 1 1 591C4750
P 11700 8400
F 0 "U28" H 11700 8500 50  0000 C CNN
F 1 "74LS375" H 11800 8050 50  0000 C CNN
F 2 "" H 11700 8400 50  0001 C CNN
F 3 "" H 11700 8400 50  0001 C CNN
	1    11700 8400
	1    0    0    -1  
$EndComp
$Comp
L 74LS08 U18
U 3 1 591C47F9
P 9600 8350
F 0 "U18" H 9600 8400 50  0000 C CNN
F 1 "74LS08" H 9600 8300 50  0000 C CNN
F 2 "" H 9600 8350 50  0001 C CNN
F 3 "" H 9600 8350 50  0001 C CNN
	3    9600 8350
	1    0    0    -1  
$EndComp
NoConn ~ 12400 8150
NoConn ~ 12400 8250
NoConn ~ 12400 8650
NoConn ~ 12400 8450
NoConn ~ 12400 7950
NoConn ~ 11000 8750
NoConn ~ 11000 7950
NoConn ~ 12400 8050
NoConn ~ 11000 8150
Wire Wire Line
	10200 8350 11000 8350
Wire Wire Line
	12400 8350 13600 8350
Wire Wire Line
	10150 8850 11000 8850
Wire Wire Line
	9250 8850 9100 8850
Wire Wire Line
	9100 8850 9100 9150
Wire Wire Line
	9100 9150 13150 9150
Wire Wire Line
	13150 9150 13150 6700
Wire Wire Line
	13150 8250 13600 8250
Wire Wire Line
	11000 8550 10600 8550
Text GLabel 10600 8550 0    60   Input ~ 0
R/W
Wire Wire Line
	8600 8450 9000 8450
Wire Wire Line
	9000 8250 8600 8250
Text GLabel 8600 8250 0    60   Input ~ 0
EXTENB
Text GLabel 8600 8450 0    60   Input ~ 0
/EXTSEL
$Comp
L EP8212 U?
U 1 1 591C55E5
P 11300 5900
F 0 "U?" H 11350 6000 60  0000 C CNN
F 1 "EP8212" H 12000 4600 60  0000 C CNN
F 2 "" H 11300 5900 60  0001 C CNN
F 3 "" H 11300 5900 60  0001 C CNN
	1    11300 5900
	1    0    0    -1  
$EndComp
Wire Wire Line
	13600 8650 12750 8650
Wire Wire Line
	12750 8650 12750 8350
Connection ~ 12750 8350
Wire Wire Line
	12200 6900 13500 6900
Wire Wire Line
	13500 6900 13500 8550
Wire Wire Line
	13500 8550 13600 8550
Wire Wire Line
	12400 8550 12650 8550
Wire Wire Line
	12650 8450 12650 8950
Wire Wire Line
	12650 8450 13600 8450
Wire Wire Line
	13150 6700 12200 6700
Connection ~ 13150 8250
$Comp
L 74LS14 U19
U 2 1 591C58D6
P 13100 6100
F 0 "U19" H 13250 6200 50  0000 C CNN
F 1 "74LS14" H 13300 6000 50  0000 C CNN
F 2 "" H 13100 6100 50  0001 C CNN
F 3 "" H 13100 6100 50  0001 C CNN
	2    13100 6100
	1    0    0    -1  
$EndComp
Wire Wire Line
	14050 6300 12200 6300
Wire Wire Line
	13900 6500 14050 6500
Wire Wire Line
	13950 6500 13950 6600
Wire Wire Line
	13950 6600 14050 6600
Wire Wire Line
	12200 6100 12650 6100
$Comp
L 74LS158 U26
U 1 1 591C6580
P 11550 2700
F 0 "U26" H 11600 2850 50  0000 C CNN
F 1 "74LS158" H 11600 2550 50  0000 C CNN
F 2 "" H 11550 2700 50  0001 C CNN
F 3 "" H 11550 2700 50  0001 C CNN
	1    11550 2700
	1    0    0    -1  
$EndComp
$Comp
L 74LS158 U27
U 1 1 591C6679
P 11550 4450
F 0 "U27" H 11600 4600 50  0000 C CNN
F 1 "74LS158" H 11600 4300 50  0000 C CNN
F 2 "" H 11550 4450 50  0001 C CNN
F 3 "" H 11550 4450 50  0001 C CNN
	1    11550 4450
	1    0    0    -1  
$EndComp
Wire Wire Line
	12450 6500 12200 6500
Wire Wire Line
	9850 3150 10800 3150
$Comp
L 74LS14 U?
U 1 1 591C6AA5
P 10300 6500
F 0 "U?" H 10450 6600 50  0000 C CNN
F 1 "74LS14" H 10500 6400 50  0000 C CNN
F 2 "" H 10300 6500 50  0001 C CNN
F 3 "" H 10300 6500 50  0001 C CNN
	1    10300 6500
	1    0    0    -1  
$EndComp
Wire Wire Line
	10750 6500 11100 6500
Wire Wire Line
	9450 6500 9850 6500
Text GLabel 9450 6500 0    60   Input ~ 0
PHI2
Wire Wire Line
	13550 6100 13750 6100
Wire Wire Line
	13750 6100 13750 7700
Wire Wire Line
	13750 6800 14050 6800
Wire Wire Line
	13750 7700 13350 7700
Wire Wire Line
	13350 7700 13350 8750
Wire Wire Line
	13350 8750 13600 8750
Connection ~ 13750 6800
Connection ~ 13950 6500
$Comp
L VCC #PWR?
U 1 1 591C700D
P 13900 6500
F 0 "#PWR?" H 13900 6350 50  0001 C CNN
F 1 "VCC" H 13900 6650 50  0000 C CNN
F 2 "" H 13900 6500 50  0001 C CNN
F 3 "" H 13900 6500 50  0001 C CNN
	1    13900 6500
	1    0    0    -1  
$EndComp
Wire Wire Line
	14950 6550 15500 6550
Wire Wire Line
	14500 8500 15450 8500
Text GLabel 15500 6550 2    60   Input ~ 0
/RAS
Text GLabel 15450 8500 2    60   Input ~ 0
/CAS
$Comp
L R R?
U 1 1 591C7FD6
P 8900 7850
F 0 "R?" V 8980 7850 50  0000 C CNN
F 1 "3K" V 8900 7850 50  0000 C CNN
F 2 "" V 8830 7850 50  0001 C CNN
F 3 "" H 8900 7850 50  0001 C CNN
	1    8900 7850
	1    0    0    -1  
$EndComp
Wire Wire Line
	8900 8000 8900 8450
Connection ~ 8900 8450
Wire Wire Line
	8900 7700 8900 7600
$Comp
L VCC #PWR?
U 1 1 591C8123
P 8900 7600
F 0 "#PWR?" H 8900 7450 50  0001 C CNN
F 1 "VCC" H 8900 7750 50  0000 C CNN
F 2 "" H 8900 7600 50  0001 C CNN
F 3 "" H 8900 7600 50  0001 C CNN
	1    8900 7600
	1    0    0    -1  
$EndComp
Wire Wire Line
	10800 2150 10500 2150
Wire Wire Line
	10800 2250 10300 2250
Wire Wire Line
	10800 2400 10500 2400
Wire Wire Line
	10800 2500 10300 2500
Wire Wire Line
	10800 2650 10500 2650
Wire Wire Line
	10800 2750 10300 2750
Wire Wire Line
	10800 2900 10500 2900
Wire Wire Line
	10800 3000 10300 3000
Text GLabel 10500 2150 0    60   Input ~ 0
A0
Text GLabel 10500 2400 0    60   Input ~ 0
A1
Text GLabel 10500 2650 0    60   Input ~ 0
A2
Text GLabel 10500 2900 0    60   Input ~ 0
A3
Text GLabel 10300 2250 0    60   Input ~ 0
A8
Text GLabel 10300 2500 0    60   Input ~ 0
A9
Text GLabel 10300 2750 0    60   Input ~ 0
A10
Text GLabel 10300 3000 0    60   Input ~ 0
A11
Wire Wire Line
	10800 3900 10500 3900
Wire Wire Line
	10800 4000 10300 4000
Wire Wire Line
	10800 4150 10500 4150
Wire Wire Line
	10800 4250 10300 4250
Wire Wire Line
	10800 4400 10500 4400
Wire Wire Line
	10800 4500 10300 4500
Wire Wire Line
	10800 4650 10500 4650
Wire Wire Line
	10800 4750 10300 4750
Text GLabel 10500 3900 0    60   Input ~ 0
A4
Text GLabel 10500 4150 0    60   Input ~ 0
A5
Text GLabel 10500 4400 0    60   Input ~ 0
A6
Text GLabel 10500 4650 0    60   Input ~ 0
A7
Text GLabel 10300 4000 0    60   Input ~ 0
A12
Text GLabel 10300 4250 0    60   Input ~ 0
A13
Text GLabel 10300 4500 0    60   Input ~ 0
A14
Text GLabel 10300 4750 0    60   Input ~ 0
A15
Wire Wire Line
	9850 3150 9850 5450
$Comp
L GND #PWR?
U 1 1 591C8FB2
P 10750 3350
F 0 "#PWR?" H 10750 3100 50  0001 C CNN
F 1 "GND" H 10750 3200 50  0000 C CNN
F 2 "" H 10750 3350 50  0001 C CNN
F 3 "" H 10750 3350 50  0001 C CNN
	1    10750 3350
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 591C8FDC
P 10750 5100
F 0 "#PWR?" H 10750 4850 50  0001 C CNN
F 1 "GND" H 10750 4950 50  0000 C CNN
F 2 "" H 10750 5100 50  0001 C CNN
F 3 "" H 10750 5100 50  0001 C CNN
	1    10750 5100
	1    0    0    -1  
$EndComp
Wire Wire Line
	10800 5000 10750 5000
Wire Wire Line
	10750 5000 10750 5100
Wire Wire Line
	10800 3250 10750 3250
Wire Wire Line
	10750 3250 10750 3350
$Comp
L HM4864 U?
U 1 1 591C95A9
P 14400 1400
F 0 "U?" H 14450 1450 60  0000 C CNN
F 1 "HM4864" H 15100 -400 60  0000 C CNN
F 2 "" H 14400 1400 60  0001 C CNN
F 3 "" H 14400 1400 60  0001 C CNN
	1    14400 1400
	1    0    0    -1  
$EndComp
Wire Wire Line
	12300 2200 14200 2200
Wire Wire Line
	12300 2450 12950 2450
Wire Wire Line
	12950 2450 12950 2300
Wire Wire Line
	12950 2300 14200 2300
Wire Wire Line
	12300 2700 13050 2700
Wire Wire Line
	13050 2700 13050 2400
Wire Wire Line
	13050 2400 14200 2400
Wire Wire Line
	12300 2950 13150 2950
Wire Wire Line
	13150 2950 13150 2500
Wire Wire Line
	13150 2500 14200 2500
Wire Wire Line
	12300 3950 13250 3950
Wire Wire Line
	13250 3950 13250 2600
Wire Wire Line
	13250 2600 14200 2600
Wire Wire Line
	12300 4200 13350 4200
Wire Wire Line
	13350 4200 13350 2700
Wire Wire Line
	13350 2700 14200 2700
Wire Wire Line
	12300 4450 13450 4450
Wire Wire Line
	13450 4450 13450 2800
Wire Wire Line
	13450 2800 14200 2800
Wire Wire Line
	12300 4700 13550 4700
Wire Wire Line
	13550 4700 13550 2900
Wire Wire Line
	13550 2900 14200 2900
Wire Wire Line
	14200 1600 14050 1600
Wire Wire Line
	14050 1450 14050 1700
Wire Wire Line
	14050 1700 14200 1700
Connection ~ 14050 1600
$Comp
L R R?
U 1 1 591C9F4D
P 14050 1300
F 0 "R?" V 14130 1300 50  0000 C CNN
F 1 "100" V 14050 1300 50  0000 C CNN
F 2 "" V 13980 1300 50  0001 C CNN
F 3 "" H 14050 1300 50  0001 C CNN
	1    14050 1300
	1    0    0    -1  
$EndComp
$Comp
L R R?
U 1 1 591C9FD4
P 13700 1100
F 0 "R?" V 13780 1100 50  0000 C CNN
F 1 "10K" V 13700 1100 50  0000 C CNN
F 2 "" V 13630 1100 50  0001 C CNN
F 3 "" H 13700 1100 50  0001 C CNN
	1    13700 1100
	0    1    1    0   
$EndComp
Wire Wire Line
	14050 900  14050 1150
Wire Wire Line
	13550 1100 13400 1100
Wire Wire Line
	13400 1100 13400 1000
$Comp
L VCC #PWR?
U 1 1 591CA212
P 13400 1000
F 0 "#PWR?" H 13400 850 50  0001 C CNN
F 1 "VCC" H 13400 1150 50  0000 C CNN
F 2 "" H 13400 1000 50  0001 C CNN
F 3 "" H 13400 1000 50  0001 C CNN
	1    13400 1000
	1    0    0    -1  
$EndComp
Wire Wire Line
	13850 1100 14050 1100
Connection ~ 14050 1100
Text GLabel 14050 900  1    60   Input ~ 0
D0
Wire Wire Line
	14200 2050 13250 2050
Text GLabel 13550 1950 0    60   Input ~ 0
/RAS
Text GLabel 13250 2050 0    60   Input ~ 0
/CAS
Wire Wire Line
	13550 1950 14200 1950
Wire Wire Line
	12650 8950 12750 8950
Connection ~ 12650 8550
Text GLabel 12750 8950 2    60   Input ~ 0
LR/W
Text GLabel 13250 1850 0    60   Input ~ 0
L/RW
Wire Wire Line
	13250 1850 14200 1850
Wire Notes Line
	13950 650  13950 3650
Wire Notes Line
	13950 3650 15550 3650
Wire Notes Line
	15550 3650 15550 650 
Wire Notes Line
	15550 650  13950 650 
Text Notes 14800 800  0    60   ~ 0
(x8 for D0..D7)
Text Notes 14850 2300 0    60   ~ 0
RAM
$Comp
L VCC #PWR?
U 1 1 591CC649
P 11700 5700
F 0 "#PWR?" H 11700 5550 50  0001 C CNN
F 1 "VCC" H 11700 5850 50  0000 C CNN
F 2 "" H 11700 5700 50  0001 C CNN
F 3 "" H 11700 5700 50  0001 C CNN
	1    11700 5700
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR?
U 1 1 591CC6E9
P 14900 1200
F 0 "#PWR?" H 14900 1050 50  0001 C CNN
F 1 "VCC" H 14900 1350 50  0000 C CNN
F 2 "" H 14900 1200 50  0001 C CNN
F 3 "" H 14900 1200 50  0001 C CNN
	1    14900 1200
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 591CC7A5
P 14850 3350
F 0 "#PWR?" H 14850 3100 50  0001 C CNN
F 1 "GND" H 14850 3200 50  0000 C CNN
F 2 "" H 14850 3350 50  0001 C CNN
F 3 "" H 14850 3350 50  0001 C CNN
	1    14850 3350
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 591CC979
P 11700 7300
F 0 "#PWR?" H 11700 7050 50  0001 C CNN
F 1 "GND" H 11700 7150 50  0000 C CNN
F 2 "" H 11700 7300 50  0001 C CNN
F 3 "" H 11700 7300 50  0001 C CNN
	1    11700 7300
	1    0    0    -1  
$EndComp
Text Notes 950  5600 0    60   ~ 0
/**  MMU Logic Equations  **/\n/**  # is or **/\n/**  ! is not **/\n\nS4      = !A13 & !A14 & A15 & RD4 & REF;/* RD4 and addresses $8000-$9FFF */\nS5      = A13 & !A14 & A15 & RD5 & REF;	/* RD5 and addresses $A000-$BFFF */\n\nIO      = A12 & !A11 & !A13 & A14 & A15 & REF;   /* addresses $D000-$D7FF*/\n\nCI      = !A13 & !A14 & A15 & RD4 & REF		/* right cart. */\n        # A13 & !A14 & A15 & RD5 & REF		/* left cart. */\n        # A13 & !BE & !A14 & A15 & !RD5 & REF	/* BE and $A000-$BFFF */\n        # OS					/* OS addresses */\n        # A12 & !A11 & !A13 & A14 & A15 & REF	/* I/O addresses */\n        # !REF;					/* memory refresh */\n\nOS      = A13 & A14 & A15 & REN & REF		/* addresses $E000-$FFFF */\n        # !A12 & !A13 & A14 & A15 & REN & REF   /* addresses $C000-$CFFF */\n        # A12 & A11 & !A13 & A14 & A15 & MPD & REN & REF /* addresses $D800-$DFFF */\n        # A12 & !A11 & !A13 & A14 & !A15 & !MAP & REN & REF; /* addresses $5000-$5800 - mapped */\n\nBASIC   = A13 & !BE & !A14 & A15 & !RD5 & REF;   /* BE and $A000-$BFFF */\n\n\n/** from Bob Woolley, 1999FEB25 **/
Text GLabel 1000 6300 0    60   Input ~ 0
A11
Text GLabel 1250 6400 0    60   Input ~ 0
A12
Text GLabel 1000 6500 0    60   Input ~ 0
A13
Text GLabel 1250 6600 0    60   Input ~ 0
A14
Text GLabel 1000 6700 0    60   Input ~ 0
A15
Wire Wire Line
	1000 6300 1800 6300
Wire Wire Line
	1250 6400 1800 6400
Wire Wire Line
	1000 6500 1800 6500
Wire Wire Line
	1250 6600 1800 6600
Wire Wire Line
	1000 6700 1800 6700
$Comp
L 800XL_MMU U3
U 1 1 591CEA3C
P 2000 6200
F 0 "U3" H 2050 6250 60  0000 C CNN
F 1 "800XL_MMU" H 3350 4700 60  0000 C CNN
F 2 "" H 2000 6200 60  0001 C CNN
F 3 "" H 2000 6200 60  0001 C CNN
	1    2000 6200
	1    0    0    -1  
$EndComp
Text GLabel 1250 6850 0    60   Input ~ 0
PB0
Text GLabel 1000 6950 0    60   Input ~ 0
PB1
Text GLabel 1250 7050 0    60   Input ~ 0
PB7
Text GLabel 1000 7150 0    60   Input ~ 0
RD4
Text GLabel 1250 7250 0    60   Input ~ 0
RD5
Wire Wire Line
	1250 6850 1800 6850
Wire Wire Line
	1000 6950 1800 6950
Wire Wire Line
	1250 7050 1800 7050
Wire Wire Line
	1000 7150 1800 7150
Wire Wire Line
	1250 7250 1800 7250
Text GLabel 1000 7400 0    60   Input ~ 0
REF
Text GLabel 1350 7500 0    60   Input ~ 0
/MPD
Wire Wire Line
	1000 7400 1800 7400
Wire Wire Line
	1350 7500 1800 7500
Text Notes 950  2950 0    60   ~ 0
/**  MMU Inputs  **/\n\nPin  01      = A11          ; /* address bit 11            */\nPin  02      = A12          ; /* address bit 12            */\nPin  03      = A13          ; /* address bit 13            */\nPin  04      = A14          ; /* address bit 14            */\nPin  05      = A15          ; /* address bit 15            */\nPin  06      = MAP          ; /* PB7 diagnostic bit        */\nPin  07      = RD4          ; /* right cart. @ $8000-$9FFF */\nPin  08      = RD5          ; /* left cart. @ $A000-$BFFF  */\nPin  09      = REN          ; /* PB0 OS ram enable         */\nPin  11      = REF          ; /* DRAM refresh              */\nPin  14      = MPD          ; /* Math Pack Disable         */\nPin  18      = BE           ; /* Basic Enable              */\n\n\n/**  MMU Outputs  **/\n\nPin  12      = !S5       ; /* left cart. select         */\nPin  13      = !BASIC    ; /* Basic ROM select          */\nPin  15      = !OS       ; /* OS code select            */\nPin  16      = !CI       ; /* DRAM CAS inhibit          */\nPin  17      = !IO       ; /* I/O select @ $D000-$D7FF  */\nPin  19      = !S4       ; /* right cart. select        */
Text GLabel 4400 6700 2    60   Input ~ 0
EXTENB
Wire Wire Line
	3800 6700 4400 6700
Text Notes 3050 7000 2    60   ~ 0
PAL16L8\nCO61618
Text GLabel 4600 6300 2    60   Input ~ 0
S4
Text GLabel 4850 6400 2    60   Input ~ 0
S5
Text GLabel 4400 6500 2    60   Input ~ 0
/BASIC
Text GLabel 4850 6600 2    60   Input ~ 0
/OSROM
Wire Wire Line
	3800 6600 4850 6600
Wire Wire Line
	3800 6500 4400 6500
Wire Wire Line
	3800 6400 4850 6400
Wire Wire Line
	3800 6300 4600 6300
Wire Wire Line
	10800 4900 9850 4900
Wire Wire Line
	12450 6500 12450 5450
Wire Wire Line
	12450 5450 9850 5450
Connection ~ 9850 4900
$Comp
L 74LS138 U2
U 1 1 591D30B4
P 4750 8650
F 0 "U2" H 4850 9150 50  0000 C CNN
F 1 "74LS138" H 4900 8101 50  0000 C CNN
F 2 "" H 4750 8650 50  0001 C CNN
F 3 "" H 4750 8650 50  0001 C CNN
	1    4750 8650
	1    0    0    -1  
$EndComp
Wire Wire Line
	4150 8900 4000 8900
Wire Wire Line
	4000 8900 4000 9150
$Comp
L GND #PWR?
U 1 1 591D35B3
P 4000 9150
F 0 "#PWR?" H 4000 8900 50  0001 C CNN
F 1 "GND" H 4000 9000 50  0000 C CNN
F 2 "" H 4000 9150 50  0001 C CNN
F 3 "" H 4000 9150 50  0001 C CNN
	1    4000 9150
	1    0    0    -1  
$EndComp
$Comp
L R R?
U 1 1 591D3788
P 3850 8800
F 0 "R?" V 3930 8800 50  0000 C CNN
F 1 "3K" V 3850 8800 50  0000 C CNN
F 2 "" V 3780 8800 50  0001 C CNN
F 3 "" H 3850 8800 50  0001 C CNN
	1    3850 8800
	0    1    1    0   
$EndComp
Wire Wire Line
	4000 8800 4150 8800
Wire Wire Line
	3700 8800 3650 8800
Wire Wire Line
	3650 8800 3650 8700
$Comp
L VCC #PWR?
U 1 1 591D3924
P 3650 8700
F 0 "#PWR?" H 3650 8550 50  0001 C CNN
F 1 "VCC" H 3650 8850 50  0000 C CNN
F 2 "" H 3650 8700 50  0001 C CNN
F 3 "" H 3650 8700 50  0001 C CNN
	1    3650 8700
	1    0    0    -1  
$EndComp
Text GLabel 3750 8400 0    60   Input ~ 0
A9
Text GLabel 4000 8300 0    60   Input ~ 0
A8
Text GLabel 4000 8500 0    60   Input ~ 0
A10
Wire Wire Line
	3750 8400 4150 8400
Wire Wire Line
	4000 8300 4150 8300
Wire Wire Line
	4000 8500 4150 8500
NoConn ~ 5350 9000
NoConn ~ 5350 8900
NoConn ~ 5350 8700
Wire Wire Line
	5350 8500 5950 8500
Text GLabel 5950 8500 2    60   Input ~ 0
/CS0
Text Notes 6550 8550 2    60   ~ 0
POKEY
Text GLabel 5650 8600 2    60   Input ~ 0
/CS2
Text GLabel 5950 8300 2    60   Input ~ 0
/CS
Text Notes 6450 8350 2    60   ~ 0
GTIA
NoConn ~ 5350 8400
Text Notes 6100 8650 2    60   ~ 0
PIA
Wire Wire Line
	5350 8800 5950 8800
Text GLabel 5950 8800 2    60   Input ~ 0
/CCTL
Wire Wire Line
	5650 8600 5350 8600
Wire Wire Line
	5350 8300 5950 8300
Text Notes 6800 8850 2    60   ~ 0
CARTRIDGE
Text Notes 4400 10000 0    60   ~ 0
D000-D0FF GTIA\nD100-D1FF PBI (unused internally)\nD200-D2FF POKEY\nD300-D3FF PIA\nD400-D4FF ANTIC\nD500-D5FF Cartridge Control\nD600-D7FF PBI (unused internally)\n
Wire Wire Line
	4150 9000 4100 9000
Wire Wire Line
	4100 9000 4100 6800
Wire Wire Line
	4100 6800 3800 6800
$EndSCHEMATC
