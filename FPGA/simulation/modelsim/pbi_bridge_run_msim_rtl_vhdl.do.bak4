transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlib pbi_rom
vmap pbi_rom pbi_rom
vlog -vlog01compat -work pbi_rom +incdir+c:/users/steve/documents/github/atari_pbi/fpga/db/ip/pbi_rom {c:/users/steve/documents/github/atari_pbi/fpga/db/ip/pbi_rom/pbi_rom.v}
vlog -vlog01compat -work pbi_rom +incdir+c:/users/steve/documents/github/atari_pbi/fpga/db/ip/pbi_rom/submodules {c:/users/steve/documents/github/atari_pbi/fpga/db/ip/pbi_rom/submodules/altera_onchip_flash.v}
vlog -vlog01compat -work pbi_rom +incdir+c:/users/steve/documents/github/atari_pbi/fpga/db/ip/pbi_rom/submodules {c:/users/steve/documents/github/atari_pbi/fpga/db/ip/pbi_rom/submodules/altera_onchip_flash_avmm_data_controller.v}
vlog -vlog01compat -work pbi_rom +incdir+c:/users/steve/documents/github/atari_pbi/fpga/db/ip/pbi_rom/submodules {c:/users/steve/documents/github/atari_pbi/fpga/db/ip/pbi_rom/submodules/altera_onchip_flash_util.v}
vcom -93 -work work {C:/Users/steve/Documents/GitHub/atari_pbi/FPGA/spi_dpram.vhd}
vcom -93 -work work {C:/Users/steve/Documents/GitHub/atari_pbi/FPGA/pbi_bridge.vhd}
vcom -93 -work work {C:/Users/steve/Documents/GitHub/atari_pbi/FPGA/dpram.vhd}

