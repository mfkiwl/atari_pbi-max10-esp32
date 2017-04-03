EESchema Schematic File Version 2
LIBS:74xx
LIBS:atari_pbi-cache
LIBS:atari_xl_pbi
LIBS:altera_max10
LIBS:power
LIBS:device
LIBS:conn
EELAYER 25 0
EELAYER END
$Descr B 17000 11000
encoding utf-8
Sheet 2 3
Title "Atari PBI R:Fi -- PBI Bus to FPGA Connections"
Date "2017-03-31"
Rev "A00"
Comp "Tangent Audio"
Comment1 "www.tangentaudio.com"
Comment2 "Designed by Steve Richardson"
Comment3 ""
Comment4 "NOTE: EARLY DRAFT, NOT FINAL!"
$EndDescr
Text HLabel 1250 800  0    60   BiDi ~ 0
DATA_BUS_3V
Wire Bus Line
	1250 800  1650 800 
Wire Bus Line
	1650 800  1650 4500
Text Label 1950 2500 0    60   ~ 0
A0
Text Label 1950 2400 0    60   ~ 0
A1
Text Label 1950 2300 0    60   ~ 0
A2
Text Label 1950 2200 0    60   ~ 0
A3
Text Label 1950 2100 0    60   ~ 0
A4
Text Label 1950 2000 0    60   ~ 0
A5
Text Label 1950 1900 0    60   ~ 0
A6
Text Label 1950 1800 0    60   ~ 0
A7
Text Label 1950 1700 0    60   ~ 0
A8
Text Label 1950 1600 0    60   ~ 0
A9
Text Label 1950 1500 0    60   ~ 0
A10
Text Label 1950 1400 0    60   ~ 0
A11
Text Label 1950 1300 0    60   ~ 0
A12
Text Label 1950 1200 0    60   ~ 0
A13
Text Label 1950 1100 0    60   ~ 0
A14
Text Label 1950 1000 0    60   ~ 0
A15
Text Label 1950 3400 0    60   ~ 0
D0
Text Label 1950 3300 0    60   ~ 0
D1
Text Label 1950 3200 0    60   ~ 0
D2
Text Label 1950 3100 0    60   ~ 0
D3
Text Label 1950 3000 0    60   ~ 0
D4
Text Label 1950 2900 0    60   ~ 0
D5
Text Label 1950 2800 0    60   ~ 0
D6
Text Label 1950 2700 0    60   ~ 0
D7
Entry Wire Line
	1750 3100 1650 3000
Entry Wire Line
	1750 3300 1650 3200
Entry Wire Line
	1750 3200 1650 3100
Entry Wire Line
	1750 3400 1650 3300
Entry Wire Line
	1750 2700 1650 2600
Entry Wire Line
	1750 2900 1650 2800
Entry Wire Line
	1750 2800 1650 2700
Entry Wire Line
	1750 3000 1650 2900
Entry Wire Line
	1750 1400 1650 1300
Entry Wire Line
	1750 1600 1650 1500
Entry Wire Line
	1750 1500 1650 1400
Entry Wire Line
	1750 1700 1650 1600
Entry Wire Line
	1750 1000 1650 900 
Entry Wire Line
	1750 1200 1650 1100
Entry Wire Line
	1750 1100 1650 1000
Entry Wire Line
	1750 1300 1650 1200
Entry Wire Line
	1750 2200 1650 2100
Entry Wire Line
	1750 2400 1650 2300
Entry Wire Line
	1750 2300 1650 2200
Entry Wire Line
	1750 2500 1650 2400
Entry Wire Line
	1750 1800 1650 1700
Entry Wire Line
	1750 2000 1650 1900
Entry Wire Line
	1750 1900 1650 1800
Entry Wire Line
	1750 2100 1650 2000
Wire Wire Line
	2350 1800 1750 1800
Wire Wire Line
	2350 1900 1750 1900
Wire Wire Line
	2350 2000 1750 2000
Wire Wire Line
	2350 2100 1750 2100
Wire Wire Line
	2350 2200 1750 2200
Wire Wire Line
	2350 2300 1750 2300
Wire Wire Line
	2350 2400 1750 2400
Wire Wire Line
	2350 2500 1750 2500
Wire Wire Line
	2350 1000 1750 1000
Wire Wire Line
	2350 1100 1750 1100
Wire Wire Line
	2350 1200 1750 1200
Wire Wire Line
	2350 1300 1750 1300
Wire Wire Line
	2350 1400 1750 1400
Wire Wire Line
	2350 1500 1750 1500
Wire Wire Line
	2350 1600 1750 1600
Wire Wire Line
	2350 1700 1750 1700
Wire Wire Line
	2350 2700 1750 2700
Wire Wire Line
	2350 2800 1750 2800
Wire Wire Line
	2350 2900 1750 2900
Wire Wire Line
	2350 3000 1750 3000
Wire Wire Line
	2350 3100 1750 3100
Wire Wire Line
	2350 3200 1750 3200
Wire Wire Line
	2350 3300 1750 3300
Wire Wire Line
	2350 3400 1750 3400
Text Label 1800 4300 0    60   ~ 0
N_EXTSEL
Text Label 1800 4500 0    60   ~ 0
N_RDY
Text Label 2100 4400 2    60   ~ 0
N_MPD
Text Label 1800 4600 0    60   ~ 0
N_IRQ
Wire Wire Line
	2350 3900 1750 3900
Wire Wire Line
	2350 4000 1750 4000
Wire Wire Line
	2350 4100 1750 4100
Wire Wire Line
	2350 4200 1750 4200
Text Label 1800 3900 0    60   ~ 0
PHI2
Text Label 1800 4000 0    60   ~ 0
N_RESET
Text Label 1800 4100 0    60   ~ 0
RW
Text Label 1800 4200 0    60   ~ 0
N_EXTENB
Wire Wire Line
	1750 4300 2350 4300
Wire Wire Line
	1750 4400 2350 4400
Wire Wire Line
	1750 4500 2350 4500
Wire Wire Line
	1750 4600 2350 4600
Entry Wire Line
	1750 4300 1650 4200
Entry Wire Line
	1750 4500 1650 4400
Entry Wire Line
	1750 4400 1650 4300
Entry Wire Line
	1750 4600 1650 4500
Entry Wire Line
	1750 3900 1650 3800
Entry Wire Line
	1750 4100 1650 4000
Entry Wire Line
	1750 4000 1650 3900
Entry Wire Line
	1750 4200 1650 4100
$Comp
L 10M08SAE144xxx U?
U 1 1 58E0A2BA
P 12650 1050
F 0 "U?" H 12750 1100 60  0000 C CNN
F 1 "10M08SAE144xxx" H 13050 -500 60  0000 C CNN
F 2 "" H 12650 1050 60  0001 C CNN
F 3 "" H 12650 1050 60  0001 C CNN
	1    12650 1050
	1    0    0    -1  
$EndComp
$Comp
L 10M08SAE144xxx U?
U 2 1 58E0A347
P 8750 6000
F 0 "U?" H 8850 6050 60  0000 C CNN
F 1 "10M08SAE144xxx" H 9150 4450 60  0000 C CNN
F 2 "" H 8750 6000 60  0001 C CNN
F 3 "" H 8750 6000 60  0001 C CNN
	2    8750 6000
	1    0    0    -1  
$EndComp
$Comp
L 10M08SAE144xxx U?
U 3 1 58E0A398
P 3900 5750
F 0 "U?" H 4000 5800 60  0000 C CNN
F 1 "10M08SAE144xxx" H 4300 4200 60  0000 C CNN
F 2 "" H 3900 5750 60  0001 C CNN
F 3 "" H 3900 5750 60  0001 C CNN
	3    3900 5750
	1    0    0    -1  
$EndComp
$Comp
L 10M08SAE144xxx U?
U 4 1 58E0A435
P 3900 7700
F 0 "U?" H 4000 7750 60  0000 C CNN
F 1 "10M08SAE144xxx" H 4300 6150 60  0000 C CNN
F 2 "" H 3900 7700 60  0001 C CNN
F 3 "" H 3900 7700 60  0001 C CNN
	4    3900 7700
	1    0    0    -1  
$EndComp
$Comp
L 10M08SAE144xxx U?
U 6 1 58E0A5A6
P 9100 1050
F 0 "U?" H 9200 1100 60  0000 C CNN
F 1 "10M08SAE144xxx" H 9500 -500 60  0000 C CNN
F 2 "" H 9100 1050 60  0001 C CNN
F 3 "" H 9100 1050 60  0001 C CNN
	6    9100 1050
	1    0    0    -1  
$EndComp
$Comp
L 10M08SAE144xxx U?
U 7 1 58E0A62D
P 3900 2900
F 0 "U?" H 4000 2950 60  0000 C CNN
F 1 "10M08SAE144xxx" H 4300 1350 60  0000 C CNN
F 2 "" H 3900 2900 60  0001 C CNN
F 3 "" H 3900 2900 60  0001 C CNN
	7    3900 2900
	1    0    0    -1  
$EndComp
$Comp
L 10M08SAE144xxx U?
U 8 1 58E0A682
P 3900 850
F 0 "U?" H 4000 900 60  0000 C CNN
F 1 "10M08SAE144xxx" H 4300 -700 60  0000 C CNN
F 2 "" H 3900 850 60  0001 C CNN
F 3 "" H 3900 850 60  0001 C CNN
	8    3900 850 
	1    0    0    -1  
$EndComp
$Comp
L 10M08SAE144xxx U?
U 9 1 58E0A6F9
P 8750 7900
F 0 "U?" H 8850 7950 60  0000 C CNN
F 1 "10M08SAE144xxx" H 9150 6350 60  0000 C CNN
F 2 "" H 8750 7900 60  0001 C CNN
F 3 "" H 8750 7900 60  0001 C CNN
	9    8750 7900
	1    0    0    -1  
$EndComp
$Comp
L 10M08SAE144xxx U?
U 10 1 58E0A7A7
P 13250 6500
F 0 "U?" H 13350 6550 60  0000 C CNN
F 1 "10M08SAE144xxx" H 13650 4950 60  0000 C CNN
F 2 "" H 13250 6500 60  0001 C CNN
F 3 "" H 13250 6500 60  0001 C CNN
	10   13250 6500
	1    0    0    -1  
$EndComp
$Comp
L 10M08SAE144xxx U?
U 5 1 58E0A4FA
P 9100 3000
F 0 "U?" H 9200 3050 60  0000 C CNN
F 1 "10M08SAE144xxx" H 9500 1450 60  0000 C CNN
F 2 "" H 9100 3000 60  0001 C CNN
F 3 "" H 9100 3000 60  0001 C CNN
	5    9100 3000
	1    0    0    -1  
$EndComp
Wire Notes Line
	2850 5450 7650 5450
Wire Notes Line
	7650 5450 7650 9650
Wire Notes Line
	7650 9650 2850 9650
Wire Notes Line
	2850 9650 2850 5450
Text Notes 2900 5600 0    60   ~ 0
EVAL J8
Wire Notes Line
	2900 650  7700 650 
Wire Notes Line
	2900 4850 2900 650 
Text Notes 2950 800  0    60   ~ 0
EVAL J9
Wire Notes Line
	2900 4850 7700 4850
Wire Notes Line
	7700 4850 7700 650 
Wire Notes Line
	7800 650  16050 650 
Wire Notes Line
	7800 4850 7800 650 
Text Notes 7850 800  0    60   ~ 0
EVAL ARDUINO HDR
Wire Notes Line
	7800 4850 16050 4850
Wire Notes Line
	16050 4850 16050 650 
Wire Notes Line
	7850 5450 12100 5450
Wire Notes Line
	7850 9650 7850 5450
Text Notes 7900 5600 0    60   ~ 0
EVAL JTAG / LED / SWITCHES
Wire Notes Line
	7900 9600 12100 9600
Wire Notes Line
	12100 9600 12100 5450
Text Label 2200 4900 2    60   ~ 0
DATA_DIR
Text Label 1800 5000 0    60   ~ 0
DATA_N_OE
Wire Wire Line
	1750 4800 2350 4800
Wire Wire Line
	1750 4900 2350 4900
Wire Wire Line
	1750 5000 2350 5000
Entry Wire Line
	1750 4900 1650 4800
Entry Wire Line
	1750 4800 1650 4700
Entry Wire Line
	1750 5000 1650 4900
Text Notes 16400 9150 2    60   ~ 0
TRADEMARK INFORMATION: All trademarks, trade names, or logos mentioned\nor used are the property of their respective owners. 
$EndSCHEMATC
