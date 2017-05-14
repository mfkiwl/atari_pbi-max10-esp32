onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /pbi_bridge_vhd_tst/phi2
add wave -noupdate /pbi_bridge_vhd_tst/phi2_early
add wave -noupdate /pbi_bridge_vhd_tst/clk_57
add wave -noupdate /pbi_bridge_vhd_tst/n_reset
add wave -noupdate -expand -group {SPI Bus} /pbi_bridge_vhd_tst/i1/u1/cpol
add wave -noupdate -expand -group {SPI Bus} /pbi_bridge_vhd_tst/i1/u1/cpha
add wave -noupdate -expand -group {SPI Bus} /pbi_bridge_vhd_tst/i1/u1/mode
add wave -noupdate -expand -group {SPI Bus} /pbi_bridge_vhd_tst/spi_clk
add wave -noupdate -expand -group {SPI Bus} /pbi_bridge_vhd_tst/spi_ss_n
add wave -noupdate -expand -group {SPI Bus} /pbi_bridge_vhd_tst/spi_miso
add wave -noupdate -expand -group {SPI Bus} /pbi_bridge_vhd_tst/spi_mosi
add wave -noupdate -expand -group {SPI Module Internals} -radix hexadecimal /pbi_bridge_vhd_tst/i1/u1/clk
add wave -noupdate -expand -group {SPI Module Internals} -radix unsigned /pbi_bridge_vhd_tst/i1/u1/bit_cnt
add wave -noupdate -expand -group {SPI Module Internals} -radix decimal /pbi_bridge_vhd_tst/i1/u1/bit_cnt8
add wave -noupdate -expand -group {SPI Module Internals} -radix decimal /pbi_bridge_vhd_tst/i1/u1/bit_cnt8_reverse
add wave -noupdate -expand -group {SPI Module Internals} -expand -group {Master RAM} /pbi_bridge_vhd_tst/i1/u1/s_master_ram_clk
add wave -noupdate -expand -group {SPI Module Internals} -expand -group {Master RAM} /pbi_bridge_vhd_tst/i1/u1/s_master_ram_wren
add wave -noupdate -expand -group {SPI Module Internals} -expand -group {Master RAM} -radix hexadecimal /pbi_bridge_vhd_tst/i1/u1/s_master_ram_bank
add wave -noupdate -expand -group {SPI Module Internals} -expand -group {Master RAM} -radix hexadecimal /pbi_bridge_vhd_tst/i1/u1/s_master_ram_addr
add wave -noupdate -expand -group {SPI Module Internals} -expand -group {Master RAM} -radix hexadecimal /pbi_bridge_vhd_tst/i1/u1/s_master_ram_data
add wave -noupdate -expand -group {SPI Module Internals} -expand -group {Slave RAM} /pbi_bridge_vhd_tst/i1/u1/s_slave_ram_clk
add wave -noupdate -expand -group {SPI Module Internals} -expand -group {Slave RAM} /pbi_bridge_vhd_tst/i1/u1/s_slave_ram_rden
add wave -noupdate -expand -group {SPI Module Internals} -expand -group {Slave RAM} -radix hexadecimal /pbi_bridge_vhd_tst/i1/u1/s_slave_ram_bank
add wave -noupdate -expand -group {SPI Module Internals} -expand -group {Slave RAM} -radix hexadecimal /pbi_bridge_vhd_tst/i1/u1/s_slave_ram_addr
add wave -noupdate -expand -group {SPI Module Internals} -expand -group {Slave RAM} -radix hexadecimal /pbi_bridge_vhd_tst/i1/u1/s_slave_ram_q
add wave -noupdate -expand -group {SPI Module Internals} -radix hexadecimal /pbi_bridge_vhd_tst/i1/u1/spi_tx_buf
add wave -noupdate -expand -group {SPI Module Registers} -radix hexadecimal /pbi_bridge_vhd_tst/i1/u1/r_sdcr
add wave -noupdate -expand -group {SPI Module Registers} -radix hexadecimal /pbi_bridge_vhd_tst/i1/u1/r_stbycr
add wave -noupdate -expand -group {SPI Module Registers} -radix hexadecimal /pbi_bridge_vhd_tst/i1/u1/r_stbkcr
add wave -noupdate -expand -group {SPI Module Registers} -radix hexadecimal /pbi_bridge_vhd_tst/i1/u1/s_sdsr
add wave -noupdate -expand -group {SPI Module Registers} -radix hexadecimal /pbi_bridge_vhd_tst/i1/u1/r_sdsr
add wave -noupdate -expand -group {SPI Module Registers} -radix hexadecimal /pbi_bridge_vhd_tst/i1/u1/r_mtbycr
add wave -noupdate -expand -group {SPI Module Registers} -radix hexadecimal /pbi_bridge_vhd_tst/i1/u1/r_mtbkcr
add wave -noupdate -expand -group {SPI Module Registers} -radix hexadecimal /pbi_bridge_vhd_tst/i1/u1/r_mrbs
add wave -noupdate -expand -group {SPI Module Registers} -radix hexadecimal /pbi_bridge_vhd_tst/i1/u1/r_srbs
add wave -noupdate -group {PBI Bridge Registers} -radix hexadecimal /pbi_bridge_vhd_tst/i1/reg_sdcr
add wave -noupdate -group {PBI Bridge Registers} -radix hexadecimal /pbi_bridge_vhd_tst/i1/reg_stbycr
add wave -noupdate -group {PBI Bridge Registers} -radix hexadecimal /pbi_bridge_vhd_tst/i1/reg_stbkcr
add wave -noupdate -group {PBI Bridge Registers} -radix hexadecimal /pbi_bridge_vhd_tst/i1/reg_sdsr
add wave -noupdate -group {PBI Bridge Registers} -radix hexadecimal /pbi_bridge_vhd_tst/i1/reg_mtbycr
add wave -noupdate -group {PBI Bridge Registers} -radix hexadecimal /pbi_bridge_vhd_tst/i1/reg_mtbkcr
add wave -noupdate -group {PBI Bridge Registers} -radix hexadecimal /pbi_bridge_vhd_tst/i1/reg_mrbs
add wave -noupdate -group {PBI Bridge Registers} -radix hexadecimal /pbi_bridge_vhd_tst/i1/reg_srbs
add wave -noupdate -group {PBI Bridge Registers} -radix hexadecimal /pbi_bridge_vhd_tst/i1/reg_fbs
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {11198047 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 321
configure wave -valuecolwidth 40
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ns
update
WaveRestoreZoom {43669629 ps} {46370565 ps}
