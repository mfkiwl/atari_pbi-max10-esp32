EESchema Schematic File Version 2
LIBS:74xx
LIBS:atari_xl_pbi
LIBS:altera_max10
LIBS:power
LIBS:device
LIBS:conn
EELAYER 25 0
EELAYER END
$Descr A 11000 8500
encoding utf-8
Sheet 1 5
Title "Atari PBI R:Fi -- TOP LEVEL"
Date "2017-03-31"
Rev "A00"
Comp "Tangent Audio"
Comment1 "www.tangentaudio.com"
Comment2 "Designed by Steve Richardson"
Comment3 ""
Comment4 "NOTE: EARLY DRAFT, NOT FINAL!"
$EndDescr
$Sheet
S 5350 2800 1650 950 
U 58E06319
F0 "PBI FPGA" 60
F1 "pbi_fpga.sch" 60
F2 "DATA_BUS_3V" I L 5350 3200 60 
$EndSheet
$Sheet
S 3300 2800 1350 950 
U 58E0693E
F0 "PBI Level Translation" 60
F1 "pbi_level_translation.sch" 60
F2 "DATA_BUS_3V" I R 4650 3200 60 
$EndSheet
Wire Bus Line
	4650 3200 5350 3200
Text Notes 10400 6650 2    60   ~ 0
TRADEMARK INFORMATION: All trademarks, trade names, or logos mentioned\nor used are the property of their respective owners. 
$Sheet
S 5450 4300 1550 800 
U 58F0E1E3
F0 "ESP32 Interface" 60
F1 "esp32_ifc.sch" 60
$EndSheet
$Sheet
S 3300 4300 1400 750 
U 58F1F4CC
F0 "Misc. FPGA" 60
F1 "misc_fpga.sch" 60
$EndSheet
$EndSCHEMATC
