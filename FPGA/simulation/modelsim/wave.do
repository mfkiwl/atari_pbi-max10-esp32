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
add wave -noupdate -expand -group {SPI Module Internals} -radix hexadecimal /pbi_bridge_vhd_tst/i1/u1/s_wr_bank
add wave -noupdate -expand -group {SPI Module Internals} -radix hexadecimal /pbi_bridge_vhd_tst/i1/u1/s_wr_addr
add wave -noupdate -expand -group {SPI Module Internals} /pbi_bridge_vhd_tst/i1/u1/master_wren
add wave -noupdate -expand -group {SPI Module Internals} /pbi_bridge_vhd_tst/i1/u1/master_ram_clk
add wave -noupdate -expand -group {SPI Module Internals} -radix hexadecimal /pbi_bridge_vhd_tst/i1/u1/s_rd_bank
add wave -noupdate -expand -group {SPI Module Internals} -radix hexadecimal /pbi_bridge_vhd_tst/i1/u1/s_rd_addr
add wave -noupdate -expand -group {SPI Module Internals} /pbi_bridge_vhd_tst/i1/u1/slave_rden
add wave -noupdate -expand -group {SPI Module Internals} /pbi_bridge_vhd_tst/i1/u1/slave_ram_clk
add wave -noupdate -expand -group {SPI Module Internals} -radix hexadecimal /pbi_bridge_vhd_tst/i1/u1/slave_tx_buf
add wave -noupdate -expand -group {SPI Module Internals} -radix hexadecimal /pbi_bridge_vhd_tst/i1/u1/tx_buf
add wave -noupdate -expand -group {SPI Module Internals} -radix hexadecimal /pbi_bridge_vhd_tst/i1/u1/rx_buf
add wave -noupdate -expand -group {SPI Module Registers} -radix hexadecimal /pbi_bridge_vhd_tst/i1/u1/r_sdcr
add wave -noupdate -expand -group {SPI Module Registers} -radix hexadecimal /pbi_bridge_vhd_tst/i1/u1/r_stbycr
add wave -noupdate -expand -group {SPI Module Registers} -radix hexadecimal /pbi_bridge_vhd_tst/i1/u1/r_stbkcr
add wave -noupdate -expand -group {SPI Module Registers} -radix hexadecimal /pbi_bridge_vhd_tst/i1/u1/shadow_sdsr
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
configure wave -namecolwidth 274
configure wave -valuecolwidth 100
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
WaveRestoreZoom {10356584 ps} {13034282 ps}
