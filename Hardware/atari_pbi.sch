EESchema Schematic File Version 2
LIBS:atari_pbi-rescue
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
LIBS:atari_xl_pbi
LIBS:atari_pbi-cache
EELAYER 25 0
EELAYER END
$Descr B 17000 11000
encoding utf-8
Sheet 1 1
Title "Atari PBI R:Fi PBI 5V-3.3V Level Conversion & Protection"
Date "2017-03-31"
Rev "A00"
Comp "Tangent Audio"
Comment1 "www.tangentaudio.com"
Comment2 "Designed by Steve Richardson"
Comment3 ""
Comment4 "NOTE: EARLY DRAFT, NOT FINAL!"
$EndDescr
$Comp
L 74HC245 U?
U 1 1 58DE5FA6
P 7350 4100
F 0 "U?" H 7450 4675 50  0000 L BNN
F 1 "74LVC245" H 7400 3525 50  0000 L TNN
F 2 "" H 7350 4100 50  0001 C CNN
F 3 "" H 7350 4100 50  0001 C CNN
	1    7350 4100
	1    0    0    -1  
$EndComp
$Comp
L 74HC245 U?
U 1 1 58DE60C1
P 7350 5500
F 0 "U?" H 7450 6075 50  0000 L BNN
F 1 "74LVC245" H 7400 4925 50  0000 L TNN
F 2 "" H 7350 5500 50  0001 C CNN
F 3 "" H 7350 5500 50  0001 C CNN
	1    7350 5500
	1    0    0    -1  
$EndComp
$Comp
L 74HC245 U?
U 1 1 58DE610E
P 7350 7100
F 0 "U?" H 7450 7675 50  0000 L BNN
F 1 "74LVC245" H 7400 6525 50  0000 L TNN
F 2 "" H 7350 7100 50  0001 C CNN
F 3 "" H 7350 7100 50  0001 C CNN
	1    7350 7100
	1    0    0    -1  
$EndComp
$Comp
L 74HC245 U?
U 1 1 58DE6179
P 7350 8950
F 0 "U?" H 7450 9525 50  0000 L BNN
F 1 "74LVC245" H 7400 8375 50  0000 L TNN
F 2 "" H 7350 8950 50  0001 C CNN
F 3 "" H 7350 8950 50  0001 C CNN
	1    7350 8950
	1    0    0    -1  
$EndComp
$Comp
L 74LVC125 U?
U 1 1 58DE620C
P 7950 950
F 0 "U?" H 7950 1050 50  0000 L BNN
F 1 "74LVC125" H 8050 800 50  0000 L TNN
F 2 "" H 7950 950 50  0001 C CNN
F 3 "" H 7950 950 50  0001 C CNN
	1    7950 950 
	-1   0    0    -1  
$EndComp
$Comp
L 74LVC125 U?
U 2 1 58DE62B8
P 7950 1550
F 0 "U?" H 7950 1650 50  0000 L BNN
F 1 "74LVC125" H 8050 1400 50  0000 L TNN
F 2 "" H 7950 1550 50  0001 C CNN
F 3 "" H 7950 1550 50  0001 C CNN
	2    7950 1550
	-1   0    0    -1  
$EndComp
$Comp
L 74LVC125 U?
U 3 1 58DE6343
P 7950 2150
F 0 "U?" H 7950 2250 50  0000 L BNN
F 1 "74LVC125" H 8050 2000 50  0000 L TNN
F 2 "" H 7950 2150 50  0001 C CNN
F 3 "" H 7950 2150 50  0001 C CNN
	3    7950 2150
	-1   0    0    -1  
$EndComp
$Comp
L 74LVC125 U?
U 4 1 58DE63AA
P 7950 2750
F 0 "U?" H 7950 2850 50  0000 L BNN
F 1 "74LVC125" H 8050 2600 50  0000 L TNN
F 2 "" H 7950 2750 50  0001 C CNN
F 3 "" H 7950 2750 50  0001 C CNN
	4    7950 2750
	-1   0    0    -1  
$EndComp
Text Label 4400 3250 0    60   ~ 0
PBI_A0
Text Label 4400 3350 0    60   ~ 0
PBI_A1
Text Label 4400 3450 0    60   ~ 0
PBI_A2
Text Label 4400 3550 0    60   ~ 0
PBI_A3
Text Label 4400 3650 0    60   ~ 0
PBI_A4
Text Label 4400 3750 0    60   ~ 0
PBI_A5
Text Label 4400 3850 0    60   ~ 0
PBI_A6
Text Label 4400 3950 0    60   ~ 0
PBI_A7
Text Label 4400 4050 0    60   ~ 0
PBI_A8
Text Label 4400 4150 0    60   ~ 0
PBI_A9
Text Label 4400 4250 0    60   ~ 0
PBI_A10
Text Label 4400 4350 0    60   ~ 0
PBI_A11
Text Label 4400 4450 0    60   ~ 0
PBI_A12
Text Label 4400 4550 0    60   ~ 0
PBI_A13
Text Label 4400 4650 0    60   ~ 0
PBI_A14
Text Label 4400 4750 0    60   ~ 0
PBI_A15
Entry Wire Line
	5000 5350 5100 5250
Entry Wire Line
	5000 5450 5100 5350
Entry Wire Line
	5000 5550 5100 5450
Entry Wire Line
	5000 5650 5100 5550
Entry Wire Line
	5000 5250 5100 5150
Entry Wire Line
	5000 5850 5100 5750
Entry Wire Line
	5000 5950 5100 5850
Entry Wire Line
	5000 6050 5100 5950
Entry Wire Line
	5000 6150 5100 6050
Entry Wire Line
	5000 6250 5100 6150
Entry Wire Line
	5000 6350 5100 6250
Entry Wire Line
	5000 6450 5100 6350
Entry Wire Line
	5000 6550 5100 6450
Entry Wire Line
	5000 4350 5100 4250
Entry Wire Line
	5000 3250 5100 3150
Entry Wire Line
	5000 3350 5100 3250
Entry Wire Line
	5000 5150 5100 5050
Entry Wire Line
	5000 5050 5100 4950
Entry Wire Line
	5000 4950 5100 4850
Entry Wire Line
	5000 3450 5100 3350
Entry Wire Line
	5000 4750 5100 4650
Entry Wire Line
	5000 4650 5100 4550
Entry Wire Line
	5000 4550 5100 4450
Entry Wire Line
	5000 4450 5100 4350
Text Label 4400 4950 0    60   ~ 0
PBI_D0
Text Label 4400 5050 0    60   ~ 0
PBI_D1
Text Label 4400 5150 0    60   ~ 0
PBI_D2
Text Label 4400 5250 0    60   ~ 0
PBI_D3
Text Label 4400 5350 0    60   ~ 0
PBI_D4
Text Label 4400 5450 0    60   ~ 0
PBI_D5
Text Label 4400 5550 0    60   ~ 0
PBI_D6
Text Label 4400 5650 0    60   ~ 0
PBI_D7
Entry Wire Line
	5700 4200 5800 4300
Entry Wire Line
	5700 4100 5800 4200
Entry Wire Line
	5700 4000 5800 4100
Entry Wire Line
	5700 3900 5800 4000
Entry Wire Line
	5700 3800 5800 3900
Entry Wire Line
	5700 3700 5800 3800
Entry Wire Line
	5700 3600 5800 3700
Entry Wire Line
	5700 3500 5800 3600
Entry Wire Line
	5700 5600 5800 5700
Entry Wire Line
	5700 5500 5800 5600
Entry Wire Line
	5700 5400 5800 5500
Entry Wire Line
	5700 5300 5800 5400
Entry Wire Line
	5700 5200 5800 5300
Entry Wire Line
	5700 5100 5800 5200
Entry Wire Line
	5700 5000 5800 5100
Entry Wire Line
	5700 4900 5800 5000
Entry Wire Line
	5700 7200 5800 7300
Entry Wire Line
	5700 7100 5800 7200
Entry Wire Line
	5700 7000 5800 7100
Entry Wire Line
	5700 6900 5800 7000
Entry Wire Line
	5700 6800 5800 6900
Entry Wire Line
	5700 6700 5800 6800
Entry Wire Line
	5700 6600 5800 6700
Entry Wire Line
	5700 6500 5800 6600
Text Label 6200 3600 0    60   ~ 0
PBI_A0
Text Label 6200 3700 0    60   ~ 0
PBI_A1
Text Label 6200 3800 0    60   ~ 0
PBI_A2
Text Label 6200 3900 0    60   ~ 0
PBI_A3
Text Label 6200 4000 0    60   ~ 0
PBI_A4
Text Label 6200 4100 0    60   ~ 0
PBI_A5
Text Label 6200 4200 0    60   ~ 0
PBI_A6
Text Label 6200 4300 0    60   ~ 0
PBI_A7
Text Label 6200 5000 0    60   ~ 0
PBI_A8
Text Label 6200 5100 0    60   ~ 0
PBI_A9
Text Label 6200 5200 0    60   ~ 0
PBI_A10
Text Label 6200 5300 0    60   ~ 0
PBI_A11
Text Label 6200 5400 0    60   ~ 0
PBI_A12
Text Label 6200 5500 0    60   ~ 0
PBI_A13
Text Label 6200 5600 0    60   ~ 0
PBI_A14
Text Label 6200 5700 0    60   ~ 0
PBI_A15
Text Label 6250 6600 0    60   ~ 0
PBI_D0
Text Label 6250 6700 0    60   ~ 0
PBI_D1
Text Label 6250 6800 0    60   ~ 0
PBI_D2
Text Label 6250 6900 0    60   ~ 0
PBI_D3
Text Label 6250 7000 0    60   ~ 0
PBI_D4
Text Label 6250 7100 0    60   ~ 0
PBI_D5
Text Label 6250 7200 0    60   ~ 0
PBI_D6
Text Label 6250 7300 0    60   ~ 0
PBI_D7
Entry Wire Line
	5000 4250 5100 4150
Entry Wire Line
	5000 4150 5100 4050
Entry Wire Line
	5000 4050 5100 3950
Entry Wire Line
	5000 3950 5100 3850
Entry Wire Line
	5000 3850 5100 3750
Entry Wire Line
	5000 3750 5100 3650
Text Label 4400 5850 0    60   ~ 0
PBI_N_RESET
Text Label 4400 5950 0    60   ~ 0
PBI_PHI2
Text Label 4400 6050 0    60   ~ 0
PBI_RW
Text Label 4400 6150 0    60   ~ 0
PBI_N_RDY
Text Label 4400 6250 0    60   ~ 0
PBI_N_EXTSEL
Text Label 4400 6350 0    60   ~ 0
PBI_N_EXTENB
Entry Wire Line
	5000 3550 5100 3450
Text Label 4400 6550 0    60   ~ 0
PBI_N_IRQ
NoConn ~ 4300 7250
NoConn ~ 4300 7350
NoConn ~ 4300 7450
$Comp
L GND #PWR?
U 1 1 58DECD65
P 3100 8200
F 0 "#PWR?" H 3100 7950 50  0001 C CNN
F 1 "GND" H 3100 8050 50  0000 C CNN
F 2 "" H 3100 8200 50  0001 C CNN
F 3 "" H 3100 8200 50  0001 C CNN
	1    3100 8200
	1    0    0    -1  
$EndComp
NoConn ~ 3100 2750
NoConn ~ 3200 2750
Text GLabel 4400 7050 2    60   Input ~ 0
PBI_AUDIO
Entry Wire Line
	5000 3650 5100 3550
Text Label 4400 6450 0    60   ~ 0
PBI_N_MPD
$Comp
L CONN_02X08 J?
U 1 1 58DF2BB4
P 6700 1300
F 0 "J?" H 6700 1750 50  0000 C CNN
F 1 "CONN_02X08" V 6700 1300 50  0000 C CNN
F 2 "" H 6700 100 50  0001 C CNN
F 3 "" H 6700 100 50  0001 C CNN
	1    6700 1300
	1    0    0    -1  
$EndComp
Entry Wire Line
	5700 850  5800 950 
Entry Wire Line
	5700 950  5800 1050
Entry Wire Line
	5700 1050 5800 1150
Entry Wire Line
	5700 1150 5800 1250
Entry Wire Line
	5700 1250 5800 1350
Entry Wire Line
	5700 1350 5800 1450
Entry Wire Line
	5700 1450 5800 1550
Entry Wire Line
	5700 1550 5800 1650
Text Label 6300 950  2    60   ~ 0
PBI_D0
Text Label 6300 1050 2    60   ~ 0
PBI_D1
Text Label 6300 1150 2    60   ~ 0
PBI_D2
Text Label 6300 1250 2    60   ~ 0
PBI_D3
Text Label 6300 1350 2    60   ~ 0
PBI_D4
Text Label 6300 1450 2    60   ~ 0
PBI_D5
Text Label 6300 1550 2    60   ~ 0
PBI_D6
Text Label 6300 1650 2    60   ~ 0
PBI_D7
Text Notes 7250 1950 2    60   ~ 0
0xD1FF BITWISE WRITE\n(FOR IRQ IDENTIFICATION)
$Comp
L CONN_02X08 J?
U 1 1 58DF46FB
P 6700 2500
F 0 "J?" H 6700 2950 50  0000 C CNN
F 1 "CONN_02X08" V 6700 2500 50  0000 C CNN
F 2 "" H 6700 1300 50  0001 C CNN
F 3 "" H 6700 1300 50  0001 C CNN
	1    6700 2500
	1    0    0    -1  
$EndComp
Entry Wire Line
	5700 2050 5800 2150
Entry Wire Line
	5700 2150 5800 2250
Entry Wire Line
	5700 2250 5800 2350
Entry Wire Line
	5700 2350 5800 2450
Entry Wire Line
	5700 2450 5800 2550
Entry Wire Line
	5700 2550 5800 2650
Entry Wire Line
	5700 2650 5800 2750
Entry Wire Line
	5700 2750 5800 2850
Text Label 6300 2150 2    60   ~ 0
PBI_D0
Text Label 6300 2250 2    60   ~ 0
PBI_D1
Text Label 6300 2350 2    60   ~ 0
PBI_D2
Text Label 6300 2450 2    60   ~ 0
PBI_D3
Text Label 6300 2550 2    60   ~ 0
PBI_D4
Text Label 6300 2650 2    60   ~ 0
PBI_D5
Text Label 6300 2750 2    60   ~ 0
PBI_D6
Text Label 6300 2850 2    60   ~ 0
PBI_D7
Text Label 9000 950  2    60   ~ 0
IRQ_ID_DATA_A
Text Label 9000 1300 2    60   ~ 0
IRQ_ID_OE_A
Text Label 9000 1550 2    60   ~ 0
IRQ_ID_DATA_B
Text Label 9000 1900 2    60   ~ 0
IRQ_ID_OE_B
Text Label 9000 2150 2    60   ~ 0
IRQ_ID_DATA_C
Text Label 9000 2500 2    60   ~ 0
IRQ_ID_OE_C
Text Label 9000 2750 2    60   ~ 0
IRQ_ID_DATA_D
Text Label 9000 3100 2    60   ~ 0
IRQ_ID_OE_D
Text Notes 8950 1150 2    60   ~ 0
EVEN BITS
Text Notes 9000 1750 2    60   ~ 0
ODD BITS
Text Notes 9000 2350 2    60   ~ 0
EVEN BITS
Text Notes 9000 2950 2    60   ~ 0
ODD BITS
Text Notes 8750 750  2    60   ~ 0
SUPPORT UP TO FOUR PBI DEVICES WITH CONFIGURABLE IRQ ID
$Comp
L VCC #PWR?
U 1 1 58DF5AEF
P 6550 4500
F 0 "#PWR?" H 6550 4350 50  0001 C CNN
F 1 "VCC" H 6550 4650 50  0000 C CNN
F 2 "" H 6550 4500 50  0001 C CNN
F 3 "" H 6550 4500 50  0001 C CNN
	1    6550 4500
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR?
U 1 1 58DF5B22
P 6550 5900
F 0 "#PWR?" H 6550 5750 50  0001 C CNN
F 1 "VCC" H 6550 6050 50  0000 C CNN
F 2 "" H 6550 5900 50  0001 C CNN
F 3 "" H 6550 5900 50  0001 C CNN
	1    6550 5900
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 58DF5DD0
P 6550 4600
F 0 "#PWR?" H 6550 4350 50  0001 C CNN
F 1 "GND" H 6550 4450 50  0000 C CNN
F 2 "" H 6550 4600 50  0001 C CNN
F 3 "" H 6550 4600 50  0001 C CNN
	1    6550 4600
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 58DF5DFA
P 6550 6000
F 0 "#PWR?" H 6550 5750 50  0001 C CNN
F 1 "GND" H 6550 5850 50  0000 C CNN
F 2 "" H 6550 6000 50  0001 C CNN
F 3 "" H 6550 6000 50  0001 C CNN
	1    6550 6000
	1    0    0    -1  
$EndComp
$Comp
L ATARI_XL_PBI CON?
U 1 1 58DF7225
P 4300 2850
F 0 "CON?" H 5800 -2150 60  0000 C CNN
F 1 "ATARI_XL_PBI" H 4800 2850 60  0000 C CNN
F 2 "" H 4800 2850 60  0001 C CNN
F 3 "" H 4800 2850 60  0001 C CNN
	1    4300 2850
	-1   0    0    -1  
$EndComp
NoConn ~ 4300 6650
NoConn ~ 4300 6750
NoConn ~ 4300 6850
$Comp
L VCC #PWR?
U 1 1 58DF8BD3
P 6550 9350
F 0 "#PWR?" H 6550 9200 50  0001 C CNN
F 1 "VCC" H 6550 9500 50  0000 C CNN
F 2 "" H 6550 9350 50  0001 C CNN
F 3 "" H 6550 9350 50  0001 C CNN
	1    6550 9350
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 58DF8BDA
P 6550 9450
F 0 "#PWR?" H 6550 9200 50  0001 C CNN
F 1 "GND" H 6550 9300 50  0000 C CNN
F 2 "" H 6550 9450 50  0001 C CNN
F 3 "" H 6550 9450 50  0001 C CNN
	1    6550 9450
	1    0    0    -1  
$EndComp
Entry Wire Line
	5700 8650 5800 8750
Entry Wire Line
	5700 8550 5800 8650
Entry Wire Line
	5700 8450 5800 8550
Entry Wire Line
	5700 8350 5800 8450
Text Label 6000 8450 0    60   ~ 0
PBI_PHI2
Text Label 6000 8550 0    60   ~ 0
PBI_N_RESET
Text Label 6000 8650 0    60   ~ 0
PBI_RW
Text Label 6000 8750 0    60   ~ 0
PBI_N_EXTENB
Entry Wire Line
	8950 8850 9050 8950
Entry Wire Line
	8950 8950 9050 9050
Entry Wire Line
	8950 9050 9050 9150
Entry Wire Line
	8950 9150 9050 9250
Text Label 8900 8850 2    60   ~ 0
PBI_N_RDY
Text Label 8900 8950 2    60   ~ 0
PBI_N_EXTSEL
Text Label 8900 9050 2    60   ~ 0
PBI_N_MPD
Text Label 8900 9150 2    60   ~ 0
PBI_N_IRQ
Text Label 8900 3600 2    60   ~ 0
A0
Text Label 8900 3700 2    60   ~ 0
A1
Text Label 8900 3800 2    60   ~ 0
A2
Text Label 8900 3900 2    60   ~ 0
A3
Text Label 8900 4000 2    60   ~ 0
A4
Text Label 8900 4100 2    60   ~ 0
A5
Text Label 8900 4200 2    60   ~ 0
A6
Text Label 8900 4300 2    60   ~ 0
A7
Text Label 8900 5000 2    60   ~ 0
A8
Text Label 8900 5100 2    60   ~ 0
A9
Text Label 8900 5200 2    60   ~ 0
A10
Text Label 8900 5300 2    60   ~ 0
A11
Text Label 8900 5400 2    60   ~ 0
A12
Text Label 8900 5500 2    60   ~ 0
A13
Text Label 8900 5600 2    60   ~ 0
A14
Text Label 8900 5700 2    60   ~ 0
A15
Text Label 8900 6600 2    60   ~ 0
D0
Text Label 8900 6700 2    60   ~ 0
D1
Text Label 8900 6800 2    60   ~ 0
D2
Text Label 8900 6900 2    60   ~ 0
D3
Text Label 8900 7000 2    60   ~ 0
D4
Text Label 8900 7100 2    60   ~ 0
D5
Text Label 8900 7200 2    60   ~ 0
D6
Text Label 8900 7300 2    60   ~ 0
D7
Text Label 8900 7800 2    60   ~ 0
DATA_DIR
Text Label 8900 7950 2    60   ~ 0
DATA_N_OE
Text Label 8900 8450 2    60   ~ 0
PHI2
Text Label 8900 8550 2    60   ~ 0
N_RESET
Text Label 8900 8650 2    60   ~ 0
RW
Text Label 8900 8750 2    60   ~ 0
N_EXTENB
Text Label 6650 8950 2    60   ~ 0
N_EXTSEL
Text Label 6650 8850 2    60   ~ 0
N_RDY
Text Label 6650 9050 2    60   ~ 0
N_MPD
Text Label 6650 9150 2    60   ~ 0
N_IRQ
Entry Wire Line
	5850 8950 5950 8850
Entry Wire Line
	5850 9050 5950 8950
Entry Wire Line
	5850 9150 5950 9050
Entry Wire Line
	5850 9250 5950 9150
Entry Wire Line
	9100 8450 9200 8350
Entry Wire Line
	9100 8650 9200 8550
Entry Wire Line
	9100 8550 9200 8450
Entry Wire Line
	9100 8750 9200 8650
Entry Wire Line
	9100 7000 9200 6900
Entry Wire Line
	9100 7200 9200 7100
Entry Wire Line
	9100 7100 9200 7000
Entry Wire Line
	9100 7300 9200 7200
Entry Wire Line
	9100 6600 9200 6500
Entry Wire Line
	9100 6800 9200 6700
Entry Wire Line
	9100 6700 9200 6600
Entry Wire Line
	9100 6900 9200 6800
Entry Wire Line
	9100 5400 9200 5300
Entry Wire Line
	9100 5600 9200 5500
Entry Wire Line
	9100 5500 9200 5400
Entry Wire Line
	9100 5700 9200 5600
Entry Wire Line
	9100 5000 9200 4900
Entry Wire Line
	9100 5200 9200 5100
Entry Wire Line
	9100 5100 9200 5000
Entry Wire Line
	9100 5300 9200 5200
Entry Wire Line
	9100 4000 9200 3900
Entry Wire Line
	9100 4200 9200 4100
Entry Wire Line
	9100 4100 9200 4000
Entry Wire Line
	9100 4300 9200 4200
Entry Wire Line
	9100 3600 9200 3500
Entry Wire Line
	9100 3800 9200 3700
Entry Wire Line
	9100 3700 9200 3600
Entry Wire Line
	9100 3900 9200 3800
Entry Wire Line
	9100 7950 9200 7850
Entry Wire Line
	9100 7800 9200 7700
Entry Wire Line
	9100 3100 9200 3000
Entry Wire Line
	9100 2750 9200 2650
Entry Wire Line
	9100 2500 9200 2400
Entry Wire Line
	9100 2150 9200 2050
Entry Wire Line
	9100 1900 9200 1800
Entry Wire Line
	9100 1550 9200 1450
Entry Wire Line
	9100 1300 9200 1200
Entry Wire Line
	9100 950  9200 850 
Wire Wire Line
	4300 4750 5000 4750
Wire Wire Line
	4300 4650 5000 4650
Wire Wire Line
	4300 4550 5000 4550
Wire Wire Line
	4300 4450 5000 4450
Wire Wire Line
	4300 4350 5000 4350
Wire Wire Line
	4300 4250 5000 4250
Wire Wire Line
	4300 4150 5000 4150
Wire Wire Line
	4300 4050 5000 4050
Wire Wire Line
	4300 3950 5000 3950
Wire Wire Line
	4300 3850 5000 3850
Wire Wire Line
	4300 3750 5000 3750
Wire Wire Line
	4300 3650 5000 3650
Wire Wire Line
	4300 3550 5000 3550
Wire Wire Line
	4300 3450 5000 3450
Wire Wire Line
	4300 3350 5000 3350
Wire Wire Line
	4300 3250 5000 3250
Wire Wire Line
	4300 4950 5000 4950
Wire Wire Line
	4300 5050 5000 5050
Wire Wire Line
	4300 5150 5000 5150
Wire Wire Line
	4300 5250 5000 5250
Wire Wire Line
	4300 5350 5000 5350
Wire Wire Line
	4300 5450 5000 5450
Wire Wire Line
	4300 5550 5000 5550
Wire Wire Line
	4300 5650 5000 5650
Wire Bus Line
	5700 750  5700 850 
Wire Bus Line
	5700 850  5700 950 
Wire Bus Line
	5700 950  5700 1050
Wire Bus Line
	5700 1050 5700 1150
Wire Bus Line
	5700 1150 5700 1250
Wire Bus Line
	5700 1250 5700 1350
Wire Bus Line
	5700 1350 5700 1450
Wire Bus Line
	5700 1450 5700 1550
Wire Bus Line
	5700 1550 5700 2050
Wire Bus Line
	5700 2050 5700 2150
Wire Bus Line
	5700 2150 5700 2250
Wire Bus Line
	5700 2250 5700 2350
Wire Bus Line
	5700 2350 5700 2450
Wire Bus Line
	5700 2450 5700 2550
Wire Bus Line
	5700 2550 5700 2650
Wire Bus Line
	5700 2650 5700 2750
Wire Bus Line
	5700 2750 5700 3500
Wire Bus Line
	5700 3500 5700 3600
Wire Bus Line
	5700 3600 5700 3700
Wire Bus Line
	5700 3700 5700 3800
Wire Bus Line
	5700 3800 5700 3900
Wire Bus Line
	5700 3900 5700 4000
Wire Bus Line
	5700 4000 5700 4100
Wire Bus Line
	5700 4100 5700 4200
Wire Bus Line
	5700 4200 5700 4900
Wire Bus Line
	5700 4900 5700 5000
Wire Bus Line
	5700 5000 5700 5100
Wire Bus Line
	5700 5100 5700 5200
Wire Bus Line
	5700 5200 5700 5300
Wire Bus Line
	5700 5300 5700 5400
Wire Bus Line
	5700 5400 5700 5500
Wire Bus Line
	5700 5500 5700 5600
Wire Bus Line
	5700 5600 5700 6500
Wire Bus Line
	5700 6500 5700 6600
Wire Bus Line
	5700 6600 5700 6700
Wire Bus Line
	5700 6700 5700 6800
Wire Bus Line
	5700 6800 5700 6900
Wire Bus Line
	5700 6900 5700 7000
Wire Bus Line
	5700 7000 5700 7100
Wire Bus Line
	5700 7100 5700 7200
Wire Bus Line
	5700 7200 5700 8350
Wire Bus Line
	5700 8350 5700 8450
Wire Bus Line
	5700 8450 5700 8550
Wire Bus Line
	5700 8550 5700 8650
Wire Bus Line
	5700 8650 5700 9900
Wire Wire Line
	6650 3700 5800 3700
Wire Wire Line
	6650 3600 5800 3600
Wire Wire Line
	6650 3800 5800 3800
Wire Wire Line
	6650 3900 5800 3900
Wire Wire Line
	6650 4000 5800 4000
Wire Wire Line
	6650 4100 5800 4100
Wire Wire Line
	6650 4200 5800 4200
Wire Wire Line
	6650 4300 5800 4300
Wire Wire Line
	6650 5100 5800 5100
Wire Wire Line
	6650 5000 5800 5000
Wire Wire Line
	6650 5200 5800 5200
Wire Wire Line
	6650 5300 5800 5300
Wire Wire Line
	6650 5400 5800 5400
Wire Wire Line
	6650 5500 5800 5500
Wire Wire Line
	6650 5600 5800 5600
Wire Wire Line
	6650 5700 5800 5700
Wire Wire Line
	6650 6700 5800 6700
Wire Wire Line
	6650 6600 5800 6600
Wire Wire Line
	6650 6800 5800 6800
Wire Wire Line
	6650 6900 5800 6900
Wire Wire Line
	6650 7000 5800 7000
Wire Wire Line
	6650 7100 5800 7100
Wire Wire Line
	6650 7200 5800 7200
Wire Wire Line
	6650 7300 5800 7300
Wire Wire Line
	4300 5850 5000 5850
Wire Wire Line
	4300 5950 5000 5950
Wire Wire Line
	4300 6050 5000 6050
Wire Wire Line
	4300 6150 5000 6150
Wire Wire Line
	4300 6250 5000 6250
Wire Wire Line
	4300 6350 5000 6350
Wire Wire Line
	4300 6550 5000 6550
Wire Wire Line
	3100 7950 3100 8050
Wire Wire Line
	3100 8050 3100 8200
Wire Wire Line
	3100 8050 3200 8050
Wire Wire Line
	3200 8050 3300 8050
Wire Wire Line
	3300 8050 3400 8050
Wire Wire Line
	3400 8050 3500 8050
Wire Wire Line
	3500 8050 3600 8050
Wire Wire Line
	3600 8050 3700 8050
Wire Wire Line
	3700 8050 3800 8050
Wire Wire Line
	3800 8050 3900 8050
Wire Wire Line
	3900 8050 3900 7950
Wire Wire Line
	3200 7950 3200 8050
Connection ~ 3200 8050
Wire Wire Line
	3300 7950 3300 8050
Connection ~ 3300 8050
Wire Wire Line
	3400 7950 3400 8050
Connection ~ 3400 8050
Wire Wire Line
	3500 7950 3500 8050
Connection ~ 3500 8050
Wire Wire Line
	3600 7950 3600 8050
Connection ~ 3600 8050
Wire Wire Line
	3700 7950 3700 8050
Connection ~ 3700 8050
Wire Wire Line
	3800 7950 3800 8050
Connection ~ 3800 8050
Connection ~ 3100 8050
Wire Wire Line
	4300 7050 4400 7050
Wire Wire Line
	4300 6450 5000 6450
Wire Wire Line
	5800 950  6450 950 
Wire Wire Line
	6450 1050 5800 1050
Wire Wire Line
	5800 1150 6450 1150
Wire Wire Line
	6450 1250 5800 1250
Wire Wire Line
	5800 1350 6450 1350
Wire Wire Line
	6450 1450 5800 1450
Wire Wire Line
	5800 1550 6450 1550
Wire Wire Line
	6450 1650 5800 1650
Wire Wire Line
	6950 950  7150 950 
Wire Wire Line
	7150 950  7500 950 
Wire Wire Line
	6950 1150 7150 1150
Wire Wire Line
	7150 950  7150 1150
Wire Wire Line
	7150 1150 7150 1350
Wire Wire Line
	7150 1350 7150 1550
Connection ~ 7150 950 
Wire Wire Line
	7150 1350 6950 1350
Connection ~ 7150 1150
Wire Wire Line
	7150 1550 6950 1550
Connection ~ 7150 1350
Wire Wire Line
	6950 1050 7350 1050
Wire Wire Line
	7350 1050 7350 1250
Wire Wire Line
	7350 1250 7350 1450
Wire Wire Line
	7350 1450 7350 1550
Wire Wire Line
	7350 1550 7350 1650
Wire Wire Line
	7350 1550 7500 1550
Wire Wire Line
	6950 1250 7350 1250
Connection ~ 7350 1250
Wire Wire Line
	6950 1450 7350 1450
Connection ~ 7350 1450
Wire Wire Line
	7350 1650 6950 1650
Connection ~ 7350 1550
Wire Wire Line
	5800 2150 6450 2150
Wire Wire Line
	6450 2250 5800 2250
Wire Wire Line
	5800 2350 6450 2350
Wire Wire Line
	6450 2450 5800 2450
Wire Wire Line
	5800 2550 6450 2550
Wire Wire Line
	6450 2650 5800 2650
Wire Wire Line
	5800 2750 6450 2750
Wire Wire Line
	6450 2850 5800 2850
Wire Wire Line
	6950 2150 7150 2150
Wire Wire Line
	7150 2150 7500 2150
Wire Wire Line
	6950 2350 7150 2350
Wire Wire Line
	7150 2150 7150 2350
Wire Wire Line
	7150 2350 7150 2550
Wire Wire Line
	7150 2550 7150 2750
Connection ~ 7150 2150
Wire Wire Line
	7150 2550 6950 2550
Connection ~ 7150 2350
Wire Wire Line
	7150 2750 6950 2750
Connection ~ 7150 2550
Wire Wire Line
	6950 2250 7350 2250
Wire Wire Line
	7350 2250 7350 2450
Wire Wire Line
	7350 2450 7350 2650
Wire Wire Line
	7350 2650 7350 2750
Wire Wire Line
	7350 2750 7350 2850
Wire Wire Line
	7350 2750 7500 2750
Wire Wire Line
	6950 2450 7350 2450
Connection ~ 7350 2450
Wire Wire Line
	6950 2650 7350 2650
Connection ~ 7350 2650
Wire Wire Line
	7350 2850 6950 2850
Connection ~ 7350 2750
Wire Wire Line
	8400 950  9100 950 
Wire Wire Line
	8400 1550 9100 1550
Wire Wire Line
	7950 1900 9100 1900
Wire Wire Line
	8400 2150 9100 2150
Wire Wire Line
	7950 2500 9100 2500
Wire Wire Line
	8400 2750 9100 2750
Wire Wire Line
	7950 3100 9100 3100
Wire Wire Line
	7950 3100 7950 3050
Wire Wire Line
	7950 2500 7950 2450
Wire Wire Line
	7950 1900 7950 1850
Wire Wire Line
	6550 5900 6650 5900
Wire Wire Line
	6550 4500 6650 4500
Wire Wire Line
	6550 6000 6650 6000
Wire Wire Line
	6550 4600 6650 4600
Wire Wire Line
	6550 9350 6650 9350
Wire Wire Line
	6550 9450 6650 9450
Wire Wire Line
	6650 8450 5800 8450
Wire Wire Line
	6650 8550 5800 8550
Wire Wire Line
	6650 8650 5800 8650
Wire Wire Line
	6650 8750 5800 8750
Wire Bus Line
	9050 8950 9050 9050
Wire Bus Line
	9050 9050 9050 9150
Wire Bus Line
	9050 9150 9050 9250
Wire Bus Line
	9050 9250 9050 9900
Wire Wire Line
	8050 8850 8950 8850
Wire Wire Line
	8050 8950 8950 8950
Wire Wire Line
	8050 9050 8950 9050
Wire Wire Line
	8050 9150 8950 9150
Wire Bus Line
	9050 9900 5700 9900
Wire Wire Line
	8050 3600 9100 3600
Wire Wire Line
	8050 3700 9100 3700
Wire Wire Line
	8050 3800 9100 3800
Wire Wire Line
	8050 3900 9100 3900
Wire Wire Line
	8050 4000 9100 4000
Wire Wire Line
	8050 4100 9100 4100
Wire Wire Line
	8050 4200 9100 4200
Wire Wire Line
	8050 4300 9100 4300
Wire Wire Line
	8050 5000 9100 5000
Wire Wire Line
	8050 5100 9100 5100
Wire Wire Line
	8050 5200 9100 5200
Wire Wire Line
	8050 5300 9100 5300
Wire Wire Line
	8050 5400 9100 5400
Wire Wire Line
	8050 5500 9100 5500
Wire Wire Line
	8050 5600 9100 5600
Wire Wire Line
	8050 5700 9100 5700
Wire Wire Line
	8050 6600 9100 6600
Wire Wire Line
	8050 6700 9100 6700
Wire Wire Line
	8050 6800 9100 6800
Wire Wire Line
	8050 6900 9100 6900
Wire Wire Line
	8050 7000 9100 7000
Wire Wire Line
	8050 7100 9100 7100
Wire Wire Line
	8050 7200 9100 7200
Wire Wire Line
	8050 7300 9100 7300
Wire Wire Line
	6650 7600 6550 7600
Wire Wire Line
	6550 7600 6550 7800
Wire Wire Line
	6550 7800 9100 7800
Wire Wire Line
	6650 7500 6450 7500
Wire Wire Line
	6450 7500 6450 7950
Wire Wire Line
	6450 7950 9100 7950
Wire Wire Line
	8050 8450 9100 8450
Wire Wire Line
	8050 8550 9100 8550
Wire Wire Line
	8050 8650 9100 8650
Wire Wire Line
	8050 8750 9100 8750
Wire Wire Line
	6650 8850 5950 8850
Wire Wire Line
	6650 8950 5950 8950
Wire Wire Line
	6650 9050 5950 9050
Wire Wire Line
	6650 9150 5950 9150
Wire Bus Line
	5850 8950 5850 9050
Wire Bus Line
	5850 9050 5850 9150
Wire Bus Line
	5850 9150 5850 9250
Wire Bus Line
	5850 9250 5850 9750
Wire Bus Line
	9200 9750 5850 9750
Wire Bus Line
	9200 700  9200 850 
Wire Bus Line
	9200 850  9200 1200
Wire Bus Line
	9200 1200 9200 1450
Wire Bus Line
	9200 1450 9200 1800
Wire Bus Line
	9200 1800 9200 2050
Wire Bus Line
	9200 2050 9200 2400
Wire Bus Line
	9200 2400 9200 2650
Wire Bus Line
	9200 2650 9200 3000
Wire Bus Line
	9200 3000 9200 3500
Wire Bus Line
	9200 3500 9200 3600
Wire Bus Line
	9200 3600 9200 3700
Wire Bus Line
	9200 3700 9200 3800
Wire Bus Line
	9200 3800 9200 3900
Wire Bus Line
	9200 3900 9200 4000
Wire Bus Line
	9200 4000 9200 4100
Wire Bus Line
	9200 4100 9200 4200
Wire Bus Line
	9200 4200 9200 4900
Wire Bus Line
	9200 4900 9200 5000
Wire Bus Line
	9200 5000 9200 5100
Wire Bus Line
	9200 5100 9200 5200
Wire Bus Line
	9200 5200 9200 5300
Wire Bus Line
	9200 5300 9200 5400
Wire Bus Line
	9200 5400 9200 5500
Wire Bus Line
	9200 5500 9200 5600
Wire Bus Line
	9200 5600 9200 6500
Wire Bus Line
	9200 6500 9200 6600
Wire Bus Line
	9200 6600 9200 6700
Wire Bus Line
	9200 6700 9200 6800
Wire Bus Line
	9200 6800 9200 6900
Wire Bus Line
	9200 6900 9200 7000
Wire Bus Line
	9200 7000 9200 7100
Wire Bus Line
	9200 7100 9200 7200
Wire Bus Line
	9200 7200 9200 7700
Wire Bus Line
	9200 7700 9200 7850
Wire Bus Line
	9200 7850 9200 8350
Wire Bus Line
	9200 8350 9200 8450
Wire Bus Line
	9200 8450 9200 8550
Wire Bus Line
	9200 8550 9200 8650
Wire Bus Line
	9200 8650 9200 9750
Wire Bus Line
	5700 750  5100 750 
Wire Bus Line
	5100 6450 5100 6350
Wire Bus Line
	5100 6350 5100 6250
Wire Bus Line
	5100 6250 5100 6150
Wire Bus Line
	5100 6150 5100 6050
Wire Bus Line
	5100 6050 5100 5950
Wire Bus Line
	5100 5950 5100 5850
Wire Bus Line
	5100 5850 5100 5750
Wire Bus Line
	5100 5750 5100 5550
Wire Bus Line
	5100 5550 5100 5450
Wire Bus Line
	5100 5450 5100 5350
Wire Bus Line
	5100 5350 5100 5250
Wire Bus Line
	5100 5250 5100 5150
Wire Bus Line
	5100 5150 5100 5050
Wire Bus Line
	5100 5050 5100 4950
Wire Bus Line
	5100 4950 5100 4850
Wire Bus Line
	5100 4850 5100 4650
Wire Bus Line
	5100 4650 5100 4550
Wire Bus Line
	5100 4550 5100 4450
Wire Bus Line
	5100 4450 5100 4350
Wire Bus Line
	5100 4350 5100 4250
Wire Bus Line
	5100 4250 5100 4150
Wire Bus Line
	5100 4150 5100 4050
Wire Bus Line
	5100 4050 5100 3950
Wire Bus Line
	5100 3950 5100 3850
Wire Bus Line
	5100 3850 5100 3750
Wire Bus Line
	5100 3750 5100 3650
Wire Bus Line
	5100 3650 5100 3550
Wire Bus Line
	5100 3550 5100 3450
Wire Bus Line
	5100 3450 5100 3350
Wire Bus Line
	5100 3350 5100 3250
Wire Bus Line
	5100 3250 5100 3150
Wire Bus Line
	5100 3150 5100 750 
Wire Bus Line
	9200 700  9800 700 
Wire Wire Line
	7950 1300 9100 1300
Wire Wire Line
	7950 1250 7950 1300
Text Notes 5750 10350 0    60   ~ 12
NOTE: ATARI PBI USES 5V LOGIC, FPGA AND OTHER DEVICES ARE ALL 3.3V\n74LVCxxx DEVICES ARE USED FOR 5V/3.3V LEVEL SHIFTING\nTHEY RUN ON 3.3V VCC AND INPUTS ARE 5V TOLERANT\n
Text HLabel 9800 700  2    60   Input ~ 12
DATA_BUS_3V
$EndSCHEMATC
