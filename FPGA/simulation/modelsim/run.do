vcom -reportprogress 300 -93 -work work {C:/Users/Steve/Documents/GitHub/atari_pbi/FPGA/spi_dpram.vhd}
vcom -reportprogress 300 -93 -work work {C:/Users/Steve/Documents/GitHub/atari_pbi/FPGA/pbi_bridge.vhd}
vcom -reportprogress 300 -93 -work work {C:/Users/Steve/Documents/GitHub/atari_pbi/FPGA/dpram.vhd}
vcom -reportprogress 300 -93 -work work {C:\Users\Steve\Documents\GitHub\atari_pbi\FPGA\simulation\modelsim\pbi_bridge.vht}
vsim -novopt work.pbi_bridge_vhd_tst
do wave.do

run -all