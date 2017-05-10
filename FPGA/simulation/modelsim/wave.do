onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /pbi_bridge_vhd_tst/phi2
add wave -noupdate /pbi_bridge_vhd_tst/phi2_early
add wave -noupdate /pbi_bridge_vhd_tst/clk_57
add wave -noupdate /pbi_bridge_vhd_tst/n_reset
add wave -noupdate /pbi_bridge_vhd_tst/spi_clk
add wave -noupdate /pbi_bridge_vhd_tst/spi_ss_n
add wave -noupdate /pbi_bridge_vhd_tst/spi_miso
add wave -noupdate /pbi_bridge_vhd_tst/spi_mosi
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {0 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 252
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
WaveRestoreZoom {0 ps} {894 ps}
