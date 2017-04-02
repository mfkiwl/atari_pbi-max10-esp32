EESchema Schematic File Version 2
LIBS:altera_max10
LIBS:atari_pbi-cache
EELAYER 25 0
EELAYER END
$Descr B 17000 11000
encoding utf-8
Sheet 1 3
Title "Atari PBI R:Fi PBI 5V-3.3V Level Conversion & Protection"
Date "2017-03-31"
Rev "A00"
Comp "Tangent Audio"
Comment1 "www.tangentaudio.com"
Comment2 "Designed by Steve Richardson"
Comment3 ""
Comment4 "NOTE: EARLY DRAFT, NOT FINAL!"
$EndDescr
$Sheet
S 6550 1650 1650 900 
U 58E06319
F0 "PBI FPGA" 60
F1 "pbi_fpga.sch" 60
F2 "DATA_BUS_3V" I L 6550 2050 60 
$EndSheet
$Sheet
S 3550 1650 1350 1050
U 58E0693E
F0 "PBI Level Translation" 60
F1 "pbi_level_translation.sch" 60
F2 "DATA_BUS_3V" I R 4900 2050 60 
$EndSheet
Wire Bus Line
	4900 2050 6550 2050
$EndSCHEMATC
