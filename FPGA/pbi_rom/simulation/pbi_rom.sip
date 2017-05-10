set_global_assignment -entity "pbi_rom" -library "lib_pbi_rom" -name IP_TOOL_NAME "Qsys"
set_global_assignment -entity "pbi_rom" -library "lib_pbi_rom" -name IP_TOOL_VERSION "17.0"
set_global_assignment -entity "pbi_rom" -library "lib_pbi_rom" -name IP_TOOL_ENV "Qsys"
set_global_assignment -library "lib_pbi_rom" -name SPD_FILE [file join $::quartus(sip_path) "../pbi_rom.spd"]
set_global_assignment -library "lib_pbi_rom" -name MISC_FILE [file join $::quartus(sip_path) "../../pbi_rom.qsys"]

set_global_assignment -library "lib_pbi_rom" -name MISC_FILE [file join $::quartus(sip_path) "pbi_rom.vhd"]
set_global_assignment -library "lib_pbi_rom" -name MISC_FILE [file join $::quartus(sip_path) "submodules/altera_onchip_flash_util.v"]
set_global_assignment -library "lib_pbi_rom" -name MISC_FILE [file join $::quartus(sip_path) "submodules/altera_onchip_flash.v"]
set_global_assignment -library "lib_pbi_rom" -name MISC_FILE [file join $::quartus(sip_path) "submodules/altera_onchip_flash_avmm_data_controller.v"]
