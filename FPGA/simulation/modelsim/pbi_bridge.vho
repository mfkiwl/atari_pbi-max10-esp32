-- Copyright (C) 2016  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Intel and sold by Intel or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 16.1.0 Build 196 10/24/2016 SJ Lite Edition"

-- DATE "05/14/2017 10:16:48"

-- 
-- Device: Altera 10M08SAE144C8G Package EQFP144
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_TMS~	=>  Location: PIN_16,	 I/O Standard: 3.3 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TCK~	=>  Location: PIN_18,	 I/O Standard: 3.3 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDI~	=>  Location: PIN_19,	 I/O Standard: 3.3 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDO~	=>  Location: PIN_20,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_TMS~~padout\ : std_logic;
SIGNAL \~ALTERA_TCK~~padout\ : std_logic;
SIGNAL \~ALTERA_TDI~~padout\ : std_logic;
SIGNAL \~ALTERA_TMS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TCK~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TDI~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	pbi_bridge IS
    PORT (
	master_ram_clk : BUFFER std_logic;
	master_ram_rden : BUFFER std_logic;
	master_ram_wren : BUFFER std_logic;
	n_led1 : BUFFER std_logic;
	n_led2 : BUFFER std_logic;
	n_led3 : BUFFER std_logic;
	n_led4 : BUFFER std_logic;
	n_led5 : BUFFER std_logic;
	dip_sw : IN std_logic_vector(4 DOWNTO 0);
	clk_57 : IN std_logic;
	phi2 : IN std_logic;
	phi2_early : BUFFER std_logic;
	rw : IN std_logic;
	addr : IN std_logic_vector(15 DOWNTO 0);
	data : BUFFER std_logic_vector(7 DOWNTO 0);
	data_dir : BUFFER std_logic;
	n_data_oe : BUFFER std_logic;
	n_reset : IN std_logic;
	extenb : IN std_logic;
	n_extsel : BUFFER std_logic;
	n_mpd : BUFFER std_logic;
	n_irq : BUFFER std_logic;
	n_rdy : BUFFER std_logic;
	spi_clk : IN std_logic;
	spi_ss_n : IN std_logic;
	spi_mosi : IN std_logic;
	spi_miso : BUFFER std_logic;
	spi_mbf : BUFFER std_logic;
	spi_sdav : BUFFER std_logic
	);
END pbi_bridge;

-- Design Ports Information
-- master_ram_clk	=>  Location: PIN_62,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- master_ram_rden	=>  Location: PIN_64,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- master_ram_wren	=>  Location: PIN_65,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- n_led1	=>  Location: PIN_132,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- n_led2	=>  Location: PIN_134,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- n_led3	=>  Location: PIN_135,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- n_led4	=>  Location: PIN_140,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- n_led5	=>  Location: PIN_141,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- phi2_early	=>  Location: PIN_92,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- data_dir	=>  Location: PIN_110,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- n_data_oe	=>  Location: PIN_111,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- extenb	=>  Location: PIN_91,	 I/O Standard: 3.3 V Schmitt Trigger,	 Current Strength: Default
-- n_extsel	=>  Location: PIN_119,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- n_mpd	=>  Location: PIN_118,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- n_irq	=>  Location: PIN_88,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- n_rdy	=>  Location: PIN_89,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- spi_miso	=>  Location: PIN_77,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- spi_mbf	=>  Location: PIN_79,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- spi_sdav	=>  Location: PIN_81,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- data[0]	=>  Location: PIN_96,	 I/O Standard: 3.3 V Schmitt Trigger,	 Current Strength: 8mA
-- data[1]	=>  Location: PIN_98,	 I/O Standard: 3.3 V Schmitt Trigger,	 Current Strength: 8mA
-- data[2]	=>  Location: PIN_99,	 I/O Standard: 3.3 V Schmitt Trigger,	 Current Strength: 8mA
-- data[3]	=>  Location: PIN_100,	 I/O Standard: 3.3 V Schmitt Trigger,	 Current Strength: 8mA
-- data[4]	=>  Location: PIN_101,	 I/O Standard: 3.3 V Schmitt Trigger,	 Current Strength: 8mA
-- data[5]	=>  Location: PIN_102,	 I/O Standard: 3.3 V Schmitt Trigger,	 Current Strength: 8mA
-- data[6]	=>  Location: PIN_105,	 I/O Standard: 3.3 V Schmitt Trigger,	 Current Strength: 8mA
-- data[7]	=>  Location: PIN_106,	 I/O Standard: 3.3 V Schmitt Trigger,	 Current Strength: 8mA
-- dip_sw[0]	=>  Location: PIN_120,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dip_sw[3]	=>  Location: PIN_130,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dip_sw[1]	=>  Location: PIN_124,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dip_sw[4]	=>  Location: PIN_131,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dip_sw[2]	=>  Location: PIN_127,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- phi2	=>  Location: PIN_90,	 I/O Standard: 3.3 V Schmitt Trigger,	 Current Strength: Default
-- n_reset	=>  Location: PIN_113,	 I/O Standard: 3.3 V Schmitt Trigger,	 Current Strength: Default
-- clk_57	=>  Location: PIN_29,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- rw	=>  Location: PIN_114,	 I/O Standard: 3.3 V Schmitt Trigger,	 Current Strength: Default
-- addr[8]	=>  Location: PIN_50,	 I/O Standard: 3.3 V Schmitt Trigger,	 Current Strength: Default
-- addr[11]	=>  Location: PIN_56,	 I/O Standard: 3.3 V Schmitt Trigger,	 Current Strength: Default
-- addr[13]	=>  Location: PIN_58,	 I/O Standard: 3.3 V Schmitt Trigger,	 Current Strength: Default
-- addr[15]	=>  Location: PIN_60,	 I/O Standard: 3.3 V Schmitt Trigger,	 Current Strength: Default
-- addr[14]	=>  Location: PIN_59,	 I/O Standard: 3.3 V Schmitt Trigger,	 Current Strength: Default
-- addr[12]	=>  Location: PIN_57,	 I/O Standard: 3.3 V Schmitt Trigger,	 Current Strength: Default
-- addr[10]	=>  Location: PIN_55,	 I/O Standard: 3.3 V Schmitt Trigger,	 Current Strength: Default
-- addr[9]	=>  Location: PIN_52,	 I/O Standard: 3.3 V Schmitt Trigger,	 Current Strength: Default
-- addr[0]	=>  Location: PIN_38,	 I/O Standard: 3.3 V Schmitt Trigger,	 Current Strength: Default
-- addr[1]	=>  Location: PIN_39,	 I/O Standard: 3.3 V Schmitt Trigger,	 Current Strength: Default
-- addr[2]	=>  Location: PIN_41,	 I/O Standard: 3.3 V Schmitt Trigger,	 Current Strength: Default
-- addr[3]	=>  Location: PIN_43,	 I/O Standard: 3.3 V Schmitt Trigger,	 Current Strength: Default
-- addr[4]	=>  Location: PIN_44,	 I/O Standard: 3.3 V Schmitt Trigger,	 Current Strength: Default
-- addr[5]	=>  Location: PIN_45,	 I/O Standard: 3.3 V Schmitt Trigger,	 Current Strength: Default
-- addr[6]	=>  Location: PIN_46,	 I/O Standard: 3.3 V Schmitt Trigger,	 Current Strength: Default
-- addr[7]	=>  Location: PIN_47,	 I/O Standard: 3.3 V Schmitt Trigger,	 Current Strength: Default
-- spi_ss_n	=>  Location: PIN_75,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- spi_clk	=>  Location: PIN_74,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- spi_mosi	=>  Location: PIN_76,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default


ARCHITECTURE structure OF pbi_bridge IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_master_ram_clk : std_logic;
SIGNAL ww_master_ram_rden : std_logic;
SIGNAL ww_master_ram_wren : std_logic;
SIGNAL ww_n_led1 : std_logic;
SIGNAL ww_n_led2 : std_logic;
SIGNAL ww_n_led3 : std_logic;
SIGNAL ww_n_led4 : std_logic;
SIGNAL ww_n_led5 : std_logic;
SIGNAL ww_dip_sw : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_clk_57 : std_logic;
SIGNAL ww_phi2 : std_logic;
SIGNAL ww_phi2_early : std_logic;
SIGNAL ww_rw : std_logic;
SIGNAL ww_addr : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_data : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_data_dir : std_logic;
SIGNAL ww_n_data_oe : std_logic;
SIGNAL ww_n_reset : std_logic;
SIGNAL ww_extenb : std_logic;
SIGNAL ww_n_extsel : std_logic;
SIGNAL ww_n_mpd : std_logic;
SIGNAL ww_n_irq : std_logic;
SIGNAL ww_n_rdy : std_logic;
SIGNAL ww_spi_clk : std_logic;
SIGNAL ww_spi_ss_n : std_logic;
SIGNAL ww_spi_mosi : std_logic;
SIGNAL ww_spi_miso : std_logic;
SIGNAL ww_spi_mbf : std_logic;
SIGNAL ww_spi_sdav : std_logic;
SIGNAL \u0|onchip_flash_0|altera_onchip_flash_block|ufm_block_ARDIN_bus\ : std_logic_vector(22 DOWNTO 0);
SIGNAL \u0|onchip_flash_0|altera_onchip_flash_block|ufm_block_DRDOUT_bus\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a10_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a10_PORTBDATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a10_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a10_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a10_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a10_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a2_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a2_PORTBDATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a2_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a2_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a2_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a2_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a9_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a9_PORTBDATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a9_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a9_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a9_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a9_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a1_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a1_PORTBDATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a1_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a1_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a1_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a1_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a11_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a11_PORTBDATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a11_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a11_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a11_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a11_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a3_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a3_PORTBDATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a3_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a3_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a3_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a3_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a8_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a8_PORTBDATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a8_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a8_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a8_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a8_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a0_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a13_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a13_PORTBDATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a13_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a13_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a13_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a13_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a5_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a5_PORTBDATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a5_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a5_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a5_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a5_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a14_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a14_PORTBDATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a14_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a14_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a14_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a14_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a6_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a6_PORTBDATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a6_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a6_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a6_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a6_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a15_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a15_PORTBDATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a15_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a15_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a15_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a15_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a7_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a7_PORTBDATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a7_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a7_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a7_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a7_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a12_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a12_PORTBDATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a12_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a12_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a12_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a12_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a4_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a4_PORTBDATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a4_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a4_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a4_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a4_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a0_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a8_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a8_PORTBDATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a8_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a8_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a8_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a8_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a1_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a1_PORTBDATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a1_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a1_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a1_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a1_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a9_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a9_PORTBDATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a9_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a9_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a9_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a9_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a2_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a2_PORTBDATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a2_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a2_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a2_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a2_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a10_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a10_PORTBDATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a10_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a10_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a10_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a10_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a3_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a3_PORTBDATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a3_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a3_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a3_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a3_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a11_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a11_PORTBDATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a11_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a11_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a11_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a11_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a4_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a4_PORTBDATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a4_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a4_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a4_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a4_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a12_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a12_PORTBDATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a12_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a12_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a12_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a12_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a5_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a5_PORTBDATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a5_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a5_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a5_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a5_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a13_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a13_PORTBDATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a13_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a13_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a13_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a13_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a6_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a6_PORTBDATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a6_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a6_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a6_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a6_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a14_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a14_PORTBDATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a14_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a14_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a14_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a14_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a7_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a7_PORTBDATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a7_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a7_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a7_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a7_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a15_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a15_PORTBDATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a15_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a15_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a15_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a15_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \u1|s_slave_ram_clk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \master_ram_clk~reg0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk_57~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \phi2_early~reg0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \slave_ram_clk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \master_ram_wren~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \phi2~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \u1|process_2~2clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \u1|s_master_ram_clk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a0~portadataout\ : std_logic;
SIGNAL \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a8~portadataout\ : std_logic;
SIGNAL \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a1~portadataout\ : std_logic;
SIGNAL \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a9~portadataout\ : std_logic;
SIGNAL \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a2~portadataout\ : std_logic;
SIGNAL \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a10~portadataout\ : std_logic;
SIGNAL \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a3~portadataout\ : std_logic;
SIGNAL \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a11~portadataout\ : std_logic;
SIGNAL \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a4~portadataout\ : std_logic;
SIGNAL \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a12~portadataout\ : std_logic;
SIGNAL \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a5~portadataout\ : std_logic;
SIGNAL \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a13~portadataout\ : std_logic;
SIGNAL \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a6~portadataout\ : std_logic;
SIGNAL \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a14~portadataout\ : std_logic;
SIGNAL \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a7~portadataout\ : std_logic;
SIGNAL \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a15~portadataout\ : std_logic;
SIGNAL \extenb~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \spi_miso~output_o\ : std_logic;
SIGNAL \data[0]~output_o\ : std_logic;
SIGNAL \data[1]~output_o\ : std_logic;
SIGNAL \data[2]~output_o\ : std_logic;
SIGNAL \data[3]~output_o\ : std_logic;
SIGNAL \data[4]~output_o\ : std_logic;
SIGNAL \data[5]~output_o\ : std_logic;
SIGNAL \data[6]~output_o\ : std_logic;
SIGNAL \data[7]~output_o\ : std_logic;
SIGNAL \master_ram_clk~output_o\ : std_logic;
SIGNAL \master_ram_rden~output_o\ : std_logic;
SIGNAL \master_ram_wren~output_o\ : std_logic;
SIGNAL \n_led1~output_o\ : std_logic;
SIGNAL \n_led2~output_o\ : std_logic;
SIGNAL \n_led3~output_o\ : std_logic;
SIGNAL \n_led4~output_o\ : std_logic;
SIGNAL \n_led5~output_o\ : std_logic;
SIGNAL \phi2_early~output_o\ : std_logic;
SIGNAL \data_dir~output_o\ : std_logic;
SIGNAL \n_data_oe~output_o\ : std_logic;
SIGNAL \n_extsel~output_o\ : std_logic;
SIGNAL \n_mpd~output_o\ : std_logic;
SIGNAL \n_irq~output_o\ : std_logic;
SIGNAL \n_rdy~output_o\ : std_logic;
SIGNAL \spi_mbf~output_o\ : std_logic;
SIGNAL \spi_sdav~output_o\ : std_logic;
SIGNAL \spi_clk~input_o\ : std_logic;
SIGNAL \u1|bit_cnt[0]~33_combout\ : std_logic;
SIGNAL \n_reset~input_o\ : std_logic;
SIGNAL \spi_ss_n~input_o\ : std_logic;
SIGNAL \u1|process_2~2_combout\ : std_logic;
SIGNAL \u1|process_2~2clkctrl_outclk\ : std_logic;
SIGNAL \u1|bit_cnt[1]~11_combout\ : std_logic;
SIGNAL \u1|bit_cnt[1]~12\ : std_logic;
SIGNAL \u1|bit_cnt[2]~13_combout\ : std_logic;
SIGNAL \u1|s_slave_ram_clk~combout\ : std_logic;
SIGNAL \u1|s_slave_ram_clk~clkctrl_outclk\ : std_logic;
SIGNAL \u1|bit_cnt[2]~14\ : std_logic;
SIGNAL \u1|bit_cnt[3]~15_combout\ : std_logic;
SIGNAL \u1|bit_cnt[3]~16\ : std_logic;
SIGNAL \u1|bit_cnt[4]~17_combout\ : std_logic;
SIGNAL \u1|bit_cnt[4]~18\ : std_logic;
SIGNAL \u1|bit_cnt[5]~19_combout\ : std_logic;
SIGNAL \u1|bit_cnt[5]~20\ : std_logic;
SIGNAL \u1|bit_cnt[6]~21_combout\ : std_logic;
SIGNAL \u1|bit_cnt[6]~22\ : std_logic;
SIGNAL \u1|bit_cnt[7]~23_combout\ : std_logic;
SIGNAL \u1|bit_cnt[7]~24\ : std_logic;
SIGNAL \u1|bit_cnt[8]~25_combout\ : std_logic;
SIGNAL \u1|bit_cnt[8]~26\ : std_logic;
SIGNAL \u1|bit_cnt[9]~27_combout\ : std_logic;
SIGNAL \u1|bit_cnt[9]~28\ : std_logic;
SIGNAL \u1|bit_cnt[10]~29_combout\ : std_logic;
SIGNAL \u1|bit_cnt[10]~30\ : std_logic;
SIGNAL \u1|bit_cnt[11]~31_combout\ : std_logic;
SIGNAL \u1|LessThan2~0_combout\ : std_logic;
SIGNAL \u1|LessThan2~1_combout\ : std_logic;
SIGNAL \u1|LessThan2~3_combout\ : std_logic;
SIGNAL \u1|s_slave_ram_bank[5]~1_combout\ : std_logic;
SIGNAL \u1|Decoder0~0_combout\ : std_logic;
SIGNAL \u1|LessThan2~2_combout\ : std_logic;
SIGNAL \u1|process_2~3_combout\ : std_logic;
SIGNAL \spi_mosi~input_o\ : std_logic;
SIGNAL \u1|s_slave_ram_bank[4]~0_combout\ : std_logic;
SIGNAL \u1|s_slave_ram_bank[5]~2_combout\ : std_logic;
SIGNAL \u1|s_slave_ram_bank[5]~feeder_combout\ : std_logic;
SIGNAL \u1|s_slave_ram_rden~2_combout\ : std_logic;
SIGNAL \u1|s_slave_ram_rden~3_combout\ : std_logic;
SIGNAL \phi2~input_o\ : std_logic;
SIGNAL \phi2~inputclkctrl_outclk\ : std_logic;
SIGNAL \addr[8]~input_o\ : std_logic;
SIGNAL \addr_latch[8]~0_combout\ : std_logic;
SIGNAL \rw~input_o\ : std_logic;
SIGNAL \rw_latch~q\ : std_logic;
SIGNAL \dip_sw[2]~input_o\ : std_logic;
SIGNAL \clk_57~input_o\ : std_logic;
SIGNAL \clk_57~inputclkctrl_outclk\ : std_logic;
SIGNAL \clk_counter[2]~0_combout\ : std_logic;
SIGNAL \master_ram_wren~0_combout\ : std_logic;
SIGNAL \master_ram_wren~0clkctrl_outclk\ : std_logic;
SIGNAL \clk_counter[3]~2_combout\ : std_logic;
SIGNAL \clk_counter[0]~3_combout\ : std_logic;
SIGNAL \clk_counter[1]~1_combout\ : std_logic;
SIGNAL \Equal11~0_combout\ : std_logic;
SIGNAL \phi2_early~reg0_q\ : std_logic;
SIGNAL \phi2_early~reg0clkctrl_outclk\ : std_logic;
SIGNAL \data[5]~input_o\ : std_logic;
SIGNAL \addr[10]~input_o\ : std_logic;
SIGNAL \addr[11]~input_o\ : std_logic;
SIGNAL \addr[1]~input_o\ : std_logic;
SIGNAL \addr[3]~input_o\ : std_logic;
SIGNAL \addr[0]~input_o\ : std_logic;
SIGNAL \addr[2]~input_o\ : std_logic;
SIGNAL \Equal12~3_combout\ : std_logic;
SIGNAL \addr[4]~input_o\ : std_logic;
SIGNAL \addr[6]~input_o\ : std_logic;
SIGNAL \addr[5]~input_o\ : std_logic;
SIGNAL \addr[7]~input_o\ : std_logic;
SIGNAL \Equal12~4_combout\ : std_logic;
SIGNAL \addr[14]~input_o\ : std_logic;
SIGNAL \addr[13]~input_o\ : std_logic;
SIGNAL \addr[15]~input_o\ : std_logic;
SIGNAL \addr[12]~input_o\ : std_logic;
SIGNAL \Equal12~2_combout\ : std_logic;
SIGNAL \Equal12~6_combout\ : std_logic;
SIGNAL \addr[9]~input_o\ : std_logic;
SIGNAL \Equal12~7_combout\ : std_logic;
SIGNAL \hw_sel_act~q\ : std_logic;
SIGNAL \hw_sel[7]~0_combout\ : std_logic;
SIGNAL \data[1]~input_o\ : std_logic;
SIGNAL \dip_sw[1]~input_o\ : std_logic;
SIGNAL \dip_sw[4]~input_o\ : std_logic;
SIGNAL \dip_sw[3]~input_o\ : std_logic;
SIGNAL \dip_sw[0]~input_o\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \Equal13~1_combout\ : std_logic;
SIGNAL \data[6]~input_o\ : std_logic;
SIGNAL \hw_sel[6]~feeder_combout\ : std_logic;
SIGNAL \Equal2~0_combout\ : std_logic;
SIGNAL \data[2]~input_o\ : std_logic;
SIGNAL \Equal13~2_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \data[0]~input_o\ : std_logic;
SIGNAL \data[4]~input_o\ : std_logic;
SIGNAL \hw_sel[4]~feeder_combout\ : std_logic;
SIGNAL \Equal13~0_combout\ : std_logic;
SIGNAL \data[3]~input_o\ : std_logic;
SIGNAL \PBI_ADDR[3]~0_combout\ : std_logic;
SIGNAL \Equal13~3_combout\ : std_logic;
SIGNAL \Equal13~4_combout\ : std_logic;
SIGNAL \data[7]~input_o\ : std_logic;
SIGNAL \PBI_ADDR[7]~1_combout\ : std_logic;
SIGNAL \Equal13~5_combout\ : std_logic;
SIGNAL \addr_latch[9]~7_combout\ : std_logic;
SIGNAL \addr_latch[10]~6_combout\ : std_logic;
SIGNAL \addr_latch[11]~1_combout\ : std_logic;
SIGNAL \addr_latch[15]~3_combout\ : std_logic;
SIGNAL \addr_latch[13]~2_combout\ : std_logic;
SIGNAL \addr_latch[12]~5_combout\ : std_logic;
SIGNAL \addr_latch[14]~4_combout\ : std_logic;
SIGNAL \process_5~0_combout\ : std_logic;
SIGNAL \process_5~1_combout\ : std_logic;
SIGNAL \process_5~2_combout\ : std_logic;
SIGNAL \slave_ram_wren~0_combout\ : std_logic;
SIGNAL \reg_srbs[5]~feeder_combout\ : std_logic;
SIGNAL \addr_latch[1]~9_combout\ : std_logic;
SIGNAL \addr_latch[7]~10_combout\ : std_logic;
SIGNAL \Equal18~0_combout\ : std_logic;
SIGNAL \addr_latch[6]~11_combout\ : std_logic;
SIGNAL \addr_latch[2]~13_combout\ : std_logic;
SIGNAL \addr_latch[3]~12_combout\ : std_logic;
SIGNAL \Equal18~1_combout\ : std_logic;
SIGNAL \Equal18~2_combout\ : std_logic;
SIGNAL \addr_latch[4]~14_combout\ : std_logic;
SIGNAL \Equal18~3_combout\ : std_logic;
SIGNAL \addr_latch[5]~15_combout\ : std_logic;
SIGNAL \addr_latch[0]~8_combout\ : std_logic;
SIGNAL \Equal13~6_combout\ : std_logic;
SIGNAL \LessThan4~0_combout\ : std_logic;
SIGNAL \Equal12~5_combout\ : std_logic;
SIGNAL \LessThan5~0_combout\ : std_logic;
SIGNAL \dev_reg_act~0_combout\ : std_logic;
SIGNAL \dev_reg_act~q\ : std_logic;
SIGNAL \reg_mrbs[0]~0_combout\ : std_logic;
SIGNAL \reg_srbs[5]~0_combout\ : std_logic;
SIGNAL \slave_ram_rden~0_combout\ : std_logic;
SIGNAL \Equal8~0_combout\ : std_logic;
SIGNAL \process_2~0_combout\ : std_logic;
SIGNAL \master_ram_clk~0_combout\ : std_logic;
SIGNAL \slave_ram_clk~0_combout\ : std_logic;
SIGNAL \slave_ram_clk~1_combout\ : std_logic;
SIGNAL \slave_ram_clk~q\ : std_logic;
SIGNAL \slave_ram_clk~clkctrl_outclk\ : std_logic;
SIGNAL \u1|dpram_slave|altsyncram_component|auto_generated|rden_a_store~q\ : std_logic;
SIGNAL \u1|dpram_slave|altsyncram_component|auto_generated|rden_decode_a|eq_node[0]~1_combout\ : std_logic;
SIGNAL \u1|dpram_slave|altsyncram_component|auto_generated|rden_b_store~q\ : std_logic;
SIGNAL \u1|dpram_slave|altsyncram_component|auto_generated|_~2_combout\ : std_logic;
SIGNAL \u1|dpram_slave|altsyncram_component|auto_generated|wren_b_store~q\ : std_logic;
SIGNAL \u1|Decoder0~1_combout\ : std_logic;
SIGNAL \u1|process_2~4_combout\ : std_logic;
SIGNAL \u1|s_slave_ram_addr[0]~7_combout\ : std_logic;
SIGNAL \u1|s_slave_ram_addr[1]~8_combout\ : std_logic;
SIGNAL \u1|s_slave_ram_addr[1]~9\ : std_logic;
SIGNAL \u1|s_slave_ram_addr[2]~10_combout\ : std_logic;
SIGNAL \u1|s_slave_ram_addr[2]~11\ : std_logic;
SIGNAL \u1|s_slave_ram_addr[3]~12_combout\ : std_logic;
SIGNAL \u1|s_slave_ram_addr[3]~13\ : std_logic;
SIGNAL \u1|s_slave_ram_addr[4]~14_combout\ : std_logic;
SIGNAL \u1|s_slave_ram_addr[4]~15\ : std_logic;
SIGNAL \u1|s_slave_ram_addr[5]~16_combout\ : std_logic;
SIGNAL \u1|s_slave_ram_addr[5]~17\ : std_logic;
SIGNAL \u1|s_slave_ram_addr[6]~18_combout\ : std_logic;
SIGNAL \u1|s_slave_ram_addr[6]~19\ : std_logic;
SIGNAL \u1|s_slave_ram_addr[7]~20_combout\ : std_logic;
SIGNAL \u1|Decoder0~2_combout\ : std_logic;
SIGNAL \u1|s_slave_ram_bank[0]~3_combout\ : std_logic;
SIGNAL \u1|Decoder0~3_combout\ : std_logic;
SIGNAL \u1|s_slave_ram_bank[1]~4_combout\ : std_logic;
SIGNAL \u1|Decoder0~4_combout\ : std_logic;
SIGNAL \u1|s_slave_ram_bank[2]~5_combout\ : std_logic;
SIGNAL \u1|s_slave_ram_bank[3]~6_combout\ : std_logic;
SIGNAL \u1|Decoder0~5_combout\ : std_logic;
SIGNAL \u1|s_slave_ram_bank[4]~7_combout\ : std_logic;
SIGNAL \addr_latch[0]~_wirecell_combout\ : std_logic;
SIGNAL \addr_latch[1]~_wirecell_combout\ : std_logic;
SIGNAL \addr_latch[2]~_wirecell_combout\ : std_logic;
SIGNAL \addr_latch[3]~_wirecell_combout\ : std_logic;
SIGNAL \addr_latch[4]~_wirecell_combout\ : std_logic;
SIGNAL \addr_latch[5]~_wirecell_combout\ : std_logic;
SIGNAL \addr_latch[6]~_wirecell_combout\ : std_logic;
SIGNAL \addr_latch[7]~_wirecell_combout\ : std_logic;
SIGNAL \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a0~portadataout\ : std_logic;
SIGNAL \u1|dpram_slave|altsyncram_component|auto_generated|rden_decode_a|eq_node[1]~0_combout\ : std_logic;
SIGNAL \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a8~portadataout\ : std_logic;
SIGNAL \u1|spi_tx_buf[0]~13_combout\ : std_logic;
SIGNAL \u1|process_2~0_combout\ : std_logic;
SIGNAL \u1|spi_tx_buf~1_combout\ : std_logic;
SIGNAL \Equal19~0_combout\ : std_logic;
SIGNAL \Equal19~1_combout\ : std_logic;
SIGNAL \reg_stbkcr[0]~0_combout\ : std_logic;
SIGNAL \u1|spi_tx_buf[0]~14_combout\ : std_logic;
SIGNAL \reg_stbycr[0]~0_combout\ : std_logic;
SIGNAL \u1|process_2~1_combout\ : std_logic;
SIGNAL \u1|spi_tx_buf[0]~15_combout\ : std_logic;
SIGNAL \reg_sdcr[1]~0_combout\ : std_logic;
SIGNAL \u1|spi_tx_buf[0]~16_combout\ : std_logic;
SIGNAL \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a3~portadataout\ : std_logic;
SIGNAL \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a11~portadataout\ : std_logic;
SIGNAL \u1|spi_tx_buf[3]~9_combout\ : std_logic;
SIGNAL \u1|spi_tx_buf[3]~10_combout\ : std_logic;
SIGNAL \u1|spi_tx_buf[3]~11_combout\ : std_logic;
SIGNAL \u1|spi_tx_buf[3]~12_combout\ : std_logic;
SIGNAL \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a9~portadataout\ : std_logic;
SIGNAL \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a1~portadataout\ : std_logic;
SIGNAL \u1|spi_tx_buf[1]~5_combout\ : std_logic;
SIGNAL \u1|spi_tx_buf[1]~6_combout\ : std_logic;
SIGNAL \u1|spi_tx_buf[1]~7_combout\ : std_logic;
SIGNAL \u1|spi_tx_buf[1]~8_combout\ : std_logic;
SIGNAL \u1|Mux0~0_combout\ : std_logic;
SIGNAL \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a2~portadataout\ : std_logic;
SIGNAL \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a10~portadataout\ : std_logic;
SIGNAL \u1|spi_tx_buf[2]~0_combout\ : std_logic;
SIGNAL \u1|spi_tx_buf[2]~2_combout\ : std_logic;
SIGNAL \u1|spi_tx_buf[2]~3_combout\ : std_logic;
SIGNAL \u1|spi_tx_buf[2]~4_combout\ : std_logic;
SIGNAL \u1|Mux0~1_combout\ : std_logic;
SIGNAL \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a7~portadataout\ : std_logic;
SIGNAL \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a15~portadataout\ : std_logic;
SIGNAL \u1|spi_tx_buf[7]~25_combout\ : std_logic;
SIGNAL \u1|spi_tx_buf[7]~26_combout\ : std_logic;
SIGNAL \u1|spi_tx_buf[7]~27_combout\ : std_logic;
SIGNAL \u1|spi_tx_buf[7]~28_combout\ : std_logic;
SIGNAL \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a6~portadataout\ : std_logic;
SIGNAL \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a14~portadataout\ : std_logic;
SIGNAL \u1|spi_tx_buf[6]~21_combout\ : std_logic;
SIGNAL \u1|spi_tx_buf[6]~22_combout\ : std_logic;
SIGNAL \u1|spi_tx_buf[6]~23_combout\ : std_logic;
SIGNAL \u1|spi_tx_buf[6]~24_combout\ : std_logic;
SIGNAL \u1|Mux0~2_combout\ : std_logic;
SIGNAL \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a4~portadataout\ : std_logic;
SIGNAL \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a12~portadataout\ : std_logic;
SIGNAL \u1|spi_tx_buf[4]~29_combout\ : std_logic;
SIGNAL \u1|spi_tx_buf[4]~30_combout\ : std_logic;
SIGNAL \u1|spi_tx_buf[4]~31_combout\ : std_logic;
SIGNAL \u1|spi_tx_buf[4]~32_combout\ : std_logic;
SIGNAL \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a5~portadataout\ : std_logic;
SIGNAL \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a13~portadataout\ : std_logic;
SIGNAL \u1|spi_tx_buf[5]~17_combout\ : std_logic;
SIGNAL \u1|spi_tx_buf[5]~18_combout\ : std_logic;
SIGNAL \u1|spi_tx_buf[5]~19_combout\ : std_logic;
SIGNAL \u1|spi_tx_buf[5]~20_combout\ : std_logic;
SIGNAL \u1|Mux0~3_combout\ : std_logic;
SIGNAL \u1|Mux0~4_combout\ : std_logic;
SIGNAL \dev_rom_act~0_combout\ : std_logic;
SIGNAL \dev_rom_act~q\ : std_logic;
SIGNAL \data[0]~28_combout\ : std_logic;
SIGNAL \data[0]~18_combout\ : std_logic;
SIGNAL \master_ram_rden~0_combout\ : std_logic;
SIGNAL \u1|dpram_slave|altsyncram_component|auto_generated|address_reg_b[0]~feeder_combout\ : std_logic;
SIGNAL \master_ram_clk~1_combout\ : std_logic;
SIGNAL \master_ram_clk~reg0_q\ : std_logic;
SIGNAL \master_ram_clk~reg0clkctrl_outclk\ : std_logic;
SIGNAL \reg_mrbs[0]~1_combout\ : std_logic;
SIGNAL \u1|dpram_master|altsyncram_component|auto_generated|out_address_reg_b[0]~feeder_combout\ : std_logic;
SIGNAL \data[0]~29_combout\ : std_logic;
SIGNAL \u1|process_2~5_combout\ : std_logic;
SIGNAL \u1|s_master_ram_bank[5]~2_combout\ : std_logic;
SIGNAL \u1|s_master_ram_bank[5]~9_combout\ : std_logic;
SIGNAL \u1|s_master_ram_bank[5]~3_combout\ : std_logic;
SIGNAL \u1|s_master_ram_wren~0_combout\ : std_logic;
SIGNAL \u1|s_master_ram_wren~q\ : std_logic;
SIGNAL \master_ram_wren~1_combout\ : std_logic;
SIGNAL \u1|s_master_ram_clk~combout\ : std_logic;
SIGNAL \u1|s_master_ram_clk~clkctrl_outclk\ : std_logic;
SIGNAL \u1|dpram_master|altsyncram_component|auto_generated|_~0_combout\ : std_logic;
SIGNAL \u1|dpram_master|altsyncram_component|auto_generated|rden_b_store~q\ : std_logic;
SIGNAL \u1|dpram_master|altsyncram_component|auto_generated|wren_b_store~0_combout\ : std_logic;
SIGNAL \u1|dpram_master|altsyncram_component|auto_generated|wren_b_store~q\ : std_logic;
SIGNAL \u1|s_master_ram_data[7]~0_combout\ : std_logic;
SIGNAL \u1|s_master_ram_data[0]~1_combout\ : std_logic;
SIGNAL \u1|Decoder0~6_combout\ : std_logic;
SIGNAL \u1|process_2~6_combout\ : std_logic;
SIGNAL \u1|s_master_ram_addr[0]~7_combout\ : std_logic;
SIGNAL \u1|s_master_ram_addr[1]~8_combout\ : std_logic;
SIGNAL \u1|s_master_ram_addr[1]~9\ : std_logic;
SIGNAL \u1|s_master_ram_addr[2]~10_combout\ : std_logic;
SIGNAL \u1|s_master_ram_addr[2]~11\ : std_logic;
SIGNAL \u1|s_master_ram_addr[3]~12_combout\ : std_logic;
SIGNAL \u1|s_master_ram_addr[3]~13\ : std_logic;
SIGNAL \u1|s_master_ram_addr[4]~14_combout\ : std_logic;
SIGNAL \u1|s_master_ram_addr[4]~15\ : std_logic;
SIGNAL \u1|s_master_ram_addr[5]~16_combout\ : std_logic;
SIGNAL \u1|s_master_ram_addr[5]~17\ : std_logic;
SIGNAL \u1|s_master_ram_addr[6]~18_combout\ : std_logic;
SIGNAL \u1|s_master_ram_addr[6]~19\ : std_logic;
SIGNAL \u1|s_master_ram_addr[7]~20_combout\ : std_logic;
SIGNAL \u1|s_master_ram_bank[0]~4_combout\ : std_logic;
SIGNAL \u1|s_master_ram_bank[1]~5_combout\ : std_logic;
SIGNAL \u1|s_master_ram_bank[2]~6_combout\ : std_logic;
SIGNAL \u1|s_master_ram_bank[3]~7_combout\ : std_logic;
SIGNAL \u1|s_master_ram_bank[4]~8_combout\ : std_logic;
SIGNAL \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a8~PORTBDATAOUT0\ : std_logic;
SIGNAL \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a8~PORTBDATAOUT0\ : std_logic;
SIGNAL \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a0~PORTBDATAOUT0\ : std_logic;
SIGNAL \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a0~PORTBDATAOUT0\ : std_logic;
SIGNAL \data[0]~30_combout\ : std_logic;
SIGNAL \data[0]~31_combout\ : std_logic;
SIGNAL \led_latch[0]~1_combout\ : std_logic;
SIGNAL \data[0]~19_combout\ : std_logic;
SIGNAL \u1|s_sdsr[0]~0_combout\ : std_logic;
SIGNAL \u1|s_sdsr[0]~1_combout\ : std_logic;
SIGNAL \Equal22~0_combout\ : std_logic;
SIGNAL \data[0]~21_combout\ : std_logic;
SIGNAL \data[0]~22_combout\ : std_logic;
SIGNAL \Equal25~0_combout\ : std_logic;
SIGNAL \data[0]~23_combout\ : std_logic;
SIGNAL \reg_fbs[0]~0_combout\ : std_logic;
SIGNAL \u1|r_mtbkcr[0]~2_combout\ : std_logic;
SIGNAL \u1|r_mtbkcr[6]~11_combout\ : std_logic;
SIGNAL \u1|r_mtbkcr[0]~3_combout\ : std_logic;
SIGNAL \data[0]~24_combout\ : std_logic;
SIGNAL \data[0]~25_combout\ : std_logic;
SIGNAL \data[0]~20_combout\ : std_logic;
SIGNAL \u1|r_mtbycr[0]~2_combout\ : std_logic;
SIGNAL \u1|r_mtbycr[6]~12_combout\ : std_logic;
SIGNAL \u1|r_mtbycr[0]~3_combout\ : std_logic;
SIGNAL \data[0]~26_combout\ : std_logic;
SIGNAL \data[0]~27_combout\ : std_logic;
SIGNAL \data[0]~32_combout\ : std_logic;
SIGNAL \data[0]~33_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|reset_n_reg1~feeder_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|reset_n_reg1~q\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|reset_n_reg2~q\ : std_logic;
SIGNAL \reg_fbs[4]~feeder_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|csr_status_r_pass~0_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|csr_status_r_pass~1_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Selector0~0_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|avmm_read_state~q\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Selector1~0_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Selector1~1_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|avmm_readdata_ready~q\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|data_count~4_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|data_count~6_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|data_count[2]~10_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|data_count~8_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|data_count[2]~5_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|data_count~7_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|LessThan2~0_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Selector2~0_combout\ : std_logic;
SIGNAL \flash_read~0_combout\ : std_logic;
SIGNAL \flash_read~q\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin[0]~0_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Selector39~0_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|flash_ardin_align_backup_reg~3_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_reg~8_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|flash_ardin_align_backup_reg~2_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Add4~1_cout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Add4~3\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Add4~5\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Add4~7\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Add4~8_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Add4~6_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Add4~2_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Add4~4_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_reg~6_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_reg~7_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_reg[3]~13_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_input_reg[0]~0_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_reg[0]~9_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_reg[0]~14_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_reg[0]~10_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_reg~11_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_reg~4_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_reg~5_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Equal1~0_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|data_count~9_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|avmm_read_valid_state~q\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_reg~12_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Selector7~0_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Selector12~0_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_SETUP~q\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Selector5~0_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Selector5~1_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Selector4~0_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Selector4~1_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Selector13~0_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_DUMMY~q\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|read_state~20_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_READY~q\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|read_state~18_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_FINAL~q\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|read_state~19_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_CLEAR~q\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|read_state~17_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_IDLE~q\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|read_state~21_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_ADDR~q\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|csr_status_r_pass~2_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|csr_status_r_pass~q\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|flash_arclk_arshft_en_w~1_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|enable_arclk_sync_reg~q\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|enable_arclk_neg_reg~0_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|enable_arclk_neg_reg~q\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|enable_arclk_neg_pos_reg~0_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|enable_arclk_neg_pos_reg~q\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|flash_arclk~0_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Selector7~1_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Selector7~2_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|read_drclk_en~q\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|enable_drclk_neg_reg~0_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|enable_drclk_neg_reg~feeder_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|enable_drclk_neg_reg~q\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Selector6~0_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|enable_drclk_neg_pos_reg~feeder_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|enable_drclk_neg_pos_reg~q\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|flash_drclk~0_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Selector8~0_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|flash_drshft_reg~q\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|flash_drshft_neg_reg~0_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|flash_drshft_neg_reg~q\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|flash_drshft_neg_reg~_wirecell_combout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|flash_xe_ye~combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|flash_se_neg_reg~0_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|flash_se_neg_reg~q\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|flash_page_addr~0_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Selector24~0_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Selector25~0_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Add0~1\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Add0~2_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Selector37~0_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin[1]~2_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Add0~3\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Add0~4_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Selector36~0_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Add0~5\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Add0~6_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Selector35~0_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Add0~7\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Add0~8_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Selector34~0_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Add0~9\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Add0~10_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Selector33~0_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Add0~11\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Add0~12_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Selector32~0_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Add0~13\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Add0~14_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Selector31~0_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Add0~15\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Add0~16_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Selector30~0_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Add0~17\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Add0~18_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Selector29~0_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Add0~19\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Add0~20_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Selector28~0_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Add0~21\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Add0~22_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Selector27~0_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Add0~23\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Add0~24_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Selector26~0_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Add0~25\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Add0~27\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Add0~29\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Add0~31\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Add0~32_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Selector25~1_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Add0~26_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin[4]~1_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Selector23~0_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Selector23~1_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Add0~30_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Selector24~1_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Add0~28_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Selector38~0_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Add0~0_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Selector38~1_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|flash_page_addr~1_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|flash_page_addr~2_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|flash_page_addr~3_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|flash_page_addr~4_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|flash_page_addr~5_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|flash_page_addr~6_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|flash_page_addr~7_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|flash_page_addr~8_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|flash_read_addr[9]~0_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|address_convertor|Add0~0_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|flash_read_addr[14]~2_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|flash_read_addr[12]~5_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|flash_read_addr[11]~6_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|flash_read_addr[13]~4_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|address_convertor|LessThan0~0_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|flash_read_addr[15]~3_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|flash_read_addr[16]~1_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|address_convertor|LessThan0~1_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|address_convertor|Add0~2_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|flash_read_addr[10]~7_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|address_convertor|Add0~1\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|address_convertor|Add0~3_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|address_convertor|Add0~5_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|address_convertor|Add0~4\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|address_convertor|Add0~6_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|address_convertor|Add0~8_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|address_convertor|Add0~7\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|address_convertor|Add0~9_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|address_convertor|Add0~11_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|address_convertor|Add0~10\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|address_convertor|Add0~12_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|address_convertor|Add0~14_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|address_convertor|Add0~13\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|address_convertor|Add0~15_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|address_convertor|Add0~17_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|address_convertor|Add0~16\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|address_convertor|Add0~18_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|address_convertor|Add0~20_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|address_convertor|Add0~19\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|address_convertor|Add0~21_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|address_convertor|Add0~23_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|address_convertor|Add0~22\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|address_convertor|Add0~24_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|address_convertor|Add0~26_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|avmm_readdata[16]~0_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|avmm_readdatavalid_reg~0_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|avmm_readdatavalid_reg~q\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|avmm_readdata[8]~1_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|avmm_readdata[0]~2_combout\ : std_logic;
SIGNAL \data[0]~16_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|avmm_readdata[24]~3_combout\ : std_logic;
SIGNAL \data[0]~17_combout\ : std_logic;
SIGNAL \data[0]~34_combout\ : std_logic;
SIGNAL \n_data_oe~0_combout\ : std_logic;
SIGNAL \n_extsel~0_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|avmm_readdata[17]~5_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|avmm_readdata[1]~6_combout\ : std_logic;
SIGNAL \data[1]~35_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|avmm_readdata[9]~4_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|avmm_readdata[25]~7_combout\ : std_logic;
SIGNAL \data[1]~36_combout\ : std_logic;
SIGNAL \u1|r_mtbycr[1]~4_combout\ : std_logic;
SIGNAL \u1|r_mtbycr[1]~feeder_combout\ : std_logic;
SIGNAL \u1|r_mtbkcr[1]~4_combout\ : std_logic;
SIGNAL \u1|r_mtbkcr[1]~feeder_combout\ : std_logic;
SIGNAL \data[1]~37_combout\ : std_logic;
SIGNAL \data[1]~38_combout\ : std_logic;
SIGNAL \u1|s_sdsr[1]~2_combout\ : std_logic;
SIGNAL \data[1]~39_combout\ : std_logic;
SIGNAL \data[1]~40_combout\ : std_logic;
SIGNAL \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a9~PORTBDATAOUT0\ : std_logic;
SIGNAL \u1|s_master_ram_data[1]~2_combout\ : std_logic;
SIGNAL \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a9~PORTBDATAOUT0\ : std_logic;
SIGNAL \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a1~PORTBDATAOUT0\ : std_logic;
SIGNAL \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a1~PORTBDATAOUT0\ : std_logic;
SIGNAL \data[1]~41_combout\ : std_logic;
SIGNAL \data[1]~42_combout\ : std_logic;
SIGNAL \data[1]~43_combout\ : std_logic;
SIGNAL \data[1]~44_combout\ : std_logic;
SIGNAL \data[1]~45_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|avmm_readdata[10]~9_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|avmm_readdata[2]~10_combout\ : std_logic;
SIGNAL \data[2]~46_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|avmm_readdata[18]~8_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|avmm_readdata[26]~11_combout\ : std_logic;
SIGNAL \data[2]~47_combout\ : std_logic;
SIGNAL \u1|s_sdsr[2]~3_combout\ : std_logic;
SIGNAL \u1|s_sdsr[2]~feeder_combout\ : std_logic;
SIGNAL \u1|r_mtbycr[2]~5_combout\ : std_logic;
SIGNAL \u1|r_mtbkcr[2]~5_combout\ : std_logic;
SIGNAL \data[2]~48_combout\ : std_logic;
SIGNAL \data[2]~49_combout\ : std_logic;
SIGNAL \data[2]~50_combout\ : std_logic;
SIGNAL \data[2]~51_combout\ : std_logic;
SIGNAL \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a10~PORTBDATAOUT0\ : std_logic;
SIGNAL \u1|s_master_ram_data[2]~3_combout\ : std_logic;
SIGNAL \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a10~PORTBDATAOUT0\ : std_logic;
SIGNAL \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a2~PORTBDATAOUT0\ : std_logic;
SIGNAL \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a2~PORTBDATAOUT0\ : std_logic;
SIGNAL \data[2]~52_combout\ : std_logic;
SIGNAL \data[2]~53_combout\ : std_logic;
SIGNAL \data[2]~54_combout\ : std_logic;
SIGNAL \data[2]~55_combout\ : std_logic;
SIGNAL \data[2]~56_combout\ : std_logic;
SIGNAL \u1|r_mtbkcr[3]~6_combout\ : std_logic;
SIGNAL \u1|r_mtbkcr[3]~feeder_combout\ : std_logic;
SIGNAL \data[3]~59_combout\ : std_logic;
SIGNAL \data[3]~60_combout\ : std_logic;
SIGNAL \u1|s_sdsr[3]~4_combout\ : std_logic;
SIGNAL \data[3]~61_combout\ : std_logic;
SIGNAL \u1|r_mtbycr[3]~6_combout\ : std_logic;
SIGNAL \data[3]~62_combout\ : std_logic;
SIGNAL \u1|s_master_ram_data[3]~4_combout\ : std_logic;
SIGNAL \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a11~PORTBDATAOUT0\ : std_logic;
SIGNAL \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a3~PORTBDATAOUT0\ : std_logic;
SIGNAL \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a3~PORTBDATAOUT0\ : std_logic;
SIGNAL \data[3]~63_combout\ : std_logic;
SIGNAL \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a11~PORTBDATAOUT0\ : std_logic;
SIGNAL \data[3]~64_combout\ : std_logic;
SIGNAL \data[3]~65_combout\ : std_logic;
SIGNAL \data[3]~66_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|avmm_readdata[27]~15_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|avmm_readdata[3]~14_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|avmm_readdata[19]~13_combout\ : std_logic;
SIGNAL \data[3]~57_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|avmm_readdata[11]~12_combout\ : std_logic;
SIGNAL \data[3]~58_combout\ : std_logic;
SIGNAL \data[3]~67_combout\ : std_logic;
SIGNAL \u1|s_sdsr[4]~5_combout\ : std_logic;
SIGNAL \u1|r_mtbkcr[4]~7_combout\ : std_logic;
SIGNAL \data[4]~70_combout\ : std_logic;
SIGNAL \data[4]~71_combout\ : std_logic;
SIGNAL \u1|r_mtbycr[4]~7_combout\ : std_logic;
SIGNAL \data[4]~72_combout\ : std_logic;
SIGNAL \data[4]~73_combout\ : std_logic;
SIGNAL \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a12~PORTBDATAOUT0\ : std_logic;
SIGNAL \u1|s_master_ram_data[4]~5_combout\ : std_logic;
SIGNAL \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a12~PORTBDATAOUT0\ : std_logic;
SIGNAL \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a4~PORTBDATAOUT0\ : std_logic;
SIGNAL \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a4~PORTBDATAOUT0\ : std_logic;
SIGNAL \data[4]~74_combout\ : std_logic;
SIGNAL \data[4]~75_combout\ : std_logic;
SIGNAL \data[4]~76_combout\ : std_logic;
SIGNAL \data[4]~77_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|avmm_readdata[20]~16_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|avmm_readdata[28]~19_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|avmm_readdata[4]~18_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|avmm_readdata[12]~17_combout\ : std_logic;
SIGNAL \data[4]~68_combout\ : std_logic;
SIGNAL \data[4]~69_combout\ : std_logic;
SIGNAL \data[4]~78_combout\ : std_logic;
SIGNAL \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a13~PORTBDATAOUT0\ : std_logic;
SIGNAL \u1|s_master_ram_data[5]~6_combout\ : std_logic;
SIGNAL \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a13~PORTBDATAOUT0\ : std_logic;
SIGNAL \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a5~PORTBDATAOUT0\ : std_logic;
SIGNAL \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a5~PORTBDATAOUT0\ : std_logic;
SIGNAL \data[5]~85_combout\ : std_logic;
SIGNAL \data[5]~86_combout\ : std_logic;
SIGNAL \data[5]~87_combout\ : std_logic;
SIGNAL \u1|r_mtbkcr[5]~8_combout\ : std_logic;
SIGNAL \data[5]~81_combout\ : std_logic;
SIGNAL \data[5]~82_combout\ : std_logic;
SIGNAL \u1|s_sdsr[5]~6_combout\ : std_logic;
SIGNAL \data[5]~83_combout\ : std_logic;
SIGNAL \u1|r_mtbycr[5]~8_combout\ : std_logic;
SIGNAL \data[5]~84_combout\ : std_logic;
SIGNAL \data[5]~88_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|avmm_readdata[29]~23_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|avmm_readdata[13]~20_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|avmm_readdata[21]~21_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|avmm_readdata[5]~22_combout\ : std_logic;
SIGNAL \data[5]~79_combout\ : std_logic;
SIGNAL \data[5]~80_combout\ : std_logic;
SIGNAL \data[5]~89_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|avmm_readdata[14]~25_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|avmm_readdata[6]~26_combout\ : std_logic;
SIGNAL \data[6]~90_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|avmm_readdata[22]~24_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|avmm_readdata[30]~27_combout\ : std_logic;
SIGNAL \data[6]~91_combout\ : std_logic;
SIGNAL \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a6~PORTBDATAOUT0\ : std_logic;
SIGNAL \u1|r_mtbycr[6]~9_combout\ : std_logic;
SIGNAL \u1|s_master_ram_data[6]~7_combout\ : std_logic;
SIGNAL \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a6~PORTBDATAOUT0\ : std_logic;
SIGNAL \data[6]~96_combout\ : std_logic;
SIGNAL \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a14~PORTBDATAOUT0\ : std_logic;
SIGNAL \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a14~PORTBDATAOUT0\ : std_logic;
SIGNAL \data[6]~97_combout\ : std_logic;
SIGNAL \u1|r_mtbycr[6]~10_combout\ : std_logic;
SIGNAL \u1|r_mtbkcr[6]~9_combout\ : std_logic;
SIGNAL \data[6]~92_combout\ : std_logic;
SIGNAL \data[6]~93_combout\ : std_logic;
SIGNAL \data[6]~94_combout\ : std_logic;
SIGNAL \u1|s_sdsr[6]~7_combout\ : std_logic;
SIGNAL \data[6]~95_combout\ : std_logic;
SIGNAL \data[6]~98_combout\ : std_logic;
SIGNAL \data[6]~99_combout\ : std_logic;
SIGNAL \data[6]~100_combout\ : std_logic;
SIGNAL \u1|r_mtbkcr[7]~10_combout\ : std_logic;
SIGNAL \data[7]~103_combout\ : std_logic;
SIGNAL \data[7]~104_combout\ : std_logic;
SIGNAL \data[7]~105_combout\ : std_logic;
SIGNAL \u1|r_mtbycr[7]~11_combout\ : std_logic;
SIGNAL \data[7]~106_combout\ : std_logic;
SIGNAL \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a15~PORTBDATAOUT0\ : std_logic;
SIGNAL \u1|s_master_ram_data[7]~8_combout\ : std_logic;
SIGNAL \u1|s_master_ram_data[7]~feeder_combout\ : std_logic;
SIGNAL \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a15~PORTBDATAOUT0\ : std_logic;
SIGNAL \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a7~PORTBDATAOUT0\ : std_logic;
SIGNAL \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a7~PORTBDATAOUT0\ : std_logic;
SIGNAL \data[7]~107_combout\ : std_logic;
SIGNAL \data[7]~108_combout\ : std_logic;
SIGNAL \data[7]~109_combout\ : std_logic;
SIGNAL \data[7]~110_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|avmm_readdata[31]~31_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|avmm_readdata[15]~28_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|avmm_readdata[23]~29_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|avmm_readdata[7]~30_combout\ : std_logic;
SIGNAL \data[7]~101_combout\ : std_logic;
SIGNAL \data[7]~102_combout\ : std_logic;
SIGNAL \data[7]~111_combout\ : std_logic;
SIGNAL \led_latch[0]~2_combout\ : std_logic;
SIGNAL \led_latch[2]~feeder_combout\ : std_logic;
SIGNAL \led_latch[3]~feeder_combout\ : std_logic;
SIGNAL \led_latch[4]~0_combout\ : std_logic;
SIGNAL \process_5~3_combout\ : std_logic;
SIGNAL \process_5~4_combout\ : std_logic;
SIGNAL \data_dir~0_combout\ : std_logic;
SIGNAL \data_dir~reg0_q\ : std_logic;
SIGNAL \n_data_oe~1_combout\ : std_logic;
SIGNAL \n_data_oe~2_combout\ : std_logic;
SIGNAL \spi_mbf~0_combout\ : std_logic;
SIGNAL \spi_sdav~0_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|altera_onchip_flash_block|drdout\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \u1|bit_cnt\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \u0|onchip_flash_0|avmm_data_controller|flash_page_addr\ : std_logic_vector(22 DOWNTO 0);
SIGNAL \u1|s_master_ram_addr\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_reg\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin\ : std_logic_vector(22 DOWNTO 0);
SIGNAL \u1|s_slave_ram_addr\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \u0|onchip_flash_0|avmm_data_controller|data_count\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \u0|onchip_flash_0|avmm_data_controller|flash_ardin_align_backup_reg\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \u0|onchip_flash_0|avmm_data_controller|flash_ardin_align_reg\ : std_logic_vector(0 DOWNTO 0);
SIGNAL addr_latch : std_logic_vector(15 DOWNTO 0);
SIGNAL \u1|dpram_slave|altsyncram_component|auto_generated|address_reg_a\ : std_logic_vector(0 DOWNTO 0);
SIGNAL hw_sel : std_logic_vector(7 DOWNTO 0);
SIGNAL led_latch : std_logic_vector(4 DOWNTO 0);
SIGNAL \u1|dpram_slave|altsyncram_component|auto_generated|out_address_reg_a\ : std_logic_vector(0 DOWNTO 0);
SIGNAL reg_sdcr : std_logic_vector(7 DOWNTO 0);
SIGNAL clk_counter : std_logic_vector(3 DOWNTO 0);
SIGNAL \u1|dpram_slave|altsyncram_component|auto_generated|out_address_reg_b\ : std_logic_vector(0 DOWNTO 0);
SIGNAL reg_stbkcr : std_logic_vector(7 DOWNTO 0);
SIGNAL reg_stbycr : std_logic_vector(7 DOWNTO 0);
SIGNAL \u1|dpram_slave|altsyncram_component|auto_generated|address_reg_b\ : std_logic_vector(0 DOWNTO 0);
SIGNAL reg_fbs : std_logic_vector(7 DOWNTO 0);
SIGNAL reg_srbs : std_logic_vector(7 DOWNTO 0);
SIGNAL \u1|s_master_ram_data\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \u1|dpram_slave|altsyncram_component|auto_generated|decode3|eq_node\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \u1|s_slave_ram_bank\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \u1|dpram_slave|altsyncram_component|auto_generated|rden_decode_b|eq_node\ : std_logic_vector(1 DOWNTO 0);
SIGNAL flash_data_latch : std_logic_vector(31 DOWNTO 0);
SIGNAL \u1|s_sdsr\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \u1|r_mtbycr\ : std_logic_vector(7 DOWNTO 0);
SIGNAL reg_mrbs : std_logic_vector(7 DOWNTO 0);
SIGNAL \u1|r_mtbkcr\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \u1|dpram_master|altsyncram_component|auto_generated|out_address_reg_b\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_input_reg\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \u1|dpram_master|altsyncram_component|auto_generated|address_reg_b\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \u1|s_master_ram_bank\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \u1|dpram_master|altsyncram_component|auto_generated|decode2|eq_node\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \u1|dpram_master|altsyncram_component|auto_generated|decode3|eq_node\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \u1|dpram_master|altsyncram_component|auto_generated|rden_decode_b|eq_node\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \u0|onchip_flash_0|avmm_data_controller|read_ctrl_count\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \u1|ALT_INV_process_2~2clkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_master_ram_wren~0clkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_phi2_early~reg0clkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_clk_57~inputclkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_spi_clk~input_o\ : std_logic;
SIGNAL \ALT_INV_clk_57~input_o\ : std_logic;
SIGNAL \u1|ALT_INV_s_master_ram_bank\ : std_logic_vector(5 DOWNTO 5);
SIGNAL \u0|onchip_flash_0|avmm_data_controller|ALT_INV_reset_n_reg2~q\ : std_logic;
SIGNAL \u1|ALT_INV_process_2~2_combout\ : std_logic;
SIGNAL \ALT_INV_n_extsel~0_combout\ : std_logic;
SIGNAL \ALT_INV_data_dir~reg0_q\ : std_logic;
SIGNAL \ALT_INV_led_latch[4]~0_combout\ : std_logic;
SIGNAL ALT_INV_led_latch : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_master_ram_wren~1_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

master_ram_clk <= ww_master_ram_clk;
master_ram_rden <= ww_master_ram_rden;
master_ram_wren <= ww_master_ram_wren;
n_led1 <= ww_n_led1;
n_led2 <= ww_n_led2;
n_led3 <= ww_n_led3;
n_led4 <= ww_n_led4;
n_led5 <= ww_n_led5;
ww_dip_sw <= dip_sw;
ww_clk_57 <= clk_57;
ww_phi2 <= phi2;
phi2_early <= ww_phi2_early;
ww_rw <= rw;
ww_addr <= addr;
data <= ww_data;
data_dir <= ww_data_dir;
n_data_oe <= ww_n_data_oe;
ww_n_reset <= n_reset;
ww_extenb <= extenb;
n_extsel <= ww_n_extsel;
n_mpd <= ww_n_mpd;
n_irq <= ww_n_irq;
n_rdy <= ww_n_rdy;
ww_spi_clk <= spi_clk;
ww_spi_ss_n <= spi_ss_n;
ww_spi_mosi <= spi_mosi;
spi_miso <= ww_spi_miso;
spi_mbf <= ww_spi_mbf;
spi_sdav <= ww_spi_sdav;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\u0|onchip_flash_0|altera_onchip_flash_block|ufm_block_ARDIN_bus\ <= (\~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \u0|onchip_flash_0|avmm_data_controller|flash_page_addr\(17) & 
\u0|onchip_flash_0|avmm_data_controller|flash_page_addr\(16) & \u0|onchip_flash_0|avmm_data_controller|flash_page_addr\(15) & \u0|onchip_flash_0|avmm_data_controller|flash_page_addr\(14) & \u0|onchip_flash_0|avmm_data_controller|flash_page_addr\(13)
& \u0|onchip_flash_0|avmm_data_controller|flash_page_addr\(12) & \u0|onchip_flash_0|avmm_data_controller|flash_page_addr\(11) & \u0|onchip_flash_0|avmm_data_controller|flash_page_addr\(10) & \u0|onchip_flash_0|avmm_data_controller|flash_page_addr\(9)
& \u0|onchip_flash_0|avmm_data_controller|flash_page_addr\(8) & \u0|onchip_flash_0|avmm_data_controller|flash_page_addr\(7) & \u0|onchip_flash_0|avmm_data_controller|flash_page_addr\(6) & \u0|onchip_flash_0|avmm_data_controller|flash_page_addr\(5)
& \u0|onchip_flash_0|avmm_data_controller|flash_page_addr\(4) & \u0|onchip_flash_0|avmm_data_controller|flash_page_addr\(3) & \u0|onchip_flash_0|avmm_data_controller|flash_page_addr\(2) & \u0|onchip_flash_0|avmm_data_controller|flash_page_addr\(1)
& \u0|onchip_flash_0|avmm_data_controller|flash_page_addr\(0));

\u0|onchip_flash_0|altera_onchip_flash_block|drdout\(0) <= \u0|onchip_flash_0|altera_onchip_flash_block|ufm_block_DRDOUT_bus\(0);
\u0|onchip_flash_0|altera_onchip_flash_block|drdout\(1) <= \u0|onchip_flash_0|altera_onchip_flash_block|ufm_block_DRDOUT_bus\(1);
\u0|onchip_flash_0|altera_onchip_flash_block|drdout\(2) <= \u0|onchip_flash_0|altera_onchip_flash_block|ufm_block_DRDOUT_bus\(2);
\u0|onchip_flash_0|altera_onchip_flash_block|drdout\(3) <= \u0|onchip_flash_0|altera_onchip_flash_block|ufm_block_DRDOUT_bus\(3);
\u0|onchip_flash_0|altera_onchip_flash_block|drdout\(4) <= \u0|onchip_flash_0|altera_onchip_flash_block|ufm_block_DRDOUT_bus\(4);
\u0|onchip_flash_0|altera_onchip_flash_block|drdout\(5) <= \u0|onchip_flash_0|altera_onchip_flash_block|ufm_block_DRDOUT_bus\(5);
\u0|onchip_flash_0|altera_onchip_flash_block|drdout\(6) <= \u0|onchip_flash_0|altera_onchip_flash_block|ufm_block_DRDOUT_bus\(6);
\u0|onchip_flash_0|altera_onchip_flash_block|drdout\(7) <= \u0|onchip_flash_0|altera_onchip_flash_block|ufm_block_DRDOUT_bus\(7);
\u0|onchip_flash_0|altera_onchip_flash_block|drdout\(8) <= \u0|onchip_flash_0|altera_onchip_flash_block|ufm_block_DRDOUT_bus\(8);
\u0|onchip_flash_0|altera_onchip_flash_block|drdout\(9) <= \u0|onchip_flash_0|altera_onchip_flash_block|ufm_block_DRDOUT_bus\(9);
\u0|onchip_flash_0|altera_onchip_flash_block|drdout\(10) <= \u0|onchip_flash_0|altera_onchip_flash_block|ufm_block_DRDOUT_bus\(10);
\u0|onchip_flash_0|altera_onchip_flash_block|drdout\(11) <= \u0|onchip_flash_0|altera_onchip_flash_block|ufm_block_DRDOUT_bus\(11);
\u0|onchip_flash_0|altera_onchip_flash_block|drdout\(12) <= \u0|onchip_flash_0|altera_onchip_flash_block|ufm_block_DRDOUT_bus\(12);
\u0|onchip_flash_0|altera_onchip_flash_block|drdout\(13) <= \u0|onchip_flash_0|altera_onchip_flash_block|ufm_block_DRDOUT_bus\(13);
\u0|onchip_flash_0|altera_onchip_flash_block|drdout\(14) <= \u0|onchip_flash_0|altera_onchip_flash_block|ufm_block_DRDOUT_bus\(14);
\u0|onchip_flash_0|altera_onchip_flash_block|drdout\(15) <= \u0|onchip_flash_0|altera_onchip_flash_block|ufm_block_DRDOUT_bus\(15);
\u0|onchip_flash_0|altera_onchip_flash_block|drdout\(16) <= \u0|onchip_flash_0|altera_onchip_flash_block|ufm_block_DRDOUT_bus\(16);
\u0|onchip_flash_0|altera_onchip_flash_block|drdout\(17) <= \u0|onchip_flash_0|altera_onchip_flash_block|ufm_block_DRDOUT_bus\(17);
\u0|onchip_flash_0|altera_onchip_flash_block|drdout\(18) <= \u0|onchip_flash_0|altera_onchip_flash_block|ufm_block_DRDOUT_bus\(18);
\u0|onchip_flash_0|altera_onchip_flash_block|drdout\(19) <= \u0|onchip_flash_0|altera_onchip_flash_block|ufm_block_DRDOUT_bus\(19);
\u0|onchip_flash_0|altera_onchip_flash_block|drdout\(20) <= \u0|onchip_flash_0|altera_onchip_flash_block|ufm_block_DRDOUT_bus\(20);
\u0|onchip_flash_0|altera_onchip_flash_block|drdout\(21) <= \u0|onchip_flash_0|altera_onchip_flash_block|ufm_block_DRDOUT_bus\(21);
\u0|onchip_flash_0|altera_onchip_flash_block|drdout\(22) <= \u0|onchip_flash_0|altera_onchip_flash_block|ufm_block_DRDOUT_bus\(22);
\u0|onchip_flash_0|altera_onchip_flash_block|drdout\(23) <= \u0|onchip_flash_0|altera_onchip_flash_block|ufm_block_DRDOUT_bus\(23);
\u0|onchip_flash_0|altera_onchip_flash_block|drdout\(24) <= \u0|onchip_flash_0|altera_onchip_flash_block|ufm_block_DRDOUT_bus\(24);
\u0|onchip_flash_0|altera_onchip_flash_block|drdout\(25) <= \u0|onchip_flash_0|altera_onchip_flash_block|ufm_block_DRDOUT_bus\(25);
\u0|onchip_flash_0|altera_onchip_flash_block|drdout\(26) <= \u0|onchip_flash_0|altera_onchip_flash_block|ufm_block_DRDOUT_bus\(26);
\u0|onchip_flash_0|altera_onchip_flash_block|drdout\(27) <= \u0|onchip_flash_0|altera_onchip_flash_block|ufm_block_DRDOUT_bus\(27);
\u0|onchip_flash_0|altera_onchip_flash_block|drdout\(28) <= \u0|onchip_flash_0|altera_onchip_flash_block|ufm_block_DRDOUT_bus\(28);
\u0|onchip_flash_0|altera_onchip_flash_block|drdout\(29) <= \u0|onchip_flash_0|altera_onchip_flash_block|ufm_block_DRDOUT_bus\(29);
\u0|onchip_flash_0|altera_onchip_flash_block|drdout\(30) <= \u0|onchip_flash_0|altera_onchip_flash_block|ufm_block_DRDOUT_bus\(30);
\u0|onchip_flash_0|altera_onchip_flash_block|drdout\(31) <= \u0|onchip_flash_0|altera_onchip_flash_block|ufm_block_DRDOUT_bus\(31);

\u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a10_PORTADATAIN_bus\(0) <= vcc;

\u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a10_PORTBDATAIN_bus\(0) <= \data[2]~input_o\;

\u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a10_PORTAADDR_bus\ <= (\u1|s_slave_ram_bank\(4) & \u1|s_slave_ram_bank\(3) & \u1|s_slave_ram_bank\(2) & \u1|s_slave_ram_bank\(1) & \u1|s_slave_ram_bank\(0) & 
\u1|s_slave_ram_addr\(7) & \u1|s_slave_ram_addr\(6) & \u1|s_slave_ram_addr\(5) & \u1|s_slave_ram_addr\(4) & \u1|s_slave_ram_addr\(3) & \u1|s_slave_ram_addr\(2) & \u1|s_slave_ram_addr\(1) & \u1|s_slave_ram_addr\(0));

\u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a10_PORTBADDR_bus\ <= (reg_srbs(4) & reg_srbs(3) & reg_srbs(2) & reg_srbs(1) & reg_srbs(0) & \addr_latch[7]~_wirecell_combout\ & \addr_latch[6]~_wirecell_combout\ & 
\addr_latch[5]~_wirecell_combout\ & \addr_latch[4]~_wirecell_combout\ & \addr_latch[3]~_wirecell_combout\ & \addr_latch[2]~_wirecell_combout\ & \addr_latch[1]~_wirecell_combout\ & \addr_latch[0]~_wirecell_combout\);

\u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a10~portadataout\ <= \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a10_PORTADATAOUT_bus\(0);

\u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a10~PORTBDATAOUT0\ <= \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a10_PORTBDATAOUT_bus\(0);

\u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a2_PORTADATAIN_bus\(0) <= vcc;

\u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a2_PORTBDATAIN_bus\(0) <= \data[2]~input_o\;

\u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a2_PORTAADDR_bus\ <= (\u1|s_slave_ram_bank\(4) & \u1|s_slave_ram_bank\(3) & \u1|s_slave_ram_bank\(2) & \u1|s_slave_ram_bank\(1) & \u1|s_slave_ram_bank\(0) & \u1|s_slave_ram_addr\(7)
& \u1|s_slave_ram_addr\(6) & \u1|s_slave_ram_addr\(5) & \u1|s_slave_ram_addr\(4) & \u1|s_slave_ram_addr\(3) & \u1|s_slave_ram_addr\(2) & \u1|s_slave_ram_addr\(1) & \u1|s_slave_ram_addr\(0));

\u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a2_PORTBADDR_bus\ <= (reg_srbs(4) & reg_srbs(3) & reg_srbs(2) & reg_srbs(1) & reg_srbs(0) & \addr_latch[7]~_wirecell_combout\ & \addr_latch[6]~_wirecell_combout\ & 
\addr_latch[5]~_wirecell_combout\ & \addr_latch[4]~_wirecell_combout\ & \addr_latch[3]~_wirecell_combout\ & \addr_latch[2]~_wirecell_combout\ & \addr_latch[1]~_wirecell_combout\ & \addr_latch[0]~_wirecell_combout\);

\u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a2~portadataout\ <= \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a2_PORTADATAOUT_bus\(0);

\u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a2~PORTBDATAOUT0\ <= \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a2_PORTBDATAOUT_bus\(0);

\u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a9_PORTADATAIN_bus\(0) <= vcc;

\u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a9_PORTBDATAIN_bus\(0) <= \data[1]~input_o\;

\u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a9_PORTAADDR_bus\ <= (\u1|s_slave_ram_bank\(4) & \u1|s_slave_ram_bank\(3) & \u1|s_slave_ram_bank\(2) & \u1|s_slave_ram_bank\(1) & \u1|s_slave_ram_bank\(0) & \u1|s_slave_ram_addr\(7)
& \u1|s_slave_ram_addr\(6) & \u1|s_slave_ram_addr\(5) & \u1|s_slave_ram_addr\(4) & \u1|s_slave_ram_addr\(3) & \u1|s_slave_ram_addr\(2) & \u1|s_slave_ram_addr\(1) & \u1|s_slave_ram_addr\(0));

\u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a9_PORTBADDR_bus\ <= (reg_srbs(4) & reg_srbs(3) & reg_srbs(2) & reg_srbs(1) & reg_srbs(0) & \addr_latch[7]~_wirecell_combout\ & \addr_latch[6]~_wirecell_combout\ & 
\addr_latch[5]~_wirecell_combout\ & \addr_latch[4]~_wirecell_combout\ & \addr_latch[3]~_wirecell_combout\ & \addr_latch[2]~_wirecell_combout\ & \addr_latch[1]~_wirecell_combout\ & \addr_latch[0]~_wirecell_combout\);

\u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a9~portadataout\ <= \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a9_PORTADATAOUT_bus\(0);

\u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a9~PORTBDATAOUT0\ <= \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a9_PORTBDATAOUT_bus\(0);

\u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a1_PORTADATAIN_bus\(0) <= vcc;

\u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a1_PORTBDATAIN_bus\(0) <= \data[1]~input_o\;

\u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a1_PORTAADDR_bus\ <= (\u1|s_slave_ram_bank\(4) & \u1|s_slave_ram_bank\(3) & \u1|s_slave_ram_bank\(2) & \u1|s_slave_ram_bank\(1) & \u1|s_slave_ram_bank\(0) & \u1|s_slave_ram_addr\(7)
& \u1|s_slave_ram_addr\(6) & \u1|s_slave_ram_addr\(5) & \u1|s_slave_ram_addr\(4) & \u1|s_slave_ram_addr\(3) & \u1|s_slave_ram_addr\(2) & \u1|s_slave_ram_addr\(1) & \u1|s_slave_ram_addr\(0));

\u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a1_PORTBADDR_bus\ <= (reg_srbs(4) & reg_srbs(3) & reg_srbs(2) & reg_srbs(1) & reg_srbs(0) & \addr_latch[7]~_wirecell_combout\ & \addr_latch[6]~_wirecell_combout\ & 
\addr_latch[5]~_wirecell_combout\ & \addr_latch[4]~_wirecell_combout\ & \addr_latch[3]~_wirecell_combout\ & \addr_latch[2]~_wirecell_combout\ & \addr_latch[1]~_wirecell_combout\ & \addr_latch[0]~_wirecell_combout\);

\u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a1~portadataout\ <= \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a1_PORTADATAOUT_bus\(0);

\u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a1~PORTBDATAOUT0\ <= \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a1_PORTBDATAOUT_bus\(0);

\u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a11_PORTADATAIN_bus\(0) <= vcc;

\u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a11_PORTBDATAIN_bus\(0) <= \data[3]~input_o\;

\u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a11_PORTAADDR_bus\ <= (\u1|s_slave_ram_bank\(4) & \u1|s_slave_ram_bank\(3) & \u1|s_slave_ram_bank\(2) & \u1|s_slave_ram_bank\(1) & \u1|s_slave_ram_bank\(0) & 
\u1|s_slave_ram_addr\(7) & \u1|s_slave_ram_addr\(6) & \u1|s_slave_ram_addr\(5) & \u1|s_slave_ram_addr\(4) & \u1|s_slave_ram_addr\(3) & \u1|s_slave_ram_addr\(2) & \u1|s_slave_ram_addr\(1) & \u1|s_slave_ram_addr\(0));

\u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a11_PORTBADDR_bus\ <= (reg_srbs(4) & reg_srbs(3) & reg_srbs(2) & reg_srbs(1) & reg_srbs(0) & \addr_latch[7]~_wirecell_combout\ & \addr_latch[6]~_wirecell_combout\ & 
\addr_latch[5]~_wirecell_combout\ & \addr_latch[4]~_wirecell_combout\ & \addr_latch[3]~_wirecell_combout\ & \addr_latch[2]~_wirecell_combout\ & \addr_latch[1]~_wirecell_combout\ & \addr_latch[0]~_wirecell_combout\);

\u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a11~portadataout\ <= \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a11_PORTADATAOUT_bus\(0);

\u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a11~PORTBDATAOUT0\ <= \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a11_PORTBDATAOUT_bus\(0);

\u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a3_PORTADATAIN_bus\(0) <= vcc;

\u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a3_PORTBDATAIN_bus\(0) <= \data[3]~input_o\;

\u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a3_PORTAADDR_bus\ <= (\u1|s_slave_ram_bank\(4) & \u1|s_slave_ram_bank\(3) & \u1|s_slave_ram_bank\(2) & \u1|s_slave_ram_bank\(1) & \u1|s_slave_ram_bank\(0) & \u1|s_slave_ram_addr\(7)
& \u1|s_slave_ram_addr\(6) & \u1|s_slave_ram_addr\(5) & \u1|s_slave_ram_addr\(4) & \u1|s_slave_ram_addr\(3) & \u1|s_slave_ram_addr\(2) & \u1|s_slave_ram_addr\(1) & \u1|s_slave_ram_addr\(0));

\u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a3_PORTBADDR_bus\ <= (reg_srbs(4) & reg_srbs(3) & reg_srbs(2) & reg_srbs(1) & reg_srbs(0) & \addr_latch[7]~_wirecell_combout\ & \addr_latch[6]~_wirecell_combout\ & 
\addr_latch[5]~_wirecell_combout\ & \addr_latch[4]~_wirecell_combout\ & \addr_latch[3]~_wirecell_combout\ & \addr_latch[2]~_wirecell_combout\ & \addr_latch[1]~_wirecell_combout\ & \addr_latch[0]~_wirecell_combout\);

\u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a3~portadataout\ <= \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a3_PORTADATAOUT_bus\(0);

\u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a3~PORTBDATAOUT0\ <= \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a3_PORTBDATAOUT_bus\(0);

\u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a8_PORTADATAIN_bus\(0) <= vcc;

\u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a8_PORTBDATAIN_bus\(0) <= \data[0]~input_o\;

\u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a8_PORTAADDR_bus\ <= (\u1|s_slave_ram_bank\(4) & \u1|s_slave_ram_bank\(3) & \u1|s_slave_ram_bank\(2) & \u1|s_slave_ram_bank\(1) & \u1|s_slave_ram_bank\(0) & \u1|s_slave_ram_addr\(7)
& \u1|s_slave_ram_addr\(6) & \u1|s_slave_ram_addr\(5) & \u1|s_slave_ram_addr\(4) & \u1|s_slave_ram_addr\(3) & \u1|s_slave_ram_addr\(2) & \u1|s_slave_ram_addr\(1) & \u1|s_slave_ram_addr\(0));

\u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a8_PORTBADDR_bus\ <= (reg_srbs(4) & reg_srbs(3) & reg_srbs(2) & reg_srbs(1) & reg_srbs(0) & \addr_latch[7]~_wirecell_combout\ & \addr_latch[6]~_wirecell_combout\ & 
\addr_latch[5]~_wirecell_combout\ & \addr_latch[4]~_wirecell_combout\ & \addr_latch[3]~_wirecell_combout\ & \addr_latch[2]~_wirecell_combout\ & \addr_latch[1]~_wirecell_combout\ & \addr_latch[0]~_wirecell_combout\);

\u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a8~portadataout\ <= \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a8_PORTADATAOUT_bus\(0);

\u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a8~PORTBDATAOUT0\ <= \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a8_PORTBDATAOUT_bus\(0);

\u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\(0) <= vcc;

\u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAIN_bus\(0) <= \data[0]~input_o\;

\u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\u1|s_slave_ram_bank\(4) & \u1|s_slave_ram_bank\(3) & \u1|s_slave_ram_bank\(2) & \u1|s_slave_ram_bank\(1) & \u1|s_slave_ram_bank\(0) & \u1|s_slave_ram_addr\(7)
& \u1|s_slave_ram_addr\(6) & \u1|s_slave_ram_addr\(5) & \u1|s_slave_ram_addr\(4) & \u1|s_slave_ram_addr\(3) & \u1|s_slave_ram_addr\(2) & \u1|s_slave_ram_addr\(1) & \u1|s_slave_ram_addr\(0));

\u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a0_PORTBADDR_bus\ <= (reg_srbs(4) & reg_srbs(3) & reg_srbs(2) & reg_srbs(1) & reg_srbs(0) & \addr_latch[7]~_wirecell_combout\ & \addr_latch[6]~_wirecell_combout\ & 
\addr_latch[5]~_wirecell_combout\ & \addr_latch[4]~_wirecell_combout\ & \addr_latch[3]~_wirecell_combout\ & \addr_latch[2]~_wirecell_combout\ & \addr_latch[1]~_wirecell_combout\ & \addr_latch[0]~_wirecell_combout\);

\u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a0~portadataout\ <= \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);

\u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a0~PORTBDATAOUT0\ <= \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(0);

\u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a13_PORTADATAIN_bus\(0) <= vcc;

\u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a13_PORTBDATAIN_bus\(0) <= \data[5]~input_o\;

\u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a13_PORTAADDR_bus\ <= (\u1|s_slave_ram_bank\(4) & \u1|s_slave_ram_bank\(3) & \u1|s_slave_ram_bank\(2) & \u1|s_slave_ram_bank\(1) & \u1|s_slave_ram_bank\(0) & 
\u1|s_slave_ram_addr\(7) & \u1|s_slave_ram_addr\(6) & \u1|s_slave_ram_addr\(5) & \u1|s_slave_ram_addr\(4) & \u1|s_slave_ram_addr\(3) & \u1|s_slave_ram_addr\(2) & \u1|s_slave_ram_addr\(1) & \u1|s_slave_ram_addr\(0));

\u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a13_PORTBADDR_bus\ <= (reg_srbs(4) & reg_srbs(3) & reg_srbs(2) & reg_srbs(1) & reg_srbs(0) & \addr_latch[7]~_wirecell_combout\ & \addr_latch[6]~_wirecell_combout\ & 
\addr_latch[5]~_wirecell_combout\ & \addr_latch[4]~_wirecell_combout\ & \addr_latch[3]~_wirecell_combout\ & \addr_latch[2]~_wirecell_combout\ & \addr_latch[1]~_wirecell_combout\ & \addr_latch[0]~_wirecell_combout\);

\u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a13~portadataout\ <= \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a13_PORTADATAOUT_bus\(0);

\u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a13~PORTBDATAOUT0\ <= \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a13_PORTBDATAOUT_bus\(0);

\u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a5_PORTADATAIN_bus\(0) <= vcc;

\u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a5_PORTBDATAIN_bus\(0) <= \data[5]~input_o\;

\u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a5_PORTAADDR_bus\ <= (\u1|s_slave_ram_bank\(4) & \u1|s_slave_ram_bank\(3) & \u1|s_slave_ram_bank\(2) & \u1|s_slave_ram_bank\(1) & \u1|s_slave_ram_bank\(0) & \u1|s_slave_ram_addr\(7)
& \u1|s_slave_ram_addr\(6) & \u1|s_slave_ram_addr\(5) & \u1|s_slave_ram_addr\(4) & \u1|s_slave_ram_addr\(3) & \u1|s_slave_ram_addr\(2) & \u1|s_slave_ram_addr\(1) & \u1|s_slave_ram_addr\(0));

\u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a5_PORTBADDR_bus\ <= (reg_srbs(4) & reg_srbs(3) & reg_srbs(2) & reg_srbs(1) & reg_srbs(0) & \addr_latch[7]~_wirecell_combout\ & \addr_latch[6]~_wirecell_combout\ & 
\addr_latch[5]~_wirecell_combout\ & \addr_latch[4]~_wirecell_combout\ & \addr_latch[3]~_wirecell_combout\ & \addr_latch[2]~_wirecell_combout\ & \addr_latch[1]~_wirecell_combout\ & \addr_latch[0]~_wirecell_combout\);

\u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a5~portadataout\ <= \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a5_PORTADATAOUT_bus\(0);

\u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a5~PORTBDATAOUT0\ <= \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a5_PORTBDATAOUT_bus\(0);

\u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a14_PORTADATAIN_bus\(0) <= vcc;

\u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a14_PORTBDATAIN_bus\(0) <= \data[6]~input_o\;

\u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a14_PORTAADDR_bus\ <= (\u1|s_slave_ram_bank\(4) & \u1|s_slave_ram_bank\(3) & \u1|s_slave_ram_bank\(2) & \u1|s_slave_ram_bank\(1) & \u1|s_slave_ram_bank\(0) & 
\u1|s_slave_ram_addr\(7) & \u1|s_slave_ram_addr\(6) & \u1|s_slave_ram_addr\(5) & \u1|s_slave_ram_addr\(4) & \u1|s_slave_ram_addr\(3) & \u1|s_slave_ram_addr\(2) & \u1|s_slave_ram_addr\(1) & \u1|s_slave_ram_addr\(0));

\u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a14_PORTBADDR_bus\ <= (reg_srbs(4) & reg_srbs(3) & reg_srbs(2) & reg_srbs(1) & reg_srbs(0) & \addr_latch[7]~_wirecell_combout\ & \addr_latch[6]~_wirecell_combout\ & 
\addr_latch[5]~_wirecell_combout\ & \addr_latch[4]~_wirecell_combout\ & \addr_latch[3]~_wirecell_combout\ & \addr_latch[2]~_wirecell_combout\ & \addr_latch[1]~_wirecell_combout\ & \addr_latch[0]~_wirecell_combout\);

\u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a14~portadataout\ <= \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a14_PORTADATAOUT_bus\(0);

\u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a14~PORTBDATAOUT0\ <= \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a14_PORTBDATAOUT_bus\(0);

\u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a6_PORTADATAIN_bus\(0) <= vcc;

\u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a6_PORTBDATAIN_bus\(0) <= \data[6]~input_o\;

\u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a6_PORTAADDR_bus\ <= (\u1|s_slave_ram_bank\(4) & \u1|s_slave_ram_bank\(3) & \u1|s_slave_ram_bank\(2) & \u1|s_slave_ram_bank\(1) & \u1|s_slave_ram_bank\(0) & \u1|s_slave_ram_addr\(7)
& \u1|s_slave_ram_addr\(6) & \u1|s_slave_ram_addr\(5) & \u1|s_slave_ram_addr\(4) & \u1|s_slave_ram_addr\(3) & \u1|s_slave_ram_addr\(2) & \u1|s_slave_ram_addr\(1) & \u1|s_slave_ram_addr\(0));

\u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a6_PORTBADDR_bus\ <= (reg_srbs(4) & reg_srbs(3) & reg_srbs(2) & reg_srbs(1) & reg_srbs(0) & \addr_latch[7]~_wirecell_combout\ & \addr_latch[6]~_wirecell_combout\ & 
\addr_latch[5]~_wirecell_combout\ & \addr_latch[4]~_wirecell_combout\ & \addr_latch[3]~_wirecell_combout\ & \addr_latch[2]~_wirecell_combout\ & \addr_latch[1]~_wirecell_combout\ & \addr_latch[0]~_wirecell_combout\);

\u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a6~portadataout\ <= \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a6_PORTADATAOUT_bus\(0);

\u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a6~PORTBDATAOUT0\ <= \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a6_PORTBDATAOUT_bus\(0);

\u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a15_PORTADATAIN_bus\(0) <= vcc;

\u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a15_PORTBDATAIN_bus\(0) <= \data[7]~input_o\;

\u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a15_PORTAADDR_bus\ <= (\u1|s_slave_ram_bank\(4) & \u1|s_slave_ram_bank\(3) & \u1|s_slave_ram_bank\(2) & \u1|s_slave_ram_bank\(1) & \u1|s_slave_ram_bank\(0) & 
\u1|s_slave_ram_addr\(7) & \u1|s_slave_ram_addr\(6) & \u1|s_slave_ram_addr\(5) & \u1|s_slave_ram_addr\(4) & \u1|s_slave_ram_addr\(3) & \u1|s_slave_ram_addr\(2) & \u1|s_slave_ram_addr\(1) & \u1|s_slave_ram_addr\(0));

\u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a15_PORTBADDR_bus\ <= (reg_srbs(4) & reg_srbs(3) & reg_srbs(2) & reg_srbs(1) & reg_srbs(0) & \addr_latch[7]~_wirecell_combout\ & \addr_latch[6]~_wirecell_combout\ & 
\addr_latch[5]~_wirecell_combout\ & \addr_latch[4]~_wirecell_combout\ & \addr_latch[3]~_wirecell_combout\ & \addr_latch[2]~_wirecell_combout\ & \addr_latch[1]~_wirecell_combout\ & \addr_latch[0]~_wirecell_combout\);

\u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a15~portadataout\ <= \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a15_PORTADATAOUT_bus\(0);

\u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a15~PORTBDATAOUT0\ <= \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a15_PORTBDATAOUT_bus\(0);

\u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a7_PORTADATAIN_bus\(0) <= vcc;

\u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a7_PORTBDATAIN_bus\(0) <= \data[7]~input_o\;

\u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a7_PORTAADDR_bus\ <= (\u1|s_slave_ram_bank\(4) & \u1|s_slave_ram_bank\(3) & \u1|s_slave_ram_bank\(2) & \u1|s_slave_ram_bank\(1) & \u1|s_slave_ram_bank\(0) & \u1|s_slave_ram_addr\(7)
& \u1|s_slave_ram_addr\(6) & \u1|s_slave_ram_addr\(5) & \u1|s_slave_ram_addr\(4) & \u1|s_slave_ram_addr\(3) & \u1|s_slave_ram_addr\(2) & \u1|s_slave_ram_addr\(1) & \u1|s_slave_ram_addr\(0));

\u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a7_PORTBADDR_bus\ <= (reg_srbs(4) & reg_srbs(3) & reg_srbs(2) & reg_srbs(1) & reg_srbs(0) & \addr_latch[7]~_wirecell_combout\ & \addr_latch[6]~_wirecell_combout\ & 
\addr_latch[5]~_wirecell_combout\ & \addr_latch[4]~_wirecell_combout\ & \addr_latch[3]~_wirecell_combout\ & \addr_latch[2]~_wirecell_combout\ & \addr_latch[1]~_wirecell_combout\ & \addr_latch[0]~_wirecell_combout\);

\u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a7~portadataout\ <= \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a7_PORTADATAOUT_bus\(0);

\u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a7~PORTBDATAOUT0\ <= \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a7_PORTBDATAOUT_bus\(0);

\u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a12_PORTADATAIN_bus\(0) <= vcc;

\u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a12_PORTBDATAIN_bus\(0) <= \data[4]~input_o\;

\u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a12_PORTAADDR_bus\ <= (\u1|s_slave_ram_bank\(4) & \u1|s_slave_ram_bank\(3) & \u1|s_slave_ram_bank\(2) & \u1|s_slave_ram_bank\(1) & \u1|s_slave_ram_bank\(0) & 
\u1|s_slave_ram_addr\(7) & \u1|s_slave_ram_addr\(6) & \u1|s_slave_ram_addr\(5) & \u1|s_slave_ram_addr\(4) & \u1|s_slave_ram_addr\(3) & \u1|s_slave_ram_addr\(2) & \u1|s_slave_ram_addr\(1) & \u1|s_slave_ram_addr\(0));

\u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a12_PORTBADDR_bus\ <= (reg_srbs(4) & reg_srbs(3) & reg_srbs(2) & reg_srbs(1) & reg_srbs(0) & \addr_latch[7]~_wirecell_combout\ & \addr_latch[6]~_wirecell_combout\ & 
\addr_latch[5]~_wirecell_combout\ & \addr_latch[4]~_wirecell_combout\ & \addr_latch[3]~_wirecell_combout\ & \addr_latch[2]~_wirecell_combout\ & \addr_latch[1]~_wirecell_combout\ & \addr_latch[0]~_wirecell_combout\);

\u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a12~portadataout\ <= \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a12_PORTADATAOUT_bus\(0);

\u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a12~PORTBDATAOUT0\ <= \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a12_PORTBDATAOUT_bus\(0);

\u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a4_PORTADATAIN_bus\(0) <= vcc;

\u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a4_PORTBDATAIN_bus\(0) <= \data[4]~input_o\;

\u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a4_PORTAADDR_bus\ <= (\u1|s_slave_ram_bank\(4) & \u1|s_slave_ram_bank\(3) & \u1|s_slave_ram_bank\(2) & \u1|s_slave_ram_bank\(1) & \u1|s_slave_ram_bank\(0) & \u1|s_slave_ram_addr\(7)
& \u1|s_slave_ram_addr\(6) & \u1|s_slave_ram_addr\(5) & \u1|s_slave_ram_addr\(4) & \u1|s_slave_ram_addr\(3) & \u1|s_slave_ram_addr\(2) & \u1|s_slave_ram_addr\(1) & \u1|s_slave_ram_addr\(0));

\u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a4_PORTBADDR_bus\ <= (reg_srbs(4) & reg_srbs(3) & reg_srbs(2) & reg_srbs(1) & reg_srbs(0) & \addr_latch[7]~_wirecell_combout\ & \addr_latch[6]~_wirecell_combout\ & 
\addr_latch[5]~_wirecell_combout\ & \addr_latch[4]~_wirecell_combout\ & \addr_latch[3]~_wirecell_combout\ & \addr_latch[2]~_wirecell_combout\ & \addr_latch[1]~_wirecell_combout\ & \addr_latch[0]~_wirecell_combout\);

\u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a4~portadataout\ <= \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a4_PORTADATAOUT_bus\(0);

\u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a4~PORTBDATAOUT0\ <= \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a4_PORTBDATAOUT_bus\(0);

\u1|dpram_master|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\(0) <= \u1|s_master_ram_data\(0);

\u1|dpram_master|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAIN_bus\(0) <= \data[0]~input_o\;

\u1|dpram_master|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\u1|s_master_ram_bank\(4) & \u1|s_master_ram_bank\(3) & \u1|s_master_ram_bank\(2) & \u1|s_master_ram_bank\(1) & \u1|s_master_ram_bank\(0) & 
\u1|s_master_ram_addr\(7) & \u1|s_master_ram_addr\(6) & \u1|s_master_ram_addr\(5) & \u1|s_master_ram_addr\(4) & \u1|s_master_ram_addr\(3) & \u1|s_master_ram_addr\(2) & \u1|s_master_ram_addr\(1) & \u1|s_master_ram_addr\(0));

\u1|dpram_master|altsyncram_component|auto_generated|ram_block1a0_PORTBADDR_bus\ <= (reg_mrbs(4) & reg_mrbs(3) & reg_mrbs(2) & reg_mrbs(1) & reg_mrbs(0) & \addr_latch[7]~_wirecell_combout\ & \addr_latch[6]~_wirecell_combout\ & 
\addr_latch[5]~_wirecell_combout\ & \addr_latch[4]~_wirecell_combout\ & \addr_latch[3]~_wirecell_combout\ & \addr_latch[2]~_wirecell_combout\ & \addr_latch[1]~_wirecell_combout\ & \addr_latch[0]~_wirecell_combout\);

\u1|dpram_master|altsyncram_component|auto_generated|ram_block1a0~portadataout\ <= \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);

\u1|dpram_master|altsyncram_component|auto_generated|ram_block1a0~PORTBDATAOUT0\ <= \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(0);

\u1|dpram_master|altsyncram_component|auto_generated|ram_block1a8_PORTADATAIN_bus\(0) <= \u1|s_master_ram_data\(0);

\u1|dpram_master|altsyncram_component|auto_generated|ram_block1a8_PORTBDATAIN_bus\(0) <= \data[0]~input_o\;

\u1|dpram_master|altsyncram_component|auto_generated|ram_block1a8_PORTAADDR_bus\ <= (\u1|s_master_ram_bank\(4) & \u1|s_master_ram_bank\(3) & \u1|s_master_ram_bank\(2) & \u1|s_master_ram_bank\(1) & \u1|s_master_ram_bank\(0) & 
\u1|s_master_ram_addr\(7) & \u1|s_master_ram_addr\(6) & \u1|s_master_ram_addr\(5) & \u1|s_master_ram_addr\(4) & \u1|s_master_ram_addr\(3) & \u1|s_master_ram_addr\(2) & \u1|s_master_ram_addr\(1) & \u1|s_master_ram_addr\(0));

\u1|dpram_master|altsyncram_component|auto_generated|ram_block1a8_PORTBADDR_bus\ <= (reg_mrbs(4) & reg_mrbs(3) & reg_mrbs(2) & reg_mrbs(1) & reg_mrbs(0) & \addr_latch[7]~_wirecell_combout\ & \addr_latch[6]~_wirecell_combout\ & 
\addr_latch[5]~_wirecell_combout\ & \addr_latch[4]~_wirecell_combout\ & \addr_latch[3]~_wirecell_combout\ & \addr_latch[2]~_wirecell_combout\ & \addr_latch[1]~_wirecell_combout\ & \addr_latch[0]~_wirecell_combout\);

\u1|dpram_master|altsyncram_component|auto_generated|ram_block1a8~portadataout\ <= \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a8_PORTADATAOUT_bus\(0);

\u1|dpram_master|altsyncram_component|auto_generated|ram_block1a8~PORTBDATAOUT0\ <= \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a8_PORTBDATAOUT_bus\(0);

\u1|dpram_master|altsyncram_component|auto_generated|ram_block1a1_PORTADATAIN_bus\(0) <= \u1|s_master_ram_data\(1);

\u1|dpram_master|altsyncram_component|auto_generated|ram_block1a1_PORTBDATAIN_bus\(0) <= \data[1]~input_o\;

\u1|dpram_master|altsyncram_component|auto_generated|ram_block1a1_PORTAADDR_bus\ <= (\u1|s_master_ram_bank\(4) & \u1|s_master_ram_bank\(3) & \u1|s_master_ram_bank\(2) & \u1|s_master_ram_bank\(1) & \u1|s_master_ram_bank\(0) & 
\u1|s_master_ram_addr\(7) & \u1|s_master_ram_addr\(6) & \u1|s_master_ram_addr\(5) & \u1|s_master_ram_addr\(4) & \u1|s_master_ram_addr\(3) & \u1|s_master_ram_addr\(2) & \u1|s_master_ram_addr\(1) & \u1|s_master_ram_addr\(0));

\u1|dpram_master|altsyncram_component|auto_generated|ram_block1a1_PORTBADDR_bus\ <= (reg_mrbs(4) & reg_mrbs(3) & reg_mrbs(2) & reg_mrbs(1) & reg_mrbs(0) & \addr_latch[7]~_wirecell_combout\ & \addr_latch[6]~_wirecell_combout\ & 
\addr_latch[5]~_wirecell_combout\ & \addr_latch[4]~_wirecell_combout\ & \addr_latch[3]~_wirecell_combout\ & \addr_latch[2]~_wirecell_combout\ & \addr_latch[1]~_wirecell_combout\ & \addr_latch[0]~_wirecell_combout\);

\u1|dpram_master|altsyncram_component|auto_generated|ram_block1a1~portadataout\ <= \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a1_PORTADATAOUT_bus\(0);

\u1|dpram_master|altsyncram_component|auto_generated|ram_block1a1~PORTBDATAOUT0\ <= \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a1_PORTBDATAOUT_bus\(0);

\u1|dpram_master|altsyncram_component|auto_generated|ram_block1a9_PORTADATAIN_bus\(0) <= \u1|s_master_ram_data\(1);

\u1|dpram_master|altsyncram_component|auto_generated|ram_block1a9_PORTBDATAIN_bus\(0) <= \data[1]~input_o\;

\u1|dpram_master|altsyncram_component|auto_generated|ram_block1a9_PORTAADDR_bus\ <= (\u1|s_master_ram_bank\(4) & \u1|s_master_ram_bank\(3) & \u1|s_master_ram_bank\(2) & \u1|s_master_ram_bank\(1) & \u1|s_master_ram_bank\(0) & 
\u1|s_master_ram_addr\(7) & \u1|s_master_ram_addr\(6) & \u1|s_master_ram_addr\(5) & \u1|s_master_ram_addr\(4) & \u1|s_master_ram_addr\(3) & \u1|s_master_ram_addr\(2) & \u1|s_master_ram_addr\(1) & \u1|s_master_ram_addr\(0));

\u1|dpram_master|altsyncram_component|auto_generated|ram_block1a9_PORTBADDR_bus\ <= (reg_mrbs(4) & reg_mrbs(3) & reg_mrbs(2) & reg_mrbs(1) & reg_mrbs(0) & \addr_latch[7]~_wirecell_combout\ & \addr_latch[6]~_wirecell_combout\ & 
\addr_latch[5]~_wirecell_combout\ & \addr_latch[4]~_wirecell_combout\ & \addr_latch[3]~_wirecell_combout\ & \addr_latch[2]~_wirecell_combout\ & \addr_latch[1]~_wirecell_combout\ & \addr_latch[0]~_wirecell_combout\);

\u1|dpram_master|altsyncram_component|auto_generated|ram_block1a9~portadataout\ <= \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a9_PORTADATAOUT_bus\(0);

\u1|dpram_master|altsyncram_component|auto_generated|ram_block1a9~PORTBDATAOUT0\ <= \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a9_PORTBDATAOUT_bus\(0);

\u1|dpram_master|altsyncram_component|auto_generated|ram_block1a2_PORTADATAIN_bus\(0) <= \u1|s_master_ram_data\(2);

\u1|dpram_master|altsyncram_component|auto_generated|ram_block1a2_PORTBDATAIN_bus\(0) <= \data[2]~input_o\;

\u1|dpram_master|altsyncram_component|auto_generated|ram_block1a2_PORTAADDR_bus\ <= (\u1|s_master_ram_bank\(4) & \u1|s_master_ram_bank\(3) & \u1|s_master_ram_bank\(2) & \u1|s_master_ram_bank\(1) & \u1|s_master_ram_bank\(0) & 
\u1|s_master_ram_addr\(7) & \u1|s_master_ram_addr\(6) & \u1|s_master_ram_addr\(5) & \u1|s_master_ram_addr\(4) & \u1|s_master_ram_addr\(3) & \u1|s_master_ram_addr\(2) & \u1|s_master_ram_addr\(1) & \u1|s_master_ram_addr\(0));

\u1|dpram_master|altsyncram_component|auto_generated|ram_block1a2_PORTBADDR_bus\ <= (reg_mrbs(4) & reg_mrbs(3) & reg_mrbs(2) & reg_mrbs(1) & reg_mrbs(0) & \addr_latch[7]~_wirecell_combout\ & \addr_latch[6]~_wirecell_combout\ & 
\addr_latch[5]~_wirecell_combout\ & \addr_latch[4]~_wirecell_combout\ & \addr_latch[3]~_wirecell_combout\ & \addr_latch[2]~_wirecell_combout\ & \addr_latch[1]~_wirecell_combout\ & \addr_latch[0]~_wirecell_combout\);

\u1|dpram_master|altsyncram_component|auto_generated|ram_block1a2~portadataout\ <= \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a2_PORTADATAOUT_bus\(0);

\u1|dpram_master|altsyncram_component|auto_generated|ram_block1a2~PORTBDATAOUT0\ <= \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a2_PORTBDATAOUT_bus\(0);

\u1|dpram_master|altsyncram_component|auto_generated|ram_block1a10_PORTADATAIN_bus\(0) <= \u1|s_master_ram_data\(2);

\u1|dpram_master|altsyncram_component|auto_generated|ram_block1a10_PORTBDATAIN_bus\(0) <= \data[2]~input_o\;

\u1|dpram_master|altsyncram_component|auto_generated|ram_block1a10_PORTAADDR_bus\ <= (\u1|s_master_ram_bank\(4) & \u1|s_master_ram_bank\(3) & \u1|s_master_ram_bank\(2) & \u1|s_master_ram_bank\(1) & \u1|s_master_ram_bank\(0) & 
\u1|s_master_ram_addr\(7) & \u1|s_master_ram_addr\(6) & \u1|s_master_ram_addr\(5) & \u1|s_master_ram_addr\(4) & \u1|s_master_ram_addr\(3) & \u1|s_master_ram_addr\(2) & \u1|s_master_ram_addr\(1) & \u1|s_master_ram_addr\(0));

\u1|dpram_master|altsyncram_component|auto_generated|ram_block1a10_PORTBADDR_bus\ <= (reg_mrbs(4) & reg_mrbs(3) & reg_mrbs(2) & reg_mrbs(1) & reg_mrbs(0) & \addr_latch[7]~_wirecell_combout\ & \addr_latch[6]~_wirecell_combout\ & 
\addr_latch[5]~_wirecell_combout\ & \addr_latch[4]~_wirecell_combout\ & \addr_latch[3]~_wirecell_combout\ & \addr_latch[2]~_wirecell_combout\ & \addr_latch[1]~_wirecell_combout\ & \addr_latch[0]~_wirecell_combout\);

\u1|dpram_master|altsyncram_component|auto_generated|ram_block1a10~portadataout\ <= \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a10_PORTADATAOUT_bus\(0);

\u1|dpram_master|altsyncram_component|auto_generated|ram_block1a10~PORTBDATAOUT0\ <= \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a10_PORTBDATAOUT_bus\(0);

\u1|dpram_master|altsyncram_component|auto_generated|ram_block1a3_PORTADATAIN_bus\(0) <= \u1|s_master_ram_data\(3);

\u1|dpram_master|altsyncram_component|auto_generated|ram_block1a3_PORTBDATAIN_bus\(0) <= \data[3]~input_o\;

\u1|dpram_master|altsyncram_component|auto_generated|ram_block1a3_PORTAADDR_bus\ <= (\u1|s_master_ram_bank\(4) & \u1|s_master_ram_bank\(3) & \u1|s_master_ram_bank\(2) & \u1|s_master_ram_bank\(1) & \u1|s_master_ram_bank\(0) & 
\u1|s_master_ram_addr\(7) & \u1|s_master_ram_addr\(6) & \u1|s_master_ram_addr\(5) & \u1|s_master_ram_addr\(4) & \u1|s_master_ram_addr\(3) & \u1|s_master_ram_addr\(2) & \u1|s_master_ram_addr\(1) & \u1|s_master_ram_addr\(0));

\u1|dpram_master|altsyncram_component|auto_generated|ram_block1a3_PORTBADDR_bus\ <= (reg_mrbs(4) & reg_mrbs(3) & reg_mrbs(2) & reg_mrbs(1) & reg_mrbs(0) & \addr_latch[7]~_wirecell_combout\ & \addr_latch[6]~_wirecell_combout\ & 
\addr_latch[5]~_wirecell_combout\ & \addr_latch[4]~_wirecell_combout\ & \addr_latch[3]~_wirecell_combout\ & \addr_latch[2]~_wirecell_combout\ & \addr_latch[1]~_wirecell_combout\ & \addr_latch[0]~_wirecell_combout\);

\u1|dpram_master|altsyncram_component|auto_generated|ram_block1a3~portadataout\ <= \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a3_PORTADATAOUT_bus\(0);

\u1|dpram_master|altsyncram_component|auto_generated|ram_block1a3~PORTBDATAOUT0\ <= \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a3_PORTBDATAOUT_bus\(0);

\u1|dpram_master|altsyncram_component|auto_generated|ram_block1a11_PORTADATAIN_bus\(0) <= \u1|s_master_ram_data\(3);

\u1|dpram_master|altsyncram_component|auto_generated|ram_block1a11_PORTBDATAIN_bus\(0) <= \data[3]~input_o\;

\u1|dpram_master|altsyncram_component|auto_generated|ram_block1a11_PORTAADDR_bus\ <= (\u1|s_master_ram_bank\(4) & \u1|s_master_ram_bank\(3) & \u1|s_master_ram_bank\(2) & \u1|s_master_ram_bank\(1) & \u1|s_master_ram_bank\(0) & 
\u1|s_master_ram_addr\(7) & \u1|s_master_ram_addr\(6) & \u1|s_master_ram_addr\(5) & \u1|s_master_ram_addr\(4) & \u1|s_master_ram_addr\(3) & \u1|s_master_ram_addr\(2) & \u1|s_master_ram_addr\(1) & \u1|s_master_ram_addr\(0));

\u1|dpram_master|altsyncram_component|auto_generated|ram_block1a11_PORTBADDR_bus\ <= (reg_mrbs(4) & reg_mrbs(3) & reg_mrbs(2) & reg_mrbs(1) & reg_mrbs(0) & \addr_latch[7]~_wirecell_combout\ & \addr_latch[6]~_wirecell_combout\ & 
\addr_latch[5]~_wirecell_combout\ & \addr_latch[4]~_wirecell_combout\ & \addr_latch[3]~_wirecell_combout\ & \addr_latch[2]~_wirecell_combout\ & \addr_latch[1]~_wirecell_combout\ & \addr_latch[0]~_wirecell_combout\);

\u1|dpram_master|altsyncram_component|auto_generated|ram_block1a11~portadataout\ <= \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a11_PORTADATAOUT_bus\(0);

\u1|dpram_master|altsyncram_component|auto_generated|ram_block1a11~PORTBDATAOUT0\ <= \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a11_PORTBDATAOUT_bus\(0);

\u1|dpram_master|altsyncram_component|auto_generated|ram_block1a4_PORTADATAIN_bus\(0) <= \u1|s_master_ram_data\(4);

\u1|dpram_master|altsyncram_component|auto_generated|ram_block1a4_PORTBDATAIN_bus\(0) <= \data[4]~input_o\;

\u1|dpram_master|altsyncram_component|auto_generated|ram_block1a4_PORTAADDR_bus\ <= (\u1|s_master_ram_bank\(4) & \u1|s_master_ram_bank\(3) & \u1|s_master_ram_bank\(2) & \u1|s_master_ram_bank\(1) & \u1|s_master_ram_bank\(0) & 
\u1|s_master_ram_addr\(7) & \u1|s_master_ram_addr\(6) & \u1|s_master_ram_addr\(5) & \u1|s_master_ram_addr\(4) & \u1|s_master_ram_addr\(3) & \u1|s_master_ram_addr\(2) & \u1|s_master_ram_addr\(1) & \u1|s_master_ram_addr\(0));

\u1|dpram_master|altsyncram_component|auto_generated|ram_block1a4_PORTBADDR_bus\ <= (reg_mrbs(4) & reg_mrbs(3) & reg_mrbs(2) & reg_mrbs(1) & reg_mrbs(0) & \addr_latch[7]~_wirecell_combout\ & \addr_latch[6]~_wirecell_combout\ & 
\addr_latch[5]~_wirecell_combout\ & \addr_latch[4]~_wirecell_combout\ & \addr_latch[3]~_wirecell_combout\ & \addr_latch[2]~_wirecell_combout\ & \addr_latch[1]~_wirecell_combout\ & \addr_latch[0]~_wirecell_combout\);

\u1|dpram_master|altsyncram_component|auto_generated|ram_block1a4~portadataout\ <= \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a4_PORTADATAOUT_bus\(0);

\u1|dpram_master|altsyncram_component|auto_generated|ram_block1a4~PORTBDATAOUT0\ <= \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a4_PORTBDATAOUT_bus\(0);

\u1|dpram_master|altsyncram_component|auto_generated|ram_block1a12_PORTADATAIN_bus\(0) <= \u1|s_master_ram_data\(4);

\u1|dpram_master|altsyncram_component|auto_generated|ram_block1a12_PORTBDATAIN_bus\(0) <= \data[4]~input_o\;

\u1|dpram_master|altsyncram_component|auto_generated|ram_block1a12_PORTAADDR_bus\ <= (\u1|s_master_ram_bank\(4) & \u1|s_master_ram_bank\(3) & \u1|s_master_ram_bank\(2) & \u1|s_master_ram_bank\(1) & \u1|s_master_ram_bank\(0) & 
\u1|s_master_ram_addr\(7) & \u1|s_master_ram_addr\(6) & \u1|s_master_ram_addr\(5) & \u1|s_master_ram_addr\(4) & \u1|s_master_ram_addr\(3) & \u1|s_master_ram_addr\(2) & \u1|s_master_ram_addr\(1) & \u1|s_master_ram_addr\(0));

\u1|dpram_master|altsyncram_component|auto_generated|ram_block1a12_PORTBADDR_bus\ <= (reg_mrbs(4) & reg_mrbs(3) & reg_mrbs(2) & reg_mrbs(1) & reg_mrbs(0) & \addr_latch[7]~_wirecell_combout\ & \addr_latch[6]~_wirecell_combout\ & 
\addr_latch[5]~_wirecell_combout\ & \addr_latch[4]~_wirecell_combout\ & \addr_latch[3]~_wirecell_combout\ & \addr_latch[2]~_wirecell_combout\ & \addr_latch[1]~_wirecell_combout\ & \addr_latch[0]~_wirecell_combout\);

\u1|dpram_master|altsyncram_component|auto_generated|ram_block1a12~portadataout\ <= \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a12_PORTADATAOUT_bus\(0);

\u1|dpram_master|altsyncram_component|auto_generated|ram_block1a12~PORTBDATAOUT0\ <= \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a12_PORTBDATAOUT_bus\(0);

\u1|dpram_master|altsyncram_component|auto_generated|ram_block1a5_PORTADATAIN_bus\(0) <= \u1|s_master_ram_data\(5);

\u1|dpram_master|altsyncram_component|auto_generated|ram_block1a5_PORTBDATAIN_bus\(0) <= \data[5]~input_o\;

\u1|dpram_master|altsyncram_component|auto_generated|ram_block1a5_PORTAADDR_bus\ <= (\u1|s_master_ram_bank\(4) & \u1|s_master_ram_bank\(3) & \u1|s_master_ram_bank\(2) & \u1|s_master_ram_bank\(1) & \u1|s_master_ram_bank\(0) & 
\u1|s_master_ram_addr\(7) & \u1|s_master_ram_addr\(6) & \u1|s_master_ram_addr\(5) & \u1|s_master_ram_addr\(4) & \u1|s_master_ram_addr\(3) & \u1|s_master_ram_addr\(2) & \u1|s_master_ram_addr\(1) & \u1|s_master_ram_addr\(0));

\u1|dpram_master|altsyncram_component|auto_generated|ram_block1a5_PORTBADDR_bus\ <= (reg_mrbs(4) & reg_mrbs(3) & reg_mrbs(2) & reg_mrbs(1) & reg_mrbs(0) & \addr_latch[7]~_wirecell_combout\ & \addr_latch[6]~_wirecell_combout\ & 
\addr_latch[5]~_wirecell_combout\ & \addr_latch[4]~_wirecell_combout\ & \addr_latch[3]~_wirecell_combout\ & \addr_latch[2]~_wirecell_combout\ & \addr_latch[1]~_wirecell_combout\ & \addr_latch[0]~_wirecell_combout\);

\u1|dpram_master|altsyncram_component|auto_generated|ram_block1a5~portadataout\ <= \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a5_PORTADATAOUT_bus\(0);

\u1|dpram_master|altsyncram_component|auto_generated|ram_block1a5~PORTBDATAOUT0\ <= \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a5_PORTBDATAOUT_bus\(0);

\u1|dpram_master|altsyncram_component|auto_generated|ram_block1a13_PORTADATAIN_bus\(0) <= \u1|s_master_ram_data\(5);

\u1|dpram_master|altsyncram_component|auto_generated|ram_block1a13_PORTBDATAIN_bus\(0) <= \data[5]~input_o\;

\u1|dpram_master|altsyncram_component|auto_generated|ram_block1a13_PORTAADDR_bus\ <= (\u1|s_master_ram_bank\(4) & \u1|s_master_ram_bank\(3) & \u1|s_master_ram_bank\(2) & \u1|s_master_ram_bank\(1) & \u1|s_master_ram_bank\(0) & 
\u1|s_master_ram_addr\(7) & \u1|s_master_ram_addr\(6) & \u1|s_master_ram_addr\(5) & \u1|s_master_ram_addr\(4) & \u1|s_master_ram_addr\(3) & \u1|s_master_ram_addr\(2) & \u1|s_master_ram_addr\(1) & \u1|s_master_ram_addr\(0));

\u1|dpram_master|altsyncram_component|auto_generated|ram_block1a13_PORTBADDR_bus\ <= (reg_mrbs(4) & reg_mrbs(3) & reg_mrbs(2) & reg_mrbs(1) & reg_mrbs(0) & \addr_latch[7]~_wirecell_combout\ & \addr_latch[6]~_wirecell_combout\ & 
\addr_latch[5]~_wirecell_combout\ & \addr_latch[4]~_wirecell_combout\ & \addr_latch[3]~_wirecell_combout\ & \addr_latch[2]~_wirecell_combout\ & \addr_latch[1]~_wirecell_combout\ & \addr_latch[0]~_wirecell_combout\);

\u1|dpram_master|altsyncram_component|auto_generated|ram_block1a13~portadataout\ <= \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a13_PORTADATAOUT_bus\(0);

\u1|dpram_master|altsyncram_component|auto_generated|ram_block1a13~PORTBDATAOUT0\ <= \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a13_PORTBDATAOUT_bus\(0);

\u1|dpram_master|altsyncram_component|auto_generated|ram_block1a6_PORTADATAIN_bus\(0) <= \u1|s_master_ram_data\(6);

\u1|dpram_master|altsyncram_component|auto_generated|ram_block1a6_PORTBDATAIN_bus\(0) <= \data[6]~input_o\;

\u1|dpram_master|altsyncram_component|auto_generated|ram_block1a6_PORTAADDR_bus\ <= (\u1|s_master_ram_bank\(4) & \u1|s_master_ram_bank\(3) & \u1|s_master_ram_bank\(2) & \u1|s_master_ram_bank\(1) & \u1|s_master_ram_bank\(0) & 
\u1|s_master_ram_addr\(7) & \u1|s_master_ram_addr\(6) & \u1|s_master_ram_addr\(5) & \u1|s_master_ram_addr\(4) & \u1|s_master_ram_addr\(3) & \u1|s_master_ram_addr\(2) & \u1|s_master_ram_addr\(1) & \u1|s_master_ram_addr\(0));

\u1|dpram_master|altsyncram_component|auto_generated|ram_block1a6_PORTBADDR_bus\ <= (reg_mrbs(4) & reg_mrbs(3) & reg_mrbs(2) & reg_mrbs(1) & reg_mrbs(0) & \addr_latch[7]~_wirecell_combout\ & \addr_latch[6]~_wirecell_combout\ & 
\addr_latch[5]~_wirecell_combout\ & \addr_latch[4]~_wirecell_combout\ & \addr_latch[3]~_wirecell_combout\ & \addr_latch[2]~_wirecell_combout\ & \addr_latch[1]~_wirecell_combout\ & \addr_latch[0]~_wirecell_combout\);

\u1|dpram_master|altsyncram_component|auto_generated|ram_block1a6~portadataout\ <= \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a6_PORTADATAOUT_bus\(0);

\u1|dpram_master|altsyncram_component|auto_generated|ram_block1a6~PORTBDATAOUT0\ <= \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a6_PORTBDATAOUT_bus\(0);

\u1|dpram_master|altsyncram_component|auto_generated|ram_block1a14_PORTADATAIN_bus\(0) <= \u1|s_master_ram_data\(6);

\u1|dpram_master|altsyncram_component|auto_generated|ram_block1a14_PORTBDATAIN_bus\(0) <= \data[6]~input_o\;

\u1|dpram_master|altsyncram_component|auto_generated|ram_block1a14_PORTAADDR_bus\ <= (\u1|s_master_ram_bank\(4) & \u1|s_master_ram_bank\(3) & \u1|s_master_ram_bank\(2) & \u1|s_master_ram_bank\(1) & \u1|s_master_ram_bank\(0) & 
\u1|s_master_ram_addr\(7) & \u1|s_master_ram_addr\(6) & \u1|s_master_ram_addr\(5) & \u1|s_master_ram_addr\(4) & \u1|s_master_ram_addr\(3) & \u1|s_master_ram_addr\(2) & \u1|s_master_ram_addr\(1) & \u1|s_master_ram_addr\(0));

\u1|dpram_master|altsyncram_component|auto_generated|ram_block1a14_PORTBADDR_bus\ <= (reg_mrbs(4) & reg_mrbs(3) & reg_mrbs(2) & reg_mrbs(1) & reg_mrbs(0) & \addr_latch[7]~_wirecell_combout\ & \addr_latch[6]~_wirecell_combout\ & 
\addr_latch[5]~_wirecell_combout\ & \addr_latch[4]~_wirecell_combout\ & \addr_latch[3]~_wirecell_combout\ & \addr_latch[2]~_wirecell_combout\ & \addr_latch[1]~_wirecell_combout\ & \addr_latch[0]~_wirecell_combout\);

\u1|dpram_master|altsyncram_component|auto_generated|ram_block1a14~portadataout\ <= \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a14_PORTADATAOUT_bus\(0);

\u1|dpram_master|altsyncram_component|auto_generated|ram_block1a14~PORTBDATAOUT0\ <= \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a14_PORTBDATAOUT_bus\(0);

\u1|dpram_master|altsyncram_component|auto_generated|ram_block1a7_PORTADATAIN_bus\(0) <= \u1|s_master_ram_data\(7);

\u1|dpram_master|altsyncram_component|auto_generated|ram_block1a7_PORTBDATAIN_bus\(0) <= \data[7]~input_o\;

\u1|dpram_master|altsyncram_component|auto_generated|ram_block1a7_PORTAADDR_bus\ <= (\u1|s_master_ram_bank\(4) & \u1|s_master_ram_bank\(3) & \u1|s_master_ram_bank\(2) & \u1|s_master_ram_bank\(1) & \u1|s_master_ram_bank\(0) & 
\u1|s_master_ram_addr\(7) & \u1|s_master_ram_addr\(6) & \u1|s_master_ram_addr\(5) & \u1|s_master_ram_addr\(4) & \u1|s_master_ram_addr\(3) & \u1|s_master_ram_addr\(2) & \u1|s_master_ram_addr\(1) & \u1|s_master_ram_addr\(0));

\u1|dpram_master|altsyncram_component|auto_generated|ram_block1a7_PORTBADDR_bus\ <= (reg_mrbs(4) & reg_mrbs(3) & reg_mrbs(2) & reg_mrbs(1) & reg_mrbs(0) & \addr_latch[7]~_wirecell_combout\ & \addr_latch[6]~_wirecell_combout\ & 
\addr_latch[5]~_wirecell_combout\ & \addr_latch[4]~_wirecell_combout\ & \addr_latch[3]~_wirecell_combout\ & \addr_latch[2]~_wirecell_combout\ & \addr_latch[1]~_wirecell_combout\ & \addr_latch[0]~_wirecell_combout\);

\u1|dpram_master|altsyncram_component|auto_generated|ram_block1a7~portadataout\ <= \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a7_PORTADATAOUT_bus\(0);

\u1|dpram_master|altsyncram_component|auto_generated|ram_block1a7~PORTBDATAOUT0\ <= \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a7_PORTBDATAOUT_bus\(0);

\u1|dpram_master|altsyncram_component|auto_generated|ram_block1a15_PORTADATAIN_bus\(0) <= \u1|s_master_ram_data\(7);

\u1|dpram_master|altsyncram_component|auto_generated|ram_block1a15_PORTBDATAIN_bus\(0) <= \data[7]~input_o\;

\u1|dpram_master|altsyncram_component|auto_generated|ram_block1a15_PORTAADDR_bus\ <= (\u1|s_master_ram_bank\(4) & \u1|s_master_ram_bank\(3) & \u1|s_master_ram_bank\(2) & \u1|s_master_ram_bank\(1) & \u1|s_master_ram_bank\(0) & 
\u1|s_master_ram_addr\(7) & \u1|s_master_ram_addr\(6) & \u1|s_master_ram_addr\(5) & \u1|s_master_ram_addr\(4) & \u1|s_master_ram_addr\(3) & \u1|s_master_ram_addr\(2) & \u1|s_master_ram_addr\(1) & \u1|s_master_ram_addr\(0));

\u1|dpram_master|altsyncram_component|auto_generated|ram_block1a15_PORTBADDR_bus\ <= (reg_mrbs(4) & reg_mrbs(3) & reg_mrbs(2) & reg_mrbs(1) & reg_mrbs(0) & \addr_latch[7]~_wirecell_combout\ & \addr_latch[6]~_wirecell_combout\ & 
\addr_latch[5]~_wirecell_combout\ & \addr_latch[4]~_wirecell_combout\ & \addr_latch[3]~_wirecell_combout\ & \addr_latch[2]~_wirecell_combout\ & \addr_latch[1]~_wirecell_combout\ & \addr_latch[0]~_wirecell_combout\);

\u1|dpram_master|altsyncram_component|auto_generated|ram_block1a15~portadataout\ <= \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a15_PORTADATAOUT_bus\(0);

\u1|dpram_master|altsyncram_component|auto_generated|ram_block1a15~PORTBDATAOUT0\ <= \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a15_PORTBDATAOUT_bus\(0);

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\);

\u1|s_slave_ram_clk~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \u1|s_slave_ram_clk~combout\);

\master_ram_clk~reg0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \master_ram_clk~reg0_q\);

\clk_57~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk_57~input_o\);

\phi2_early~reg0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \phi2_early~reg0_q\);

\slave_ram_clk~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \slave_ram_clk~q\);

\master_ram_wren~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \master_ram_wren~0_combout\);

\phi2~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \phi2~input_o\);

\u1|process_2~2clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \u1|process_2~2_combout\);

\u1|s_master_ram_clk~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \u1|s_master_ram_clk~combout\);
\u1|ALT_INV_process_2~2clkctrl_outclk\ <= NOT \u1|process_2~2clkctrl_outclk\;
\ALT_INV_master_ram_wren~0clkctrl_outclk\ <= NOT \master_ram_wren~0clkctrl_outclk\;
\ALT_INV_phi2_early~reg0clkctrl_outclk\ <= NOT \phi2_early~reg0clkctrl_outclk\;
\ALT_INV_clk_57~inputclkctrl_outclk\ <= NOT \clk_57~inputclkctrl_outclk\;
\ALT_INV_spi_clk~input_o\ <= NOT \spi_clk~input_o\;
\ALT_INV_clk_57~input_o\ <= NOT \clk_57~input_o\;
\u1|ALT_INV_s_master_ram_bank\(5) <= NOT \u1|s_master_ram_bank\(5);
\u0|onchip_flash_0|avmm_data_controller|ALT_INV_reset_n_reg2~q\ <= NOT \u0|onchip_flash_0|avmm_data_controller|reset_n_reg2~q\;
\u1|ALT_INV_process_2~2_combout\ <= NOT \u1|process_2~2_combout\;
\ALT_INV_n_extsel~0_combout\ <= NOT \n_extsel~0_combout\;
\ALT_INV_data_dir~reg0_q\ <= NOT \data_dir~reg0_q\;
\ALT_INV_led_latch[4]~0_combout\ <= NOT \led_latch[4]~0_combout\;
ALT_INV_led_latch(3) <= NOT led_latch(3);
ALT_INV_led_latch(2) <= NOT led_latch(2);
ALT_INV_led_latch(1) <= NOT led_latch(1);
ALT_INV_led_latch(0) <= NOT led_latch(0);
\ALT_INV_master_ram_wren~1_combout\ <= NOT \master_ram_wren~1_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X31_Y1_N16
\spi_miso~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u1|Mux0~4_combout\,
	oe => \u1|ALT_INV_process_2~2_combout\,
	devoe => ww_devoe,
	o => \spi_miso~output_o\);

-- Location: IOOBUF_X31_Y17_N23
\data[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data[0]~34_combout\,
	oe => \ALT_INV_n_extsel~0_combout\,
	devoe => ww_devoe,
	o => \data[0]~output_o\);

-- Location: IOOBUF_X31_Y17_N16
\data[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data[1]~45_combout\,
	oe => \ALT_INV_n_extsel~0_combout\,
	devoe => ww_devoe,
	o => \data[1]~output_o\);

-- Location: IOOBUF_X31_Y19_N23
\data[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data[2]~56_combout\,
	oe => \ALT_INV_n_extsel~0_combout\,
	devoe => ww_devoe,
	o => \data[2]~output_o\);

-- Location: IOOBUF_X31_Y19_N9
\data[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data[3]~67_combout\,
	oe => \ALT_INV_n_extsel~0_combout\,
	devoe => ww_devoe,
	o => \data[3]~output_o\);

-- Location: IOOBUF_X31_Y19_N16
\data[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data[4]~78_combout\,
	oe => \ALT_INV_n_extsel~0_combout\,
	devoe => ww_devoe,
	o => \data[4]~output_o\);

-- Location: IOOBUF_X31_Y19_N2
\data[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data[5]~89_combout\,
	oe => \ALT_INV_n_extsel~0_combout\,
	devoe => ww_devoe,
	o => \data[5]~output_o\);

-- Location: IOOBUF_X31_Y22_N23
\data[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data[6]~100_combout\,
	oe => \ALT_INV_n_extsel~0_combout\,
	devoe => ww_devoe,
	o => \data[6]~output_o\);

-- Location: IOOBUF_X31_Y22_N16
\data[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data[7]~111_combout\,
	oe => \ALT_INV_n_extsel~0_combout\,
	devoe => ww_devoe,
	o => \data[7]~output_o\);

-- Location: IOOBUF_X22_Y0_N9
\master_ram_clk~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \master_ram_clk~reg0_q\,
	devoe => ww_devoe,
	o => \master_ram_clk~output_o\);

-- Location: IOOBUF_X27_Y0_N30
\master_ram_rden~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \master_ram_rden~0_combout\,
	devoe => ww_devoe,
	o => \master_ram_rden~output_o\);

-- Location: IOOBUF_X27_Y0_N23
\master_ram_wren~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_master_ram_wren~1_combout\,
	devoe => ww_devoe,
	o => \master_ram_wren~output_o\);

-- Location: IOOBUF_X6_Y10_N23
\n_led1~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => ALT_INV_led_latch(0),
	devoe => ww_devoe,
	o => \n_led1~output_o\);

-- Location: IOOBUF_X6_Y10_N30
\n_led2~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => ALT_INV_led_latch(1),
	devoe => ww_devoe,
	o => \n_led2~output_o\);

-- Location: IOOBUF_X3_Y10_N9
\n_led3~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => ALT_INV_led_latch(2),
	devoe => ww_devoe,
	o => \n_led3~output_o\);

-- Location: IOOBUF_X1_Y10_N9
\n_led4~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => ALT_INV_led_latch(3),
	devoe => ww_devoe,
	o => \n_led4~output_o\);

-- Location: IOOBUF_X1_Y10_N16
\n_led5~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_led_latch[4]~0_combout\,
	devoe => ww_devoe,
	o => \n_led5~output_o\);

-- Location: IOOBUF_X31_Y12_N23
\phi2_early~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \phi2_early~reg0_q\,
	devoe => ww_devoe,
	o => \phi2_early~output_o\);

-- Location: IOOBUF_X29_Y25_N2
\data_dir~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_data_dir~reg0_q\,
	devoe => ww_devoe,
	o => \data_dir~output_o\);

-- Location: IOOBUF_X29_Y25_N9
\n_data_oe~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \n_data_oe~2_combout\,
	devoe => ww_devoe,
	o => \n_data_oe~output_o\);

-- Location: IOOBUF_X19_Y25_N9
\n_extsel~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \n_extsel~0_combout\,
	devoe => ww_devoe,
	o => \n_extsel~output_o\);

-- Location: IOOBUF_X19_Y25_N2
\n_mpd~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \n_extsel~0_combout\,
	devoe => ww_devoe,
	o => \n_mpd~output_o\);

-- Location: IOOBUF_X31_Y9_N23
\n_irq~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \n_irq~output_o\);

-- Location: IOOBUF_X31_Y9_N16
\n_rdy~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \n_rdy~output_o\);

-- Location: IOOBUF_X31_Y4_N23
\spi_mbf~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \spi_mbf~0_combout\,
	devoe => ww_devoe,
	o => \spi_mbf~output_o\);

-- Location: IOOBUF_X31_Y4_N16
\spi_sdav~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \spi_sdav~0_combout\,
	devoe => ww_devoe,
	o => \spi_sdav~output_o\);

-- Location: IOIBUF_X31_Y1_N8
\spi_clk~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_spi_clk,
	o => \spi_clk~input_o\);

-- Location: LCCOMB_X30_Y10_N6
\u1|bit_cnt[0]~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|bit_cnt[0]~33_combout\ = !\u1|bit_cnt\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u1|bit_cnt\(0),
	combout => \u1|bit_cnt[0]~33_combout\);

-- Location: IOIBUF_X27_Y25_N29
\n_reset~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_n_reset,
	o => \n_reset~input_o\);

-- Location: IOIBUF_X31_Y1_N22
\spi_ss_n~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_spi_ss_n,
	o => \spi_ss_n~input_o\);

-- Location: LCCOMB_X28_Y13_N28
\u1|process_2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|process_2~2_combout\ = (\spi_ss_n~input_o\) # (!\n_reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \n_reset~input_o\,
	datad => \spi_ss_n~input_o\,
	combout => \u1|process_2~2_combout\);

-- Location: CLKCTRL_G0
\u1|process_2~2clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \u1|process_2~2clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \u1|process_2~2clkctrl_outclk\);

-- Location: FF_X30_Y10_N7
\u1|bit_cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_spi_clk~input_o\,
	d => \u1|bit_cnt[0]~33_combout\,
	clrn => \u1|ALT_INV_process_2~2clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|bit_cnt\(0));

-- Location: LCCOMB_X30_Y10_N8
\u1|bit_cnt[1]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|bit_cnt[1]~11_combout\ = (\u1|bit_cnt\(0) & (\u1|bit_cnt\(1) $ (VCC))) # (!\u1|bit_cnt\(0) & (\u1|bit_cnt\(1) & VCC))
-- \u1|bit_cnt[1]~12\ = CARRY((\u1|bit_cnt\(0) & \u1|bit_cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|bit_cnt\(0),
	datab => \u1|bit_cnt\(1),
	datad => VCC,
	combout => \u1|bit_cnt[1]~11_combout\,
	cout => \u1|bit_cnt[1]~12\);

-- Location: FF_X30_Y10_N9
\u1|bit_cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_spi_clk~input_o\,
	d => \u1|bit_cnt[1]~11_combout\,
	clrn => \u1|ALT_INV_process_2~2clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|bit_cnt\(1));

-- Location: LCCOMB_X30_Y10_N10
\u1|bit_cnt[2]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|bit_cnt[2]~13_combout\ = (\u1|bit_cnt\(2) & (!\u1|bit_cnt[1]~12\)) # (!\u1|bit_cnt\(2) & ((\u1|bit_cnt[1]~12\) # (GND)))
-- \u1|bit_cnt[2]~14\ = CARRY((!\u1|bit_cnt[1]~12\) # (!\u1|bit_cnt\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u1|bit_cnt\(2),
	datad => VCC,
	cin => \u1|bit_cnt[1]~12\,
	combout => \u1|bit_cnt[2]~13_combout\,
	cout => \u1|bit_cnt[2]~14\);

-- Location: FF_X30_Y10_N11
\u1|bit_cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_spi_clk~input_o\,
	d => \u1|bit_cnt[2]~13_combout\,
	clrn => \u1|ALT_INV_process_2~2clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|bit_cnt\(2));

-- Location: LCCOMB_X30_Y8_N14
\u1|s_slave_ram_clk\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|s_slave_ram_clk~combout\ = LCELL((\u1|bit_cnt\(1) & (\spi_clk~input_o\ & \u1|bit_cnt\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|bit_cnt\(1),
	datac => \spi_clk~input_o\,
	datad => \u1|bit_cnt\(2),
	combout => \u1|s_slave_ram_clk~combout\);

-- Location: CLKCTRL_G8
\u1|s_slave_ram_clk~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \u1|s_slave_ram_clk~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \u1|s_slave_ram_clk~clkctrl_outclk\);

-- Location: LCCOMB_X30_Y10_N12
\u1|bit_cnt[3]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|bit_cnt[3]~15_combout\ = (\u1|bit_cnt\(3) & (\u1|bit_cnt[2]~14\ $ (GND))) # (!\u1|bit_cnt\(3) & (!\u1|bit_cnt[2]~14\ & VCC))
-- \u1|bit_cnt[3]~16\ = CARRY((\u1|bit_cnt\(3) & !\u1|bit_cnt[2]~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u1|bit_cnt\(3),
	datad => VCC,
	cin => \u1|bit_cnt[2]~14\,
	combout => \u1|bit_cnt[3]~15_combout\,
	cout => \u1|bit_cnt[3]~16\);

-- Location: FF_X30_Y10_N13
\u1|bit_cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_spi_clk~input_o\,
	d => \u1|bit_cnt[3]~15_combout\,
	clrn => \u1|ALT_INV_process_2~2clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|bit_cnt\(3));

-- Location: LCCOMB_X30_Y10_N14
\u1|bit_cnt[4]~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|bit_cnt[4]~17_combout\ = (\u1|bit_cnt\(4) & (!\u1|bit_cnt[3]~16\)) # (!\u1|bit_cnt\(4) & ((\u1|bit_cnt[3]~16\) # (GND)))
-- \u1|bit_cnt[4]~18\ = CARRY((!\u1|bit_cnt[3]~16\) # (!\u1|bit_cnt\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u1|bit_cnt\(4),
	datad => VCC,
	cin => \u1|bit_cnt[3]~16\,
	combout => \u1|bit_cnt[4]~17_combout\,
	cout => \u1|bit_cnt[4]~18\);

-- Location: FF_X30_Y10_N15
\u1|bit_cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_spi_clk~input_o\,
	d => \u1|bit_cnt[4]~17_combout\,
	clrn => \u1|ALT_INV_process_2~2clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|bit_cnt\(4));

-- Location: LCCOMB_X30_Y10_N16
\u1|bit_cnt[5]~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|bit_cnt[5]~19_combout\ = (\u1|bit_cnt\(5) & (\u1|bit_cnt[4]~18\ $ (GND))) # (!\u1|bit_cnt\(5) & (!\u1|bit_cnt[4]~18\ & VCC))
-- \u1|bit_cnt[5]~20\ = CARRY((\u1|bit_cnt\(5) & !\u1|bit_cnt[4]~18\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u1|bit_cnt\(5),
	datad => VCC,
	cin => \u1|bit_cnt[4]~18\,
	combout => \u1|bit_cnt[5]~19_combout\,
	cout => \u1|bit_cnt[5]~20\);

-- Location: FF_X30_Y10_N17
\u1|bit_cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_spi_clk~input_o\,
	d => \u1|bit_cnt[5]~19_combout\,
	clrn => \u1|ALT_INV_process_2~2clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|bit_cnt\(5));

-- Location: LCCOMB_X30_Y10_N18
\u1|bit_cnt[6]~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|bit_cnt[6]~21_combout\ = (\u1|bit_cnt\(6) & (!\u1|bit_cnt[5]~20\)) # (!\u1|bit_cnt\(6) & ((\u1|bit_cnt[5]~20\) # (GND)))
-- \u1|bit_cnt[6]~22\ = CARRY((!\u1|bit_cnt[5]~20\) # (!\u1|bit_cnt\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u1|bit_cnt\(6),
	datad => VCC,
	cin => \u1|bit_cnt[5]~20\,
	combout => \u1|bit_cnt[6]~21_combout\,
	cout => \u1|bit_cnt[6]~22\);

-- Location: FF_X30_Y10_N19
\u1|bit_cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_spi_clk~input_o\,
	d => \u1|bit_cnt[6]~21_combout\,
	clrn => \u1|ALT_INV_process_2~2clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|bit_cnt\(6));

-- Location: LCCOMB_X30_Y10_N20
\u1|bit_cnt[7]~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|bit_cnt[7]~23_combout\ = (\u1|bit_cnt\(7) & (\u1|bit_cnt[6]~22\ $ (GND))) # (!\u1|bit_cnt\(7) & (!\u1|bit_cnt[6]~22\ & VCC))
-- \u1|bit_cnt[7]~24\ = CARRY((\u1|bit_cnt\(7) & !\u1|bit_cnt[6]~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u1|bit_cnt\(7),
	datad => VCC,
	cin => \u1|bit_cnt[6]~22\,
	combout => \u1|bit_cnt[7]~23_combout\,
	cout => \u1|bit_cnt[7]~24\);

-- Location: FF_X30_Y10_N21
\u1|bit_cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_spi_clk~input_o\,
	d => \u1|bit_cnt[7]~23_combout\,
	clrn => \u1|ALT_INV_process_2~2clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|bit_cnt\(7));

-- Location: LCCOMB_X30_Y10_N22
\u1|bit_cnt[8]~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|bit_cnt[8]~25_combout\ = (\u1|bit_cnt\(8) & (!\u1|bit_cnt[7]~24\)) # (!\u1|bit_cnt\(8) & ((\u1|bit_cnt[7]~24\) # (GND)))
-- \u1|bit_cnt[8]~26\ = CARRY((!\u1|bit_cnt[7]~24\) # (!\u1|bit_cnt\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u1|bit_cnt\(8),
	datad => VCC,
	cin => \u1|bit_cnt[7]~24\,
	combout => \u1|bit_cnt[8]~25_combout\,
	cout => \u1|bit_cnt[8]~26\);

-- Location: FF_X30_Y10_N23
\u1|bit_cnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_spi_clk~input_o\,
	d => \u1|bit_cnt[8]~25_combout\,
	clrn => \u1|ALT_INV_process_2~2clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|bit_cnt\(8));

-- Location: LCCOMB_X30_Y10_N24
\u1|bit_cnt[9]~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|bit_cnt[9]~27_combout\ = (\u1|bit_cnt\(9) & (\u1|bit_cnt[8]~26\ $ (GND))) # (!\u1|bit_cnt\(9) & (!\u1|bit_cnt[8]~26\ & VCC))
-- \u1|bit_cnt[9]~28\ = CARRY((\u1|bit_cnt\(9) & !\u1|bit_cnt[8]~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u1|bit_cnt\(9),
	datad => VCC,
	cin => \u1|bit_cnt[8]~26\,
	combout => \u1|bit_cnt[9]~27_combout\,
	cout => \u1|bit_cnt[9]~28\);

-- Location: FF_X30_Y10_N25
\u1|bit_cnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_spi_clk~input_o\,
	d => \u1|bit_cnt[9]~27_combout\,
	clrn => \u1|ALT_INV_process_2~2clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|bit_cnt\(9));

-- Location: LCCOMB_X30_Y10_N26
\u1|bit_cnt[10]~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|bit_cnt[10]~29_combout\ = (\u1|bit_cnt\(10) & (!\u1|bit_cnt[9]~28\)) # (!\u1|bit_cnt\(10) & ((\u1|bit_cnt[9]~28\) # (GND)))
-- \u1|bit_cnt[10]~30\ = CARRY((!\u1|bit_cnt[9]~28\) # (!\u1|bit_cnt\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u1|bit_cnt\(10),
	datad => VCC,
	cin => \u1|bit_cnt[9]~28\,
	combout => \u1|bit_cnt[10]~29_combout\,
	cout => \u1|bit_cnt[10]~30\);

-- Location: FF_X30_Y10_N27
\u1|bit_cnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_spi_clk~input_o\,
	d => \u1|bit_cnt[10]~29_combout\,
	clrn => \u1|ALT_INV_process_2~2clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|bit_cnt\(10));

-- Location: LCCOMB_X30_Y10_N28
\u1|bit_cnt[11]~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|bit_cnt[11]~31_combout\ = \u1|bit_cnt\(11) $ (!\u1|bit_cnt[10]~30\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u1|bit_cnt\(11),
	cin => \u1|bit_cnt[10]~30\,
	combout => \u1|bit_cnt[11]~31_combout\);

-- Location: FF_X30_Y10_N29
\u1|bit_cnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_spi_clk~input_o\,
	d => \u1|bit_cnt[11]~31_combout\,
	clrn => \u1|ALT_INV_process_2~2clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|bit_cnt\(11));

-- Location: LCCOMB_X30_Y10_N2
\u1|LessThan2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|LessThan2~0_combout\ = (!\u1|bit_cnt\(9) & (!\u1|bit_cnt\(7) & (!\u1|bit_cnt\(8) & !\u1|bit_cnt\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|bit_cnt\(9),
	datab => \u1|bit_cnt\(7),
	datac => \u1|bit_cnt\(8),
	datad => \u1|bit_cnt\(6),
	combout => \u1|LessThan2~0_combout\);

-- Location: LCCOMB_X30_Y10_N30
\u1|LessThan2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|LessThan2~1_combout\ = (!\u1|bit_cnt\(11) & (!\u1|bit_cnt\(10) & \u1|LessThan2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u1|bit_cnt\(11),
	datac => \u1|bit_cnt\(10),
	datad => \u1|LessThan2~0_combout\,
	combout => \u1|LessThan2~1_combout\);

-- Location: LCCOMB_X29_Y3_N0
\u1|LessThan2~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|LessThan2~3_combout\ = (!\u1|bit_cnt\(4) & !\u1|bit_cnt\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u1|bit_cnt\(4),
	datad => \u1|bit_cnt\(3),
	combout => \u1|LessThan2~3_combout\);

-- Location: LCCOMB_X29_Y1_N26
\u1|s_slave_ram_bank[5]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|s_slave_ram_bank[5]~1_combout\ = (\u1|LessThan2~1_combout\ & (!\u1|process_2~2_combout\ & (\u1|LessThan2~3_combout\ & \u1|bit_cnt\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|LessThan2~1_combout\,
	datab => \u1|process_2~2_combout\,
	datac => \u1|LessThan2~3_combout\,
	datad => \u1|bit_cnt\(5),
	combout => \u1|s_slave_ram_bank[5]~1_combout\);

-- Location: LCCOMB_X30_Y8_N20
\u1|Decoder0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|Decoder0~0_combout\ = (!\u1|bit_cnt\(0) & (\u1|bit_cnt\(1) & !\u1|bit_cnt\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|bit_cnt\(0),
	datac => \u1|bit_cnt\(1),
	datad => \u1|bit_cnt\(2),
	combout => \u1|Decoder0~0_combout\);

-- Location: LCCOMB_X29_Y15_N0
\u1|LessThan2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|LessThan2~2_combout\ = ((\u1|bit_cnt\(4)) # ((\u1|bit_cnt\(3)) # (\u1|bit_cnt\(5)))) # (!\u1|LessThan2~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|LessThan2~1_combout\,
	datab => \u1|bit_cnt\(4),
	datac => \u1|bit_cnt\(3),
	datad => \u1|bit_cnt\(5),
	combout => \u1|LessThan2~2_combout\);

-- Location: LCCOMB_X29_Y15_N24
\u1|process_2~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|process_2~3_combout\ = ((\u1|bit_cnt\(4)) # ((\u1|bit_cnt\(3)) # (!\u1|bit_cnt\(5)))) # (!\u1|LessThan2~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|LessThan2~1_combout\,
	datab => \u1|bit_cnt\(4),
	datac => \u1|bit_cnt\(3),
	datad => \u1|bit_cnt\(5),
	combout => \u1|process_2~3_combout\);

-- Location: IOIBUF_X31_Y1_N1
\spi_mosi~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_spi_mosi,
	o => \spi_mosi~input_o\);

-- Location: LCCOMB_X29_Y1_N16
\u1|s_slave_ram_bank[4]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|s_slave_ram_bank[4]~0_combout\ = (!\u1|process_2~2_combout\ & (\u1|LessThan2~2_combout\ & (!\u1|process_2~3_combout\ & \spi_mosi~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|process_2~2_combout\,
	datab => \u1|LessThan2~2_combout\,
	datac => \u1|process_2~3_combout\,
	datad => \spi_mosi~input_o\,
	combout => \u1|s_slave_ram_bank[4]~0_combout\);

-- Location: LCCOMB_X29_Y1_N12
\u1|s_slave_ram_bank[5]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|s_slave_ram_bank[5]~2_combout\ = (\u1|Decoder0~0_combout\ & ((\u1|s_slave_ram_bank[4]~0_combout\) # ((!\u1|s_slave_ram_bank[5]~1_combout\ & \u1|s_slave_ram_bank\(5))))) # (!\u1|Decoder0~0_combout\ & (((\u1|s_slave_ram_bank\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|s_slave_ram_bank[5]~1_combout\,
	datab => \u1|s_slave_ram_bank\(5),
	datac => \u1|Decoder0~0_combout\,
	datad => \u1|s_slave_ram_bank[4]~0_combout\,
	combout => \u1|s_slave_ram_bank[5]~2_combout\);

-- Location: LCCOMB_X29_Y1_N0
\u1|s_slave_ram_bank[5]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|s_slave_ram_bank[5]~feeder_combout\ = \u1|s_slave_ram_bank[5]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u1|s_slave_ram_bank[5]~2_combout\,
	combout => \u1|s_slave_ram_bank[5]~feeder_combout\);

-- Location: FF_X29_Y1_N1
\u1|s_slave_ram_bank[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \spi_clk~input_o\,
	d => \u1|s_slave_ram_bank[5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|s_slave_ram_bank\(5));

-- Location: LCCOMB_X29_Y15_N22
\u1|s_slave_ram_rden~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|s_slave_ram_rden~2_combout\ = ((\u1|bit_cnt\(5)) # ((!\u1|bit_cnt\(4) & !\u1|bit_cnt\(3)))) # (!\u1|LessThan2~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|LessThan2~1_combout\,
	datab => \u1|bit_cnt\(4),
	datac => \u1|bit_cnt\(3),
	datad => \u1|bit_cnt\(5),
	combout => \u1|s_slave_ram_rden~2_combout\);

-- Location: LCCOMB_X29_Y1_N30
\u1|s_slave_ram_rden~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|s_slave_ram_rden~3_combout\ = (\u1|s_slave_ram_rden~2_combout\ & (!\spi_ss_n~input_o\ & (\n_reset~input_o\ & \u1|LessThan2~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|s_slave_ram_rden~2_combout\,
	datab => \spi_ss_n~input_o\,
	datac => \n_reset~input_o\,
	datad => \u1|LessThan2~2_combout\,
	combout => \u1|s_slave_ram_rden~3_combout\);

-- Location: FF_X23_Y11_N31
\u1|dpram_slave|altsyncram_component|auto_generated|address_reg_a[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|s_slave_ram_clk~clkctrl_outclk\,
	asdata => \u1|s_slave_ram_bank\(5),
	sload => VCC,
	ena => \u1|s_slave_ram_rden~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|dpram_slave|altsyncram_component|auto_generated|address_reg_a\(0));

-- Location: FF_X23_Y11_N17
\u1|dpram_slave|altsyncram_component|auto_generated|out_address_reg_a[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|s_slave_ram_clk~clkctrl_outclk\,
	asdata => \u1|dpram_slave|altsyncram_component|auto_generated|address_reg_a\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|dpram_slave|altsyncram_component|auto_generated|out_address_reg_a\(0));

-- Location: IOIBUF_X31_Y11_N22
\phi2~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_phi2,
	o => \phi2~input_o\);

-- Location: CLKCTRL_G9
\phi2~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \phi2~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \phi2~inputclkctrl_outclk\);

-- Location: IOIBUF_X11_Y0_N8
\addr[8]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addr(8),
	o => \addr[8]~input_o\);

-- Location: LCCOMB_X17_Y9_N2
\addr_latch[8]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \addr_latch[8]~0_combout\ = !\addr[8]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \addr[8]~input_o\,
	combout => \addr_latch[8]~0_combout\);

-- Location: FF_X17_Y9_N3
\addr_latch[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \phi2~inputclkctrl_outclk\,
	d => \addr_latch[8]~0_combout\,
	clrn => \n_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => addr_latch(8));

-- Location: IOIBUF_X24_Y25_N15
\rw~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rw,
	o => \rw~input_o\);

-- Location: FF_X17_Y9_N1
rw_latch : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \phi2~inputclkctrl_outclk\,
	asdata => \rw~input_o\,
	clrn => \n_reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rw_latch~q\);

-- Location: IOIBUF_X11_Y25_N22
\dip_sw[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dip_sw(2),
	o => \dip_sw[2]~input_o\);

-- Location: IOIBUF_X0_Y6_N22
\clk_57~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk_57,
	o => \clk_57~input_o\);

-- Location: CLKCTRL_G4
\clk_57~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk_57~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk_57~inputclkctrl_outclk\);

-- Location: LCCOMB_X15_Y11_N10
\clk_counter[2]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_counter[2]~0_combout\ = clk_counter(2) $ (((clk_counter(0) & clk_counter(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => clk_counter(0),
	datac => clk_counter(2),
	datad => clk_counter(1),
	combout => \clk_counter[2]~0_combout\);

-- Location: LCCOMB_X7_Y6_N6
\master_ram_wren~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \master_ram_wren~0_combout\ = (!\n_reset~input_o\) # (!\phi2~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \phi2~input_o\,
	datad => \n_reset~input_o\,
	combout => \master_ram_wren~0_combout\);

-- Location: CLKCTRL_G2
\master_ram_wren~0clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \master_ram_wren~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \master_ram_wren~0clkctrl_outclk\);

-- Location: FF_X15_Y11_N11
\clk_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_57~inputclkctrl_outclk\,
	d => \clk_counter[2]~0_combout\,
	clrn => \ALT_INV_master_ram_wren~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_counter(2));

-- Location: LCCOMB_X15_Y11_N6
\clk_counter[3]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_counter[3]~2_combout\ = clk_counter(3) $ (((clk_counter(2) & (clk_counter(0) & clk_counter(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clk_counter(2),
	datab => clk_counter(0),
	datac => clk_counter(3),
	datad => clk_counter(1),
	combout => \clk_counter[3]~2_combout\);

-- Location: FF_X15_Y11_N7
\clk_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_57~inputclkctrl_outclk\,
	d => \clk_counter[3]~2_combout\,
	clrn => \ALT_INV_master_ram_wren~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_counter(3));

-- Location: LCCOMB_X15_Y11_N24
\clk_counter[0]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_counter[0]~3_combout\ = (!clk_counter(0) & ((clk_counter(1)) # ((!clk_counter(2)) # (!clk_counter(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clk_counter(1),
	datab => clk_counter(3),
	datac => clk_counter(0),
	datad => clk_counter(2),
	combout => \clk_counter[0]~3_combout\);

-- Location: FF_X15_Y11_N25
\clk_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_57~inputclkctrl_outclk\,
	d => \clk_counter[0]~3_combout\,
	clrn => \ALT_INV_master_ram_wren~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_counter(0));

-- Location: LCCOMB_X15_Y11_N12
\clk_counter[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_counter[1]~1_combout\ = clk_counter(1) $ (clk_counter(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => clk_counter(1),
	datad => clk_counter(0),
	combout => \clk_counter[1]~1_combout\);

-- Location: FF_X15_Y11_N13
\clk_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_57~inputclkctrl_outclk\,
	d => \clk_counter[1]~1_combout\,
	clrn => \ALT_INV_master_ram_wren~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_counter(1));

-- Location: LCCOMB_X15_Y11_N20
\Equal11~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal11~0_combout\ = (clk_counter(1)) # ((clk_counter(0)) # ((!clk_counter(2)) # (!clk_counter(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clk_counter(1),
	datab => clk_counter(0),
	datac => clk_counter(3),
	datad => clk_counter(2),
	combout => \Equal11~0_combout\);

-- Location: FF_X28_Y10_N21
\phi2_early~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_57~input_o\,
	asdata => \Equal11~0_combout\,
	clrn => \ALT_INV_master_ram_wren~0clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phi2_early~reg0_q\);

-- Location: CLKCTRL_G5
\phi2_early~reg0clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \phi2_early~reg0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \phi2_early~reg0clkctrl_outclk\);

-- Location: IOIBUF_X31_Y19_N1
\data[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => data(5),
	o => \data[5]~input_o\);

-- Location: IOIBUF_X15_Y0_N22
\addr[10]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addr(10),
	o => \addr[10]~input_o\);

-- Location: IOIBUF_X15_Y0_N15
\addr[11]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addr(11),
	o => \addr[11]~input_o\);

-- Location: IOIBUF_X3_Y0_N8
\addr[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addr(1),
	o => \addr[1]~input_o\);

-- Location: IOIBUF_X6_Y0_N15
\addr[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addr(3),
	o => \addr[3]~input_o\);

-- Location: IOIBUF_X3_Y0_N15
\addr[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addr(0),
	o => \addr[0]~input_o\);

-- Location: IOIBUF_X6_Y0_N22
\addr[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addr(2),
	o => \addr[2]~input_o\);

-- Location: LCCOMB_X13_Y13_N14
\Equal12~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal12~3_combout\ = (\addr[1]~input_o\ & (\addr[3]~input_o\ & (\addr[0]~input_o\ & \addr[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr[1]~input_o\,
	datab => \addr[3]~input_o\,
	datac => \addr[0]~input_o\,
	datad => \addr[2]~input_o\,
	combout => \Equal12~3_combout\);

-- Location: IOIBUF_X9_Y0_N29
\addr[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addr(4),
	o => \addr[4]~input_o\);

-- Location: IOIBUF_X9_Y0_N1
\addr[6]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addr(6),
	o => \addr[6]~input_o\);

-- Location: IOIBUF_X9_Y0_N22
\addr[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addr(5),
	o => \addr[5]~input_o\);

-- Location: IOIBUF_X11_Y0_N29
\addr[7]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addr(7),
	o => \addr[7]~input_o\);

-- Location: LCCOMB_X15_Y8_N20
\Equal12~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal12~4_combout\ = (\addr[4]~input_o\ & (\addr[6]~input_o\ & (\addr[5]~input_o\ & \addr[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr[4]~input_o\,
	datab => \addr[6]~input_o\,
	datac => \addr[5]~input_o\,
	datad => \addr[7]~input_o\,
	combout => \Equal12~4_combout\);

-- Location: IOIBUF_X17_Y0_N1
\addr[14]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addr(14),
	o => \addr[14]~input_o\);

-- Location: IOIBUF_X17_Y0_N22
\addr[13]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addr(13),
	o => \addr[13]~input_o\);

-- Location: IOIBUF_X19_Y0_N29
\addr[15]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addr(15),
	o => \addr[15]~input_o\);

-- Location: IOIBUF_X17_Y0_N29
\addr[12]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addr(12),
	o => \addr[12]~input_o\);

-- Location: LCCOMB_X20_Y9_N28
\Equal12~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal12~2_combout\ = (\addr[14]~input_o\ & (!\addr[13]~input_o\ & (\addr[15]~input_o\ & \addr[12]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr[14]~input_o\,
	datab => \addr[13]~input_o\,
	datac => \addr[15]~input_o\,
	datad => \addr[12]~input_o\,
	combout => \Equal12~2_combout\);

-- Location: LCCOMB_X17_Y9_N30
\Equal12~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal12~6_combout\ = (\Equal12~3_combout\ & (\Equal12~4_combout\ & (\addr[8]~input_o\ & \Equal12~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal12~3_combout\,
	datab => \Equal12~4_combout\,
	datac => \addr[8]~input_o\,
	datad => \Equal12~2_combout\,
	combout => \Equal12~6_combout\);

-- Location: IOIBUF_X11_Y0_N1
\addr[9]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addr(9),
	o => \addr[9]~input_o\);

-- Location: LCCOMB_X17_Y9_N24
\Equal12~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal12~7_combout\ = (!\addr[10]~input_o\ & (!\addr[11]~input_o\ & (\Equal12~6_combout\ & !\addr[9]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr[10]~input_o\,
	datab => \addr[11]~input_o\,
	datac => \Equal12~6_combout\,
	datad => \addr[9]~input_o\,
	combout => \Equal12~7_combout\);

-- Location: FF_X17_Y9_N25
hw_sel_act : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \phi2~inputclkctrl_outclk\,
	d => \Equal12~7_combout\,
	clrn => \n_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hw_sel_act~q\);

-- Location: LCCOMB_X17_Y9_N26
\hw_sel[7]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hw_sel[7]~0_combout\ = (\hw_sel_act~q\ & !\rw_latch~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \hw_sel_act~q\,
	datad => \rw_latch~q\,
	combout => \hw_sel[7]~0_combout\);

-- Location: FF_X13_Y9_N25
\hw_sel[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_phi2_early~reg0clkctrl_outclk\,
	asdata => \data[5]~input_o\,
	clrn => \n_reset~input_o\,
	sload => VCC,
	ena => \hw_sel[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hw_sel(5));

-- Location: IOIBUF_X31_Y17_N15
\data[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => data(1),
	o => \data[1]~input_o\);

-- Location: FF_X13_Y9_N27
\hw_sel[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_phi2_early~reg0clkctrl_outclk\,
	asdata => \data[1]~input_o\,
	clrn => \n_reset~input_o\,
	sload => VCC,
	ena => \hw_sel[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hw_sel(1));

-- Location: IOIBUF_X11_Y25_N15
\dip_sw[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dip_sw(1),
	o => \dip_sw[1]~input_o\);

-- Location: IOIBUF_X6_Y10_N1
\dip_sw[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dip_sw(4),
	o => \dip_sw[4]~input_o\);

-- Location: IOIBUF_X11_Y25_N29
\dip_sw[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dip_sw(3),
	o => \dip_sw[3]~input_o\);

-- Location: IOIBUF_X15_Y25_N15
\dip_sw[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dip_sw(0),
	o => \dip_sw[0]~input_o\);

-- Location: LCCOMB_X13_Y9_N6
\Equal1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = (\dip_sw[1]~input_o\ & (!\dip_sw[4]~input_o\ & (!\dip_sw[3]~input_o\ & !\dip_sw[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dip_sw[1]~input_o\,
	datab => \dip_sw[4]~input_o\,
	datac => \dip_sw[3]~input_o\,
	datad => \dip_sw[0]~input_o\,
	combout => \Equal1~0_combout\);

-- Location: LCCOMB_X13_Y9_N26
\Equal13~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal13~1_combout\ = (\dip_sw[2]~input_o\ & (!hw_sel(1) & (hw_sel(5) $ (!\Equal1~0_combout\)))) # (!\dip_sw[2]~input_o\ & (!hw_sel(5) & (hw_sel(1) $ (!\Equal1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dip_sw[2]~input_o\,
	datab => hw_sel(5),
	datac => hw_sel(1),
	datad => \Equal1~0_combout\,
	combout => \Equal13~1_combout\);

-- Location: IOIBUF_X31_Y22_N22
\data[6]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => data(6),
	o => \data[6]~input_o\);

-- Location: LCCOMB_X13_Y9_N22
\hw_sel[6]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hw_sel[6]~feeder_combout\ = \data[6]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data[6]~input_o\,
	combout => \hw_sel[6]~feeder_combout\);

-- Location: FF_X13_Y9_N23
\hw_sel[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_phi2_early~reg0clkctrl_outclk\,
	d => \hw_sel[6]~feeder_combout\,
	clrn => \n_reset~input_o\,
	ena => \hw_sel[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hw_sel(6));

-- Location: LCCOMB_X13_Y9_N28
\Equal2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal2~0_combout\ = (\dip_sw[1]~input_o\ & (!\dip_sw[4]~input_o\ & (!\dip_sw[3]~input_o\ & \dip_sw[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dip_sw[1]~input_o\,
	datab => \dip_sw[4]~input_o\,
	datac => \dip_sw[3]~input_o\,
	datad => \dip_sw[0]~input_o\,
	combout => \Equal2~0_combout\);

-- Location: IOIBUF_X31_Y19_N22
\data[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => data(2),
	o => \data[2]~input_o\);

-- Location: FF_X13_Y9_N17
\hw_sel[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_phi2_early~reg0clkctrl_outclk\,
	asdata => \data[2]~input_o\,
	clrn => \n_reset~input_o\,
	sload => VCC,
	ena => \hw_sel[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hw_sel(2));

-- Location: LCCOMB_X13_Y9_N16
\Equal13~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal13~2_combout\ = (\dip_sw[2]~input_o\ & (!hw_sel(2) & (hw_sel(6) $ (!\Equal2~0_combout\)))) # (!\dip_sw[2]~input_o\ & (!hw_sel(6) & (\Equal2~0_combout\ $ (!hw_sel(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100101000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => hw_sel(6),
	datab => \Equal2~0_combout\,
	datac => hw_sel(2),
	datad => \dip_sw[2]~input_o\,
	combout => \Equal13~2_combout\);

-- Location: LCCOMB_X13_Y9_N0
\Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!\dip_sw[1]~input_o\ & (!\dip_sw[4]~input_o\ & (!\dip_sw[3]~input_o\ & \dip_sw[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dip_sw[1]~input_o\,
	datab => \dip_sw[4]~input_o\,
	datac => \dip_sw[3]~input_o\,
	datad => \dip_sw[0]~input_o\,
	combout => \Equal0~0_combout\);

-- Location: IOIBUF_X31_Y17_N22
\data[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => data(0),
	o => \data[0]~input_o\);

-- Location: FF_X13_Y9_N5
\hw_sel[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_phi2_early~reg0clkctrl_outclk\,
	asdata => \data[0]~input_o\,
	clrn => \n_reset~input_o\,
	sload => VCC,
	ena => \hw_sel[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hw_sel(0));

-- Location: IOIBUF_X31_Y19_N15
\data[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => data(4),
	o => \data[4]~input_o\);

-- Location: LCCOMB_X13_Y9_N2
\hw_sel[4]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hw_sel[4]~feeder_combout\ = \data[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data[4]~input_o\,
	combout => \hw_sel[4]~feeder_combout\);

-- Location: FF_X13_Y9_N3
\hw_sel[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_phi2_early~reg0clkctrl_outclk\,
	d => \hw_sel[4]~feeder_combout\,
	clrn => \n_reset~input_o\,
	ena => \hw_sel[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hw_sel(4));

-- Location: LCCOMB_X13_Y9_N4
\Equal13~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal13~0_combout\ = (\dip_sw[2]~input_o\ & (!hw_sel(0) & (\Equal0~0_combout\ $ (!hw_sel(4))))) # (!\dip_sw[2]~input_o\ & (!hw_sel(4) & (\Equal0~0_combout\ $ (!hw_sel(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100001000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dip_sw[2]~input_o\,
	datab => \Equal0~0_combout\,
	datac => hw_sel(0),
	datad => hw_sel(4),
	combout => \Equal13~0_combout\);

-- Location: IOIBUF_X31_Y19_N8
\data[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => data(3),
	o => \data[3]~input_o\);

-- Location: FF_X13_Y9_N11
\hw_sel[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_phi2_early~reg0clkctrl_outclk\,
	asdata => \data[3]~input_o\,
	clrn => \n_reset~input_o\,
	sload => VCC,
	ena => \hw_sel[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hw_sel(3));

-- Location: LCCOMB_X13_Y9_N12
\PBI_ADDR[3]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PBI_ADDR[3]~0_combout\ = (\dip_sw[2]~input_o\ & (!\dip_sw[0]~input_o\ & (!\dip_sw[4]~input_o\ & !\dip_sw[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dip_sw[2]~input_o\,
	datab => \dip_sw[0]~input_o\,
	datac => \dip_sw[4]~input_o\,
	datad => \dip_sw[1]~input_o\,
	combout => \PBI_ADDR[3]~0_combout\);

-- Location: LCCOMB_X13_Y9_N10
\Equal13~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal13~3_combout\ = hw_sel(3) $ (((!\dip_sw[3]~input_o\ & \PBI_ADDR[3]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dip_sw[3]~input_o\,
	datac => hw_sel(3),
	datad => \PBI_ADDR[3]~0_combout\,
	combout => \Equal13~3_combout\);

-- Location: LCCOMB_X13_Y9_N14
\Equal13~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal13~4_combout\ = (\Equal13~1_combout\ & (\Equal13~2_combout\ & (\Equal13~0_combout\ & !\Equal13~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal13~1_combout\,
	datab => \Equal13~2_combout\,
	datac => \Equal13~0_combout\,
	datad => \Equal13~3_combout\,
	combout => \Equal13~4_combout\);

-- Location: IOIBUF_X31_Y22_N15
\data[7]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => data(7),
	o => \data[7]~input_o\);

-- Location: FF_X13_Y9_N9
\hw_sel[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_phi2_early~reg0clkctrl_outclk\,
	asdata => \data[7]~input_o\,
	clrn => \n_reset~input_o\,
	sload => VCC,
	ena => \hw_sel[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hw_sel(7));

-- Location: LCCOMB_X13_Y9_N18
\PBI_ADDR[7]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PBI_ADDR[7]~1_combout\ = (!\dip_sw[2]~input_o\ & (!\dip_sw[0]~input_o\ & (!\dip_sw[4]~input_o\ & !\dip_sw[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dip_sw[2]~input_o\,
	datab => \dip_sw[0]~input_o\,
	datac => \dip_sw[4]~input_o\,
	datad => \dip_sw[1]~input_o\,
	combout => \PBI_ADDR[7]~1_combout\);

-- Location: LCCOMB_X13_Y9_N8
\Equal13~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal13~5_combout\ = hw_sel(7) $ (((\dip_sw[3]~input_o\ & \PBI_ADDR[7]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dip_sw[3]~input_o\,
	datac => hw_sel(7),
	datad => \PBI_ADDR[7]~1_combout\,
	combout => \Equal13~5_combout\);

-- Location: LCCOMB_X17_Y9_N16
\addr_latch[9]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \addr_latch[9]~7_combout\ = !\addr[9]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \addr[9]~input_o\,
	combout => \addr_latch[9]~7_combout\);

-- Location: FF_X17_Y9_N17
\addr_latch[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \phi2~inputclkctrl_outclk\,
	d => \addr_latch[9]~7_combout\,
	clrn => \n_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => addr_latch(9));

-- Location: LCCOMB_X17_Y9_N14
\addr_latch[10]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \addr_latch[10]~6_combout\ = !\addr[10]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \addr[10]~input_o\,
	combout => \addr_latch[10]~6_combout\);

-- Location: FF_X17_Y9_N15
\addr_latch[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \phi2~inputclkctrl_outclk\,
	d => \addr_latch[10]~6_combout\,
	clrn => \n_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => addr_latch(10));

-- Location: LCCOMB_X17_Y9_N4
\addr_latch[11]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \addr_latch[11]~1_combout\ = !\addr[11]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \addr[11]~input_o\,
	combout => \addr_latch[11]~1_combout\);

-- Location: FF_X17_Y9_N5
\addr_latch[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \phi2~inputclkctrl_outclk\,
	d => \addr_latch[11]~1_combout\,
	clrn => \n_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => addr_latch(11));

-- Location: LCCOMB_X20_Y9_N10
\addr_latch[15]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \addr_latch[15]~3_combout\ = !\addr[15]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \addr[15]~input_o\,
	combout => \addr_latch[15]~3_combout\);

-- Location: FF_X20_Y9_N11
\addr_latch[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \phi2~inputclkctrl_outclk\,
	d => \addr_latch[15]~3_combout\,
	clrn => \n_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => addr_latch(15));

-- Location: LCCOMB_X20_Y9_N24
\addr_latch[13]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \addr_latch[13]~2_combout\ = !\addr[13]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \addr[13]~input_o\,
	combout => \addr_latch[13]~2_combout\);

-- Location: FF_X20_Y9_N25
\addr_latch[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \phi2~inputclkctrl_outclk\,
	d => \addr_latch[13]~2_combout\,
	clrn => \n_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => addr_latch(13));

-- Location: LCCOMB_X20_Y9_N14
\addr_latch[12]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \addr_latch[12]~5_combout\ = !\addr[12]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \addr[12]~input_o\,
	combout => \addr_latch[12]~5_combout\);

-- Location: FF_X20_Y9_N15
\addr_latch[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \phi2~inputclkctrl_outclk\,
	d => \addr_latch[12]~5_combout\,
	clrn => \n_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => addr_latch(12));

-- Location: LCCOMB_X20_Y9_N12
\addr_latch[14]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \addr_latch[14]~4_combout\ = !\addr[14]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \addr[14]~input_o\,
	combout => \addr_latch[14]~4_combout\);

-- Location: FF_X20_Y9_N13
\addr_latch[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \phi2~inputclkctrl_outclk\,
	d => \addr_latch[14]~4_combout\,
	clrn => \n_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => addr_latch(14));

-- Location: LCCOMB_X20_Y9_N16
\process_5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \process_5~0_combout\ = (!addr_latch(15) & (addr_latch(13) & (!addr_latch(12) & !addr_latch(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => addr_latch(15),
	datab => addr_latch(13),
	datac => addr_latch(12),
	datad => addr_latch(14),
	combout => \process_5~0_combout\);

-- Location: LCCOMB_X20_Y9_N2
\process_5~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \process_5~1_combout\ = (!addr_latch(9) & (!addr_latch(10) & (addr_latch(11) & \process_5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => addr_latch(9),
	datab => addr_latch(10),
	datac => addr_latch(11),
	datad => \process_5~0_combout\,
	combout => \process_5~1_combout\);

-- Location: LCCOMB_X28_Y13_N16
\process_5~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \process_5~2_combout\ = (\Equal13~4_combout\ & (!\Equal13~5_combout\ & \process_5~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal13~4_combout\,
	datac => \Equal13~5_combout\,
	datad => \process_5~1_combout\,
	combout => \process_5~2_combout\);

-- Location: LCCOMB_X7_Y6_N18
\slave_ram_wren~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \slave_ram_wren~0_combout\ = (!addr_latch(8) & (!\rw_latch~q\ & (\process_5~2_combout\ & !\master_ram_wren~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => addr_latch(8),
	datab => \rw_latch~q\,
	datac => \process_5~2_combout\,
	datad => \master_ram_wren~0_combout\,
	combout => \slave_ram_wren~0_combout\);

-- Location: LCCOMB_X20_Y10_N6
\reg_srbs[5]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_srbs[5]~feeder_combout\ = \data[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data[5]~input_o\,
	combout => \reg_srbs[5]~feeder_combout\);

-- Location: LCCOMB_X13_Y13_N2
\addr_latch[1]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \addr_latch[1]~9_combout\ = !\addr[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \addr[1]~input_o\,
	combout => \addr_latch[1]~9_combout\);

-- Location: FF_X13_Y13_N3
\addr_latch[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \phi2~inputclkctrl_outclk\,
	d => \addr_latch[1]~9_combout\,
	clrn => \n_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => addr_latch(1));

-- Location: LCCOMB_X15_Y8_N16
\addr_latch[7]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \addr_latch[7]~10_combout\ = !\addr[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \addr[7]~input_o\,
	combout => \addr_latch[7]~10_combout\);

-- Location: FF_X15_Y8_N17
\addr_latch[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \phi2~inputclkctrl_outclk\,
	d => \addr_latch[7]~10_combout\,
	clrn => \n_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => addr_latch(7));

-- Location: LCCOMB_X20_Y9_N4
\Equal18~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal18~0_combout\ = (addr_latch(9) & (addr_latch(10) & (addr_latch(7) & !addr_latch(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => addr_latch(9),
	datab => addr_latch(10),
	datac => addr_latch(7),
	datad => addr_latch(8),
	combout => \Equal18~0_combout\);

-- Location: LCCOMB_X15_Y8_N2
\addr_latch[6]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \addr_latch[6]~11_combout\ = !\addr[6]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \addr[6]~input_o\,
	combout => \addr_latch[6]~11_combout\);

-- Location: FF_X15_Y8_N3
\addr_latch[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \phi2~inputclkctrl_outclk\,
	d => \addr_latch[6]~11_combout\,
	clrn => \n_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => addr_latch(6));

-- Location: LCCOMB_X13_Y13_N12
\addr_latch[2]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \addr_latch[2]~13_combout\ = !\addr[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \addr[2]~input_o\,
	combout => \addr_latch[2]~13_combout\);

-- Location: FF_X13_Y13_N13
\addr_latch[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \phi2~inputclkctrl_outclk\,
	d => \addr_latch[2]~13_combout\,
	clrn => \n_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => addr_latch(2));

-- Location: LCCOMB_X20_Y9_N6
\addr_latch[3]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \addr_latch[3]~12_combout\ = !\addr[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \addr[3]~input_o\,
	combout => \addr_latch[3]~12_combout\);

-- Location: FF_X20_Y9_N7
\addr_latch[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \phi2~inputclkctrl_outclk\,
	d => \addr_latch[3]~12_combout\,
	clrn => \n_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => addr_latch(3));

-- Location: LCCOMB_X20_Y9_N0
\Equal18~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal18~1_combout\ = (addr_latch(6) & (addr_latch(2) & addr_latch(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => addr_latch(6),
	datab => addr_latch(2),
	datad => addr_latch(3),
	combout => \Equal18~1_combout\);

-- Location: LCCOMB_X20_Y9_N26
\Equal18~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal18~2_combout\ = (\Equal18~0_combout\ & (\process_5~0_combout\ & (addr_latch(11) & \Equal18~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal18~0_combout\,
	datab => \process_5~0_combout\,
	datac => addr_latch(11),
	datad => \Equal18~1_combout\,
	combout => \Equal18~2_combout\);

-- Location: LCCOMB_X15_Y8_N28
\addr_latch[4]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \addr_latch[4]~14_combout\ = !\addr[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \addr[4]~input_o\,
	combout => \addr_latch[4]~14_combout\);

-- Location: FF_X15_Y8_N29
\addr_latch[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \phi2~inputclkctrl_outclk\,
	d => \addr_latch[4]~14_combout\,
	clrn => \n_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => addr_latch(4));

-- Location: LCCOMB_X15_Y8_N22
\Equal18~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal18~3_combout\ = (addr_latch(1) & (\Equal18~2_combout\ & addr_latch(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => addr_latch(1),
	datac => \Equal18~2_combout\,
	datad => addr_latch(4),
	combout => \Equal18~3_combout\);

-- Location: LCCOMB_X15_Y8_N0
\addr_latch[5]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \addr_latch[5]~15_combout\ = !\addr[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \addr[5]~input_o\,
	combout => \addr_latch[5]~15_combout\);

-- Location: FF_X15_Y8_N1
\addr_latch[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \phi2~inputclkctrl_outclk\,
	d => \addr_latch[5]~15_combout\,
	clrn => \n_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => addr_latch(5));

-- Location: LCCOMB_X13_Y13_N0
\addr_latch[0]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \addr_latch[0]~8_combout\ = !\addr[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \addr[0]~input_o\,
	combout => \addr_latch[0]~8_combout\);

-- Location: FF_X13_Y13_N1
\addr_latch[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \phi2~inputclkctrl_outclk\,
	d => \addr_latch[0]~8_combout\,
	clrn => \n_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => addr_latch(0));

-- Location: LCCOMB_X13_Y9_N20
\Equal13~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal13~6_combout\ = (\Equal13~4_combout\ & (hw_sel(7) $ (((!\PBI_ADDR[7]~1_combout\) # (!\dip_sw[3]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => hw_sel(7),
	datab => \Equal13~4_combout\,
	datac => \dip_sw[3]~input_o\,
	datad => \PBI_ADDR[7]~1_combout\,
	combout => \Equal13~6_combout\);

-- Location: LCCOMB_X17_Y9_N10
\LessThan4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan4~0_combout\ = (!\addr[8]~input_o\ & (!\addr[10]~input_o\ & !\addr[9]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr[8]~input_o\,
	datac => \addr[10]~input_o\,
	datad => \addr[9]~input_o\,
	combout => \LessThan4~0_combout\);

-- Location: LCCOMB_X17_Y9_N6
\Equal12~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal12~5_combout\ = (!\addr[9]~input_o\ & (!\addr[11]~input_o\ & !\addr[10]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr[9]~input_o\,
	datab => \addr[11]~input_o\,
	datac => \addr[10]~input_o\,
	combout => \Equal12~5_combout\);

-- Location: LCCOMB_X17_Y9_N8
\LessThan5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan5~0_combout\ = ((\Equal12~3_combout\ & (\Equal12~4_combout\ & \addr[8]~input_o\))) # (!\Equal12~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal12~3_combout\,
	datab => \Equal12~4_combout\,
	datac => \addr[8]~input_o\,
	datad => \Equal12~5_combout\,
	combout => \LessThan5~0_combout\);

-- Location: LCCOMB_X17_Y9_N20
\dev_reg_act~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dev_reg_act~0_combout\ = (!\LessThan5~0_combout\ & (\Equal12~2_combout\ & ((\addr[11]~input_o\) # (!\LessThan4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan4~0_combout\,
	datab => \LessThan5~0_combout\,
	datac => \addr[11]~input_o\,
	datad => \Equal12~2_combout\,
	combout => \dev_reg_act~0_combout\);

-- Location: FF_X17_Y9_N21
dev_reg_act : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \phi2~inputclkctrl_outclk\,
	d => \dev_reg_act~0_combout\,
	clrn => \n_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dev_reg_act~q\);

-- Location: LCCOMB_X17_Y9_N0
\reg_mrbs[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_mrbs[0]~0_combout\ = (\Equal13~6_combout\ & (\dev_reg_act~q\ & (!\rw_latch~q\ & !\hw_sel_act~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal13~6_combout\,
	datab => \dev_reg_act~q\,
	datac => \rw_latch~q\,
	datad => \hw_sel_act~q\,
	combout => \reg_mrbs[0]~0_combout\);

-- Location: LCCOMB_X22_Y9_N26
\reg_srbs[5]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_srbs[5]~0_combout\ = (\Equal18~3_combout\ & (!addr_latch(5) & (!addr_latch(0) & \reg_mrbs[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal18~3_combout\,
	datab => addr_latch(5),
	datac => addr_latch(0),
	datad => \reg_mrbs[0]~0_combout\,
	combout => \reg_srbs[5]~0_combout\);

-- Location: FF_X20_Y10_N7
\reg_srbs[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_phi2_early~reg0clkctrl_outclk\,
	d => \reg_srbs[5]~feeder_combout\,
	clrn => \n_reset~input_o\,
	ena => \reg_srbs[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_srbs(5));

-- Location: LCCOMB_X12_Y4_N6
\u1|dpram_slave|altsyncram_component|auto_generated|decode3|eq_node[0]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|dpram_slave|altsyncram_component|auto_generated|decode3|eq_node\(0) = (\slave_ram_wren~0_combout\ & !reg_srbs(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \slave_ram_wren~0_combout\,
	datad => reg_srbs(5),
	combout => \u1|dpram_slave|altsyncram_component|auto_generated|decode3|eq_node\(0));

-- Location: LCCOMB_X7_Y6_N10
\slave_ram_rden~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \slave_ram_rden~0_combout\ = (!addr_latch(8) & (\rw_latch~q\ & (\process_5~2_combout\ & !\master_ram_wren~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => addr_latch(8),
	datab => \rw_latch~q\,
	datac => \process_5~2_combout\,
	datad => \master_ram_wren~0_combout\,
	combout => \slave_ram_rden~0_combout\);

-- Location: LCCOMB_X15_Y11_N30
\Equal8~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal8~0_combout\ = (!clk_counter(1) & (clk_counter(0) & (!clk_counter(3) & !clk_counter(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clk_counter(1),
	datab => clk_counter(0),
	datac => clk_counter(3),
	datad => clk_counter(2),
	combout => \Equal8~0_combout\);

-- Location: LCCOMB_X15_Y11_N2
\process_2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \process_2~0_combout\ = (!clk_counter(0) & (!clk_counter(3) & (clk_counter(1) $ (clk_counter(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clk_counter(1),
	datab => clk_counter(0),
	datac => clk_counter(3),
	datad => clk_counter(2),
	combout => \process_2~0_combout\);

-- Location: LCCOMB_X7_Y6_N20
\master_ram_clk~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \master_ram_clk~0_combout\ = (!\master_ram_wren~0_combout\ & ((\rw_latch~q\ & ((\process_2~0_combout\))) # (!\rw_latch~q\ & (!\Equal11~0_combout\ & !\process_2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \master_ram_wren~0_combout\,
	datab => \Equal11~0_combout\,
	datac => \rw_latch~q\,
	datad => \process_2~0_combout\,
	combout => \master_ram_clk~0_combout\);

-- Location: LCCOMB_X7_Y6_N12
\slave_ram_clk~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \slave_ram_clk~0_combout\ = (!addr_latch(8) & (\process_5~2_combout\ & (!\Equal8~0_combout\ & \master_ram_clk~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => addr_latch(8),
	datab => \process_5~2_combout\,
	datac => \Equal8~0_combout\,
	datad => \master_ram_clk~0_combout\,
	combout => \slave_ram_clk~0_combout\);

-- Location: LCCOMB_X7_Y6_N30
\slave_ram_clk~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \slave_ram_clk~1_combout\ = (\slave_ram_clk~0_combout\) # ((\Equal8~0_combout\ & \slave_ram_clk~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \slave_ram_clk~0_combout\,
	datab => \Equal8~0_combout\,
	datac => \slave_ram_clk~q\,
	combout => \slave_ram_clk~1_combout\);

-- Location: FF_X7_Y6_N31
slave_ram_clk : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_57~input_o\,
	d => \slave_ram_clk~1_combout\,
	clrn => \ALT_INV_master_ram_wren~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \slave_ram_clk~q\);

-- Location: CLKCTRL_G1
\slave_ram_clk~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \slave_ram_clk~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \slave_ram_clk~clkctrl_outclk\);

-- Location: FF_X29_Y1_N11
\u1|dpram_slave|altsyncram_component|auto_generated|rden_a_store\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|s_slave_ram_clk~clkctrl_outclk\,
	asdata => \u1|s_slave_ram_rden~3_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|dpram_slave|altsyncram_component|auto_generated|rden_a_store~q\);

-- Location: LCCOMB_X29_Y1_N22
\u1|dpram_slave|altsyncram_component|auto_generated|rden_decode_a|eq_node[0]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|dpram_slave|altsyncram_component|auto_generated|rden_decode_a|eq_node[0]~1_combout\ = (!\u1|s_slave_ram_bank\(5) & ((\u1|s_slave_ram_rden~3_combout\) # (\u1|dpram_slave|altsyncram_component|auto_generated|rden_a_store~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|s_slave_ram_rden~3_combout\,
	datab => \u1|s_slave_ram_bank\(5),
	datad => \u1|dpram_slave|altsyncram_component|auto_generated|rden_a_store~q\,
	combout => \u1|dpram_slave|altsyncram_component|auto_generated|rden_decode_a|eq_node[0]~1_combout\);

-- Location: FF_X12_Y4_N11
\u1|dpram_slave|altsyncram_component|auto_generated|rden_b_store\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \slave_ram_clk~clkctrl_outclk\,
	asdata => \slave_ram_rden~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|dpram_slave|altsyncram_component|auto_generated|rden_b_store~q\);

-- Location: LCCOMB_X7_Y6_N8
\u1|dpram_slave|altsyncram_component|auto_generated|_~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|dpram_slave|altsyncram_component|auto_generated|_~2_combout\ = (!addr_latch(8) & (\process_5~2_combout\ & (\phi2~input_o\ & \n_reset~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => addr_latch(8),
	datab => \process_5~2_combout\,
	datac => \phi2~input_o\,
	datad => \n_reset~input_o\,
	combout => \u1|dpram_slave|altsyncram_component|auto_generated|_~2_combout\);

-- Location: FF_X12_Y4_N13
\u1|dpram_slave|altsyncram_component|auto_generated|wren_b_store\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \slave_ram_clk~clkctrl_outclk\,
	asdata => \slave_ram_wren~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|dpram_slave|altsyncram_component|auto_generated|wren_b_store~q\);

-- Location: LCCOMB_X12_Y4_N12
\u1|dpram_slave|altsyncram_component|auto_generated|rden_decode_b|eq_node[0]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|dpram_slave|altsyncram_component|auto_generated|rden_decode_b|eq_node\(0) = (!reg_srbs(5) & ((\u1|dpram_slave|altsyncram_component|auto_generated|rden_b_store~q\) # ((\u1|dpram_slave|altsyncram_component|auto_generated|_~2_combout\) # 
-- (\u1|dpram_slave|altsyncram_component|auto_generated|wren_b_store~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|dpram_slave|altsyncram_component|auto_generated|rden_b_store~q\,
	datab => \u1|dpram_slave|altsyncram_component|auto_generated|_~2_combout\,
	datac => \u1|dpram_slave|altsyncram_component|auto_generated|wren_b_store~q\,
	datad => reg_srbs(5),
	combout => \u1|dpram_slave|altsyncram_component|auto_generated|rden_decode_b|eq_node\(0));

-- Location: LCCOMB_X27_Y8_N4
\u1|Decoder0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|Decoder0~1_combout\ = (!\u1|bit_cnt\(1) & (!\u1|bit_cnt\(0) & \u1|bit_cnt\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|bit_cnt\(1),
	datac => \u1|bit_cnt\(0),
	datad => \u1|bit_cnt\(2),
	combout => \u1|Decoder0~1_combout\);

-- Location: LCCOMB_X29_Y1_N14
\u1|process_2~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|process_2~4_combout\ = (\u1|Decoder0~1_combout\ & (((!\u1|LessThan2~3_combout\ & \u1|bit_cnt\(5))) # (!\u1|LessThan2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|LessThan2~3_combout\,
	datab => \u1|bit_cnt\(5),
	datac => \u1|LessThan2~1_combout\,
	datad => \u1|Decoder0~1_combout\,
	combout => \u1|process_2~4_combout\);

-- Location: LCCOMB_X30_Y1_N0
\u1|s_slave_ram_addr[0]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|s_slave_ram_addr[0]~7_combout\ = \u1|s_slave_ram_addr\(0) $ (\u1|process_2~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u1|s_slave_ram_addr\(0),
	datad => \u1|process_2~4_combout\,
	combout => \u1|s_slave_ram_addr[0]~7_combout\);

-- Location: FF_X30_Y1_N1
\u1|s_slave_ram_addr[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_spi_clk~input_o\,
	d => \u1|s_slave_ram_addr[0]~7_combout\,
	clrn => \u1|ALT_INV_process_2~2clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|s_slave_ram_addr\(0));

-- Location: LCCOMB_X30_Y1_N4
\u1|s_slave_ram_addr[1]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|s_slave_ram_addr[1]~8_combout\ = (\u1|s_slave_ram_addr\(0) & (\u1|s_slave_ram_addr\(1) $ (VCC))) # (!\u1|s_slave_ram_addr\(0) & (\u1|s_slave_ram_addr\(1) & VCC))
-- \u1|s_slave_ram_addr[1]~9\ = CARRY((\u1|s_slave_ram_addr\(0) & \u1|s_slave_ram_addr\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|s_slave_ram_addr\(0),
	datab => \u1|s_slave_ram_addr\(1),
	datad => VCC,
	combout => \u1|s_slave_ram_addr[1]~8_combout\,
	cout => \u1|s_slave_ram_addr[1]~9\);

-- Location: FF_X30_Y1_N5
\u1|s_slave_ram_addr[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_spi_clk~input_o\,
	d => \u1|s_slave_ram_addr[1]~8_combout\,
	clrn => \u1|ALT_INV_process_2~2clkctrl_outclk\,
	ena => \u1|process_2~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|s_slave_ram_addr\(1));

-- Location: LCCOMB_X30_Y1_N6
\u1|s_slave_ram_addr[2]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|s_slave_ram_addr[2]~10_combout\ = (\u1|s_slave_ram_addr\(2) & (!\u1|s_slave_ram_addr[1]~9\)) # (!\u1|s_slave_ram_addr\(2) & ((\u1|s_slave_ram_addr[1]~9\) # (GND)))
-- \u1|s_slave_ram_addr[2]~11\ = CARRY((!\u1|s_slave_ram_addr[1]~9\) # (!\u1|s_slave_ram_addr\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u1|s_slave_ram_addr\(2),
	datad => VCC,
	cin => \u1|s_slave_ram_addr[1]~9\,
	combout => \u1|s_slave_ram_addr[2]~10_combout\,
	cout => \u1|s_slave_ram_addr[2]~11\);

-- Location: FF_X30_Y1_N7
\u1|s_slave_ram_addr[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_spi_clk~input_o\,
	d => \u1|s_slave_ram_addr[2]~10_combout\,
	clrn => \u1|ALT_INV_process_2~2clkctrl_outclk\,
	ena => \u1|process_2~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|s_slave_ram_addr\(2));

-- Location: LCCOMB_X30_Y1_N8
\u1|s_slave_ram_addr[3]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|s_slave_ram_addr[3]~12_combout\ = (\u1|s_slave_ram_addr\(3) & (\u1|s_slave_ram_addr[2]~11\ $ (GND))) # (!\u1|s_slave_ram_addr\(3) & (!\u1|s_slave_ram_addr[2]~11\ & VCC))
-- \u1|s_slave_ram_addr[3]~13\ = CARRY((\u1|s_slave_ram_addr\(3) & !\u1|s_slave_ram_addr[2]~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u1|s_slave_ram_addr\(3),
	datad => VCC,
	cin => \u1|s_slave_ram_addr[2]~11\,
	combout => \u1|s_slave_ram_addr[3]~12_combout\,
	cout => \u1|s_slave_ram_addr[3]~13\);

-- Location: FF_X30_Y1_N9
\u1|s_slave_ram_addr[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_spi_clk~input_o\,
	d => \u1|s_slave_ram_addr[3]~12_combout\,
	clrn => \u1|ALT_INV_process_2~2clkctrl_outclk\,
	ena => \u1|process_2~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|s_slave_ram_addr\(3));

-- Location: LCCOMB_X30_Y1_N10
\u1|s_slave_ram_addr[4]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|s_slave_ram_addr[4]~14_combout\ = (\u1|s_slave_ram_addr\(4) & (!\u1|s_slave_ram_addr[3]~13\)) # (!\u1|s_slave_ram_addr\(4) & ((\u1|s_slave_ram_addr[3]~13\) # (GND)))
-- \u1|s_slave_ram_addr[4]~15\ = CARRY((!\u1|s_slave_ram_addr[3]~13\) # (!\u1|s_slave_ram_addr\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u1|s_slave_ram_addr\(4),
	datad => VCC,
	cin => \u1|s_slave_ram_addr[3]~13\,
	combout => \u1|s_slave_ram_addr[4]~14_combout\,
	cout => \u1|s_slave_ram_addr[4]~15\);

-- Location: FF_X30_Y1_N11
\u1|s_slave_ram_addr[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_spi_clk~input_o\,
	d => \u1|s_slave_ram_addr[4]~14_combout\,
	clrn => \u1|ALT_INV_process_2~2clkctrl_outclk\,
	ena => \u1|process_2~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|s_slave_ram_addr\(4));

-- Location: LCCOMB_X30_Y1_N12
\u1|s_slave_ram_addr[5]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|s_slave_ram_addr[5]~16_combout\ = (\u1|s_slave_ram_addr\(5) & (\u1|s_slave_ram_addr[4]~15\ $ (GND))) # (!\u1|s_slave_ram_addr\(5) & (!\u1|s_slave_ram_addr[4]~15\ & VCC))
-- \u1|s_slave_ram_addr[5]~17\ = CARRY((\u1|s_slave_ram_addr\(5) & !\u1|s_slave_ram_addr[4]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u1|s_slave_ram_addr\(5),
	datad => VCC,
	cin => \u1|s_slave_ram_addr[4]~15\,
	combout => \u1|s_slave_ram_addr[5]~16_combout\,
	cout => \u1|s_slave_ram_addr[5]~17\);

-- Location: FF_X30_Y1_N13
\u1|s_slave_ram_addr[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_spi_clk~input_o\,
	d => \u1|s_slave_ram_addr[5]~16_combout\,
	clrn => \u1|ALT_INV_process_2~2clkctrl_outclk\,
	ena => \u1|process_2~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|s_slave_ram_addr\(5));

-- Location: LCCOMB_X30_Y1_N14
\u1|s_slave_ram_addr[6]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|s_slave_ram_addr[6]~18_combout\ = (\u1|s_slave_ram_addr\(6) & (!\u1|s_slave_ram_addr[5]~17\)) # (!\u1|s_slave_ram_addr\(6) & ((\u1|s_slave_ram_addr[5]~17\) # (GND)))
-- \u1|s_slave_ram_addr[6]~19\ = CARRY((!\u1|s_slave_ram_addr[5]~17\) # (!\u1|s_slave_ram_addr\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u1|s_slave_ram_addr\(6),
	datad => VCC,
	cin => \u1|s_slave_ram_addr[5]~17\,
	combout => \u1|s_slave_ram_addr[6]~18_combout\,
	cout => \u1|s_slave_ram_addr[6]~19\);

-- Location: FF_X30_Y1_N15
\u1|s_slave_ram_addr[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_spi_clk~input_o\,
	d => \u1|s_slave_ram_addr[6]~18_combout\,
	clrn => \u1|ALT_INV_process_2~2clkctrl_outclk\,
	ena => \u1|process_2~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|s_slave_ram_addr\(6));

-- Location: LCCOMB_X30_Y1_N16
\u1|s_slave_ram_addr[7]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|s_slave_ram_addr[7]~20_combout\ = \u1|s_slave_ram_addr\(7) $ (!\u1|s_slave_ram_addr[6]~19\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u1|s_slave_ram_addr\(7),
	cin => \u1|s_slave_ram_addr[6]~19\,
	combout => \u1|s_slave_ram_addr[7]~20_combout\);

-- Location: FF_X30_Y1_N17
\u1|s_slave_ram_addr[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_spi_clk~input_o\,
	d => \u1|s_slave_ram_addr[7]~20_combout\,
	clrn => \u1|ALT_INV_process_2~2clkctrl_outclk\,
	ena => \u1|process_2~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|s_slave_ram_addr\(7));

-- Location: LCCOMB_X30_Y8_N30
\u1|Decoder0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|Decoder0~2_combout\ = (\u1|bit_cnt\(0) & (\u1|bit_cnt\(1) & \u1|bit_cnt\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|bit_cnt\(0),
	datac => \u1|bit_cnt\(1),
	datad => \u1|bit_cnt\(2),
	combout => \u1|Decoder0~2_combout\);

-- Location: LCCOMB_X29_Y1_N20
\u1|s_slave_ram_bank[0]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|s_slave_ram_bank[0]~3_combout\ = (\u1|Decoder0~2_combout\ & ((\u1|s_slave_ram_bank[4]~0_combout\) # ((!\u1|s_slave_ram_bank[5]~1_combout\ & \u1|s_slave_ram_bank\(0))))) # (!\u1|Decoder0~2_combout\ & (((\u1|s_slave_ram_bank\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|s_slave_ram_bank[5]~1_combout\,
	datab => \u1|s_slave_ram_bank[4]~0_combout\,
	datac => \u1|s_slave_ram_bank\(0),
	datad => \u1|Decoder0~2_combout\,
	combout => \u1|s_slave_ram_bank[0]~3_combout\);

-- Location: FF_X29_Y1_N21
\u1|s_slave_ram_bank[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \spi_clk~input_o\,
	d => \u1|s_slave_ram_bank[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|s_slave_ram_bank\(0));

-- Location: LCCOMB_X27_Y8_N30
\u1|Decoder0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|Decoder0~3_combout\ = (\u1|bit_cnt\(1) & (!\u1|bit_cnt\(0) & \u1|bit_cnt\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|bit_cnt\(1),
	datac => \u1|bit_cnt\(0),
	datad => \u1|bit_cnt\(2),
	combout => \u1|Decoder0~3_combout\);

-- Location: LCCOMB_X29_Y1_N6
\u1|s_slave_ram_bank[1]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|s_slave_ram_bank[1]~4_combout\ = (\u1|Decoder0~3_combout\ & ((\u1|s_slave_ram_bank[4]~0_combout\) # ((!\u1|s_slave_ram_bank[5]~1_combout\ & \u1|s_slave_ram_bank\(1))))) # (!\u1|Decoder0~3_combout\ & (((\u1|s_slave_ram_bank\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|s_slave_ram_bank[5]~1_combout\,
	datab => \u1|s_slave_ram_bank[4]~0_combout\,
	datac => \u1|s_slave_ram_bank\(1),
	datad => \u1|Decoder0~3_combout\,
	combout => \u1|s_slave_ram_bank[1]~4_combout\);

-- Location: FF_X29_Y1_N7
\u1|s_slave_ram_bank[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \spi_clk~input_o\,
	d => \u1|s_slave_ram_bank[1]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|s_slave_ram_bank\(1));

-- Location: LCCOMB_X30_Y8_N6
\u1|Decoder0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|Decoder0~4_combout\ = (\u1|bit_cnt\(0) & (!\u1|bit_cnt\(1) & \u1|bit_cnt\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|bit_cnt\(0),
	datac => \u1|bit_cnt\(1),
	datad => \u1|bit_cnt\(2),
	combout => \u1|Decoder0~4_combout\);

-- Location: LCCOMB_X29_Y1_N8
\u1|s_slave_ram_bank[2]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|s_slave_ram_bank[2]~5_combout\ = (\u1|Decoder0~4_combout\ & ((\u1|s_slave_ram_bank[4]~0_combout\) # ((!\u1|s_slave_ram_bank[5]~1_combout\ & \u1|s_slave_ram_bank\(2))))) # (!\u1|Decoder0~4_combout\ & (((\u1|s_slave_ram_bank\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|s_slave_ram_bank[5]~1_combout\,
	datab => \u1|s_slave_ram_bank[4]~0_combout\,
	datac => \u1|s_slave_ram_bank\(2),
	datad => \u1|Decoder0~4_combout\,
	combout => \u1|s_slave_ram_bank[2]~5_combout\);

-- Location: FF_X29_Y1_N9
\u1|s_slave_ram_bank[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \spi_clk~input_o\,
	d => \u1|s_slave_ram_bank[2]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|s_slave_ram_bank\(2));

-- Location: LCCOMB_X29_Y1_N18
\u1|s_slave_ram_bank[3]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|s_slave_ram_bank[3]~6_combout\ = (\u1|Decoder0~1_combout\ & ((\u1|s_slave_ram_bank[4]~0_combout\) # ((!\u1|s_slave_ram_bank[5]~1_combout\ & \u1|s_slave_ram_bank\(3))))) # (!\u1|Decoder0~1_combout\ & (((\u1|s_slave_ram_bank\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|s_slave_ram_bank[5]~1_combout\,
	datab => \u1|s_slave_ram_bank[4]~0_combout\,
	datac => \u1|s_slave_ram_bank\(3),
	datad => \u1|Decoder0~1_combout\,
	combout => \u1|s_slave_ram_bank[3]~6_combout\);

-- Location: FF_X29_Y1_N19
\u1|s_slave_ram_bank[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \spi_clk~input_o\,
	d => \u1|s_slave_ram_bank[3]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|s_slave_ram_bank\(3));

-- Location: LCCOMB_X30_Y8_N28
\u1|Decoder0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|Decoder0~5_combout\ = (\u1|bit_cnt\(0) & (\u1|bit_cnt\(1) & !\u1|bit_cnt\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|bit_cnt\(0),
	datac => \u1|bit_cnt\(1),
	datad => \u1|bit_cnt\(2),
	combout => \u1|Decoder0~5_combout\);

-- Location: LCCOMB_X29_Y1_N28
\u1|s_slave_ram_bank[4]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|s_slave_ram_bank[4]~7_combout\ = (\u1|Decoder0~5_combout\ & ((\u1|s_slave_ram_bank[4]~0_combout\) # ((!\u1|s_slave_ram_bank[5]~1_combout\ & \u1|s_slave_ram_bank\(4))))) # (!\u1|Decoder0~5_combout\ & (((\u1|s_slave_ram_bank\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|s_slave_ram_bank[5]~1_combout\,
	datab => \u1|s_slave_ram_bank[4]~0_combout\,
	datac => \u1|s_slave_ram_bank\(4),
	datad => \u1|Decoder0~5_combout\,
	combout => \u1|s_slave_ram_bank[4]~7_combout\);

-- Location: FF_X29_Y1_N29
\u1|s_slave_ram_bank[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \spi_clk~input_o\,
	d => \u1|s_slave_ram_bank[4]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|s_slave_ram_bank\(4));

-- Location: LCCOMB_X16_Y8_N18
\addr_latch[0]~_wirecell\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \addr_latch[0]~_wirecell_combout\ = !addr_latch(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => addr_latch(0),
	combout => \addr_latch[0]~_wirecell_combout\);

-- Location: LCCOMB_X17_Y12_N20
\addr_latch[1]~_wirecell\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \addr_latch[1]~_wirecell_combout\ = !addr_latch(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => addr_latch(1),
	combout => \addr_latch[1]~_wirecell_combout\);

-- Location: LCCOMB_X17_Y13_N30
\addr_latch[2]~_wirecell\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \addr_latch[2]~_wirecell_combout\ = !addr_latch(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => addr_latch(2),
	combout => \addr_latch[2]~_wirecell_combout\);

-- Location: LCCOMB_X20_Y9_N18
\addr_latch[3]~_wirecell\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \addr_latch[3]~_wirecell_combout\ = !addr_latch(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => addr_latch(3),
	combout => \addr_latch[3]~_wirecell_combout\);

-- Location: LCCOMB_X19_Y5_N24
\addr_latch[4]~_wirecell\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \addr_latch[4]~_wirecell_combout\ = !addr_latch(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => addr_latch(4),
	combout => \addr_latch[4]~_wirecell_combout\);

-- Location: LCCOMB_X22_Y9_N22
\addr_latch[5]~_wirecell\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \addr_latch[5]~_wirecell_combout\ = !addr_latch(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => addr_latch(5),
	combout => \addr_latch[5]~_wirecell_combout\);

-- Location: LCCOMB_X6_Y9_N16
\addr_latch[6]~_wirecell\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \addr_latch[6]~_wirecell_combout\ = !addr_latch(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => addr_latch(6),
	combout => \addr_latch[6]~_wirecell_combout\);

-- Location: LCCOMB_X20_Y9_N20
\addr_latch[7]~_wirecell\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \addr_latch[7]~_wirecell_combout\ = !addr_latch(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => addr_latch(7),
	combout => \addr_latch[7]~_wirecell_combout\);

-- Location: FF_X20_Y10_N9
\reg_srbs[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_phi2_early~reg0clkctrl_outclk\,
	asdata => \data[0]~input_o\,
	clrn => \n_reset~input_o\,
	sload => VCC,
	ena => \reg_srbs[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_srbs(0));

-- Location: FF_X20_Y10_N27
\reg_srbs[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_phi2_early~reg0clkctrl_outclk\,
	asdata => \data[1]~input_o\,
	clrn => \n_reset~input_o\,
	sload => VCC,
	ena => \reg_srbs[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_srbs(1));

-- Location: FF_X20_Y10_N5
\reg_srbs[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_phi2_early~reg0clkctrl_outclk\,
	asdata => \data[2]~input_o\,
	clrn => \n_reset~input_o\,
	sload => VCC,
	ena => \reg_srbs[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_srbs(2));

-- Location: FF_X20_Y10_N31
\reg_srbs[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_phi2_early~reg0clkctrl_outclk\,
	asdata => \data[3]~input_o\,
	clrn => \n_reset~input_o\,
	sload => VCC,
	ena => \reg_srbs[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_srbs(3));

-- Location: FF_X20_Y10_N17
\reg_srbs[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_phi2_early~reg0clkctrl_outclk\,
	asdata => \data[4]~input_o\,
	clrn => \n_reset~input_o\,
	sload => VCC,
	ena => \reg_srbs[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_srbs(4));

-- Location: M9K_X26_Y15_N0
\u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a0\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "spi_dpram:u1|dpram:dpram_slave|altsyncram:altsyncram_component|altsyncram_p9o3:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "bidir_dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 16384,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "old_data",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_in_clock => "clock1",
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "clock1",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 16384,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "old_data",
	port_b_read_enable_clock => "clock1",
	port_b_write_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portare => \u1|s_slave_ram_rden~3_combout\,
	portbwe => \u1|dpram_slave|altsyncram_component|auto_generated|decode3|eq_node\(0),
	portbre => \slave_ram_rden~0_combout\,
	clk0 => \u1|s_slave_ram_clk~clkctrl_outclk\,
	clk1 => \slave_ram_clk~clkctrl_outclk\,
	ena0 => \u1|dpram_slave|altsyncram_component|auto_generated|rden_decode_a|eq_node[0]~1_combout\,
	ena1 => \u1|dpram_slave|altsyncram_component|auto_generated|rden_decode_b|eq_node\(0),
	portadatain => \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portbdatain => \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAIN_bus\,
	portaaddr => \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\,
	portbaddr => \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\,
	portbdataout => \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X12_Y4_N8
\u1|dpram_slave|altsyncram_component|auto_generated|decode3|eq_node[1]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|dpram_slave|altsyncram_component|auto_generated|decode3|eq_node\(1) = (\slave_ram_wren~0_combout\ & reg_srbs(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \slave_ram_wren~0_combout\,
	datad => reg_srbs(5),
	combout => \u1|dpram_slave|altsyncram_component|auto_generated|decode3|eq_node\(1));

-- Location: LCCOMB_X29_Y1_N10
\u1|dpram_slave|altsyncram_component|auto_generated|rden_decode_a|eq_node[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|dpram_slave|altsyncram_component|auto_generated|rden_decode_a|eq_node[1]~0_combout\ = (\u1|s_slave_ram_bank\(5) & ((\u1|s_slave_ram_rden~3_combout\) # (\u1|dpram_slave|altsyncram_component|auto_generated|rden_a_store~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|s_slave_ram_rden~3_combout\,
	datac => \u1|dpram_slave|altsyncram_component|auto_generated|rden_a_store~q\,
	datad => \u1|s_slave_ram_bank\(5),
	combout => \u1|dpram_slave|altsyncram_component|auto_generated|rden_decode_a|eq_node[1]~0_combout\);

-- Location: LCCOMB_X12_Y4_N10
\u1|dpram_slave|altsyncram_component|auto_generated|rden_decode_b|eq_node[1]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|dpram_slave|altsyncram_component|auto_generated|rden_decode_b|eq_node\(1) = (reg_srbs(5) & ((\u1|dpram_slave|altsyncram_component|auto_generated|wren_b_store~q\) # ((\u1|dpram_slave|altsyncram_component|auto_generated|_~2_combout\) # 
-- (\u1|dpram_slave|altsyncram_component|auto_generated|rden_b_store~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|dpram_slave|altsyncram_component|auto_generated|wren_b_store~q\,
	datab => \u1|dpram_slave|altsyncram_component|auto_generated|_~2_combout\,
	datac => \u1|dpram_slave|altsyncram_component|auto_generated|rden_b_store~q\,
	datad => reg_srbs(5),
	combout => \u1|dpram_slave|altsyncram_component|auto_generated|rden_decode_b|eq_node\(1));

-- Location: M9K_X8_Y8_N0
\u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a8\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "spi_dpram:u1|dpram:dpram_slave|altsyncram:altsyncram_component|altsyncram_p9o3:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "bidir_dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 16384,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "old_data",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_in_clock => "clock1",
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "clock1",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 16384,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "old_data",
	port_b_read_enable_clock => "clock1",
	port_b_write_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portare => \u1|s_slave_ram_rden~3_combout\,
	portbwe => \u1|dpram_slave|altsyncram_component|auto_generated|decode3|eq_node\(1),
	portbre => \slave_ram_rden~0_combout\,
	clk0 => \u1|s_slave_ram_clk~clkctrl_outclk\,
	clk1 => \slave_ram_clk~clkctrl_outclk\,
	ena0 => \u1|dpram_slave|altsyncram_component|auto_generated|rden_decode_a|eq_node[1]~0_combout\,
	ena1 => \u1|dpram_slave|altsyncram_component|auto_generated|rden_decode_b|eq_node\(1),
	portadatain => \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a8_PORTADATAIN_bus\,
	portbdatain => \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a8_PORTBDATAIN_bus\,
	portaaddr => \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a8_PORTAADDR_bus\,
	portbaddr => \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a8_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a8_PORTADATAOUT_bus\,
	portbdataout => \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a8_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X28_Y3_N10
\u1|spi_tx_buf[0]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|spi_tx_buf[0]~13_combout\ = (\u1|dpram_slave|altsyncram_component|auto_generated|out_address_reg_a\(0) & ((\u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a8~portadataout\))) # 
-- (!\u1|dpram_slave|altsyncram_component|auto_generated|out_address_reg_a\(0) & (\u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a0~portadataout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|dpram_slave|altsyncram_component|auto_generated|out_address_reg_a\(0),
	datac => \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a0~portadataout\,
	datad => \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a8~portadataout\,
	combout => \u1|spi_tx_buf[0]~13_combout\);

-- Location: LCCOMB_X29_Y15_N26
\u1|process_2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|process_2~0_combout\ = (((\u1|bit_cnt\(3)) # (\u1|bit_cnt\(5))) # (!\u1|bit_cnt\(4))) # (!\u1|LessThan2~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|LessThan2~1_combout\,
	datab => \u1|bit_cnt\(4),
	datac => \u1|bit_cnt\(3),
	datad => \u1|bit_cnt\(5),
	combout => \u1|process_2~0_combout\);

-- Location: LCCOMB_X29_Y15_N20
\u1|spi_tx_buf~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|spi_tx_buf~1_combout\ = ((\u1|bit_cnt\(4) & ((\u1|bit_cnt\(5)) # (!\u1|bit_cnt\(3)))) # (!\u1|bit_cnt\(4) & ((\u1|bit_cnt\(3)) # (!\u1|bit_cnt\(5))))) # (!\u1|LessThan2~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|LessThan2~1_combout\,
	datab => \u1|bit_cnt\(4),
	datac => \u1|bit_cnt\(3),
	datad => \u1|bit_cnt\(5),
	combout => \u1|spi_tx_buf~1_combout\);

-- Location: LCCOMB_X15_Y8_N24
\Equal19~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal19~0_combout\ = (addr_latch(0) & !addr_latch(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => addr_latch(0),
	datad => addr_latch(1),
	combout => \Equal19~0_combout\);

-- Location: LCCOMB_X15_Y8_N10
\Equal19~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal19~1_combout\ = (addr_latch(5) & (\Equal19~0_combout\ & (\Equal18~2_combout\ & addr_latch(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => addr_latch(5),
	datab => \Equal19~0_combout\,
	datac => \Equal18~2_combout\,
	datad => addr_latch(4),
	combout => \Equal19~1_combout\);

-- Location: LCCOMB_X15_Y8_N12
\reg_stbkcr[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_stbkcr[0]~0_combout\ = (\reg_mrbs[0]~0_combout\ & \Equal19~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reg_mrbs[0]~0_combout\,
	datad => \Equal19~1_combout\,
	combout => \reg_stbkcr[0]~0_combout\);

-- Location: FF_X28_Y3_N13
\reg_stbkcr[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_phi2_early~reg0clkctrl_outclk\,
	asdata => \data[0]~input_o\,
	clrn => \n_reset~input_o\,
	sload => VCC,
	ena => \reg_stbkcr[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_stbkcr(0));

-- Location: LCCOMB_X28_Y3_N14
\u1|spi_tx_buf[0]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|spi_tx_buf[0]~14_combout\ = (\u1|process_2~0_combout\ & ((\u1|spi_tx_buf[0]~13_combout\) # ((!\u1|spi_tx_buf~1_combout\)))) # (!\u1|process_2~0_combout\ & (((reg_stbkcr(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|spi_tx_buf[0]~13_combout\,
	datab => \u1|process_2~0_combout\,
	datac => \u1|spi_tx_buf~1_combout\,
	datad => reg_stbkcr(0),
	combout => \u1|spi_tx_buf[0]~14_combout\);

-- Location: LCCOMB_X22_Y9_N6
\reg_stbycr[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_stbycr[0]~0_combout\ = (\Equal18~3_combout\ & (addr_latch(5) & (!addr_latch(0) & \reg_mrbs[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal18~3_combout\,
	datab => addr_latch(5),
	datac => addr_latch(0),
	datad => \reg_mrbs[0]~0_combout\,
	combout => \reg_stbycr[0]~0_combout\);

-- Location: FF_X22_Y9_N19
\reg_stbycr[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_phi2_early~reg0clkctrl_outclk\,
	asdata => \data[0]~input_o\,
	clrn => \n_reset~input_o\,
	sload => VCC,
	ena => \reg_stbycr[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_stbycr(0));

-- Location: LCCOMB_X29_Y15_N28
\u1|process_2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|process_2~1_combout\ = ((\u1|bit_cnt\(4)) # ((\u1|bit_cnt\(5)) # (!\u1|bit_cnt\(3)))) # (!\u1|LessThan2~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|LessThan2~1_combout\,
	datab => \u1|bit_cnt\(4),
	datac => \u1|bit_cnt\(3),
	datad => \u1|bit_cnt\(5),
	combout => \u1|process_2~1_combout\);

-- Location: LCCOMB_X27_Y8_N10
\u1|spi_tx_buf[0]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|spi_tx_buf[0]~15_combout\ = (\u1|LessThan2~2_combout\ & ((\u1|process_2~1_combout\ & (\u1|spi_tx_buf[0]~14_combout\)) # (!\u1|process_2~1_combout\ & ((reg_stbycr(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|spi_tx_buf[0]~14_combout\,
	datab => reg_stbycr(0),
	datac => \u1|LessThan2~2_combout\,
	datad => \u1|process_2~1_combout\,
	combout => \u1|spi_tx_buf[0]~15_combout\);

-- Location: LCCOMB_X22_Y9_N20
\reg_sdcr[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_sdcr[1]~0_combout\ = (\Equal18~3_combout\ & (addr_latch(5) & (addr_latch(0) & \reg_mrbs[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal18~3_combout\,
	datab => addr_latch(5),
	datac => addr_latch(0),
	datad => \reg_mrbs[0]~0_combout\,
	combout => \reg_sdcr[1]~0_combout\);

-- Location: FF_X27_Y8_N17
\reg_sdcr[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_phi2_early~reg0clkctrl_outclk\,
	asdata => \data[0]~input_o\,
	clrn => \n_reset~input_o\,
	sload => VCC,
	ena => \reg_sdcr[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_sdcr(0));

-- Location: LCCOMB_X27_Y8_N16
\u1|spi_tx_buf[0]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|spi_tx_buf[0]~16_combout\ = (!\u1|process_2~2_combout\ & ((\u1|spi_tx_buf[0]~15_combout\) # ((!\u1|LessThan2~2_combout\ & reg_sdcr(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|spi_tx_buf[0]~15_combout\,
	datab => \u1|LessThan2~2_combout\,
	datac => reg_sdcr(0),
	datad => \u1|process_2~2_combout\,
	combout => \u1|spi_tx_buf[0]~16_combout\);

-- Location: FF_X24_Y8_N3
\reg_stbycr[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_phi2_early~reg0clkctrl_outclk\,
	asdata => \data[3]~input_o\,
	clrn => \n_reset~input_o\,
	sload => VCC,
	ena => \reg_stbycr[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_stbycr(3));

-- Location: FF_X30_Y9_N1
\reg_stbkcr[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_phi2_early~reg0clkctrl_outclk\,
	asdata => \data[3]~input_o\,
	clrn => \n_reset~input_o\,
	sload => VCC,
	ena => \reg_stbkcr[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_stbkcr(3));

-- Location: M9K_X26_Y9_N0
\u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a3\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "spi_dpram:u1|dpram:dpram_slave|altsyncram:altsyncram_component|altsyncram_p9o3:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "bidir_dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 3,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 16384,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "old_data",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_in_clock => "clock1",
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "clock1",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 3,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 16384,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "old_data",
	port_b_read_enable_clock => "clock1",
	port_b_write_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portare => \u1|s_slave_ram_rden~3_combout\,
	portbwe => \u1|dpram_slave|altsyncram_component|auto_generated|decode3|eq_node\(0),
	portbre => \slave_ram_rden~0_combout\,
	clk0 => \u1|s_slave_ram_clk~clkctrl_outclk\,
	clk1 => \slave_ram_clk~clkctrl_outclk\,
	ena0 => \u1|dpram_slave|altsyncram_component|auto_generated|rden_decode_a|eq_node[0]~1_combout\,
	ena1 => \u1|dpram_slave|altsyncram_component|auto_generated|rden_decode_b|eq_node\(0),
	portadatain => \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a3_PORTADATAIN_bus\,
	portbdatain => \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a3_PORTBDATAIN_bus\,
	portaaddr => \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a3_PORTAADDR_bus\,
	portbaddr => \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a3_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a3_PORTADATAOUT_bus\,
	portbdataout => \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a3_PORTBDATAOUT_bus\);

-- Location: M9K_X26_Y17_N0
\u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a11\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "spi_dpram:u1|dpram:dpram_slave|altsyncram:altsyncram_component|altsyncram_p9o3:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "bidir_dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 3,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 16384,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "old_data",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_in_clock => "clock1",
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "clock1",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 3,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 16384,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "old_data",
	port_b_read_enable_clock => "clock1",
	port_b_write_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portare => \u1|s_slave_ram_rden~3_combout\,
	portbwe => \u1|dpram_slave|altsyncram_component|auto_generated|decode3|eq_node\(1),
	portbre => \slave_ram_rden~0_combout\,
	clk0 => \u1|s_slave_ram_clk~clkctrl_outclk\,
	clk1 => \slave_ram_clk~clkctrl_outclk\,
	ena0 => \u1|dpram_slave|altsyncram_component|auto_generated|rden_decode_a|eq_node[1]~0_combout\,
	ena1 => \u1|dpram_slave|altsyncram_component|auto_generated|rden_decode_b|eq_node\(1),
	portadatain => \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a11_PORTADATAIN_bus\,
	portbdatain => \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a11_PORTBDATAIN_bus\,
	portaaddr => \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a11_PORTAADDR_bus\,
	portbaddr => \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a11_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a11_PORTADATAOUT_bus\,
	portbdataout => \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a11_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X23_Y11_N6
\u1|spi_tx_buf[3]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|spi_tx_buf[3]~9_combout\ = (\u1|dpram_slave|altsyncram_component|auto_generated|out_address_reg_a\(0) & ((\u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a11~portadataout\))) # 
-- (!\u1|dpram_slave|altsyncram_component|auto_generated|out_address_reg_a\(0) & (\u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a3~portadataout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a3~portadataout\,
	datab => \u1|dpram_slave|altsyncram_component|auto_generated|out_address_reg_a\(0),
	datac => \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a11~portadataout\,
	combout => \u1|spi_tx_buf[3]~9_combout\);

-- Location: LCCOMB_X23_Y11_N24
\u1|spi_tx_buf[3]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|spi_tx_buf[3]~10_combout\ = (\u1|process_2~0_combout\ & (((\u1|spi_tx_buf[3]~9_combout\)) # (!\u1|spi_tx_buf~1_combout\))) # (!\u1|process_2~0_combout\ & (((reg_stbkcr(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110001011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|spi_tx_buf~1_combout\,
	datab => reg_stbkcr(3),
	datac => \u1|process_2~0_combout\,
	datad => \u1|spi_tx_buf[3]~9_combout\,
	combout => \u1|spi_tx_buf[3]~10_combout\);

-- Location: LCCOMB_X23_Y11_N10
\u1|spi_tx_buf[3]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|spi_tx_buf[3]~11_combout\ = (\u1|LessThan2~2_combout\ & ((\u1|process_2~1_combout\ & ((\u1|spi_tx_buf[3]~10_combout\))) # (!\u1|process_2~1_combout\ & (reg_stbycr(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => reg_stbycr(3),
	datab => \u1|spi_tx_buf[3]~10_combout\,
	datac => \u1|process_2~1_combout\,
	datad => \u1|LessThan2~2_combout\,
	combout => \u1|spi_tx_buf[3]~11_combout\);

-- Location: FF_X24_Y8_N13
\reg_sdcr[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_phi2_early~reg0clkctrl_outclk\,
	asdata => \data[3]~input_o\,
	clrn => \n_reset~input_o\,
	sload => VCC,
	ena => \reg_sdcr[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_sdcr(3));

-- Location: LCCOMB_X27_Y8_N14
\u1|spi_tx_buf[3]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|spi_tx_buf[3]~12_combout\ = (!\u1|process_2~2_combout\ & ((\u1|spi_tx_buf[3]~11_combout\) # ((!\u1|LessThan2~2_combout\ & reg_sdcr(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|spi_tx_buf[3]~11_combout\,
	datab => \u1|process_2~2_combout\,
	datac => \u1|LessThan2~2_combout\,
	datad => reg_sdcr(3),
	combout => \u1|spi_tx_buf[3]~12_combout\);

-- Location: FF_X24_Y8_N15
\reg_stbycr[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_phi2_early~reg0clkctrl_outclk\,
	asdata => \data[1]~input_o\,
	clrn => \n_reset~input_o\,
	sload => VCC,
	ena => \reg_stbycr[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_stbycr(1));

-- Location: FF_X28_Y3_N1
\reg_stbkcr[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_phi2_early~reg0clkctrl_outclk\,
	asdata => \data[1]~input_o\,
	clrn => \n_reset~input_o\,
	sload => VCC,
	ena => \reg_stbkcr[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_stbkcr(1));

-- Location: M9K_X26_Y13_N0
\u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a9\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "spi_dpram:u1|dpram:dpram_slave|altsyncram:altsyncram_component|altsyncram_p9o3:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "bidir_dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 1,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 16384,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "old_data",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_in_clock => "clock1",
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "clock1",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 1,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 16384,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "old_data",
	port_b_read_enable_clock => "clock1",
	port_b_write_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portare => \u1|s_slave_ram_rden~3_combout\,
	portbwe => \u1|dpram_slave|altsyncram_component|auto_generated|decode3|eq_node\(1),
	portbre => \slave_ram_rden~0_combout\,
	clk0 => \u1|s_slave_ram_clk~clkctrl_outclk\,
	clk1 => \slave_ram_clk~clkctrl_outclk\,
	ena0 => \u1|dpram_slave|altsyncram_component|auto_generated|rden_decode_a|eq_node[1]~0_combout\,
	ena1 => \u1|dpram_slave|altsyncram_component|auto_generated|rden_decode_b|eq_node\(1),
	portadatain => \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a9_PORTADATAIN_bus\,
	portbdatain => \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a9_PORTBDATAIN_bus\,
	portaaddr => \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a9_PORTAADDR_bus\,
	portbaddr => \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a9_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a9_PORTADATAOUT_bus\,
	portbdataout => \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a9_PORTBDATAOUT_bus\);

-- Location: M9K_X5_Y6_N0
\u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a1\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "spi_dpram:u1|dpram:dpram_slave|altsyncram:altsyncram_component|altsyncram_p9o3:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "bidir_dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 1,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 16384,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "old_data",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_in_clock => "clock1",
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "clock1",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 1,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 16384,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "old_data",
	port_b_read_enable_clock => "clock1",
	port_b_write_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portare => \u1|s_slave_ram_rden~3_combout\,
	portbwe => \u1|dpram_slave|altsyncram_component|auto_generated|decode3|eq_node\(0),
	portbre => \slave_ram_rden~0_combout\,
	clk0 => \u1|s_slave_ram_clk~clkctrl_outclk\,
	clk1 => \slave_ram_clk~clkctrl_outclk\,
	ena0 => \u1|dpram_slave|altsyncram_component|auto_generated|rden_decode_a|eq_node[0]~1_combout\,
	ena1 => \u1|dpram_slave|altsyncram_component|auto_generated|rden_decode_b|eq_node\(0),
	portadatain => \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a1_PORTADATAIN_bus\,
	portbdatain => \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a1_PORTBDATAIN_bus\,
	portaaddr => \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a1_PORTAADDR_bus\,
	portbaddr => \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a1_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a1_PORTADATAOUT_bus\,
	portbdataout => \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a1_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X23_Y11_N2
\u1|spi_tx_buf[1]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|spi_tx_buf[1]~5_combout\ = (\u1|dpram_slave|altsyncram_component|auto_generated|out_address_reg_a\(0) & (\u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a9~portadataout\)) # 
-- (!\u1|dpram_slave|altsyncram_component|auto_generated|out_address_reg_a\(0) & ((\u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a1~portadataout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a9~portadataout\,
	datab => \u1|dpram_slave|altsyncram_component|auto_generated|out_address_reg_a\(0),
	datac => \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a1~portadataout\,
	combout => \u1|spi_tx_buf[1]~5_combout\);

-- Location: LCCOMB_X23_Y11_N20
\u1|spi_tx_buf[1]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|spi_tx_buf[1]~6_combout\ = (\u1|process_2~0_combout\ & (((\u1|spi_tx_buf[1]~5_combout\) # (!\u1|spi_tx_buf~1_combout\)))) # (!\u1|process_2~0_combout\ & (reg_stbkcr(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|process_2~0_combout\,
	datab => reg_stbkcr(1),
	datac => \u1|spi_tx_buf~1_combout\,
	datad => \u1|spi_tx_buf[1]~5_combout\,
	combout => \u1|spi_tx_buf[1]~6_combout\);

-- Location: LCCOMB_X24_Y8_N0
\u1|spi_tx_buf[1]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|spi_tx_buf[1]~7_combout\ = (\u1|LessThan2~2_combout\ & ((\u1|process_2~1_combout\ & ((\u1|spi_tx_buf[1]~6_combout\))) # (!\u1|process_2~1_combout\ & (reg_stbycr(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|LessThan2~2_combout\,
	datab => \u1|process_2~1_combout\,
	datac => reg_stbycr(1),
	datad => \u1|spi_tx_buf[1]~6_combout\,
	combout => \u1|spi_tx_buf[1]~7_combout\);

-- Location: FF_X24_Y8_N17
\reg_sdcr[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_phi2_early~reg0clkctrl_outclk\,
	asdata => \data[1]~input_o\,
	clrn => \n_reset~input_o\,
	sload => VCC,
	ena => \reg_sdcr[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_sdcr(1));

-- Location: LCCOMB_X27_Y8_N20
\u1|spi_tx_buf[1]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|spi_tx_buf[1]~8_combout\ = (!\u1|process_2~2_combout\ & ((\u1|spi_tx_buf[1]~7_combout\) # ((!\u1|LessThan2~2_combout\ & reg_sdcr(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|spi_tx_buf[1]~7_combout\,
	datab => \u1|process_2~2_combout\,
	datac => \u1|LessThan2~2_combout\,
	datad => reg_sdcr(1),
	combout => \u1|spi_tx_buf[1]~8_combout\);

-- Location: LCCOMB_X27_Y8_N8
\u1|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|Mux0~0_combout\ = (\u1|bit_cnt\(1) & (((\u1|bit_cnt\(0)) # (\u1|spi_tx_buf[1]~8_combout\)))) # (!\u1|bit_cnt\(1) & (\u1|spi_tx_buf[3]~12_combout\ & (!\u1|bit_cnt\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|bit_cnt\(1),
	datab => \u1|spi_tx_buf[3]~12_combout\,
	datac => \u1|bit_cnt\(0),
	datad => \u1|spi_tx_buf[1]~8_combout\,
	combout => \u1|Mux0~0_combout\);

-- Location: FF_X24_Y8_N29
\reg_sdcr[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_phi2_early~reg0clkctrl_outclk\,
	asdata => \data[2]~input_o\,
	clrn => \n_reset~input_o\,
	sload => VCC,
	ena => \reg_sdcr[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_sdcr(2));

-- Location: FF_X24_Y8_N19
\reg_stbycr[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_phi2_early~reg0clkctrl_outclk\,
	asdata => \data[2]~input_o\,
	clrn => \n_reset~input_o\,
	sload => VCC,
	ena => \reg_stbycr[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_stbycr(2));

-- Location: M9K_X26_Y7_N0
\u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a2\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "spi_dpram:u1|dpram:dpram_slave|altsyncram:altsyncram_component|altsyncram_p9o3:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "bidir_dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 2,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 16384,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "old_data",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_in_clock => "clock1",
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "clock1",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 2,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 16384,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "old_data",
	port_b_read_enable_clock => "clock1",
	port_b_write_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portare => \u1|s_slave_ram_rden~3_combout\,
	portbwe => \u1|dpram_slave|altsyncram_component|auto_generated|decode3|eq_node\(0),
	portbre => \slave_ram_rden~0_combout\,
	clk0 => \u1|s_slave_ram_clk~clkctrl_outclk\,
	clk1 => \slave_ram_clk~clkctrl_outclk\,
	ena0 => \u1|dpram_slave|altsyncram_component|auto_generated|rden_decode_a|eq_node[0]~1_combout\,
	ena1 => \u1|dpram_slave|altsyncram_component|auto_generated|rden_decode_b|eq_node\(0),
	portadatain => \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a2_PORTADATAIN_bus\,
	portbdatain => \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a2_PORTBDATAIN_bus\,
	portaaddr => \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a2_PORTAADDR_bus\,
	portbaddr => \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a2_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a2_PORTADATAOUT_bus\,
	portbdataout => \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a2_PORTBDATAOUT_bus\);

-- Location: M9K_X8_Y4_N0
\u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a10\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "spi_dpram:u1|dpram:dpram_slave|altsyncram:altsyncram_component|altsyncram_p9o3:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "bidir_dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 2,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 16384,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "old_data",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_in_clock => "clock1",
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "clock1",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 2,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 16384,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "old_data",
	port_b_read_enable_clock => "clock1",
	port_b_write_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portare => \u1|s_slave_ram_rden~3_combout\,
	portbwe => \u1|dpram_slave|altsyncram_component|auto_generated|decode3|eq_node\(1),
	portbre => \slave_ram_rden~0_combout\,
	clk0 => \u1|s_slave_ram_clk~clkctrl_outclk\,
	clk1 => \slave_ram_clk~clkctrl_outclk\,
	ena0 => \u1|dpram_slave|altsyncram_component|auto_generated|rden_decode_a|eq_node[1]~0_combout\,
	ena1 => \u1|dpram_slave|altsyncram_component|auto_generated|rden_decode_b|eq_node\(1),
	portadatain => \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a10_PORTADATAIN_bus\,
	portbdatain => \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a10_PORTBDATAIN_bus\,
	portaaddr => \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a10_PORTAADDR_bus\,
	portbaddr => \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a10_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a10_PORTADATAOUT_bus\,
	portbdataout => \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a10_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X30_Y8_N0
\u1|spi_tx_buf[2]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|spi_tx_buf[2]~0_combout\ = (\u1|dpram_slave|altsyncram_component|auto_generated|out_address_reg_a\(0) & ((\u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a10~portadataout\))) # 
-- (!\u1|dpram_slave|altsyncram_component|auto_generated|out_address_reg_a\(0) & (\u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a2~portadataout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u1|dpram_slave|altsyncram_component|auto_generated|out_address_reg_a\(0),
	datac => \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a2~portadataout\,
	datad => \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a10~portadataout\,
	combout => \u1|spi_tx_buf[2]~0_combout\);

-- Location: FF_X30_Y8_N13
\reg_stbkcr[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_phi2_early~reg0clkctrl_outclk\,
	asdata => \data[2]~input_o\,
	clrn => \n_reset~input_o\,
	sload => VCC,
	ena => \reg_stbkcr[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_stbkcr(2));

-- Location: LCCOMB_X30_Y8_N24
\u1|spi_tx_buf[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|spi_tx_buf[2]~2_combout\ = (\u1|process_2~0_combout\ & (((\u1|spi_tx_buf[2]~0_combout\)) # (!\u1|spi_tx_buf~1_combout\))) # (!\u1|process_2~0_combout\ & (((reg_stbkcr(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|spi_tx_buf~1_combout\,
	datab => \u1|spi_tx_buf[2]~0_combout\,
	datac => \u1|process_2~0_combout\,
	datad => reg_stbkcr(2),
	combout => \u1|spi_tx_buf[2]~2_combout\);

-- Location: LCCOMB_X24_Y8_N18
\u1|spi_tx_buf[2]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|spi_tx_buf[2]~3_combout\ = (\u1|LessThan2~2_combout\ & ((\u1|process_2~1_combout\ & ((\u1|spi_tx_buf[2]~2_combout\))) # (!\u1|process_2~1_combout\ & (reg_stbycr(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|LessThan2~2_combout\,
	datab => \u1|process_2~1_combout\,
	datac => reg_stbycr(2),
	datad => \u1|spi_tx_buf[2]~2_combout\,
	combout => \u1|spi_tx_buf[2]~3_combout\);

-- Location: LCCOMB_X27_Y8_N2
\u1|spi_tx_buf[2]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|spi_tx_buf[2]~4_combout\ = (!\u1|process_2~2_combout\ & ((\u1|spi_tx_buf[2]~3_combout\) # ((reg_sdcr(2) & !\u1|LessThan2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => reg_sdcr(2),
	datab => \u1|process_2~2_combout\,
	datac => \u1|LessThan2~2_combout\,
	datad => \u1|spi_tx_buf[2]~3_combout\,
	combout => \u1|spi_tx_buf[2]~4_combout\);

-- Location: LCCOMB_X27_Y8_N12
\u1|Mux0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|Mux0~1_combout\ = (\u1|bit_cnt\(0) & ((\u1|Mux0~0_combout\ & (\u1|spi_tx_buf[0]~16_combout\)) # (!\u1|Mux0~0_combout\ & ((\u1|spi_tx_buf[2]~4_combout\))))) # (!\u1|bit_cnt\(0) & (((\u1|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|bit_cnt\(0),
	datab => \u1|spi_tx_buf[0]~16_combout\,
	datac => \u1|Mux0~0_combout\,
	datad => \u1|spi_tx_buf[2]~4_combout\,
	combout => \u1|Mux0~1_combout\);

-- Location: FF_X22_Y9_N1
\reg_stbycr[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_phi2_early~reg0clkctrl_outclk\,
	asdata => \data[7]~input_o\,
	clrn => \n_reset~input_o\,
	sload => VCC,
	ena => \reg_stbycr[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_stbycr(7));

-- Location: M9K_X8_Y2_N0
\u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a7\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "spi_dpram:u1|dpram:dpram_slave|altsyncram:altsyncram_component|altsyncram_p9o3:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "bidir_dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 7,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 16384,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "old_data",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_in_clock => "clock1",
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "clock1",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 7,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 16384,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "old_data",
	port_b_read_enable_clock => "clock1",
	port_b_write_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portare => \u1|s_slave_ram_rden~3_combout\,
	portbwe => \u1|dpram_slave|altsyncram_component|auto_generated|decode3|eq_node\(0),
	portbre => \slave_ram_rden~0_combout\,
	clk0 => \u1|s_slave_ram_clk~clkctrl_outclk\,
	clk1 => \slave_ram_clk~clkctrl_outclk\,
	ena0 => \u1|dpram_slave|altsyncram_component|auto_generated|rden_decode_a|eq_node[0]~1_combout\,
	ena1 => \u1|dpram_slave|altsyncram_component|auto_generated|rden_decode_b|eq_node\(0),
	portadatain => \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a7_PORTADATAIN_bus\,
	portbdatain => \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a7_PORTBDATAIN_bus\,
	portaaddr => \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a7_PORTAADDR_bus\,
	portbaddr => \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a7_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a7_PORTADATAOUT_bus\,
	portbdataout => \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a7_PORTBDATAOUT_bus\);

-- Location: M9K_X26_Y8_N0
\u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a15\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "spi_dpram:u1|dpram:dpram_slave|altsyncram:altsyncram_component|altsyncram_p9o3:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "bidir_dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 7,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 16384,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "old_data",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_in_clock => "clock1",
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "clock1",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 7,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 16384,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "old_data",
	port_b_read_enable_clock => "clock1",
	port_b_write_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portare => \u1|s_slave_ram_rden~3_combout\,
	portbwe => \u1|dpram_slave|altsyncram_component|auto_generated|decode3|eq_node\(1),
	portbre => \slave_ram_rden~0_combout\,
	clk0 => \u1|s_slave_ram_clk~clkctrl_outclk\,
	clk1 => \slave_ram_clk~clkctrl_outclk\,
	ena0 => \u1|dpram_slave|altsyncram_component|auto_generated|rden_decode_a|eq_node[1]~0_combout\,
	ena1 => \u1|dpram_slave|altsyncram_component|auto_generated|rden_decode_b|eq_node\(1),
	portadatain => \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a15_PORTADATAIN_bus\,
	portbdatain => \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a15_PORTBDATAIN_bus\,
	portaaddr => \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a15_PORTAADDR_bus\,
	portbaddr => \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a15_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a15_PORTADATAOUT_bus\,
	portbdataout => \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a15_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X23_Y11_N28
\u1|spi_tx_buf[7]~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|spi_tx_buf[7]~25_combout\ = (\u1|dpram_slave|altsyncram_component|auto_generated|out_address_reg_a\(0) & ((\u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a15~portadataout\))) # 
-- (!\u1|dpram_slave|altsyncram_component|auto_generated|out_address_reg_a\(0) & (\u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a7~portadataout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a7~portadataout\,
	datab => \u1|dpram_slave|altsyncram_component|auto_generated|out_address_reg_a\(0),
	datad => \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a15~portadataout\,
	combout => \u1|spi_tx_buf[7]~25_combout\);

-- Location: FF_X30_Y9_N29
\reg_stbkcr[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_phi2_early~reg0clkctrl_outclk\,
	asdata => \data[7]~input_o\,
	clrn => \n_reset~input_o\,
	sload => VCC,
	ena => \reg_stbkcr[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_stbkcr(7));

-- Location: LCCOMB_X23_Y11_N14
\u1|spi_tx_buf[7]~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|spi_tx_buf[7]~26_combout\ = (\u1|process_2~0_combout\ & ((\u1|spi_tx_buf[7]~25_combout\) # ((!\u1|spi_tx_buf~1_combout\)))) # (!\u1|process_2~0_combout\ & (((reg_stbkcr(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111110001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|process_2~0_combout\,
	datab => \u1|spi_tx_buf[7]~25_combout\,
	datac => \u1|spi_tx_buf~1_combout\,
	datad => reg_stbkcr(7),
	combout => \u1|spi_tx_buf[7]~26_combout\);

-- Location: LCCOMB_X23_Y11_N0
\u1|spi_tx_buf[7]~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|spi_tx_buf[7]~27_combout\ = (\u1|LessThan2~2_combout\ & ((\u1|process_2~1_combout\ & ((\u1|spi_tx_buf[7]~26_combout\))) # (!\u1|process_2~1_combout\ & (reg_stbycr(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => reg_stbycr(7),
	datab => \u1|spi_tx_buf[7]~26_combout\,
	datac => \u1|process_2~1_combout\,
	datad => \u1|LessThan2~2_combout\,
	combout => \u1|spi_tx_buf[7]~27_combout\);

-- Location: FF_X22_Y9_N11
\reg_sdcr[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_phi2_early~reg0clkctrl_outclk\,
	asdata => \data[7]~input_o\,
	clrn => \n_reset~input_o\,
	sload => VCC,
	ena => \reg_sdcr[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_sdcr(7));

-- Location: LCCOMB_X27_Y8_N18
\u1|spi_tx_buf[7]~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|spi_tx_buf[7]~28_combout\ = (!\u1|process_2~2_combout\ & ((\u1|spi_tx_buf[7]~27_combout\) # ((!\u1|LessThan2~2_combout\ & reg_sdcr(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|spi_tx_buf[7]~27_combout\,
	datab => \u1|process_2~2_combout\,
	datac => \u1|LessThan2~2_combout\,
	datad => reg_sdcr(7),
	combout => \u1|spi_tx_buf[7]~28_combout\);

-- Location: M9K_X26_Y11_N0
\u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a6\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "spi_dpram:u1|dpram:dpram_slave|altsyncram:altsyncram_component|altsyncram_p9o3:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "bidir_dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 6,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 16384,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "old_data",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_in_clock => "clock1",
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "clock1",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 6,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 16384,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "old_data",
	port_b_read_enable_clock => "clock1",
	port_b_write_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portare => \u1|s_slave_ram_rden~3_combout\,
	portbwe => \u1|dpram_slave|altsyncram_component|auto_generated|decode3|eq_node\(0),
	portbre => \slave_ram_rden~0_combout\,
	clk0 => \u1|s_slave_ram_clk~clkctrl_outclk\,
	clk1 => \slave_ram_clk~clkctrl_outclk\,
	ena0 => \u1|dpram_slave|altsyncram_component|auto_generated|rden_decode_a|eq_node[0]~1_combout\,
	ena1 => \u1|dpram_slave|altsyncram_component|auto_generated|rden_decode_b|eq_node\(0),
	portadatain => \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a6_PORTADATAIN_bus\,
	portbdatain => \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a6_PORTBDATAIN_bus\,
	portaaddr => \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a6_PORTAADDR_bus\,
	portbaddr => \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a6_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a6_PORTADATAOUT_bus\,
	portbdataout => \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a6_PORTBDATAOUT_bus\);

-- Location: M9K_X26_Y18_N0
\u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a14\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "spi_dpram:u1|dpram:dpram_slave|altsyncram:altsyncram_component|altsyncram_p9o3:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "bidir_dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 6,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 16384,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "old_data",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_in_clock => "clock1",
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "clock1",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 6,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 16384,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "old_data",
	port_b_read_enable_clock => "clock1",
	port_b_write_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portare => \u1|s_slave_ram_rden~3_combout\,
	portbwe => \u1|dpram_slave|altsyncram_component|auto_generated|decode3|eq_node\(1),
	portbre => \slave_ram_rden~0_combout\,
	clk0 => \u1|s_slave_ram_clk~clkctrl_outclk\,
	clk1 => \slave_ram_clk~clkctrl_outclk\,
	ena0 => \u1|dpram_slave|altsyncram_component|auto_generated|rden_decode_a|eq_node[1]~0_combout\,
	ena1 => \u1|dpram_slave|altsyncram_component|auto_generated|rden_decode_b|eq_node\(1),
	portadatain => \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a14_PORTADATAIN_bus\,
	portbdatain => \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a14_PORTBDATAIN_bus\,
	portaaddr => \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a14_PORTAADDR_bus\,
	portbaddr => \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a14_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a14_PORTADATAOUT_bus\,
	portbdataout => \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a14_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X23_Y11_N26
\u1|spi_tx_buf[6]~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|spi_tx_buf[6]~21_combout\ = (\u1|dpram_slave|altsyncram_component|auto_generated|out_address_reg_a\(0) & ((\u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a14~portadataout\))) # 
-- (!\u1|dpram_slave|altsyncram_component|auto_generated|out_address_reg_a\(0) & (\u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a6~portadataout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a6~portadataout\,
	datab => \u1|dpram_slave|altsyncram_component|auto_generated|out_address_reg_a\(0),
	datad => \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a14~portadataout\,
	combout => \u1|spi_tx_buf[6]~21_combout\);

-- Location: FF_X30_Y8_N11
\reg_stbkcr[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_phi2_early~reg0clkctrl_outclk\,
	asdata => \data[6]~input_o\,
	clrn => \n_reset~input_o\,
	sload => VCC,
	ena => \reg_stbkcr[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_stbkcr(6));

-- Location: LCCOMB_X30_Y8_N16
\u1|spi_tx_buf[6]~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|spi_tx_buf[6]~22_combout\ = (\u1|process_2~0_combout\ & (((\u1|spi_tx_buf[6]~21_combout\)) # (!\u1|spi_tx_buf~1_combout\))) # (!\u1|process_2~0_combout\ & (((reg_stbkcr(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|spi_tx_buf~1_combout\,
	datab => \u1|process_2~0_combout\,
	datac => \u1|spi_tx_buf[6]~21_combout\,
	datad => reg_stbkcr(6),
	combout => \u1|spi_tx_buf[6]~22_combout\);

-- Location: FF_X24_Y8_N23
\reg_stbycr[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_phi2_early~reg0clkctrl_outclk\,
	asdata => \data[6]~input_o\,
	clrn => \n_reset~input_o\,
	sload => VCC,
	ena => \reg_stbycr[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_stbycr(6));

-- Location: LCCOMB_X24_Y8_N22
\u1|spi_tx_buf[6]~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|spi_tx_buf[6]~23_combout\ = (\u1|LessThan2~2_combout\ & ((\u1|process_2~1_combout\ & (\u1|spi_tx_buf[6]~22_combout\)) # (!\u1|process_2~1_combout\ & ((reg_stbycr(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|spi_tx_buf[6]~22_combout\,
	datab => \u1|process_2~1_combout\,
	datac => reg_stbycr(6),
	datad => \u1|LessThan2~2_combout\,
	combout => \u1|spi_tx_buf[6]~23_combout\);

-- Location: FF_X24_Y8_N25
\reg_sdcr[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_phi2_early~reg0clkctrl_outclk\,
	asdata => \data[6]~input_o\,
	clrn => \n_reset~input_o\,
	sload => VCC,
	ena => \reg_sdcr[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_sdcr(6));

-- Location: LCCOMB_X27_Y8_N24
\u1|spi_tx_buf[6]~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|spi_tx_buf[6]~24_combout\ = (!\u1|process_2~2_combout\ & ((\u1|spi_tx_buf[6]~23_combout\) # ((!\u1|LessThan2~2_combout\ & reg_sdcr(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|spi_tx_buf[6]~23_combout\,
	datab => \u1|process_2~2_combout\,
	datac => \u1|LessThan2~2_combout\,
	datad => reg_sdcr(6),
	combout => \u1|spi_tx_buf[6]~24_combout\);

-- Location: LCCOMB_X27_Y8_N28
\u1|Mux0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|Mux0~2_combout\ = (\u1|bit_cnt\(1) & (((\u1|bit_cnt\(0))))) # (!\u1|bit_cnt\(1) & ((\u1|bit_cnt\(0) & ((\u1|spi_tx_buf[6]~24_combout\))) # (!\u1|bit_cnt\(0) & (\u1|spi_tx_buf[7]~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|bit_cnt\(1),
	datab => \u1|spi_tx_buf[7]~28_combout\,
	datac => \u1|bit_cnt\(0),
	datad => \u1|spi_tx_buf[6]~24_combout\,
	combout => \u1|Mux0~2_combout\);

-- Location: M9K_X5_Y2_N0
\u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a4\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "spi_dpram:u1|dpram:dpram_slave|altsyncram:altsyncram_component|altsyncram_p9o3:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "bidir_dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 4,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 16384,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "old_data",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_in_clock => "clock1",
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "clock1",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 4,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 16384,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "old_data",
	port_b_read_enable_clock => "clock1",
	port_b_write_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portare => \u1|s_slave_ram_rden~3_combout\,
	portbwe => \u1|dpram_slave|altsyncram_component|auto_generated|decode3|eq_node\(0),
	portbre => \slave_ram_rden~0_combout\,
	clk0 => \u1|s_slave_ram_clk~clkctrl_outclk\,
	clk1 => \slave_ram_clk~clkctrl_outclk\,
	ena0 => \u1|dpram_slave|altsyncram_component|auto_generated|rden_decode_a|eq_node[0]~1_combout\,
	ena1 => \u1|dpram_slave|altsyncram_component|auto_generated|rden_decode_b|eq_node\(0),
	portadatain => \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a4_PORTADATAIN_bus\,
	portbdatain => \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a4_PORTBDATAIN_bus\,
	portaaddr => \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a4_PORTAADDR_bus\,
	portbaddr => \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a4_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a4_PORTADATAOUT_bus\,
	portbdataout => \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a4_PORTBDATAOUT_bus\);

-- Location: M9K_X5_Y8_N0
\u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a12\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "spi_dpram:u1|dpram:dpram_slave|altsyncram:altsyncram_component|altsyncram_p9o3:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "bidir_dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 4,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 16384,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "old_data",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_in_clock => "clock1",
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "clock1",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 4,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 16384,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "old_data",
	port_b_read_enable_clock => "clock1",
	port_b_write_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portare => \u1|s_slave_ram_rden~3_combout\,
	portbwe => \u1|dpram_slave|altsyncram_component|auto_generated|decode3|eq_node\(1),
	portbre => \slave_ram_rden~0_combout\,
	clk0 => \u1|s_slave_ram_clk~clkctrl_outclk\,
	clk1 => \slave_ram_clk~clkctrl_outclk\,
	ena0 => \u1|dpram_slave|altsyncram_component|auto_generated|rden_decode_a|eq_node[1]~0_combout\,
	ena1 => \u1|dpram_slave|altsyncram_component|auto_generated|rden_decode_b|eq_node\(1),
	portadatain => \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a12_PORTADATAIN_bus\,
	portbdatain => \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a12_PORTBDATAIN_bus\,
	portaaddr => \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a12_PORTAADDR_bus\,
	portbaddr => \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a12_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a12_PORTADATAOUT_bus\,
	portbdataout => \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a12_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X23_Y11_N18
\u1|spi_tx_buf[4]~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|spi_tx_buf[4]~29_combout\ = (\u1|dpram_slave|altsyncram_component|auto_generated|out_address_reg_a\(0) & ((\u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a12~portadataout\))) # 
-- (!\u1|dpram_slave|altsyncram_component|auto_generated|out_address_reg_a\(0) & (\u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a4~portadataout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a4~portadataout\,
	datac => \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a12~portadataout\,
	datad => \u1|dpram_slave|altsyncram_component|auto_generated|out_address_reg_a\(0),
	combout => \u1|spi_tx_buf[4]~29_combout\);

-- Location: FF_X28_Y3_N9
\reg_stbkcr[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_phi2_early~reg0clkctrl_outclk\,
	asdata => \data[4]~input_o\,
	clrn => \n_reset~input_o\,
	sload => VCC,
	ena => \reg_stbkcr[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_stbkcr(4));

-- Location: LCCOMB_X23_Y11_N4
\u1|spi_tx_buf[4]~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|spi_tx_buf[4]~30_combout\ = (\u1|process_2~0_combout\ & (((\u1|spi_tx_buf[4]~29_combout\)) # (!\u1|spi_tx_buf~1_combout\))) # (!\u1|process_2~0_combout\ & (((reg_stbkcr(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|spi_tx_buf~1_combout\,
	datab => \u1|spi_tx_buf[4]~29_combout\,
	datac => \u1|process_2~0_combout\,
	datad => reg_stbkcr(4),
	combout => \u1|spi_tx_buf[4]~30_combout\);

-- Location: FF_X24_Y8_N27
\reg_stbycr[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_phi2_early~reg0clkctrl_outclk\,
	asdata => \data[4]~input_o\,
	clrn => \n_reset~input_o\,
	sload => VCC,
	ena => \reg_stbycr[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_stbycr(4));

-- Location: LCCOMB_X24_Y8_N26
\u1|spi_tx_buf[4]~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|spi_tx_buf[4]~31_combout\ = (\u1|LessThan2~2_combout\ & ((\u1|process_2~1_combout\ & (\u1|spi_tx_buf[4]~30_combout\)) # (!\u1|process_2~1_combout\ & ((reg_stbycr(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|spi_tx_buf[4]~30_combout\,
	datab => \u1|process_2~1_combout\,
	datac => reg_stbycr(4),
	datad => \u1|LessThan2~2_combout\,
	combout => \u1|spi_tx_buf[4]~31_combout\);

-- Location: FF_X24_Y8_N5
\reg_sdcr[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_phi2_early~reg0clkctrl_outclk\,
	asdata => \data[4]~input_o\,
	clrn => \n_reset~input_o\,
	sload => VCC,
	ena => \reg_sdcr[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_sdcr(4));

-- Location: LCCOMB_X27_Y8_N22
\u1|spi_tx_buf[4]~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|spi_tx_buf[4]~32_combout\ = (!\u1|process_2~2_combout\ & ((\u1|spi_tx_buf[4]~31_combout\) # ((reg_sdcr(4) & !\u1|LessThan2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|spi_tx_buf[4]~31_combout\,
	datab => reg_sdcr(4),
	datac => \u1|LessThan2~2_combout\,
	datad => \u1|process_2~2_combout\,
	combout => \u1|spi_tx_buf[4]~32_combout\);

-- Location: FF_X22_Y9_N15
\reg_sdcr[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_phi2_early~reg0clkctrl_outclk\,
	asdata => \data[5]~input_o\,
	clrn => \n_reset~input_o\,
	sload => VCC,
	ena => \reg_sdcr[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_sdcr(5));

-- Location: M9K_X26_Y14_N0
\u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a5\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "spi_dpram:u1|dpram:dpram_slave|altsyncram:altsyncram_component|altsyncram_p9o3:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "bidir_dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 5,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 16384,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "old_data",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_in_clock => "clock1",
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "clock1",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 5,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 16384,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "old_data",
	port_b_read_enable_clock => "clock1",
	port_b_write_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portare => \u1|s_slave_ram_rden~3_combout\,
	portbwe => \u1|dpram_slave|altsyncram_component|auto_generated|decode3|eq_node\(0),
	portbre => \slave_ram_rden~0_combout\,
	clk0 => \u1|s_slave_ram_clk~clkctrl_outclk\,
	clk1 => \slave_ram_clk~clkctrl_outclk\,
	ena0 => \u1|dpram_slave|altsyncram_component|auto_generated|rden_decode_a|eq_node[0]~1_combout\,
	ena1 => \u1|dpram_slave|altsyncram_component|auto_generated|rden_decode_b|eq_node\(0),
	portadatain => \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a5_PORTADATAIN_bus\,
	portbdatain => \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a5_PORTBDATAIN_bus\,
	portaaddr => \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a5_PORTAADDR_bus\,
	portbaddr => \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a5_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a5_PORTADATAOUT_bus\,
	portbdataout => \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a5_PORTBDATAOUT_bus\);

-- Location: M9K_X26_Y12_N0
\u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a13\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "spi_dpram:u1|dpram:dpram_slave|altsyncram:altsyncram_component|altsyncram_p9o3:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "bidir_dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 5,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 16384,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "old_data",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_in_clock => "clock1",
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "clock1",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 5,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 16384,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "old_data",
	port_b_read_enable_clock => "clock1",
	port_b_write_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portare => \u1|s_slave_ram_rden~3_combout\,
	portbwe => \u1|dpram_slave|altsyncram_component|auto_generated|decode3|eq_node\(1),
	portbre => \slave_ram_rden~0_combout\,
	clk0 => \u1|s_slave_ram_clk~clkctrl_outclk\,
	clk1 => \slave_ram_clk~clkctrl_outclk\,
	ena0 => \u1|dpram_slave|altsyncram_component|auto_generated|rden_decode_a|eq_node[1]~0_combout\,
	ena1 => \u1|dpram_slave|altsyncram_component|auto_generated|rden_decode_b|eq_node\(1),
	portadatain => \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a13_PORTADATAIN_bus\,
	portbdatain => \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a13_PORTBDATAIN_bus\,
	portaaddr => \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a13_PORTAADDR_bus\,
	portbaddr => \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a13_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a13_PORTADATAOUT_bus\,
	portbdataout => \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a13_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X23_Y11_N12
\u1|spi_tx_buf[5]~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|spi_tx_buf[5]~17_combout\ = (\u1|dpram_slave|altsyncram_component|auto_generated|out_address_reg_a\(0) & ((\u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a13~portadataout\))) # 
-- (!\u1|dpram_slave|altsyncram_component|auto_generated|out_address_reg_a\(0) & (\u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a5~portadataout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u1|dpram_slave|altsyncram_component|auto_generated|out_address_reg_a\(0),
	datac => \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a5~portadataout\,
	datad => \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a13~portadataout\,
	combout => \u1|spi_tx_buf[5]~17_combout\);

-- Location: FF_X30_Y9_N19
\reg_stbkcr[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_phi2_early~reg0clkctrl_outclk\,
	asdata => \data[5]~input_o\,
	clrn => \n_reset~input_o\,
	sload => VCC,
	ena => \reg_stbkcr[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_stbkcr(5));

-- Location: LCCOMB_X23_Y11_N22
\u1|spi_tx_buf[5]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|spi_tx_buf[5]~18_combout\ = (\u1|process_2~0_combout\ & (((\u1|spi_tx_buf[5]~17_combout\)) # (!\u1|spi_tx_buf~1_combout\))) # (!\u1|process_2~0_combout\ & (((reg_stbkcr(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|spi_tx_buf~1_combout\,
	datab => \u1|spi_tx_buf[5]~17_combout\,
	datac => \u1|process_2~0_combout\,
	datad => reg_stbkcr(5),
	combout => \u1|spi_tx_buf[5]~18_combout\);

-- Location: FF_X22_Y9_N29
\reg_stbycr[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_phi2_early~reg0clkctrl_outclk\,
	asdata => \data[5]~input_o\,
	clrn => \n_reset~input_o\,
	sload => VCC,
	ena => \reg_stbycr[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_stbycr(5));

-- Location: LCCOMB_X23_Y11_N8
\u1|spi_tx_buf[5]~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|spi_tx_buf[5]~19_combout\ = (\u1|LessThan2~2_combout\ & ((\u1|process_2~1_combout\ & (\u1|spi_tx_buf[5]~18_combout\)) # (!\u1|process_2~1_combout\ & ((reg_stbycr(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|spi_tx_buf[5]~18_combout\,
	datab => reg_stbycr(5),
	datac => \u1|process_2~1_combout\,
	datad => \u1|LessThan2~2_combout\,
	combout => \u1|spi_tx_buf[5]~19_combout\);

-- Location: LCCOMB_X27_Y8_N6
\u1|spi_tx_buf[5]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|spi_tx_buf[5]~20_combout\ = (!\u1|process_2~2_combout\ & ((\u1|spi_tx_buf[5]~19_combout\) # ((reg_sdcr(5) & !\u1|LessThan2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => reg_sdcr(5),
	datab => \u1|process_2~2_combout\,
	datac => \u1|LessThan2~2_combout\,
	datad => \u1|spi_tx_buf[5]~19_combout\,
	combout => \u1|spi_tx_buf[5]~20_combout\);

-- Location: LCCOMB_X27_Y8_N0
\u1|Mux0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|Mux0~3_combout\ = (\u1|bit_cnt\(1) & ((\u1|Mux0~2_combout\ & (\u1|spi_tx_buf[4]~32_combout\)) # (!\u1|Mux0~2_combout\ & ((\u1|spi_tx_buf[5]~20_combout\))))) # (!\u1|bit_cnt\(1) & (\u1|Mux0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|bit_cnt\(1),
	datab => \u1|Mux0~2_combout\,
	datac => \u1|spi_tx_buf[4]~32_combout\,
	datad => \u1|spi_tx_buf[5]~20_combout\,
	combout => \u1|Mux0~3_combout\);

-- Location: LCCOMB_X27_Y8_N26
\u1|Mux0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|Mux0~4_combout\ = (\u1|bit_cnt\(2) & (\u1|Mux0~1_combout\)) # (!\u1|bit_cnt\(2) & ((\u1|Mux0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|Mux0~1_combout\,
	datab => \u1|bit_cnt\(2),
	datad => \u1|Mux0~3_combout\,
	combout => \u1|Mux0~4_combout\);

-- Location: LCCOMB_X17_Y9_N22
\dev_rom_act~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dev_rom_act~0_combout\ = (\addr[11]~input_o\ & \Equal12~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \addr[11]~input_o\,
	datad => \Equal12~2_combout\,
	combout => \dev_rom_act~0_combout\);

-- Location: FF_X17_Y9_N23
dev_rom_act : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \phi2~inputclkctrl_outclk\,
	d => \dev_rom_act~0_combout\,
	clrn => \n_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dev_rom_act~q\);

-- Location: LCCOMB_X22_Y9_N30
\data[0]~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data[0]~28_combout\ = (\dev_reg_act~q\ & (((!addr_latch(0)) # (!addr_latch(5))) # (!\Equal18~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal18~3_combout\,
	datab => addr_latch(5),
	datac => addr_latch(0),
	datad => \dev_reg_act~q\,
	combout => \data[0]~28_combout\);

-- Location: LCCOMB_X22_Y9_N24
\data[0]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data[0]~18_combout\ = (\Equal18~3_combout\ & (addr_latch(5) & \dev_reg_act~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal18~3_combout\,
	datac => addr_latch(5),
	datad => \dev_reg_act~q\,
	combout => \data[0]~18_combout\);

-- Location: LCCOMB_X7_Y6_N0
\master_ram_rden~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \master_ram_rden~0_combout\ = (addr_latch(8) & (\rw_latch~q\ & (\process_5~2_combout\ & !\master_ram_wren~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => addr_latch(8),
	datab => \rw_latch~q\,
	datac => \process_5~2_combout\,
	datad => \master_ram_wren~0_combout\,
	combout => \master_ram_rden~0_combout\);

-- Location: LCCOMB_X12_Y4_N26
\u1|dpram_slave|altsyncram_component|auto_generated|address_reg_b[0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|dpram_slave|altsyncram_component|auto_generated|address_reg_b[0]~feeder_combout\ = reg_srbs(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => reg_srbs(5),
	combout => \u1|dpram_slave|altsyncram_component|auto_generated|address_reg_b[0]~feeder_combout\);

-- Location: FF_X12_Y4_N27
\u1|dpram_slave|altsyncram_component|auto_generated|address_reg_b[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \slave_ram_clk~clkctrl_outclk\,
	d => \u1|dpram_slave|altsyncram_component|auto_generated|address_reg_b[0]~feeder_combout\,
	ena => \slave_ram_rden~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|dpram_slave|altsyncram_component|auto_generated|address_reg_b\(0));

-- Location: FF_X12_Y4_N25
\u1|dpram_slave|altsyncram_component|auto_generated|out_address_reg_b[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \slave_ram_clk~clkctrl_outclk\,
	asdata => \u1|dpram_slave|altsyncram_component|auto_generated|address_reg_b\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|dpram_slave|altsyncram_component|auto_generated|out_address_reg_b\(0));

-- Location: LCCOMB_X7_Y6_N26
\master_ram_clk~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \master_ram_clk~1_combout\ = (addr_latch(8) & (\process_5~2_combout\ & \master_ram_clk~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => addr_latch(8),
	datac => \process_5~2_combout\,
	datad => \master_ram_clk~0_combout\,
	combout => \master_ram_clk~1_combout\);

-- Location: FF_X7_Y6_N27
\master_ram_clk~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_57~input_o\,
	d => \master_ram_clk~1_combout\,
	clrn => \ALT_INV_master_ram_wren~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \master_ram_clk~reg0_q\);

-- Location: CLKCTRL_G3
\master_ram_clk~reg0clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \master_ram_clk~reg0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \master_ram_clk~reg0clkctrl_outclk\);

-- Location: LCCOMB_X22_Y9_N4
\reg_mrbs[0]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_mrbs[0]~1_combout\ = (\Equal18~3_combout\ & (!addr_latch(5) & (addr_latch(0) & \reg_mrbs[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal18~3_combout\,
	datab => addr_latch(5),
	datac => addr_latch(0),
	datad => \reg_mrbs[0]~0_combout\,
	combout => \reg_mrbs[0]~1_combout\);

-- Location: FF_X23_Y6_N1
\reg_mrbs[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_phi2_early~reg0clkctrl_outclk\,
	asdata => \data[5]~input_o\,
	clrn => \n_reset~input_o\,
	sload => VCC,
	ena => \reg_mrbs[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_mrbs(5));

-- Location: FF_X20_Y15_N11
\u1|dpram_master|altsyncram_component|auto_generated|address_reg_b[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_ram_clk~reg0clkctrl_outclk\,
	asdata => reg_mrbs(5),
	sload => VCC,
	ena => \master_ram_rden~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|dpram_master|altsyncram_component|auto_generated|address_reg_b\(0));

-- Location: LCCOMB_X20_Y15_N8
\u1|dpram_master|altsyncram_component|auto_generated|out_address_reg_b[0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|dpram_master|altsyncram_component|auto_generated|out_address_reg_b[0]~feeder_combout\ = \u1|dpram_master|altsyncram_component|auto_generated|address_reg_b\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u1|dpram_master|altsyncram_component|auto_generated|address_reg_b\(0),
	combout => \u1|dpram_master|altsyncram_component|auto_generated|out_address_reg_b[0]~feeder_combout\);

-- Location: FF_X20_Y15_N9
\u1|dpram_master|altsyncram_component|auto_generated|out_address_reg_b[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_ram_clk~reg0clkctrl_outclk\,
	d => \u1|dpram_master|altsyncram_component|auto_generated|out_address_reg_b[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|dpram_master|altsyncram_component|auto_generated|out_address_reg_b\(0));

-- Location: LCCOMB_X12_Y4_N24
\data[0]~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data[0]~29_combout\ = (\master_ram_rden~0_combout\ & ((\u1|dpram_master|altsyncram_component|auto_generated|out_address_reg_b\(0)))) # (!\master_ram_rden~0_combout\ & (\u1|dpram_slave|altsyncram_component|auto_generated|out_address_reg_b\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \master_ram_rden~0_combout\,
	datac => \u1|dpram_slave|altsyncram_component|auto_generated|out_address_reg_b\(0),
	datad => \u1|dpram_master|altsyncram_component|auto_generated|out_address_reg_b\(0),
	combout => \data[0]~29_combout\);

-- Location: LCCOMB_X29_Y15_N4
\u1|process_2~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|process_2~5_combout\ = (((\u1|bit_cnt\(5)) # (!\u1|bit_cnt\(3))) # (!\u1|bit_cnt\(4))) # (!\u1|LessThan2~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|LessThan2~1_combout\,
	datab => \u1|bit_cnt\(4),
	datac => \u1|bit_cnt\(3),
	datad => \u1|bit_cnt\(5),
	combout => \u1|process_2~5_combout\);

-- Location: LCCOMB_X23_Y6_N12
\u1|s_master_ram_bank[5]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|s_master_ram_bank[5]~2_combout\ = (!\u1|process_2~2_combout\ & (!\u1|process_2~5_combout\ & (\u1|LessThan2~2_combout\ & \spi_mosi~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|process_2~2_combout\,
	datab => \u1|process_2~5_combout\,
	datac => \u1|LessThan2~2_combout\,
	datad => \spi_mosi~input_o\,
	combout => \u1|s_master_ram_bank[5]~2_combout\);

-- Location: LCCOMB_X23_Y6_N14
\u1|s_master_ram_bank[5]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|s_master_ram_bank[5]~9_combout\ = (\n_reset~input_o\ & (!\u1|process_2~5_combout\ & (\u1|LessThan2~2_combout\ & !\spi_ss_n~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \n_reset~input_o\,
	datab => \u1|process_2~5_combout\,
	datac => \u1|LessThan2~2_combout\,
	datad => \spi_ss_n~input_o\,
	combout => \u1|s_master_ram_bank[5]~9_combout\);

-- Location: LCCOMB_X23_Y6_N10
\u1|s_master_ram_bank[5]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|s_master_ram_bank[5]~3_combout\ = (\u1|Decoder0~0_combout\ & ((\u1|s_master_ram_bank[5]~2_combout\) # ((!\u1|s_master_ram_bank[5]~9_combout\ & \u1|s_master_ram_bank\(5))))) # (!\u1|Decoder0~0_combout\ & (((\u1|s_master_ram_bank\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|s_master_ram_bank[5]~2_combout\,
	datab => \u1|s_master_ram_bank[5]~9_combout\,
	datac => \u1|s_master_ram_bank\(5),
	datad => \u1|Decoder0~0_combout\,
	combout => \u1|s_master_ram_bank[5]~3_combout\);

-- Location: FF_X23_Y6_N11
\u1|s_master_ram_bank[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \spi_clk~input_o\,
	d => \u1|s_master_ram_bank[5]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|s_master_ram_bank\(5));

-- Location: LCCOMB_X29_Y1_N2
\u1|s_master_ram_wren~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|s_master_ram_wren~0_combout\ = ((\u1|bit_cnt\(5) & ((\u1|bit_cnt\(4)) # (\u1|bit_cnt\(3))))) # (!\u1|LessThan2~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|LessThan2~1_combout\,
	datab => \u1|bit_cnt\(4),
	datac => \u1|bit_cnt\(3),
	datad => \u1|bit_cnt\(5),
	combout => \u1|s_master_ram_wren~0_combout\);

-- Location: FF_X29_Y1_N3
\u1|s_master_ram_wren\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \spi_clk~input_o\,
	d => \u1|s_master_ram_wren~0_combout\,
	clrn => \u1|ALT_INV_process_2~2clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|s_master_ram_wren~q\);

-- Location: LCCOMB_X23_Y6_N16
\u1|dpram_master|altsyncram_component|auto_generated|decode2|eq_node[1]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|dpram_master|altsyncram_component|auto_generated|decode2|eq_node\(1) = (\u1|s_master_ram_bank\(5) & \u1|s_master_ram_wren~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|s_master_ram_bank\(5),
	datac => \u1|s_master_ram_wren~q\,
	combout => \u1|dpram_master|altsyncram_component|auto_generated|decode2|eq_node\(1));

-- Location: LCCOMB_X7_Y6_N16
\master_ram_wren~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \master_ram_wren~1_combout\ = ((\rw_latch~q\) # ((\master_ram_wren~0_combout\) # (!\process_5~2_combout\))) # (!addr_latch(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => addr_latch(8),
	datab => \rw_latch~q\,
	datac => \process_5~2_combout\,
	datad => \master_ram_wren~0_combout\,
	combout => \master_ram_wren~1_combout\);

-- Location: LCCOMB_X20_Y15_N4
\u1|dpram_master|altsyncram_component|auto_generated|decode3|eq_node[1]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|dpram_master|altsyncram_component|auto_generated|decode3|eq_node\(1) = (reg_mrbs(5) & !\master_ram_wren~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => reg_mrbs(5),
	datad => \master_ram_wren~1_combout\,
	combout => \u1|dpram_master|altsyncram_component|auto_generated|decode3|eq_node\(1));

-- Location: LCCOMB_X30_Y10_N4
\u1|s_master_ram_clk\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|s_master_ram_clk~combout\ = LCELL((!\u1|bit_cnt\(2) & (!\u1|bit_cnt\(1) & (!\u1|bit_cnt\(0) & !\spi_clk~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|bit_cnt\(2),
	datab => \u1|bit_cnt\(1),
	datac => \u1|bit_cnt\(0),
	datad => \spi_clk~input_o\,
	combout => \u1|s_master_ram_clk~combout\);

-- Location: CLKCTRL_G7
\u1|s_master_ram_clk~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \u1|s_master_ram_clk~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \u1|s_master_ram_clk~clkctrl_outclk\);

-- Location: LCCOMB_X7_Y6_N24
\u1|dpram_master|altsyncram_component|auto_generated|_~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|dpram_master|altsyncram_component|auto_generated|_~0_combout\ = (addr_latch(8) & (\process_5~2_combout\ & (\phi2~input_o\ & \n_reset~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => addr_latch(8),
	datab => \process_5~2_combout\,
	datac => \phi2~input_o\,
	datad => \n_reset~input_o\,
	combout => \u1|dpram_master|altsyncram_component|auto_generated|_~0_combout\);

-- Location: FF_X20_Y15_N23
\u1|dpram_master|altsyncram_component|auto_generated|rden_b_store\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_ram_clk~reg0clkctrl_outclk\,
	asdata => \master_ram_rden~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|dpram_master|altsyncram_component|auto_generated|rden_b_store~q\);

-- Location: LCCOMB_X20_Y15_N24
\u1|dpram_master|altsyncram_component|auto_generated|wren_b_store~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|dpram_master|altsyncram_component|auto_generated|wren_b_store~0_combout\ = !\master_ram_wren~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \master_ram_wren~1_combout\,
	combout => \u1|dpram_master|altsyncram_component|auto_generated|wren_b_store~0_combout\);

-- Location: FF_X20_Y15_N25
\u1|dpram_master|altsyncram_component|auto_generated|wren_b_store\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_ram_clk~reg0clkctrl_outclk\,
	d => \u1|dpram_master|altsyncram_component|auto_generated|wren_b_store~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|dpram_master|altsyncram_component|auto_generated|wren_b_store~q\);

-- Location: LCCOMB_X20_Y15_N22
\u1|dpram_master|altsyncram_component|auto_generated|rden_decode_b|eq_node[1]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|dpram_master|altsyncram_component|auto_generated|rden_decode_b|eq_node\(1) = (reg_mrbs(5) & ((\u1|dpram_master|altsyncram_component|auto_generated|_~0_combout\) # ((\u1|dpram_master|altsyncram_component|auto_generated|rden_b_store~q\) # 
-- (\u1|dpram_master|altsyncram_component|auto_generated|wren_b_store~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => reg_mrbs(5),
	datab => \u1|dpram_master|altsyncram_component|auto_generated|_~0_combout\,
	datac => \u1|dpram_master|altsyncram_component|auto_generated|rden_b_store~q\,
	datad => \u1|dpram_master|altsyncram_component|auto_generated|wren_b_store~q\,
	combout => \u1|dpram_master|altsyncram_component|auto_generated|rden_decode_b|eq_node\(1));

-- Location: LCCOMB_X29_Y1_N4
\u1|s_master_ram_data[7]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|s_master_ram_data[7]~0_combout\ = (\u1|s_slave_ram_rden~2_combout\ & (!\u1|process_2~2_combout\ & (\u1|process_2~3_combout\ & \u1|LessThan2~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|s_slave_ram_rden~2_combout\,
	datab => \u1|process_2~2_combout\,
	datac => \u1|process_2~3_combout\,
	datad => \u1|LessThan2~2_combout\,
	combout => \u1|s_master_ram_data[7]~0_combout\);

-- Location: LCCOMB_X28_Y3_N18
\u1|s_master_ram_data[0]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|s_master_ram_data[0]~1_combout\ = (\u1|s_master_ram_data[7]~0_combout\ & ((\u1|Decoder0~2_combout\ & (\spi_mosi~input_o\)) # (!\u1|Decoder0~2_combout\ & ((\u1|s_master_ram_data\(0)))))) # (!\u1|s_master_ram_data[7]~0_combout\ & 
-- (((\u1|s_master_ram_data\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|s_master_ram_data[7]~0_combout\,
	datab => \spi_mosi~input_o\,
	datac => \u1|s_master_ram_data\(0),
	datad => \u1|Decoder0~2_combout\,
	combout => \u1|s_master_ram_data[0]~1_combout\);

-- Location: FF_X28_Y3_N19
\u1|s_master_ram_data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \spi_clk~input_o\,
	d => \u1|s_master_ram_data[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|s_master_ram_data\(0));

-- Location: LCCOMB_X30_Y8_N22
\u1|Decoder0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|Decoder0~6_combout\ = (!\u1|bit_cnt\(0) & (!\u1|bit_cnt\(1) & !\u1|bit_cnt\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|bit_cnt\(0),
	datac => \u1|bit_cnt\(1),
	datad => \u1|bit_cnt\(2),
	combout => \u1|Decoder0~6_combout\);

-- Location: LCCOMB_X29_Y15_N30
\u1|process_2~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|process_2~6_combout\ = (\u1|Decoder0~6_combout\ & (((\u1|bit_cnt\(4) & \u1|bit_cnt\(5))) # (!\u1|LessThan2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|LessThan2~1_combout\,
	datab => \u1|Decoder0~6_combout\,
	datac => \u1|bit_cnt\(4),
	datad => \u1|bit_cnt\(5),
	combout => \u1|process_2~6_combout\);

-- Location: LCCOMB_X29_Y15_N2
\u1|s_master_ram_addr[0]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|s_master_ram_addr[0]~7_combout\ = \u1|process_2~6_combout\ $ (\u1|s_master_ram_addr\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u1|process_2~6_combout\,
	datac => \u1|s_master_ram_addr\(0),
	combout => \u1|s_master_ram_addr[0]~7_combout\);

-- Location: FF_X29_Y15_N3
\u1|s_master_ram_addr[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_spi_clk~input_o\,
	d => \u1|s_master_ram_addr[0]~7_combout\,
	clrn => \u1|ALT_INV_process_2~2clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|s_master_ram_addr\(0));

-- Location: LCCOMB_X29_Y15_N6
\u1|s_master_ram_addr[1]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|s_master_ram_addr[1]~8_combout\ = (\u1|s_master_ram_addr\(0) & (\u1|s_master_ram_addr\(1) $ (VCC))) # (!\u1|s_master_ram_addr\(0) & (\u1|s_master_ram_addr\(1) & VCC))
-- \u1|s_master_ram_addr[1]~9\ = CARRY((\u1|s_master_ram_addr\(0) & \u1|s_master_ram_addr\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|s_master_ram_addr\(0),
	datab => \u1|s_master_ram_addr\(1),
	datad => VCC,
	combout => \u1|s_master_ram_addr[1]~8_combout\,
	cout => \u1|s_master_ram_addr[1]~9\);

-- Location: FF_X29_Y15_N7
\u1|s_master_ram_addr[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_spi_clk~input_o\,
	d => \u1|s_master_ram_addr[1]~8_combout\,
	clrn => \u1|ALT_INV_process_2~2clkctrl_outclk\,
	ena => \u1|process_2~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|s_master_ram_addr\(1));

-- Location: LCCOMB_X29_Y15_N8
\u1|s_master_ram_addr[2]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|s_master_ram_addr[2]~10_combout\ = (\u1|s_master_ram_addr\(2) & (!\u1|s_master_ram_addr[1]~9\)) # (!\u1|s_master_ram_addr\(2) & ((\u1|s_master_ram_addr[1]~9\) # (GND)))
-- \u1|s_master_ram_addr[2]~11\ = CARRY((!\u1|s_master_ram_addr[1]~9\) # (!\u1|s_master_ram_addr\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u1|s_master_ram_addr\(2),
	datad => VCC,
	cin => \u1|s_master_ram_addr[1]~9\,
	combout => \u1|s_master_ram_addr[2]~10_combout\,
	cout => \u1|s_master_ram_addr[2]~11\);

-- Location: FF_X29_Y15_N9
\u1|s_master_ram_addr[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_spi_clk~input_o\,
	d => \u1|s_master_ram_addr[2]~10_combout\,
	clrn => \u1|ALT_INV_process_2~2clkctrl_outclk\,
	ena => \u1|process_2~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|s_master_ram_addr\(2));

-- Location: LCCOMB_X29_Y15_N10
\u1|s_master_ram_addr[3]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|s_master_ram_addr[3]~12_combout\ = (\u1|s_master_ram_addr\(3) & (\u1|s_master_ram_addr[2]~11\ $ (GND))) # (!\u1|s_master_ram_addr\(3) & (!\u1|s_master_ram_addr[2]~11\ & VCC))
-- \u1|s_master_ram_addr[3]~13\ = CARRY((\u1|s_master_ram_addr\(3) & !\u1|s_master_ram_addr[2]~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u1|s_master_ram_addr\(3),
	datad => VCC,
	cin => \u1|s_master_ram_addr[2]~11\,
	combout => \u1|s_master_ram_addr[3]~12_combout\,
	cout => \u1|s_master_ram_addr[3]~13\);

-- Location: FF_X29_Y15_N11
\u1|s_master_ram_addr[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_spi_clk~input_o\,
	d => \u1|s_master_ram_addr[3]~12_combout\,
	clrn => \u1|ALT_INV_process_2~2clkctrl_outclk\,
	ena => \u1|process_2~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|s_master_ram_addr\(3));

-- Location: LCCOMB_X29_Y15_N12
\u1|s_master_ram_addr[4]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|s_master_ram_addr[4]~14_combout\ = (\u1|s_master_ram_addr\(4) & (!\u1|s_master_ram_addr[3]~13\)) # (!\u1|s_master_ram_addr\(4) & ((\u1|s_master_ram_addr[3]~13\) # (GND)))
-- \u1|s_master_ram_addr[4]~15\ = CARRY((!\u1|s_master_ram_addr[3]~13\) # (!\u1|s_master_ram_addr\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u1|s_master_ram_addr\(4),
	datad => VCC,
	cin => \u1|s_master_ram_addr[3]~13\,
	combout => \u1|s_master_ram_addr[4]~14_combout\,
	cout => \u1|s_master_ram_addr[4]~15\);

-- Location: FF_X29_Y15_N13
\u1|s_master_ram_addr[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_spi_clk~input_o\,
	d => \u1|s_master_ram_addr[4]~14_combout\,
	clrn => \u1|ALT_INV_process_2~2clkctrl_outclk\,
	ena => \u1|process_2~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|s_master_ram_addr\(4));

-- Location: LCCOMB_X29_Y15_N14
\u1|s_master_ram_addr[5]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|s_master_ram_addr[5]~16_combout\ = (\u1|s_master_ram_addr\(5) & (\u1|s_master_ram_addr[4]~15\ $ (GND))) # (!\u1|s_master_ram_addr\(5) & (!\u1|s_master_ram_addr[4]~15\ & VCC))
-- \u1|s_master_ram_addr[5]~17\ = CARRY((\u1|s_master_ram_addr\(5) & !\u1|s_master_ram_addr[4]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u1|s_master_ram_addr\(5),
	datad => VCC,
	cin => \u1|s_master_ram_addr[4]~15\,
	combout => \u1|s_master_ram_addr[5]~16_combout\,
	cout => \u1|s_master_ram_addr[5]~17\);

-- Location: FF_X29_Y15_N15
\u1|s_master_ram_addr[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_spi_clk~input_o\,
	d => \u1|s_master_ram_addr[5]~16_combout\,
	clrn => \u1|ALT_INV_process_2~2clkctrl_outclk\,
	ena => \u1|process_2~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|s_master_ram_addr\(5));

-- Location: LCCOMB_X29_Y15_N16
\u1|s_master_ram_addr[6]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|s_master_ram_addr[6]~18_combout\ = (\u1|s_master_ram_addr\(6) & (!\u1|s_master_ram_addr[5]~17\)) # (!\u1|s_master_ram_addr\(6) & ((\u1|s_master_ram_addr[5]~17\) # (GND)))
-- \u1|s_master_ram_addr[6]~19\ = CARRY((!\u1|s_master_ram_addr[5]~17\) # (!\u1|s_master_ram_addr\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u1|s_master_ram_addr\(6),
	datad => VCC,
	cin => \u1|s_master_ram_addr[5]~17\,
	combout => \u1|s_master_ram_addr[6]~18_combout\,
	cout => \u1|s_master_ram_addr[6]~19\);

-- Location: FF_X29_Y15_N17
\u1|s_master_ram_addr[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_spi_clk~input_o\,
	d => \u1|s_master_ram_addr[6]~18_combout\,
	clrn => \u1|ALT_INV_process_2~2clkctrl_outclk\,
	ena => \u1|process_2~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|s_master_ram_addr\(6));

-- Location: LCCOMB_X29_Y15_N18
\u1|s_master_ram_addr[7]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|s_master_ram_addr[7]~20_combout\ = \u1|s_master_ram_addr\(7) $ (!\u1|s_master_ram_addr[6]~19\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u1|s_master_ram_addr\(7),
	cin => \u1|s_master_ram_addr[6]~19\,
	combout => \u1|s_master_ram_addr[7]~20_combout\);

-- Location: FF_X29_Y15_N19
\u1|s_master_ram_addr[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_spi_clk~input_o\,
	d => \u1|s_master_ram_addr[7]~20_combout\,
	clrn => \u1|ALT_INV_process_2~2clkctrl_outclk\,
	ena => \u1|process_2~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|s_master_ram_addr\(7));

-- Location: LCCOMB_X23_Y6_N30
\u1|s_master_ram_bank[0]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|s_master_ram_bank[0]~4_combout\ = (\u1|Decoder0~2_combout\ & ((\u1|s_master_ram_bank[5]~2_combout\) # ((!\u1|s_master_ram_bank[5]~9_combout\ & \u1|s_master_ram_bank\(0))))) # (!\u1|Decoder0~2_combout\ & (((\u1|s_master_ram_bank\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|s_master_ram_bank[5]~2_combout\,
	datab => \u1|s_master_ram_bank[5]~9_combout\,
	datac => \u1|s_master_ram_bank\(0),
	datad => \u1|Decoder0~2_combout\,
	combout => \u1|s_master_ram_bank[0]~4_combout\);

-- Location: FF_X23_Y6_N31
\u1|s_master_ram_bank[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \spi_clk~input_o\,
	d => \u1|s_master_ram_bank[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|s_master_ram_bank\(0));

-- Location: LCCOMB_X23_Y6_N24
\u1|s_master_ram_bank[1]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|s_master_ram_bank[1]~5_combout\ = (\u1|Decoder0~3_combout\ & ((\u1|s_master_ram_bank[5]~2_combout\) # ((!\u1|s_master_ram_bank[5]~9_combout\ & \u1|s_master_ram_bank\(1))))) # (!\u1|Decoder0~3_combout\ & (((\u1|s_master_ram_bank\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|s_master_ram_bank[5]~2_combout\,
	datab => \u1|s_master_ram_bank[5]~9_combout\,
	datac => \u1|s_master_ram_bank\(1),
	datad => \u1|Decoder0~3_combout\,
	combout => \u1|s_master_ram_bank[1]~5_combout\);

-- Location: FF_X23_Y6_N25
\u1|s_master_ram_bank[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \spi_clk~input_o\,
	d => \u1|s_master_ram_bank[1]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|s_master_ram_bank\(1));

-- Location: LCCOMB_X23_Y6_N26
\u1|s_master_ram_bank[2]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|s_master_ram_bank[2]~6_combout\ = (\u1|Decoder0~4_combout\ & ((\u1|s_master_ram_bank[5]~2_combout\) # ((!\u1|s_master_ram_bank[5]~9_combout\ & \u1|s_master_ram_bank\(2))))) # (!\u1|Decoder0~4_combout\ & (((\u1|s_master_ram_bank\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|s_master_ram_bank[5]~2_combout\,
	datab => \u1|s_master_ram_bank[5]~9_combout\,
	datac => \u1|s_master_ram_bank\(2),
	datad => \u1|Decoder0~4_combout\,
	combout => \u1|s_master_ram_bank[2]~6_combout\);

-- Location: FF_X23_Y6_N27
\u1|s_master_ram_bank[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \spi_clk~input_o\,
	d => \u1|s_master_ram_bank[2]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|s_master_ram_bank\(2));

-- Location: LCCOMB_X23_Y6_N28
\u1|s_master_ram_bank[3]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|s_master_ram_bank[3]~7_combout\ = (\u1|Decoder0~1_combout\ & ((\u1|s_master_ram_bank[5]~2_combout\) # ((!\u1|s_master_ram_bank[5]~9_combout\ & \u1|s_master_ram_bank\(3))))) # (!\u1|Decoder0~1_combout\ & (((\u1|s_master_ram_bank\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|s_master_ram_bank[5]~2_combout\,
	datab => \u1|s_master_ram_bank[5]~9_combout\,
	datac => \u1|s_master_ram_bank\(3),
	datad => \u1|Decoder0~1_combout\,
	combout => \u1|s_master_ram_bank[3]~7_combout\);

-- Location: FF_X23_Y6_N29
\u1|s_master_ram_bank[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \spi_clk~input_o\,
	d => \u1|s_master_ram_bank[3]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|s_master_ram_bank\(3));

-- Location: LCCOMB_X23_Y6_N22
\u1|s_master_ram_bank[4]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|s_master_ram_bank[4]~8_combout\ = (\u1|Decoder0~5_combout\ & ((\u1|s_master_ram_bank[5]~2_combout\) # ((!\u1|s_master_ram_bank[5]~9_combout\ & \u1|s_master_ram_bank\(4))))) # (!\u1|Decoder0~5_combout\ & (((\u1|s_master_ram_bank\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|s_master_ram_bank[5]~2_combout\,
	datab => \u1|s_master_ram_bank[5]~9_combout\,
	datac => \u1|s_master_ram_bank\(4),
	datad => \u1|Decoder0~5_combout\,
	combout => \u1|s_master_ram_bank[4]~8_combout\);

-- Location: FF_X23_Y6_N23
\u1|s_master_ram_bank[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \spi_clk~input_o\,
	d => \u1|s_master_ram_bank[4]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|s_master_ram_bank\(4));

-- Location: FF_X23_Y1_N17
\reg_mrbs[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_phi2_early~reg0clkctrl_outclk\,
	asdata => \data[0]~input_o\,
	clrn => \n_reset~input_o\,
	sload => VCC,
	ena => \reg_mrbs[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_mrbs(0));

-- Location: FF_X23_Y1_N5
\reg_mrbs[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_phi2_early~reg0clkctrl_outclk\,
	asdata => \data[1]~input_o\,
	clrn => \n_reset~input_o\,
	sload => VCC,
	ena => \reg_mrbs[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_mrbs(1));

-- Location: FF_X23_Y1_N23
\reg_mrbs[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_phi2_early~reg0clkctrl_outclk\,
	asdata => \data[2]~input_o\,
	clrn => \n_reset~input_o\,
	sload => VCC,
	ena => \reg_mrbs[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_mrbs(2));

-- Location: FF_X23_Y1_N27
\reg_mrbs[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_phi2_early~reg0clkctrl_outclk\,
	asdata => \data[3]~input_o\,
	clrn => \n_reset~input_o\,
	sload => VCC,
	ena => \reg_mrbs[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_mrbs(3));

-- Location: FF_X23_Y1_N13
\reg_mrbs[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_phi2_early~reg0clkctrl_outclk\,
	asdata => \data[4]~input_o\,
	clrn => \n_reset~input_o\,
	sload => VCC,
	ena => \reg_mrbs[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_mrbs(4));

-- Location: M9K_X5_Y1_N0
\u1|dpram_master|altsyncram_component|auto_generated|ram_block1a8\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "spi_dpram:u1|dpram:dpram_master|altsyncram:altsyncram_component|altsyncram_p9o3:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "bidir_dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 16384,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "old_data",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_in_clock => "clock1",
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "clock1",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 16384,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "old_data",
	port_b_read_enable_clock => "clock1",
	port_b_write_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \u1|dpram_master|altsyncram_component|auto_generated|decode2|eq_node\(1),
	portare => VCC,
	portbwe => \u1|dpram_master|altsyncram_component|auto_generated|decode3|eq_node\(1),
	portbre => \master_ram_rden~0_combout\,
	clk0 => \u1|s_master_ram_clk~clkctrl_outclk\,
	clk1 => \master_ram_clk~reg0clkctrl_outclk\,
	ena0 => \u1|s_master_ram_bank\(5),
	ena1 => \u1|dpram_master|altsyncram_component|auto_generated|rden_decode_b|eq_node\(1),
	portadatain => \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a8_PORTADATAIN_bus\,
	portbdatain => \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a8_PORTBDATAIN_bus\,
	portaaddr => \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a8_PORTAADDR_bus\,
	portbaddr => \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a8_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a8_PORTADATAOUT_bus\,
	portbdataout => \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a8_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X23_Y6_N4
\u1|dpram_master|altsyncram_component|auto_generated|decode2|eq_node[0]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|dpram_master|altsyncram_component|auto_generated|decode2|eq_node\(0) = (!\u1|s_master_ram_bank\(5) & \u1|s_master_ram_wren~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|s_master_ram_bank\(5),
	datac => \u1|s_master_ram_wren~q\,
	combout => \u1|dpram_master|altsyncram_component|auto_generated|decode2|eq_node\(0));

-- Location: LCCOMB_X20_Y15_N20
\u1|dpram_master|altsyncram_component|auto_generated|decode3|eq_node[0]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|dpram_master|altsyncram_component|auto_generated|decode3|eq_node\(0) = (!reg_mrbs(5) & !\master_ram_wren~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => reg_mrbs(5),
	datad => \master_ram_wren~1_combout\,
	combout => \u1|dpram_master|altsyncram_component|auto_generated|decode3|eq_node\(0));

-- Location: LCCOMB_X20_Y15_N18
\u1|dpram_master|altsyncram_component|auto_generated|rden_decode_b|eq_node[0]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|dpram_master|altsyncram_component|auto_generated|rden_decode_b|eq_node\(0) = (!reg_mrbs(5) & ((\u1|dpram_master|altsyncram_component|auto_generated|rden_b_store~q\) # ((\u1|dpram_master|altsyncram_component|auto_generated|_~0_combout\) # 
-- (\u1|dpram_master|altsyncram_component|auto_generated|wren_b_store~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|dpram_master|altsyncram_component|auto_generated|rden_b_store~q\,
	datab => \u1|dpram_master|altsyncram_component|auto_generated|_~0_combout\,
	datac => reg_mrbs(5),
	datad => \u1|dpram_master|altsyncram_component|auto_generated|wren_b_store~q\,
	combout => \u1|dpram_master|altsyncram_component|auto_generated|rden_decode_b|eq_node\(0));

-- Location: M9K_X26_Y21_N0
\u1|dpram_master|altsyncram_component|auto_generated|ram_block1a0\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "spi_dpram:u1|dpram:dpram_master|altsyncram:altsyncram_component|altsyncram_p9o3:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "bidir_dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 16384,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "old_data",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_in_clock => "clock1",
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "clock1",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 16384,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "old_data",
	port_b_read_enable_clock => "clock1",
	port_b_write_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \u1|dpram_master|altsyncram_component|auto_generated|decode2|eq_node\(0),
	portare => VCC,
	portbwe => \u1|dpram_master|altsyncram_component|auto_generated|decode3|eq_node\(0),
	portbre => \master_ram_rden~0_combout\,
	clk0 => \u1|s_master_ram_clk~clkctrl_outclk\,
	clk1 => \master_ram_clk~reg0clkctrl_outclk\,
	ena0 => \u1|ALT_INV_s_master_ram_bank\(5),
	ena1 => \u1|dpram_master|altsyncram_component|auto_generated|rden_decode_b|eq_node\(0),
	portadatain => \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portbdatain => \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAIN_bus\,
	portaaddr => \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\,
	portbaddr => \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\,
	portbdataout => \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X19_Y9_N24
\data[0]~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data[0]~30_combout\ = (\data[0]~29_combout\ & (((\master_ram_rden~0_combout\)))) # (!\data[0]~29_combout\ & ((\master_ram_rden~0_combout\ & (\u1|dpram_master|altsyncram_component|auto_generated|ram_block1a0~PORTBDATAOUT0\)) # 
-- (!\master_ram_rden~0_combout\ & ((\u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a0~PORTBDATAOUT0\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data[0]~29_combout\,
	datab => \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a0~PORTBDATAOUT0\,
	datac => \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a0~PORTBDATAOUT0\,
	datad => \master_ram_rden~0_combout\,
	combout => \data[0]~30_combout\);

-- Location: LCCOMB_X19_Y9_N10
\data[0]~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data[0]~31_combout\ = (\data[0]~29_combout\ & ((\data[0]~30_combout\ & (\u1|dpram_master|altsyncram_component|auto_generated|ram_block1a8~PORTBDATAOUT0\)) # (!\data[0]~30_combout\ & 
-- ((\u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a8~PORTBDATAOUT0\))))) # (!\data[0]~29_combout\ & (((\data[0]~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data[0]~29_combout\,
	datab => \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a8~PORTBDATAOUT0\,
	datac => \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a8~PORTBDATAOUT0\,
	datad => \data[0]~30_combout\,
	combout => \data[0]~31_combout\);

-- Location: LCCOMB_X15_Y8_N6
\led_latch[0]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \led_latch[0]~1_combout\ = (addr_latch(1) & (\Equal18~2_combout\ & !addr_latch(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => addr_latch(1),
	datac => \Equal18~2_combout\,
	datad => addr_latch(4),
	combout => \led_latch[0]~1_combout\);

-- Location: LCCOMB_X15_Y8_N30
\data[0]~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data[0]~19_combout\ = (\Equal19~1_combout\) # ((\led_latch[0]~1_combout\ & (addr_latch(5) & addr_latch(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \led_latch[0]~1_combout\,
	datab => addr_latch(5),
	datac => \Equal19~1_combout\,
	datad => addr_latch(0),
	combout => \data[0]~19_combout\);

-- Location: LCCOMB_X29_Y1_N24
\u1|s_sdsr[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|s_sdsr[0]~0_combout\ = (\u1|LessThan2~1_combout\ & (!\u1|process_2~2_combout\ & (\u1|LessThan2~3_combout\ & !\u1|bit_cnt\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|LessThan2~1_combout\,
	datab => \u1|process_2~2_combout\,
	datac => \u1|LessThan2~3_combout\,
	datad => \u1|bit_cnt\(5),
	combout => \u1|s_sdsr[0]~0_combout\);

-- Location: LCCOMB_X28_Y3_N24
\u1|s_sdsr[0]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|s_sdsr[0]~1_combout\ = (\u1|s_sdsr[0]~0_combout\ & ((\u1|Decoder0~2_combout\ & ((\spi_mosi~input_o\))) # (!\u1|Decoder0~2_combout\ & (\u1|s_sdsr\(0))))) # (!\u1|s_sdsr[0]~0_combout\ & (\u1|s_sdsr\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|s_sdsr[0]~0_combout\,
	datab => \u1|s_sdsr\(0),
	datac => \spi_mosi~input_o\,
	datad => \u1|Decoder0~2_combout\,
	combout => \u1|s_sdsr[0]~1_combout\);

-- Location: FF_X29_Y1_N23
\u1|s_sdsr[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \spi_clk~input_o\,
	asdata => \u1|s_sdsr[0]~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|s_sdsr\(0));

-- Location: LCCOMB_X15_Y8_N26
\Equal22~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal22~0_combout\ = (addr_latch(5) & (\Equal19~0_combout\ & (\Equal18~2_combout\ & !addr_latch(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => addr_latch(5),
	datab => \Equal19~0_combout\,
	datac => \Equal18~2_combout\,
	datad => addr_latch(4),
	combout => \Equal22~0_combout\);

-- Location: LCCOMB_X22_Y9_N2
\data[0]~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data[0]~21_combout\ = (\Equal22~0_combout\) # ((\Equal18~3_combout\ & (!addr_latch(5) & !addr_latch(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal18~3_combout\,
	datab => addr_latch(5),
	datac => addr_latch(0),
	datad => \Equal22~0_combout\,
	combout => \data[0]~21_combout\);

-- Location: LCCOMB_X22_Y9_N12
\data[0]~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data[0]~22_combout\ = (\Equal22~0_combout\) # ((\Equal18~3_combout\ & (!addr_latch(5) & addr_latch(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal18~3_combout\,
	datab => addr_latch(5),
	datac => addr_latch(0),
	datad => \Equal22~0_combout\,
	combout => \data[0]~22_combout\);

-- Location: LCCOMB_X15_Y8_N4
\Equal25~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal25~0_combout\ = (!addr_latch(5) & (\Equal19~0_combout\ & (\Equal18~2_combout\ & addr_latch(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => addr_latch(5),
	datab => \Equal19~0_combout\,
	datac => \Equal18~2_combout\,
	datad => addr_latch(4),
	combout => \Equal25~0_combout\);

-- Location: LCCOMB_X14_Y10_N14
\data[0]~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data[0]~23_combout\ = (!\data[0]~22_combout\ & ((\data[0]~21_combout\) # (\Equal25~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data[0]~21_combout\,
	datac => \data[0]~22_combout\,
	datad => \Equal25~0_combout\,
	combout => \data[0]~23_combout\);

-- Location: LCCOMB_X15_Y8_N14
\reg_fbs[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_fbs[0]~0_combout\ = (\Equal25~0_combout\ & \reg_mrbs[0]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal25~0_combout\,
	datad => \reg_mrbs[0]~0_combout\,
	combout => \reg_fbs[0]~0_combout\);

-- Location: FF_X13_Y9_N31
\reg_fbs[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_phi2_early~reg0clkctrl_outclk\,
	asdata => \data[0]~input_o\,
	clrn => \n_reset~input_o\,
	sload => VCC,
	ena => \reg_fbs[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_fbs(0));

-- Location: LCCOMB_X28_Y13_N30
\u1|r_mtbkcr[0]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|r_mtbkcr[0]~2_combout\ = (!\u1|process_2~0_combout\ & (!\u1|process_2~2_combout\ & (\u1|LessThan2~2_combout\ & \spi_mosi~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|process_2~0_combout\,
	datab => \u1|process_2~2_combout\,
	datac => \u1|LessThan2~2_combout\,
	datad => \spi_mosi~input_o\,
	combout => \u1|r_mtbkcr[0]~2_combout\);

-- Location: LCCOMB_X28_Y13_N24
\u1|r_mtbkcr[6]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|r_mtbkcr[6]~11_combout\ = (\u1|LessThan2~2_combout\ & (\n_reset~input_o\ & (!\u1|process_2~0_combout\ & !\spi_ss_n~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|LessThan2~2_combout\,
	datab => \n_reset~input_o\,
	datac => \u1|process_2~0_combout\,
	datad => \spi_ss_n~input_o\,
	combout => \u1|r_mtbkcr[6]~11_combout\);

-- Location: LCCOMB_X23_Y1_N18
\u1|r_mtbkcr[0]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|r_mtbkcr[0]~3_combout\ = (\u1|Decoder0~2_combout\ & ((\u1|r_mtbkcr[0]~2_combout\) # ((!\u1|r_mtbkcr[6]~11_combout\ & \u1|r_mtbkcr\(0))))) # (!\u1|Decoder0~2_combout\ & (((\u1|r_mtbkcr\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|r_mtbkcr[0]~2_combout\,
	datab => \u1|r_mtbkcr[6]~11_combout\,
	datac => \u1|r_mtbkcr\(0),
	datad => \u1|Decoder0~2_combout\,
	combout => \u1|r_mtbkcr[0]~3_combout\);

-- Location: FF_X23_Y1_N19
\u1|r_mtbkcr[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \spi_clk~input_o\,
	d => \u1|r_mtbkcr[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|r_mtbkcr\(0));

-- Location: LCCOMB_X23_Y1_N16
\data[0]~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data[0]~24_combout\ = (\data[0]~21_combout\ & (\u1|r_mtbkcr\(0) & ((\data[0]~22_combout\)))) # (!\data[0]~21_combout\ & (((reg_mrbs(0)) # (!\data[0]~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data[0]~21_combout\,
	datab => \u1|r_mtbkcr\(0),
	datac => reg_mrbs(0),
	datad => \data[0]~22_combout\,
	combout => \data[0]~24_combout\);

-- Location: LCCOMB_X20_Y10_N8
\data[0]~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data[0]~25_combout\ = (\data[0]~23_combout\ & ((\data[0]~24_combout\ & (reg_fbs(0))) # (!\data[0]~24_combout\ & ((reg_srbs(0)))))) # (!\data[0]~23_combout\ & (((\data[0]~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data[0]~23_combout\,
	datab => reg_fbs(0),
	datac => reg_srbs(0),
	datad => \data[0]~24_combout\,
	combout => \data[0]~25_combout\);

-- Location: LCCOMB_X15_Y8_N8
\data[0]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data[0]~20_combout\ = (\Equal19~1_combout\) # ((\led_latch[0]~1_combout\ & (addr_latch(5) & !addr_latch(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \led_latch[0]~1_combout\,
	datab => addr_latch(5),
	datac => \Equal19~1_combout\,
	datad => addr_latch(0),
	combout => \data[0]~20_combout\);

-- Location: LCCOMB_X30_Y9_N4
\u1|r_mtbycr[0]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|r_mtbycr[0]~2_combout\ = (!\u1|process_2~2_combout\ & (!\u1|process_2~1_combout\ & (\spi_mosi~input_o\ & \u1|LessThan2~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|process_2~2_combout\,
	datab => \u1|process_2~1_combout\,
	datac => \spi_mosi~input_o\,
	datad => \u1|LessThan2~2_combout\,
	combout => \u1|r_mtbycr[0]~2_combout\);

-- Location: LCCOMB_X30_Y9_N6
\u1|r_mtbycr[6]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|r_mtbycr[6]~12_combout\ = (\u1|LessThan2~2_combout\ & (!\u1|process_2~1_combout\ & (!\spi_ss_n~input_o\ & \n_reset~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|LessThan2~2_combout\,
	datab => \u1|process_2~1_combout\,
	datac => \spi_ss_n~input_o\,
	datad => \n_reset~input_o\,
	combout => \u1|r_mtbycr[6]~12_combout\);

-- Location: LCCOMB_X28_Y3_N2
\u1|r_mtbycr[0]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|r_mtbycr[0]~3_combout\ = (\u1|Decoder0~2_combout\ & ((\u1|r_mtbycr[0]~2_combout\) # ((\u1|r_mtbycr\(0) & !\u1|r_mtbycr[6]~12_combout\)))) # (!\u1|Decoder0~2_combout\ & (((\u1|r_mtbycr\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|r_mtbycr[0]~2_combout\,
	datab => \u1|Decoder0~2_combout\,
	datac => \u1|r_mtbycr\(0),
	datad => \u1|r_mtbycr[6]~12_combout\,
	combout => \u1|r_mtbycr[0]~3_combout\);

-- Location: FF_X28_Y3_N3
\u1|r_mtbycr[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \spi_clk~input_o\,
	d => \u1|r_mtbycr[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|r_mtbycr\(0));

-- Location: LCCOMB_X28_Y3_N28
\data[0]~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data[0]~26_combout\ = (\data[0]~20_combout\ & (((\data[0]~19_combout\) # (\u1|r_mtbycr\(0))))) # (!\data[0]~20_combout\ & (\data[0]~25_combout\ & (!\data[0]~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data[0]~25_combout\,
	datab => \data[0]~20_combout\,
	datac => \data[0]~19_combout\,
	datad => \u1|r_mtbycr\(0),
	combout => \data[0]~26_combout\);

-- Location: LCCOMB_X28_Y3_N12
\data[0]~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data[0]~27_combout\ = (\data[0]~19_combout\ & ((\data[0]~26_combout\ & ((reg_stbkcr(0)))) # (!\data[0]~26_combout\ & (\u1|s_sdsr\(0))))) # (!\data[0]~19_combout\ & (((\data[0]~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data[0]~19_combout\,
	datab => \u1|s_sdsr\(0),
	datac => reg_stbkcr(0),
	datad => \data[0]~26_combout\,
	combout => \data[0]~27_combout\);

-- Location: LCCOMB_X22_Y9_N8
\data[0]~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data[0]~32_combout\ = (\data[0]~28_combout\ & ((\data[0]~18_combout\) # ((\data[0]~27_combout\)))) # (!\data[0]~28_combout\ & (!\data[0]~18_combout\ & (\data[0]~31_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data[0]~28_combout\,
	datab => \data[0]~18_combout\,
	datac => \data[0]~31_combout\,
	datad => \data[0]~27_combout\,
	combout => \data[0]~32_combout\);

-- Location: LCCOMB_X22_Y9_N18
\data[0]~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data[0]~33_combout\ = (\data[0]~32_combout\ & (((reg_stbycr(0))) # (!\data[0]~18_combout\))) # (!\data[0]~32_combout\ & (\data[0]~18_combout\ & ((reg_sdcr(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data[0]~32_combout\,
	datab => \data[0]~18_combout\,
	datac => reg_stbycr(0),
	datad => reg_sdcr(0),
	combout => \data[0]~33_combout\);

-- Location: LCCOMB_X20_Y9_N8
\u0|onchip_flash_0|avmm_data_controller|reset_n_reg1~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|reset_n_reg1~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \u0|onchip_flash_0|avmm_data_controller|reset_n_reg1~feeder_combout\);

-- Location: FF_X20_Y9_N9
\u0|onchip_flash_0|avmm_data_controller|reset_n_reg1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_57~inputclkctrl_outclk\,
	d => \u0|onchip_flash_0|avmm_data_controller|reset_n_reg1~feeder_combout\,
	clrn => \n_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|reset_n_reg1~q\);

-- Location: FF_X20_Y9_N23
\u0|onchip_flash_0|avmm_data_controller|reset_n_reg2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_57~inputclkctrl_outclk\,
	asdata => \u0|onchip_flash_0|avmm_data_controller|reset_n_reg1~q\,
	clrn => \n_reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|reset_n_reg2~q\);

-- Location: FF_X20_Y10_N11
\reg_fbs[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_phi2_early~reg0clkctrl_outclk\,
	asdata => \data[5]~input_o\,
	clrn => \n_reset~input_o\,
	sload => VCC,
	ena => \reg_fbs[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_fbs(5));

-- Location: FF_X20_Y10_N13
\reg_fbs[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_phi2_early~reg0clkctrl_outclk\,
	asdata => \data[6]~input_o\,
	clrn => \n_reset~input_o\,
	sload => VCC,
	ena => \reg_fbs[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_fbs(6));

-- Location: LCCOMB_X20_Y10_N22
\reg_fbs[4]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_fbs[4]~feeder_combout\ = \data[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data[4]~input_o\,
	combout => \reg_fbs[4]~feeder_combout\);

-- Location: FF_X20_Y10_N23
\reg_fbs[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_phi2_early~reg0clkctrl_outclk\,
	d => \reg_fbs[4]~feeder_combout\,
	clrn => \n_reset~input_o\,
	ena => \reg_fbs[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_fbs(4));

-- Location: FF_X20_Y10_N3
\reg_fbs[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_phi2_early~reg0clkctrl_outclk\,
	asdata => \data[2]~input_o\,
	clrn => \n_reset~input_o\,
	sload => VCC,
	ena => \reg_fbs[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_fbs(2));

-- Location: FF_X20_Y10_N25
\reg_fbs[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_phi2_early~reg0clkctrl_outclk\,
	asdata => \data[3]~input_o\,
	clrn => \n_reset~input_o\,
	sload => VCC,
	ena => \reg_fbs[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_fbs(3));

-- Location: LCCOMB_X20_Y10_N2
\u0|onchip_flash_0|avmm_data_controller|csr_status_r_pass~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|csr_status_r_pass~0_combout\ = (!reg_fbs(6) & (((!reg_fbs(3)) # (!reg_fbs(2))) # (!reg_fbs(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => reg_fbs(6),
	datab => reg_fbs(4),
	datac => reg_fbs(2),
	datad => reg_fbs(3),
	combout => \u0|onchip_flash_0|avmm_data_controller|csr_status_r_pass~0_combout\);

-- Location: FF_X20_Y10_N1
\reg_fbs[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_phi2_early~reg0clkctrl_outclk\,
	asdata => \data[7]~input_o\,
	clrn => \n_reset~input_o\,
	sload => VCC,
	ena => \reg_fbs[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_fbs(7));

-- Location: LCCOMB_X20_Y10_N14
\u0|onchip_flash_0|avmm_data_controller|csr_status_r_pass~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|csr_status_r_pass~1_combout\ = ((!reg_fbs(5) & \u0|onchip_flash_0|avmm_data_controller|csr_status_r_pass~0_combout\)) # (!reg_fbs(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => reg_fbs(5),
	datac => \u0|onchip_flash_0|avmm_data_controller|csr_status_r_pass~0_combout\,
	datad => reg_fbs(7),
	combout => \u0|onchip_flash_0|avmm_data_controller|csr_status_r_pass~1_combout\);

-- Location: LCCOMB_X16_Y9_N28
\u0|onchip_flash_0|avmm_data_controller|Selector0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|Selector0~0_combout\ = (\u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_FINAL~q\) # ((\u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_IDLE~q\ & 
-- \u0|onchip_flash_0|avmm_data_controller|avmm_read_state~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_IDLE~q\,
	datac => \u0|onchip_flash_0|avmm_data_controller|avmm_read_state~q\,
	datad => \u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_FINAL~q\,
	combout => \u0|onchip_flash_0|avmm_data_controller|Selector0~0_combout\);

-- Location: FF_X16_Y9_N29
\u0|onchip_flash_0|avmm_data_controller|avmm_read_state\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_57~inputclkctrl_outclk\,
	d => \u0|onchip_flash_0|avmm_data_controller|Selector0~0_combout\,
	ena => \u0|onchip_flash_0|avmm_data_controller|reset_n_reg2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|avmm_read_state~q\);

-- Location: LCCOMB_X16_Y9_N10
\u0|onchip_flash_0|avmm_data_controller|Selector1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|Selector1~0_combout\ = (\u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_IDLE~q\ & !\u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_FINAL~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_IDLE~q\,
	datad => \u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_FINAL~q\,
	combout => \u0|onchip_flash_0|avmm_data_controller|Selector1~0_combout\);

-- Location: LCCOMB_X16_Y9_N4
\u0|onchip_flash_0|avmm_data_controller|Selector1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|Selector1~1_combout\ = (\u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_READY~q\ & (((\u0|onchip_flash_0|avmm_data_controller|avmm_readdata_ready~q\)) # 
-- (!\u0|onchip_flash_0|avmm_data_controller|avmm_read_state~q\))) # (!\u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_READY~q\ & (((\u0|onchip_flash_0|avmm_data_controller|avmm_readdata_ready~q\ & 
-- \u0|onchip_flash_0|avmm_data_controller|Selector1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_READY~q\,
	datab => \u0|onchip_flash_0|avmm_data_controller|avmm_read_state~q\,
	datac => \u0|onchip_flash_0|avmm_data_controller|avmm_readdata_ready~q\,
	datad => \u0|onchip_flash_0|avmm_data_controller|Selector1~0_combout\,
	combout => \u0|onchip_flash_0|avmm_data_controller|Selector1~1_combout\);

-- Location: FF_X16_Y9_N5
\u0|onchip_flash_0|avmm_data_controller|avmm_readdata_ready\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_57~inputclkctrl_outclk\,
	d => \u0|onchip_flash_0|avmm_data_controller|Selector1~1_combout\,
	ena => \u0|onchip_flash_0|avmm_data_controller|reset_n_reg2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|avmm_readdata_ready~q\);

-- Location: LCCOMB_X16_Y9_N26
\u0|onchip_flash_0|avmm_data_controller|data_count~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|data_count~4_combout\ = (\u0|onchip_flash_0|avmm_data_controller|avmm_read_valid_state~q\ & ((\u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_reg\(3)) # 
-- (!\u0|onchip_flash_0|avmm_data_controller|Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u0|onchip_flash_0|avmm_data_controller|avmm_read_valid_state~q\,
	datac => \u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_reg\(3),
	datad => \u0|onchip_flash_0|avmm_data_controller|Equal1~0_combout\,
	combout => \u0|onchip_flash_0|avmm_data_controller|data_count~4_combout\);

-- Location: LCCOMB_X14_Y12_N30
\u0|onchip_flash_0|avmm_data_controller|data_count~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|data_count~6_combout\ = (\u0|onchip_flash_0|avmm_data_controller|data_count[2]~5_combout\ & (\u0|onchip_flash_0|avmm_data_controller|data_count\(0) $ (!\u0|onchip_flash_0|avmm_data_controller|data_count\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u0|onchip_flash_0|avmm_data_controller|data_count\(0),
	datac => \u0|onchip_flash_0|avmm_data_controller|data_count\(1),
	datad => \u0|onchip_flash_0|avmm_data_controller|data_count[2]~5_combout\,
	combout => \u0|onchip_flash_0|avmm_data_controller|data_count~6_combout\);

-- Location: LCCOMB_X14_Y12_N12
\u0|onchip_flash_0|avmm_data_controller|data_count[2]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|data_count[2]~10_combout\ = (\u0|onchip_flash_0|avmm_data_controller|data_count~4_combout\) # (((!\u0|onchip_flash_0|avmm_data_controller|avmm_read_valid_state~q\ & 
-- \u0|onchip_flash_0|avmm_data_controller|avmm_readdata_ready~q\)) # (!\u0|onchip_flash_0|avmm_data_controller|reset_n_reg2~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|data_count~4_combout\,
	datab => \u0|onchip_flash_0|avmm_data_controller|avmm_read_valid_state~q\,
	datac => \u0|onchip_flash_0|avmm_data_controller|reset_n_reg2~q\,
	datad => \u0|onchip_flash_0|avmm_data_controller|avmm_readdata_ready~q\,
	combout => \u0|onchip_flash_0|avmm_data_controller|data_count[2]~10_combout\);

-- Location: FF_X14_Y12_N31
\u0|onchip_flash_0|avmm_data_controller|data_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_57~inputclkctrl_outclk\,
	d => \u0|onchip_flash_0|avmm_data_controller|data_count~6_combout\,
	ena => \u0|onchip_flash_0|avmm_data_controller|data_count[2]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|data_count\(1));

-- Location: LCCOMB_X14_Y12_N24
\u0|onchip_flash_0|avmm_data_controller|data_count~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|data_count~8_combout\ = (\u0|onchip_flash_0|avmm_data_controller|data_count\(2) $ (((!\u0|onchip_flash_0|avmm_data_controller|data_count\(1) & !\u0|onchip_flash_0|avmm_data_controller|data_count\(0))))) # 
-- (!\u0|onchip_flash_0|avmm_data_controller|avmm_read_valid_state~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|data_count\(1),
	datab => \u0|onchip_flash_0|avmm_data_controller|avmm_read_valid_state~q\,
	datac => \u0|onchip_flash_0|avmm_data_controller|data_count\(2),
	datad => \u0|onchip_flash_0|avmm_data_controller|data_count\(0),
	combout => \u0|onchip_flash_0|avmm_data_controller|data_count~8_combout\);

-- Location: FF_X14_Y12_N25
\u0|onchip_flash_0|avmm_data_controller|data_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_57~inputclkctrl_outclk\,
	d => \u0|onchip_flash_0|avmm_data_controller|data_count~8_combout\,
	sclr => \u0|onchip_flash_0|avmm_data_controller|ALT_INV_reset_n_reg2~q\,
	ena => \u0|onchip_flash_0|avmm_data_controller|data_count[2]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|data_count\(2));

-- Location: LCCOMB_X14_Y12_N18
\u0|onchip_flash_0|avmm_data_controller|data_count[2]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|data_count[2]~5_combout\ = (\u0|onchip_flash_0|avmm_data_controller|avmm_read_valid_state~q\ & (\u0|onchip_flash_0|avmm_data_controller|reset_n_reg2~q\ & 
-- ((\u0|onchip_flash_0|avmm_data_controller|LessThan2~0_combout\) # (\u0|onchip_flash_0|avmm_data_controller|data_count\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|LessThan2~0_combout\,
	datab => \u0|onchip_flash_0|avmm_data_controller|avmm_read_valid_state~q\,
	datac => \u0|onchip_flash_0|avmm_data_controller|reset_n_reg2~q\,
	datad => \u0|onchip_flash_0|avmm_data_controller|data_count\(2),
	combout => \u0|onchip_flash_0|avmm_data_controller|data_count[2]~5_combout\);

-- Location: LCCOMB_X14_Y12_N0
\u0|onchip_flash_0|avmm_data_controller|data_count~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|data_count~7_combout\ = (!\u0|onchip_flash_0|avmm_data_controller|data_count\(0) & \u0|onchip_flash_0|avmm_data_controller|data_count[2]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u0|onchip_flash_0|avmm_data_controller|data_count\(0),
	datad => \u0|onchip_flash_0|avmm_data_controller|data_count[2]~5_combout\,
	combout => \u0|onchip_flash_0|avmm_data_controller|data_count~7_combout\);

-- Location: FF_X14_Y12_N1
\u0|onchip_flash_0|avmm_data_controller|data_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_57~inputclkctrl_outclk\,
	d => \u0|onchip_flash_0|avmm_data_controller|data_count~7_combout\,
	ena => \u0|onchip_flash_0|avmm_data_controller|data_count[2]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|data_count\(0));

-- Location: LCCOMB_X14_Y12_N26
\u0|onchip_flash_0|avmm_data_controller|LessThan2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|LessThan2~0_combout\ = (\u0|onchip_flash_0|avmm_data_controller|data_count\(0)) # (\u0|onchip_flash_0|avmm_data_controller|data_count\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u0|onchip_flash_0|avmm_data_controller|data_count\(0),
	datac => \u0|onchip_flash_0|avmm_data_controller|data_count\(1),
	combout => \u0|onchip_flash_0|avmm_data_controller|LessThan2~0_combout\);

-- Location: LCCOMB_X16_Y9_N8
\u0|onchip_flash_0|avmm_data_controller|Selector2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|Selector2~0_combout\ = (\u0|onchip_flash_0|avmm_data_controller|flash_ardin_align_reg\(0) & \u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u0|onchip_flash_0|avmm_data_controller|flash_ardin_align_reg\(0),
	datad => \u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_IDLE~q\,
	combout => \u0|onchip_flash_0|avmm_data_controller|Selector2~0_combout\);

-- Location: LCCOMB_X7_Y6_N22
\flash_read~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \flash_read~0_combout\ = (\Equal13~6_combout\ & (\Equal8~0_combout\ & (\rw_latch~q\ & \dev_rom_act~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal13~6_combout\,
	datab => \Equal8~0_combout\,
	datac => \rw_latch~q\,
	datad => \dev_rom_act~q\,
	combout => \flash_read~0_combout\);

-- Location: FF_X7_Y6_N23
flash_read : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_57~inputclkctrl_outclk\,
	d => \flash_read~0_combout\,
	clrn => \n_reset~input_o\,
	ena => \phi2~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \flash_read~q\);

-- Location: LCCOMB_X17_Y13_N0
\u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin[0]~0_combout\ = (\flash_read~q\ & (!addr_latch(2))) # (!\flash_read~q\ & ((\u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => addr_latch(2),
	datac => \u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin\(0),
	datad => \flash_read~q\,
	combout => \u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin[0]~0_combout\);

-- Location: LCCOMB_X17_Y13_N8
\u0|onchip_flash_0|avmm_data_controller|Selector39~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|Selector39~0_combout\ = (!\u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_SETUP~q\ & \u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_SETUP~q\,
	datad => \u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin\(0),
	combout => \u0|onchip_flash_0|avmm_data_controller|Selector39~0_combout\);

-- Location: FF_X17_Y13_N1
\u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_57~inputclkctrl_outclk\,
	d => \u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin[0]~0_combout\,
	asdata => \u0|onchip_flash_0|avmm_data_controller|Selector39~0_combout\,
	sload => \u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_IDLE~q\,
	ena => \u0|onchip_flash_0|avmm_data_controller|reset_n_reg2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin\(0));

-- Location: FF_X16_Y9_N9
\u0|onchip_flash_0|avmm_data_controller|flash_ardin_align_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_57~inputclkctrl_outclk\,
	d => \u0|onchip_flash_0|avmm_data_controller|Selector2~0_combout\,
	asdata => \u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin\(0),
	sload => \u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_SETUP~q\,
	ena => \u0|onchip_flash_0|avmm_data_controller|reset_n_reg2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|flash_ardin_align_reg\(0));

-- Location: LCCOMB_X14_Y12_N14
\u0|onchip_flash_0|avmm_data_controller|flash_ardin_align_backup_reg~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|flash_ardin_align_backup_reg~3_combout\ = (\u0|onchip_flash_0|avmm_data_controller|data_count~4_combout\ & (!\u0|onchip_flash_0|avmm_data_controller|data_count\(0) & 
-- (!\u0|onchip_flash_0|avmm_data_controller|data_count\(1) & !\u0|onchip_flash_0|avmm_data_controller|data_count\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|data_count~4_combout\,
	datab => \u0|onchip_flash_0|avmm_data_controller|data_count\(0),
	datac => \u0|onchip_flash_0|avmm_data_controller|data_count\(1),
	datad => \u0|onchip_flash_0|avmm_data_controller|data_count\(2),
	combout => \u0|onchip_flash_0|avmm_data_controller|flash_ardin_align_backup_reg~3_combout\);

-- Location: LCCOMB_X14_Y12_N16
\u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_reg~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_reg~8_combout\ = (!\u0|onchip_flash_0|avmm_data_controller|avmm_read_valid_state~q\ & \u0|onchip_flash_0|avmm_data_controller|avmm_readdata_ready~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u0|onchip_flash_0|avmm_data_controller|avmm_read_valid_state~q\,
	datad => \u0|onchip_flash_0|avmm_data_controller|avmm_readdata_ready~q\,
	combout => \u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_reg~8_combout\);

-- Location: LCCOMB_X14_Y12_N20
\u0|onchip_flash_0|avmm_data_controller|flash_ardin_align_backup_reg~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|flash_ardin_align_backup_reg~2_combout\ = (\u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_reg~8_combout\ & (\u0|onchip_flash_0|avmm_data_controller|flash_ardin_align_reg\(0))) # 
-- (!\u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_reg~8_combout\ & (((!\u0|onchip_flash_0|avmm_data_controller|flash_ardin_align_backup_reg~3_combout\ & \u0|onchip_flash_0|avmm_data_controller|flash_ardin_align_backup_reg\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|flash_ardin_align_reg\(0),
	datab => \u0|onchip_flash_0|avmm_data_controller|flash_ardin_align_backup_reg~3_combout\,
	datac => \u0|onchip_flash_0|avmm_data_controller|flash_ardin_align_backup_reg\(0),
	datad => \u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_reg~8_combout\,
	combout => \u0|onchip_flash_0|avmm_data_controller|flash_ardin_align_backup_reg~2_combout\);

-- Location: FF_X14_Y12_N21
\u0|onchip_flash_0|avmm_data_controller|flash_ardin_align_backup_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_57~inputclkctrl_outclk\,
	d => \u0|onchip_flash_0|avmm_data_controller|flash_ardin_align_backup_reg~2_combout\,
	sclr => \u0|onchip_flash_0|avmm_data_controller|ALT_INV_reset_n_reg2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|flash_ardin_align_backup_reg\(0));

-- Location: LCCOMB_X14_Y12_N2
\u0|onchip_flash_0|avmm_data_controller|Add4~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|Add4~1_cout\ = CARRY((\u0|onchip_flash_0|avmm_data_controller|flash_ardin_align_backup_reg\(0)) # (\u0|onchip_flash_0|avmm_data_controller|data_count\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|flash_ardin_align_backup_reg\(0),
	datab => \u0|onchip_flash_0|avmm_data_controller|data_count\(0),
	datad => VCC,
	cout => \u0|onchip_flash_0|avmm_data_controller|Add4~1_cout\);

-- Location: LCCOMB_X14_Y12_N4
\u0|onchip_flash_0|avmm_data_controller|Add4~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|Add4~2_combout\ = (\u0|onchip_flash_0|avmm_data_controller|Add4~1_cout\ & (\u0|onchip_flash_0|avmm_data_controller|data_count\(1) $ ((!\u0|onchip_flash_0|avmm_data_controller|data_count\(0))))) # 
-- (!\u0|onchip_flash_0|avmm_data_controller|Add4~1_cout\ & ((\u0|onchip_flash_0|avmm_data_controller|data_count\(1) $ (\u0|onchip_flash_0|avmm_data_controller|data_count\(0))) # (GND)))
-- \u0|onchip_flash_0|avmm_data_controller|Add4~3\ = CARRY((\u0|onchip_flash_0|avmm_data_controller|data_count\(1) $ (!\u0|onchip_flash_0|avmm_data_controller|data_count\(0))) # (!\u0|onchip_flash_0|avmm_data_controller|Add4~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|data_count\(1),
	datab => \u0|onchip_flash_0|avmm_data_controller|data_count\(0),
	datad => VCC,
	cin => \u0|onchip_flash_0|avmm_data_controller|Add4~1_cout\,
	combout => \u0|onchip_flash_0|avmm_data_controller|Add4~2_combout\,
	cout => \u0|onchip_flash_0|avmm_data_controller|Add4~3\);

-- Location: LCCOMB_X14_Y12_N6
\u0|onchip_flash_0|avmm_data_controller|Add4~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|Add4~4_combout\ = (\u0|onchip_flash_0|avmm_data_controller|Add4~3\ & ((\u0|onchip_flash_0|avmm_data_controller|LessThan2~0_combout\ $ (!\u0|onchip_flash_0|avmm_data_controller|data_count\(2))))) # 
-- (!\u0|onchip_flash_0|avmm_data_controller|Add4~3\ & (\u0|onchip_flash_0|avmm_data_controller|LessThan2~0_combout\ $ (\u0|onchip_flash_0|avmm_data_controller|data_count\(2) $ (GND))))
-- \u0|onchip_flash_0|avmm_data_controller|Add4~5\ = CARRY((!\u0|onchip_flash_0|avmm_data_controller|Add4~3\ & (\u0|onchip_flash_0|avmm_data_controller|LessThan2~0_combout\ $ (!\u0|onchip_flash_0|avmm_data_controller|data_count\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000001001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|LessThan2~0_combout\,
	datab => \u0|onchip_flash_0|avmm_data_controller|data_count\(2),
	datad => VCC,
	cin => \u0|onchip_flash_0|avmm_data_controller|Add4~3\,
	combout => \u0|onchip_flash_0|avmm_data_controller|Add4~4_combout\,
	cout => \u0|onchip_flash_0|avmm_data_controller|Add4~5\);

-- Location: LCCOMB_X14_Y12_N8
\u0|onchip_flash_0|avmm_data_controller|Add4~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|Add4~6_combout\ = (\u0|onchip_flash_0|avmm_data_controller|Add4~5\ & (((!\u0|onchip_flash_0|avmm_data_controller|data_count\(2))) # (!\u0|onchip_flash_0|avmm_data_controller|LessThan2~0_combout\))) # 
-- (!\u0|onchip_flash_0|avmm_data_controller|Add4~5\ & (((\u0|onchip_flash_0|avmm_data_controller|LessThan2~0_combout\ & \u0|onchip_flash_0|avmm_data_controller|data_count\(2))) # (GND)))
-- \u0|onchip_flash_0|avmm_data_controller|Add4~7\ = CARRY(((!\u0|onchip_flash_0|avmm_data_controller|Add4~5\) # (!\u0|onchip_flash_0|avmm_data_controller|data_count\(2))) # (!\u0|onchip_flash_0|avmm_data_controller|LessThan2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|LessThan2~0_combout\,
	datab => \u0|onchip_flash_0|avmm_data_controller|data_count\(2),
	datad => VCC,
	cin => \u0|onchip_flash_0|avmm_data_controller|Add4~5\,
	combout => \u0|onchip_flash_0|avmm_data_controller|Add4~6_combout\,
	cout => \u0|onchip_flash_0|avmm_data_controller|Add4~7\);

-- Location: LCCOMB_X14_Y12_N10
\u0|onchip_flash_0|avmm_data_controller|Add4~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|Add4~8_combout\ = \u0|onchip_flash_0|avmm_data_controller|Add4~7\ $ (((!\u0|onchip_flash_0|avmm_data_controller|data_count\(2)) # (!\u0|onchip_flash_0|avmm_data_controller|LessThan2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|LessThan2~0_combout\,
	datad => \u0|onchip_flash_0|avmm_data_controller|data_count\(2),
	cin => \u0|onchip_flash_0|avmm_data_controller|Add4~7\,
	combout => \u0|onchip_flash_0|avmm_data_controller|Add4~8_combout\);

-- Location: LCCOMB_X14_Y12_N28
\u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_reg~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_reg~6_combout\ = (\u0|onchip_flash_0|avmm_data_controller|Add4~8_combout\) # ((\u0|onchip_flash_0|avmm_data_controller|Add4~6_combout\) # ((\u0|onchip_flash_0|avmm_data_controller|Add4~2_combout\) # 
-- (\u0|onchip_flash_0|avmm_data_controller|Add4~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|Add4~8_combout\,
	datab => \u0|onchip_flash_0|avmm_data_controller|Add4~6_combout\,
	datac => \u0|onchip_flash_0|avmm_data_controller|Add4~2_combout\,
	datad => \u0|onchip_flash_0|avmm_data_controller|Add4~4_combout\,
	combout => \u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_reg~6_combout\);

-- Location: LCCOMB_X14_Y12_N22
\u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_reg~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_reg~7_combout\ = (\u0|onchip_flash_0|avmm_data_controller|data_count~4_combout\ & (((!\u0|onchip_flash_0|avmm_data_controller|LessThan2~0_combout\ & 
-- !\u0|onchip_flash_0|avmm_data_controller|data_count\(2))) # (!\u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_reg~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|data_count~4_combout\,
	datab => \u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_reg~6_combout\,
	datac => \u0|onchip_flash_0|avmm_data_controller|LessThan2~0_combout\,
	datad => \u0|onchip_flash_0|avmm_data_controller|data_count\(2),
	combout => \u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_reg~7_combout\);

-- Location: LCCOMB_X11_Y11_N14
\u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_reg[3]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_reg[3]~13_combout\ = ((\u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_reg~7_combout\) # ((!\u0|onchip_flash_0|avmm_data_controller|avmm_read_valid_state~q\ & 
-- \u0|onchip_flash_0|avmm_data_controller|avmm_readdata_ready~q\))) # (!\u0|onchip_flash_0|avmm_data_controller|reset_n_reg2~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|avmm_read_valid_state~q\,
	datab => \u0|onchip_flash_0|avmm_data_controller|reset_n_reg2~q\,
	datac => \u0|onchip_flash_0|avmm_data_controller|avmm_readdata_ready~q\,
	datad => \u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_reg~7_combout\,
	combout => \u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_reg[3]~13_combout\);

-- Location: LCCOMB_X6_Y9_N26
\u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_input_reg[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_input_reg[0]~0_combout\ = (\u0|onchip_flash_0|avmm_data_controller|reset_n_reg2~q\ & ((\u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_IDLE~q\ & 
-- (\u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_input_reg\(0))) # (!\u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_IDLE~q\ & ((\flash_read~q\))))) # (!\u0|onchip_flash_0|avmm_data_controller|reset_n_reg2~q\ & 
-- (((\u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_input_reg\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|reset_n_reg2~q\,
	datab => \u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_IDLE~q\,
	datac => \u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_input_reg\(0),
	datad => \flash_read~q\,
	combout => \u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_input_reg[0]~0_combout\);

-- Location: FF_X6_Y9_N27
\u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_input_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_57~inputclkctrl_outclk\,
	d => \u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_input_reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_input_reg\(0));

-- Location: LCCOMB_X16_Y9_N22
\u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_reg[0]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_reg[0]~9_combout\ = (\u0|onchip_flash_0|avmm_data_controller|reset_n_reg2~q\ & ((\u0|onchip_flash_0|avmm_data_controller|avmm_read_valid_state~q\ & 
-- ((!\u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_reg\(0)))) # (!\u0|onchip_flash_0|avmm_data_controller|avmm_read_valid_state~q\ & (!\u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_input_reg\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|reset_n_reg2~q\,
	datab => \u0|onchip_flash_0|avmm_data_controller|avmm_read_valid_state~q\,
	datac => \u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_input_reg\(0),
	datad => \u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_reg\(0),
	combout => \u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_reg[0]~9_combout\);

-- Location: LCCOMB_X16_Y9_N20
\u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_reg[0]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_reg[0]~14_combout\ = (\u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_reg[0]~9_combout\ & ((\u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_reg~7_combout\) # 
-- ((!\u0|onchip_flash_0|avmm_data_controller|avmm_read_valid_state~q\ & \u0|onchip_flash_0|avmm_data_controller|avmm_readdata_ready~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_reg[0]~9_combout\,
	datab => \u0|onchip_flash_0|avmm_data_controller|avmm_read_valid_state~q\,
	datac => \u0|onchip_flash_0|avmm_data_controller|avmm_readdata_ready~q\,
	datad => \u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_reg~7_combout\,
	combout => \u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_reg[0]~14_combout\);

-- Location: LCCOMB_X11_Y11_N26
\u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_reg[0]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_reg[0]~10_combout\ = (\u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_reg[0]~14_combout\) # ((!\u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_reg[3]~13_combout\ & 
-- \u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_reg\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_reg[3]~13_combout\,
	datac => \u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_reg\(0),
	datad => \u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_reg[0]~14_combout\,
	combout => \u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_reg[0]~10_combout\);

-- Location: FF_X11_Y11_N27
\u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_57~inputclkctrl_outclk\,
	d => \u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_reg[0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_reg\(0));

-- Location: LCCOMB_X11_Y11_N18
\u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_reg~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_reg~11_combout\ = (\u0|onchip_flash_0|avmm_data_controller|avmm_read_valid_state~q\ & (\u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_reg\(0) $ 
-- (((!\u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_reg\(1)))))) # (!\u0|onchip_flash_0|avmm_data_controller|avmm_read_valid_state~q\ & (((!\u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_input_reg\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_reg\(0),
	datab => \u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_input_reg\(0),
	datac => \u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_reg\(1),
	datad => \u0|onchip_flash_0|avmm_data_controller|avmm_read_valid_state~q\,
	combout => \u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_reg~11_combout\);

-- Location: FF_X11_Y11_N19
\u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_57~inputclkctrl_outclk\,
	d => \u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_reg~11_combout\,
	sclr => \u0|onchip_flash_0|avmm_data_controller|ALT_INV_reset_n_reg2~q\,
	ena => \u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_reg[3]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_reg\(1));

-- Location: LCCOMB_X16_Y9_N16
\u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_reg~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_reg~4_combout\ = (\u0|onchip_flash_0|avmm_data_controller|avmm_read_valid_state~q\ & (\u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_reg\(2) $ 
-- (((\u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_reg\(0)) # (\u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_reg\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_reg\(2),
	datab => \u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_reg\(0),
	datac => \u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_reg\(1),
	datad => \u0|onchip_flash_0|avmm_data_controller|avmm_read_valid_state~q\,
	combout => \u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_reg~4_combout\);

-- Location: LCCOMB_X11_Y11_N16
\u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_reg~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_reg~5_combout\ = (!\u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_reg~4_combout\ & ((\u0|onchip_flash_0|avmm_data_controller|avmm_read_valid_state~q\) # 
-- (!\u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_input_reg\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|avmm_read_valid_state~q\,
	datac => \u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_input_reg\(0),
	datad => \u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_reg~4_combout\,
	combout => \u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_reg~5_combout\);

-- Location: FF_X11_Y11_N17
\u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_57~inputclkctrl_outclk\,
	d => \u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_reg~5_combout\,
	sclr => \u0|onchip_flash_0|avmm_data_controller|ALT_INV_reset_n_reg2~q\,
	ena => \u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_reg[3]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_reg\(2));

-- Location: LCCOMB_X16_Y9_N6
\u0|onchip_flash_0|avmm_data_controller|Equal1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|Equal1~0_combout\ = (!\u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_reg\(0) & (!\u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_reg\(1) & 
-- !\u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_reg\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_reg\(0),
	datac => \u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_reg\(1),
	datad => \u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_reg\(2),
	combout => \u0|onchip_flash_0|avmm_data_controller|Equal1~0_combout\);

-- Location: LCCOMB_X11_Y11_N22
\u0|onchip_flash_0|avmm_data_controller|data_count~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|data_count~9_combout\ = (\u0|onchip_flash_0|avmm_data_controller|avmm_read_valid_state~q\ & ((\u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_reg\(3)) # 
-- ((!\u0|onchip_flash_0|avmm_data_controller|Equal1~0_combout\)))) # (!\u0|onchip_flash_0|avmm_data_controller|avmm_read_valid_state~q\ & (((\u0|onchip_flash_0|avmm_data_controller|avmm_readdata_ready~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_reg\(3),
	datab => \u0|onchip_flash_0|avmm_data_controller|avmm_readdata_ready~q\,
	datac => \u0|onchip_flash_0|avmm_data_controller|avmm_read_valid_state~q\,
	datad => \u0|onchip_flash_0|avmm_data_controller|Equal1~0_combout\,
	combout => \u0|onchip_flash_0|avmm_data_controller|data_count~9_combout\);

-- Location: FF_X11_Y11_N23
\u0|onchip_flash_0|avmm_data_controller|avmm_read_valid_state\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_57~inputclkctrl_outclk\,
	d => \u0|onchip_flash_0|avmm_data_controller|data_count~9_combout\,
	sclr => \u0|onchip_flash_0|avmm_data_controller|ALT_INV_reset_n_reg2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|avmm_read_valid_state~q\);

-- Location: LCCOMB_X11_Y11_N12
\u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_reg~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_reg~12_combout\ = (\u0|onchip_flash_0|avmm_data_controller|avmm_read_valid_state~q\ & ((\u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_reg\(3) $ 
-- (\u0|onchip_flash_0|avmm_data_controller|Equal1~0_combout\)))) # (!\u0|onchip_flash_0|avmm_data_controller|avmm_read_valid_state~q\ & (!\u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_input_reg\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101110110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|avmm_read_valid_state~q\,
	datab => \u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_input_reg\(0),
	datac => \u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_reg\(3),
	datad => \u0|onchip_flash_0|avmm_data_controller|Equal1~0_combout\,
	combout => \u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_reg~12_combout\);

-- Location: FF_X11_Y11_N13
\u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_57~inputclkctrl_outclk\,
	d => \u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_reg~12_combout\,
	sclr => \u0|onchip_flash_0|avmm_data_controller|ALT_INV_reset_n_reg2~q\,
	ena => \u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_reg[3]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_reg\(3));

-- Location: LCCOMB_X16_Y9_N24
\u0|onchip_flash_0|avmm_data_controller|Selector7~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|Selector7~0_combout\ = (\u0|onchip_flash_0|avmm_data_controller|avmm_read_state~q\ & (!\u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_reg\(3) & \u0|onchip_flash_0|avmm_data_controller|Equal1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u0|onchip_flash_0|avmm_data_controller|avmm_read_state~q\,
	datac => \u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_reg\(3),
	datad => \u0|onchip_flash_0|avmm_data_controller|Equal1~0_combout\,
	combout => \u0|onchip_flash_0|avmm_data_controller|Selector7~0_combout\);

-- Location: LCCOMB_X6_Y9_N28
\u0|onchip_flash_0|avmm_data_controller|Selector12~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|Selector12~0_combout\ = (\u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_ADDR~q\) # ((!\u0|onchip_flash_0|avmm_data_controller|Selector7~0_combout\ & 
-- \u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_FINAL~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_ADDR~q\,
	datab => \u0|onchip_flash_0|avmm_data_controller|Selector7~0_combout\,
	datad => \u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_FINAL~q\,
	combout => \u0|onchip_flash_0|avmm_data_controller|Selector12~0_combout\);

-- Location: FF_X6_Y9_N29
\u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_SETUP\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_57~inputclkctrl_outclk\,
	d => \u0|onchip_flash_0|avmm_data_controller|Selector12~0_combout\,
	sclr => \u0|onchip_flash_0|avmm_data_controller|ALT_INV_reset_n_reg2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_SETUP~q\);

-- Location: LCCOMB_X17_Y13_N12
\u0|onchip_flash_0|avmm_data_controller|Selector5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|Selector5~0_combout\ = (\u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_IDLE~q\ & (!\u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_DUMMY~q\ & 
-- (!\u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_SETUP~q\ & \u0|onchip_flash_0|avmm_data_controller|read_ctrl_count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_IDLE~q\,
	datab => \u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_DUMMY~q\,
	datac => \u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_SETUP~q\,
	datad => \u0|onchip_flash_0|avmm_data_controller|read_ctrl_count\(0),
	combout => \u0|onchip_flash_0|avmm_data_controller|Selector5~0_combout\);

-- Location: LCCOMB_X17_Y13_N24
\u0|onchip_flash_0|avmm_data_controller|Selector5~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|Selector5~1_combout\ = (\u0|onchip_flash_0|avmm_data_controller|Selector5~0_combout\) # ((\u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_DUMMY~q\ & 
-- (\u0|onchip_flash_0|avmm_data_controller|read_ctrl_count\(0) $ (\u0|onchip_flash_0|avmm_data_controller|read_ctrl_count\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|Selector5~0_combout\,
	datab => \u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_DUMMY~q\,
	datac => \u0|onchip_flash_0|avmm_data_controller|read_ctrl_count\(0),
	datad => \u0|onchip_flash_0|avmm_data_controller|read_ctrl_count\(1),
	combout => \u0|onchip_flash_0|avmm_data_controller|Selector5~1_combout\);

-- Location: FF_X17_Y13_N25
\u0|onchip_flash_0|avmm_data_controller|read_ctrl_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_57~inputclkctrl_outclk\,
	d => \u0|onchip_flash_0|avmm_data_controller|Selector5~1_combout\,
	ena => \u0|onchip_flash_0|avmm_data_controller|reset_n_reg2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|read_ctrl_count\(0));

-- Location: LCCOMB_X17_Y13_N10
\u0|onchip_flash_0|avmm_data_controller|Selector4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|Selector4~0_combout\ = (\u0|onchip_flash_0|avmm_data_controller|read_ctrl_count\(1) & ((\u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_DUMMY~q\ & 
-- ((\u0|onchip_flash_0|avmm_data_controller|read_ctrl_count\(0)))) # (!\u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_DUMMY~q\ & (\u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_IDLE~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_IDLE~q\,
	datab => \u0|onchip_flash_0|avmm_data_controller|read_ctrl_count\(0),
	datac => \u0|onchip_flash_0|avmm_data_controller|read_ctrl_count\(1),
	datad => \u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_DUMMY~q\,
	combout => \u0|onchip_flash_0|avmm_data_controller|Selector4~0_combout\);

-- Location: LCCOMB_X17_Y13_N22
\u0|onchip_flash_0|avmm_data_controller|Selector4~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|Selector4~1_combout\ = (\u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_SETUP~q\) # (\u0|onchip_flash_0|avmm_data_controller|Selector4~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_SETUP~q\,
	datad => \u0|onchip_flash_0|avmm_data_controller|Selector4~0_combout\,
	combout => \u0|onchip_flash_0|avmm_data_controller|Selector4~1_combout\);

-- Location: FF_X17_Y13_N23
\u0|onchip_flash_0|avmm_data_controller|read_ctrl_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_57~inputclkctrl_outclk\,
	d => \u0|onchip_flash_0|avmm_data_controller|Selector4~1_combout\,
	ena => \u0|onchip_flash_0|avmm_data_controller|reset_n_reg2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|read_ctrl_count\(1));

-- Location: LCCOMB_X6_Y9_N30
\u0|onchip_flash_0|avmm_data_controller|Selector13~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|Selector13~0_combout\ = (\u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_SETUP~q\) # ((\u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_DUMMY~q\ & 
-- \u0|onchip_flash_0|avmm_data_controller|read_ctrl_count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_SETUP~q\,
	datac => \u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_DUMMY~q\,
	datad => \u0|onchip_flash_0|avmm_data_controller|read_ctrl_count\(1),
	combout => \u0|onchip_flash_0|avmm_data_controller|Selector13~0_combout\);

-- Location: FF_X6_Y9_N31
\u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_DUMMY\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_57~inputclkctrl_outclk\,
	d => \u0|onchip_flash_0|avmm_data_controller|Selector13~0_combout\,
	sclr => \u0|onchip_flash_0|avmm_data_controller|ALT_INV_reset_n_reg2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_DUMMY~q\);

-- Location: LCCOMB_X6_Y9_N8
\u0|onchip_flash_0|avmm_data_controller|read_state~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|read_state~20_combout\ = (\u0|onchip_flash_0|avmm_data_controller|reset_n_reg2~q\ & (\u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_DUMMY~q\ & 
-- !\u0|onchip_flash_0|avmm_data_controller|read_ctrl_count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|reset_n_reg2~q\,
	datac => \u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_DUMMY~q\,
	datad => \u0|onchip_flash_0|avmm_data_controller|read_ctrl_count\(1),
	combout => \u0|onchip_flash_0|avmm_data_controller|read_state~20_combout\);

-- Location: FF_X6_Y9_N9
\u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_READY\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_57~inputclkctrl_outclk\,
	d => \u0|onchip_flash_0|avmm_data_controller|read_state~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_READY~q\);

-- Location: LCCOMB_X6_Y9_N10
\u0|onchip_flash_0|avmm_data_controller|read_state~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|read_state~18_combout\ = (\u0|onchip_flash_0|avmm_data_controller|reset_n_reg2~q\ & \u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_READY~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|reset_n_reg2~q\,
	datac => \u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_READY~q\,
	combout => \u0|onchip_flash_0|avmm_data_controller|read_state~18_combout\);

-- Location: FF_X6_Y9_N11
\u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_FINAL\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_57~inputclkctrl_outclk\,
	d => \u0|onchip_flash_0|avmm_data_controller|read_state~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_FINAL~q\);

-- Location: LCCOMB_X6_Y9_N22
\u0|onchip_flash_0|avmm_data_controller|read_state~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|read_state~19_combout\ = (\u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_FINAL~q\ & (\u0|onchip_flash_0|avmm_data_controller|Selector7~0_combout\ & 
-- \u0|onchip_flash_0|avmm_data_controller|reset_n_reg2~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_FINAL~q\,
	datab => \u0|onchip_flash_0|avmm_data_controller|Selector7~0_combout\,
	datad => \u0|onchip_flash_0|avmm_data_controller|reset_n_reg2~q\,
	combout => \u0|onchip_flash_0|avmm_data_controller|read_state~19_combout\);

-- Location: FF_X6_Y9_N23
\u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_CLEAR\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_57~inputclkctrl_outclk\,
	d => \u0|onchip_flash_0|avmm_data_controller|read_state~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_CLEAR~q\);

-- Location: LCCOMB_X6_Y9_N24
\u0|onchip_flash_0|avmm_data_controller|read_state~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|read_state~17_combout\ = (!\u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_CLEAR~q\ & (\u0|onchip_flash_0|avmm_data_controller|reset_n_reg2~q\ & ((\flash_read~q\) # 
-- (\u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_IDLE~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_CLEAR~q\,
	datab => \flash_read~q\,
	datac => \u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_IDLE~q\,
	datad => \u0|onchip_flash_0|avmm_data_controller|reset_n_reg2~q\,
	combout => \u0|onchip_flash_0|avmm_data_controller|read_state~17_combout\);

-- Location: FF_X6_Y9_N25
\u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_IDLE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_57~inputclkctrl_outclk\,
	d => \u0|onchip_flash_0|avmm_data_controller|read_state~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_IDLE~q\);

-- Location: LCCOMB_X6_Y9_N12
\u0|onchip_flash_0|avmm_data_controller|read_state~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|read_state~21_combout\ = (\u0|onchip_flash_0|avmm_data_controller|reset_n_reg2~q\ & (!\u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_IDLE~q\ & \flash_read~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|reset_n_reg2~q\,
	datab => \u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_IDLE~q\,
	datad => \flash_read~q\,
	combout => \u0|onchip_flash_0|avmm_data_controller|read_state~21_combout\);

-- Location: FF_X6_Y9_N13
\u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_ADDR\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_57~inputclkctrl_outclk\,
	d => \u0|onchip_flash_0|avmm_data_controller|read_state~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_ADDR~q\);

-- Location: LCCOMB_X6_Y9_N6
\u0|onchip_flash_0|avmm_data_controller|csr_status_r_pass~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|csr_status_r_pass~2_combout\ = (\u0|onchip_flash_0|avmm_data_controller|reset_n_reg2~q\ & ((\u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_ADDR~q\ & 
-- (\u0|onchip_flash_0|avmm_data_controller|csr_status_r_pass~1_combout\)) # (!\u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_ADDR~q\ & ((\u0|onchip_flash_0|avmm_data_controller|csr_status_r_pass~q\))))) # 
-- (!\u0|onchip_flash_0|avmm_data_controller|reset_n_reg2~q\ & (((\u0|onchip_flash_0|avmm_data_controller|csr_status_r_pass~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|reset_n_reg2~q\,
	datab => \u0|onchip_flash_0|avmm_data_controller|csr_status_r_pass~1_combout\,
	datac => \u0|onchip_flash_0|avmm_data_controller|csr_status_r_pass~q\,
	datad => \u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_ADDR~q\,
	combout => \u0|onchip_flash_0|avmm_data_controller|csr_status_r_pass~2_combout\);

-- Location: FF_X6_Y9_N7
\u0|onchip_flash_0|avmm_data_controller|csr_status_r_pass\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_57~inputclkctrl_outclk\,
	d => \u0|onchip_flash_0|avmm_data_controller|csr_status_r_pass~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|csr_status_r_pass~q\);

-- Location: LCCOMB_X6_Y9_N2
\u0|onchip_flash_0|avmm_data_controller|flash_arclk_arshft_en_w~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|flash_arclk_arshft_en_w~1_combout\ = (\u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_IDLE~q\ & (\u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_READY~q\)) # 
-- (!\u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_IDLE~q\ & ((\flash_read~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_IDLE~q\,
	datac => \u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_READY~q\,
	datad => \flash_read~q\,
	combout => \u0|onchip_flash_0|avmm_data_controller|flash_arclk_arshft_en_w~1_combout\);

-- Location: FF_X6_Y9_N3
\u0|onchip_flash_0|avmm_data_controller|enable_arclk_sync_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_57~inputclkctrl_outclk\,
	d => \u0|onchip_flash_0|avmm_data_controller|flash_arclk_arshft_en_w~1_combout\,
	sclr => \u0|onchip_flash_0|avmm_data_controller|ALT_INV_reset_n_reg2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|enable_arclk_sync_reg~q\);

-- Location: LCCOMB_X14_Y10_N26
\u0|onchip_flash_0|avmm_data_controller|enable_arclk_neg_reg~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|enable_arclk_neg_reg~0_combout\ = (\u0|onchip_flash_0|avmm_data_controller|enable_arclk_sync_reg~q\ & \u0|onchip_flash_0|avmm_data_controller|reset_n_reg2~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|enable_arclk_sync_reg~q\,
	datac => \u0|onchip_flash_0|avmm_data_controller|reset_n_reg2~q\,
	combout => \u0|onchip_flash_0|avmm_data_controller|enable_arclk_neg_reg~0_combout\);

-- Location: FF_X14_Y10_N27
\u0|onchip_flash_0|avmm_data_controller|enable_arclk_neg_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk_57~input_o\,
	d => \u0|onchip_flash_0|avmm_data_controller|enable_arclk_neg_reg~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|enable_arclk_neg_reg~q\);

-- Location: LCCOMB_X14_Y10_N18
\u0|onchip_flash_0|avmm_data_controller|enable_arclk_neg_pos_reg~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|enable_arclk_neg_pos_reg~0_combout\ = (\u0|onchip_flash_0|avmm_data_controller|enable_arclk_neg_reg~q\ & \u0|onchip_flash_0|avmm_data_controller|reset_n_reg2~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|enable_arclk_neg_reg~q\,
	datac => \u0|onchip_flash_0|avmm_data_controller|reset_n_reg2~q\,
	combout => \u0|onchip_flash_0|avmm_data_controller|enable_arclk_neg_pos_reg~0_combout\);

-- Location: FF_X14_Y10_N19
\u0|onchip_flash_0|avmm_data_controller|enable_arclk_neg_pos_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_57~input_o\,
	d => \u0|onchip_flash_0|avmm_data_controller|enable_arclk_neg_pos_reg~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|enable_arclk_neg_pos_reg~q\);

-- Location: LCCOMB_X14_Y10_N16
\u0|onchip_flash_0|avmm_data_controller|flash_arclk~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|flash_arclk~0_combout\ = (\clk_57~input_o\) # ((\u0|onchip_flash_0|avmm_data_controller|enable_arclk_neg_pos_reg~q\) # (!\u0|onchip_flash_0|avmm_data_controller|enable_arclk_neg_reg~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clk_57~input_o\,
	datac => \u0|onchip_flash_0|avmm_data_controller|enable_arclk_neg_reg~q\,
	datad => \u0|onchip_flash_0|avmm_data_controller|enable_arclk_neg_pos_reg~q\,
	combout => \u0|onchip_flash_0|avmm_data_controller|flash_arclk~0_combout\);

-- Location: LCCOMB_X16_Y9_N0
\u0|onchip_flash_0|avmm_data_controller|Selector7~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|Selector7~1_combout\ = (\u0|onchip_flash_0|avmm_data_controller|read_drclk_en~q\ & ((\u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_FINAL~q\ & 
-- (!\u0|onchip_flash_0|avmm_data_controller|Selector7~0_combout\)) # (!\u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_FINAL~q\ & ((\u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_IDLE~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_FINAL~q\,
	datab => \u0|onchip_flash_0|avmm_data_controller|read_drclk_en~q\,
	datac => \u0|onchip_flash_0|avmm_data_controller|Selector7~0_combout\,
	datad => \u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_IDLE~q\,
	combout => \u0|onchip_flash_0|avmm_data_controller|Selector7~1_combout\);

-- Location: LCCOMB_X16_Y9_N2
\u0|onchip_flash_0|avmm_data_controller|Selector7~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|Selector7~2_combout\ = (\u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_READY~q\) # (\u0|onchip_flash_0|avmm_data_controller|Selector7~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_READY~q\,
	datad => \u0|onchip_flash_0|avmm_data_controller|Selector7~1_combout\,
	combout => \u0|onchip_flash_0|avmm_data_controller|Selector7~2_combout\);

-- Location: FF_X16_Y9_N3
\u0|onchip_flash_0|avmm_data_controller|read_drclk_en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_57~inputclkctrl_outclk\,
	d => \u0|onchip_flash_0|avmm_data_controller|Selector7~2_combout\,
	ena => \u0|onchip_flash_0|avmm_data_controller|reset_n_reg2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|read_drclk_en~q\);

-- Location: LCCOMB_X14_Y10_N30
\u0|onchip_flash_0|avmm_data_controller|enable_drclk_neg_reg~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|enable_drclk_neg_reg~0_combout\ = (\u0|onchip_flash_0|avmm_data_controller|reset_n_reg2~q\ & \u0|onchip_flash_0|avmm_data_controller|read_drclk_en~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u0|onchip_flash_0|avmm_data_controller|reset_n_reg2~q\,
	datad => \u0|onchip_flash_0|avmm_data_controller|read_drclk_en~q\,
	combout => \u0|onchip_flash_0|avmm_data_controller|enable_drclk_neg_reg~0_combout\);

-- Location: LCCOMB_X3_Y6_N30
\u0|onchip_flash_0|avmm_data_controller|enable_drclk_neg_reg~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|enable_drclk_neg_reg~feeder_combout\ = \u0|onchip_flash_0|avmm_data_controller|enable_drclk_neg_reg~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u0|onchip_flash_0|avmm_data_controller|enable_drclk_neg_reg~0_combout\,
	combout => \u0|onchip_flash_0|avmm_data_controller|enable_drclk_neg_reg~feeder_combout\);

-- Location: FF_X3_Y6_N31
\u0|onchip_flash_0|avmm_data_controller|enable_drclk_neg_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk_57~input_o\,
	d => \u0|onchip_flash_0|avmm_data_controller|enable_drclk_neg_reg~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|enable_drclk_neg_reg~q\);

-- Location: LCCOMB_X6_Y9_N20
\u0|onchip_flash_0|avmm_data_controller|Selector6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|Selector6~0_combout\ = (\u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_FINAL~q\ & (((\u0|onchip_flash_0|avmm_data_controller|enable_drclk_neg_pos_reg~q\) # 
-- (\u0|onchip_flash_0|avmm_data_controller|Selector7~0_combout\)))) # (!\u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_FINAL~q\ & (\u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_IDLE~q\ & 
-- (\u0|onchip_flash_0|avmm_data_controller|enable_drclk_neg_pos_reg~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_FINAL~q\,
	datab => \u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_IDLE~q\,
	datac => \u0|onchip_flash_0|avmm_data_controller|enable_drclk_neg_pos_reg~q\,
	datad => \u0|onchip_flash_0|avmm_data_controller|Selector7~0_combout\,
	combout => \u0|onchip_flash_0|avmm_data_controller|Selector6~0_combout\);

-- Location: LCCOMB_X4_Y6_N6
\u0|onchip_flash_0|avmm_data_controller|enable_drclk_neg_pos_reg~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|enable_drclk_neg_pos_reg~feeder_combout\ = \u0|onchip_flash_0|avmm_data_controller|Selector6~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u0|onchip_flash_0|avmm_data_controller|Selector6~0_combout\,
	combout => \u0|onchip_flash_0|avmm_data_controller|enable_drclk_neg_pos_reg~feeder_combout\);

-- Location: FF_X4_Y6_N7
\u0|onchip_flash_0|avmm_data_controller|enable_drclk_neg_pos_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_57~input_o\,
	d => \u0|onchip_flash_0|avmm_data_controller|enable_drclk_neg_pos_reg~feeder_combout\,
	ena => \u0|onchip_flash_0|avmm_data_controller|reset_n_reg2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|enable_drclk_neg_pos_reg~q\);

-- Location: LCCOMB_X3_Y6_N8
\u0|onchip_flash_0|avmm_data_controller|flash_drclk~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|flash_drclk~0_combout\ = (\clk_57~input_o\) # ((\u0|onchip_flash_0|avmm_data_controller|enable_drclk_neg_pos_reg~q\) # (!\u0|onchip_flash_0|avmm_data_controller|enable_drclk_neg_reg~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_57~input_o\,
	datac => \u0|onchip_flash_0|avmm_data_controller|enable_drclk_neg_reg~q\,
	datad => \u0|onchip_flash_0|avmm_data_controller|enable_drclk_neg_pos_reg~q\,
	combout => \u0|onchip_flash_0|avmm_data_controller|flash_drclk~0_combout\);

-- Location: LCCOMB_X16_Y9_N12
\u0|onchip_flash_0|avmm_data_controller|Selector8~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|Selector8~0_combout\ = (\u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_IDLE~q\ & (!\u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_FINAL~q\ & 
-- ((\u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_READY~q\) # (\u0|onchip_flash_0|avmm_data_controller|flash_drshft_reg~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_READY~q\,
	datab => \u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_IDLE~q\,
	datac => \u0|onchip_flash_0|avmm_data_controller|flash_drshft_reg~q\,
	datad => \u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_FINAL~q\,
	combout => \u0|onchip_flash_0|avmm_data_controller|Selector8~0_combout\);

-- Location: FF_X16_Y9_N13
\u0|onchip_flash_0|avmm_data_controller|flash_drshft_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_57~inputclkctrl_outclk\,
	d => \u0|onchip_flash_0|avmm_data_controller|Selector8~0_combout\,
	ena => \u0|onchip_flash_0|avmm_data_controller|reset_n_reg2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|flash_drshft_reg~q\);

-- Location: LCCOMB_X16_Y9_N18
\u0|onchip_flash_0|avmm_data_controller|flash_drshft_neg_reg~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|flash_drshft_neg_reg~0_combout\ = (\u0|onchip_flash_0|avmm_data_controller|reset_n_reg2~q\ & \u0|onchip_flash_0|avmm_data_controller|flash_drshft_reg~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|reset_n_reg2~q\,
	datad => \u0|onchip_flash_0|avmm_data_controller|flash_drshft_reg~q\,
	combout => \u0|onchip_flash_0|avmm_data_controller|flash_drshft_neg_reg~0_combout\);

-- Location: FF_X16_Y9_N19
\u0|onchip_flash_0|avmm_data_controller|flash_drshft_neg_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk_57~inputclkctrl_outclk\,
	d => \u0|onchip_flash_0|avmm_data_controller|flash_drshft_neg_reg~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|flash_drshft_neg_reg~q\);

-- Location: LCCOMB_X16_Y9_N30
\u0|onchip_flash_0|avmm_data_controller|flash_drshft_neg_reg~_wirecell\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|flash_drshft_neg_reg~_wirecell_combout\ = !\u0|onchip_flash_0|avmm_data_controller|flash_drshft_neg_reg~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u0|onchip_flash_0|avmm_data_controller|flash_drshft_neg_reg~q\,
	combout => \u0|onchip_flash_0|avmm_data_controller|flash_drshft_neg_reg~_wirecell_combout\);

-- Location: LCCOMB_X11_Y19_N16
\~GND\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \~GND~combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~GND~combout\);

-- Location: LCCOMB_X17_Y13_N18
\u0|onchip_flash_0|avmm_data_controller|flash_xe_ye\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|flash_xe_ye~combout\ = (\flash_read~q\) # (\u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \flash_read~q\,
	datad => \u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_IDLE~q\,
	combout => \u0|onchip_flash_0|avmm_data_controller|flash_xe_ye~combout\);

-- Location: LCCOMB_X11_Y10_N8
\u0|onchip_flash_0|avmm_data_controller|flash_se_neg_reg~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|flash_se_neg_reg~0_combout\ = (\u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_SETUP~q\ & \u0|onchip_flash_0|avmm_data_controller|reset_n_reg2~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_SETUP~q\,
	datac => \u0|onchip_flash_0|avmm_data_controller|reset_n_reg2~q\,
	combout => \u0|onchip_flash_0|avmm_data_controller|flash_se_neg_reg~0_combout\);

-- Location: FF_X11_Y10_N9
\u0|onchip_flash_0|avmm_data_controller|flash_se_neg_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk_57~input_o\,
	d => \u0|onchip_flash_0|avmm_data_controller|flash_se_neg_reg~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|flash_se_neg_reg~q\);

-- Location: LCCOMB_X15_Y12_N16
\u0|onchip_flash_0|avmm_data_controller|flash_page_addr~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|flash_page_addr~0_combout\ = (\u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_IDLE~q\ & ((\u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin\(0)))) # 
-- (!\u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_IDLE~q\ & (!addr_latch(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => addr_latch(2),
	datac => \u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_IDLE~q\,
	datad => \u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin\(0),
	combout => \u0|onchip_flash_0|avmm_data_controller|flash_page_addr~0_combout\);

-- Location: FF_X15_Y12_N17
\u0|onchip_flash_0|avmm_data_controller|flash_page_addr[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_57~inputclkctrl_outclk\,
	d => \u0|onchip_flash_0|avmm_data_controller|flash_page_addr~0_combout\,
	sclr => \u0|onchip_flash_0|avmm_data_controller|ALT_INV_reset_n_reg2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|flash_page_addr\(0));

-- Location: LCCOMB_X17_Y13_N20
\u0|onchip_flash_0|avmm_data_controller|Selector24~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|Selector24~0_combout\ = (\u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_SETUP~q\ & (\u0|onchip_flash_0|avmm_data_controller|Add0~28_combout\)) # 
-- (!\u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_SETUP~q\ & ((reg_fbs(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|Add0~28_combout\,
	datab => \u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_SETUP~q\,
	datad => reg_fbs(6),
	combout => \u0|onchip_flash_0|avmm_data_controller|Selector24~0_combout\);

-- Location: LCCOMB_X16_Y11_N30
\u0|onchip_flash_0|avmm_data_controller|Selector25~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|Selector25~0_combout\ = (\u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_SETUP~q\ & (\u0|onchip_flash_0|avmm_data_controller|Add0~26_combout\)) # 
-- (!\u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_SETUP~q\ & ((reg_fbs(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|Add0~26_combout\,
	datac => \u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_SETUP~q\,
	datad => reg_fbs(5),
	combout => \u0|onchip_flash_0|avmm_data_controller|Selector25~0_combout\);

-- Location: LCCOMB_X16_Y12_N16
\u0|onchip_flash_0|avmm_data_controller|Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|Add0~0_combout\ = \u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin\(1) $ (VCC)
-- \u0|onchip_flash_0|avmm_data_controller|Add0~1\ = CARRY(\u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin\(1),
	datad => VCC,
	combout => \u0|onchip_flash_0|avmm_data_controller|Add0~0_combout\,
	cout => \u0|onchip_flash_0|avmm_data_controller|Add0~1\);

-- Location: LCCOMB_X16_Y12_N18
\u0|onchip_flash_0|avmm_data_controller|Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|Add0~2_combout\ = (\u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin\(2) & (!\u0|onchip_flash_0|avmm_data_controller|Add0~1\)) # (!\u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin\(2) & 
-- ((\u0|onchip_flash_0|avmm_data_controller|Add0~1\) # (GND)))
-- \u0|onchip_flash_0|avmm_data_controller|Add0~3\ = CARRY((!\u0|onchip_flash_0|avmm_data_controller|Add0~1\) # (!\u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin\(2),
	datad => VCC,
	cin => \u0|onchip_flash_0|avmm_data_controller|Add0~1\,
	combout => \u0|onchip_flash_0|avmm_data_controller|Add0~2_combout\,
	cout => \u0|onchip_flash_0|avmm_data_controller|Add0~3\);

-- Location: LCCOMB_X16_Y12_N0
\u0|onchip_flash_0|avmm_data_controller|Selector37~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|Selector37~0_combout\ = (\u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_SETUP~q\ & (!\u0|onchip_flash_0|avmm_data_controller|Selector38~0_combout\ & 
-- ((\u0|onchip_flash_0|avmm_data_controller|Add0~2_combout\)))) # (!\u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_SETUP~q\ & (((!addr_latch(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|Selector38~0_combout\,
	datab => \u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_SETUP~q\,
	datac => addr_latch(4),
	datad => \u0|onchip_flash_0|avmm_data_controller|Add0~2_combout\,
	combout => \u0|onchip_flash_0|avmm_data_controller|Selector37~0_combout\);

-- Location: LCCOMB_X17_Y13_N26
\u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin[1]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin[1]~2_combout\ = (\u0|onchip_flash_0|avmm_data_controller|reset_n_reg2~q\ & ((\u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_IDLE~q\ & 
-- (\u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_SETUP~q\)) # (!\u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_IDLE~q\ & ((\flash_read~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|reset_n_reg2~q\,
	datab => \u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_SETUP~q\,
	datac => \flash_read~q\,
	datad => \u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_IDLE~q\,
	combout => \u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin[1]~2_combout\);

-- Location: FF_X16_Y12_N1
\u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_57~inputclkctrl_outclk\,
	d => \u0|onchip_flash_0|avmm_data_controller|Selector37~0_combout\,
	ena => \u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin\(2));

-- Location: LCCOMB_X16_Y12_N20
\u0|onchip_flash_0|avmm_data_controller|Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|Add0~4_combout\ = (\u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin\(3) & (\u0|onchip_flash_0|avmm_data_controller|Add0~3\ $ (GND))) # (!\u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin\(3) & 
-- (!\u0|onchip_flash_0|avmm_data_controller|Add0~3\ & VCC))
-- \u0|onchip_flash_0|avmm_data_controller|Add0~5\ = CARRY((\u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin\(3) & !\u0|onchip_flash_0|avmm_data_controller|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin\(3),
	datad => VCC,
	cin => \u0|onchip_flash_0|avmm_data_controller|Add0~3\,
	combout => \u0|onchip_flash_0|avmm_data_controller|Add0~4_combout\,
	cout => \u0|onchip_flash_0|avmm_data_controller|Add0~5\);

-- Location: LCCOMB_X18_Y11_N6
\u0|onchip_flash_0|avmm_data_controller|Selector36~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|Selector36~0_combout\ = (\u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_SETUP~q\ & (!\u0|onchip_flash_0|avmm_data_controller|Selector38~0_combout\ & 
-- ((\u0|onchip_flash_0|avmm_data_controller|Add0~4_combout\)))) # (!\u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_SETUP~q\ & (((!addr_latch(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|Selector38~0_combout\,
	datab => \u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_SETUP~q\,
	datac => addr_latch(5),
	datad => \u0|onchip_flash_0|avmm_data_controller|Add0~4_combout\,
	combout => \u0|onchip_flash_0|avmm_data_controller|Selector36~0_combout\);

-- Location: FF_X18_Y11_N7
\u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_57~inputclkctrl_outclk\,
	d => \u0|onchip_flash_0|avmm_data_controller|Selector36~0_combout\,
	ena => \u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin\(3));

-- Location: LCCOMB_X16_Y12_N22
\u0|onchip_flash_0|avmm_data_controller|Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|Add0~6_combout\ = (\u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin\(4) & (!\u0|onchip_flash_0|avmm_data_controller|Add0~5\)) # (!\u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin\(4) & 
-- ((\u0|onchip_flash_0|avmm_data_controller|Add0~5\) # (GND)))
-- \u0|onchip_flash_0|avmm_data_controller|Add0~7\ = CARRY((!\u0|onchip_flash_0|avmm_data_controller|Add0~5\) # (!\u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin\(4),
	datad => VCC,
	cin => \u0|onchip_flash_0|avmm_data_controller|Add0~5\,
	combout => \u0|onchip_flash_0|avmm_data_controller|Add0~6_combout\,
	cout => \u0|onchip_flash_0|avmm_data_controller|Add0~7\);

-- Location: LCCOMB_X16_Y12_N2
\u0|onchip_flash_0|avmm_data_controller|Selector35~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|Selector35~0_combout\ = (\u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_SETUP~q\ & (((\u0|onchip_flash_0|avmm_data_controller|Add0~6_combout\ & 
-- !\u0|onchip_flash_0|avmm_data_controller|Selector38~0_combout\)))) # (!\u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_SETUP~q\ & (!addr_latch(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => addr_latch(6),
	datab => \u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_SETUP~q\,
	datac => \u0|onchip_flash_0|avmm_data_controller|Add0~6_combout\,
	datad => \u0|onchip_flash_0|avmm_data_controller|Selector38~0_combout\,
	combout => \u0|onchip_flash_0|avmm_data_controller|Selector35~0_combout\);

-- Location: FF_X16_Y12_N3
\u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_57~inputclkctrl_outclk\,
	d => \u0|onchip_flash_0|avmm_data_controller|Selector35~0_combout\,
	ena => \u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin\(4));

-- Location: LCCOMB_X16_Y12_N24
\u0|onchip_flash_0|avmm_data_controller|Add0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|Add0~8_combout\ = (\u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin\(5) & (\u0|onchip_flash_0|avmm_data_controller|Add0~7\ $ (GND))) # (!\u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin\(5) & 
-- (!\u0|onchip_flash_0|avmm_data_controller|Add0~7\ & VCC))
-- \u0|onchip_flash_0|avmm_data_controller|Add0~9\ = CARRY((\u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin\(5) & !\u0|onchip_flash_0|avmm_data_controller|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin\(5),
	datad => VCC,
	cin => \u0|onchip_flash_0|avmm_data_controller|Add0~7\,
	combout => \u0|onchip_flash_0|avmm_data_controller|Add0~8_combout\,
	cout => \u0|onchip_flash_0|avmm_data_controller|Add0~9\);

-- Location: LCCOMB_X16_Y12_N12
\u0|onchip_flash_0|avmm_data_controller|Selector34~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|Selector34~0_combout\ = (\u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_SETUP~q\ & (!\u0|onchip_flash_0|avmm_data_controller|Selector38~0_combout\ & 
-- ((\u0|onchip_flash_0|avmm_data_controller|Add0~8_combout\)))) # (!\u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_SETUP~q\ & (((!addr_latch(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|Selector38~0_combout\,
	datab => \u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_SETUP~q\,
	datac => addr_latch(7),
	datad => \u0|onchip_flash_0|avmm_data_controller|Add0~8_combout\,
	combout => \u0|onchip_flash_0|avmm_data_controller|Selector34~0_combout\);

-- Location: FF_X16_Y12_N13
\u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_57~inputclkctrl_outclk\,
	d => \u0|onchip_flash_0|avmm_data_controller|Selector34~0_combout\,
	ena => \u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin\(5));

-- Location: LCCOMB_X16_Y12_N26
\u0|onchip_flash_0|avmm_data_controller|Add0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|Add0~10_combout\ = (\u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin\(6) & (!\u0|onchip_flash_0|avmm_data_controller|Add0~9\)) # (!\u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin\(6) & 
-- ((\u0|onchip_flash_0|avmm_data_controller|Add0~9\) # (GND)))
-- \u0|onchip_flash_0|avmm_data_controller|Add0~11\ = CARRY((!\u0|onchip_flash_0|avmm_data_controller|Add0~9\) # (!\u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin\(6),
	datad => VCC,
	cin => \u0|onchip_flash_0|avmm_data_controller|Add0~9\,
	combout => \u0|onchip_flash_0|avmm_data_controller|Add0~10_combout\,
	cout => \u0|onchip_flash_0|avmm_data_controller|Add0~11\);

-- Location: LCCOMB_X16_Y12_N14
\u0|onchip_flash_0|avmm_data_controller|Selector33~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|Selector33~0_combout\ = (\u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_SETUP~q\ & (((\u0|onchip_flash_0|avmm_data_controller|Add0~10_combout\ & 
-- !\u0|onchip_flash_0|avmm_data_controller|Selector38~0_combout\)))) # (!\u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_SETUP~q\ & (!addr_latch(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => addr_latch(8),
	datab => \u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_SETUP~q\,
	datac => \u0|onchip_flash_0|avmm_data_controller|Add0~10_combout\,
	datad => \u0|onchip_flash_0|avmm_data_controller|Selector38~0_combout\,
	combout => \u0|onchip_flash_0|avmm_data_controller|Selector33~0_combout\);

-- Location: FF_X16_Y12_N15
\u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_57~inputclkctrl_outclk\,
	d => \u0|onchip_flash_0|avmm_data_controller|Selector33~0_combout\,
	ena => \u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin\(6));

-- Location: LCCOMB_X16_Y12_N28
\u0|onchip_flash_0|avmm_data_controller|Add0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|Add0~12_combout\ = (\u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin\(7) & (\u0|onchip_flash_0|avmm_data_controller|Add0~11\ $ (GND))) # (!\u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin\(7) 
-- & (!\u0|onchip_flash_0|avmm_data_controller|Add0~11\ & VCC))
-- \u0|onchip_flash_0|avmm_data_controller|Add0~13\ = CARRY((\u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin\(7) & !\u0|onchip_flash_0|avmm_data_controller|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin\(7),
	datad => VCC,
	cin => \u0|onchip_flash_0|avmm_data_controller|Add0~11\,
	combout => \u0|onchip_flash_0|avmm_data_controller|Add0~12_combout\,
	cout => \u0|onchip_flash_0|avmm_data_controller|Add0~13\);

-- Location: LCCOMB_X18_Y11_N16
\u0|onchip_flash_0|avmm_data_controller|Selector32~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|Selector32~0_combout\ = (\u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_SETUP~q\ & (((\u0|onchip_flash_0|avmm_data_controller|Add0~12_combout\ & 
-- !\u0|onchip_flash_0|avmm_data_controller|Selector38~0_combout\)))) # (!\u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_SETUP~q\ & (!addr_latch(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => addr_latch(9),
	datab => \u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_SETUP~q\,
	datac => \u0|onchip_flash_0|avmm_data_controller|Add0~12_combout\,
	datad => \u0|onchip_flash_0|avmm_data_controller|Selector38~0_combout\,
	combout => \u0|onchip_flash_0|avmm_data_controller|Selector32~0_combout\);

-- Location: FF_X18_Y11_N17
\u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_57~inputclkctrl_outclk\,
	d => \u0|onchip_flash_0|avmm_data_controller|Selector32~0_combout\,
	ena => \u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin\(7));

-- Location: LCCOMB_X16_Y12_N30
\u0|onchip_flash_0|avmm_data_controller|Add0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|Add0~14_combout\ = (\u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin\(8) & (!\u0|onchip_flash_0|avmm_data_controller|Add0~13\)) # (!\u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin\(8) & 
-- ((\u0|onchip_flash_0|avmm_data_controller|Add0~13\) # (GND)))
-- \u0|onchip_flash_0|avmm_data_controller|Add0~15\ = CARRY((!\u0|onchip_flash_0|avmm_data_controller|Add0~13\) # (!\u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin\(8),
	datad => VCC,
	cin => \u0|onchip_flash_0|avmm_data_controller|Add0~13\,
	combout => \u0|onchip_flash_0|avmm_data_controller|Add0~14_combout\,
	cout => \u0|onchip_flash_0|avmm_data_controller|Add0~15\);

-- Location: LCCOMB_X18_Y11_N2
\u0|onchip_flash_0|avmm_data_controller|Selector31~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|Selector31~0_combout\ = (\u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_SETUP~q\ & (((!\u0|onchip_flash_0|avmm_data_controller|Selector38~0_combout\ & 
-- \u0|onchip_flash_0|avmm_data_controller|Add0~14_combout\)))) # (!\u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_SETUP~q\ & (!addr_latch(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => addr_latch(10),
	datab => \u0|onchip_flash_0|avmm_data_controller|Selector38~0_combout\,
	datac => \u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_SETUP~q\,
	datad => \u0|onchip_flash_0|avmm_data_controller|Add0~14_combout\,
	combout => \u0|onchip_flash_0|avmm_data_controller|Selector31~0_combout\);

-- Location: FF_X18_Y11_N3
\u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_57~inputclkctrl_outclk\,
	d => \u0|onchip_flash_0|avmm_data_controller|Selector31~0_combout\,
	ena => \u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin\(8));

-- Location: LCCOMB_X16_Y11_N0
\u0|onchip_flash_0|avmm_data_controller|Add0~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|Add0~16_combout\ = (\u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin\(9) & (\u0|onchip_flash_0|avmm_data_controller|Add0~15\ $ (GND))) # (!\u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin\(9) 
-- & (!\u0|onchip_flash_0|avmm_data_controller|Add0~15\ & VCC))
-- \u0|onchip_flash_0|avmm_data_controller|Add0~17\ = CARRY((\u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin\(9) & !\u0|onchip_flash_0|avmm_data_controller|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin\(9),
	datad => VCC,
	cin => \u0|onchip_flash_0|avmm_data_controller|Add0~15\,
	combout => \u0|onchip_flash_0|avmm_data_controller|Add0~16_combout\,
	cout => \u0|onchip_flash_0|avmm_data_controller|Add0~17\);

-- Location: LCCOMB_X18_Y11_N20
\u0|onchip_flash_0|avmm_data_controller|Selector30~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|Selector30~0_combout\ = (\u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_SETUP~q\ & (\u0|onchip_flash_0|avmm_data_controller|Add0~16_combout\ & 
-- ((!\u0|onchip_flash_0|avmm_data_controller|Selector38~0_combout\)))) # (!\u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_SETUP~q\ & (((reg_fbs(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|Add0~16_combout\,
	datab => \u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_SETUP~q\,
	datac => reg_fbs(0),
	datad => \u0|onchip_flash_0|avmm_data_controller|Selector38~0_combout\,
	combout => \u0|onchip_flash_0|avmm_data_controller|Selector30~0_combout\);

-- Location: FF_X18_Y11_N21
\u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_57~inputclkctrl_outclk\,
	d => \u0|onchip_flash_0|avmm_data_controller|Selector30~0_combout\,
	ena => \u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin\(9));

-- Location: LCCOMB_X16_Y11_N2
\u0|onchip_flash_0|avmm_data_controller|Add0~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|Add0~18_combout\ = (\u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin\(10) & (!\u0|onchip_flash_0|avmm_data_controller|Add0~17\)) # (!\u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin\(10) & 
-- ((\u0|onchip_flash_0|avmm_data_controller|Add0~17\) # (GND)))
-- \u0|onchip_flash_0|avmm_data_controller|Add0~19\ = CARRY((!\u0|onchip_flash_0|avmm_data_controller|Add0~17\) # (!\u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin\(10),
	datad => VCC,
	cin => \u0|onchip_flash_0|avmm_data_controller|Add0~17\,
	combout => \u0|onchip_flash_0|avmm_data_controller|Add0~18_combout\,
	cout => \u0|onchip_flash_0|avmm_data_controller|Add0~19\);

-- Location: FF_X20_Y10_N21
\reg_fbs[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_phi2_early~reg0clkctrl_outclk\,
	asdata => \data[1]~input_o\,
	clrn => \n_reset~input_o\,
	sload => VCC,
	ena => \reg_fbs[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_fbs(1));

-- Location: LCCOMB_X18_Y11_N18
\u0|onchip_flash_0|avmm_data_controller|Selector29~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|Selector29~0_combout\ = (\u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_SETUP~q\ & (!\u0|onchip_flash_0|avmm_data_controller|Selector38~0_combout\ & 
-- (\u0|onchip_flash_0|avmm_data_controller|Add0~18_combout\))) # (!\u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_SETUP~q\ & (((reg_fbs(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|Selector38~0_combout\,
	datab => \u0|onchip_flash_0|avmm_data_controller|Add0~18_combout\,
	datac => \u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_SETUP~q\,
	datad => reg_fbs(1),
	combout => \u0|onchip_flash_0|avmm_data_controller|Selector29~0_combout\);

-- Location: FF_X18_Y11_N19
\u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_57~inputclkctrl_outclk\,
	d => \u0|onchip_flash_0|avmm_data_controller|Selector29~0_combout\,
	ena => \u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin\(10));

-- Location: LCCOMB_X16_Y11_N4
\u0|onchip_flash_0|avmm_data_controller|Add0~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|Add0~20_combout\ = (\u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin\(11) & (\u0|onchip_flash_0|avmm_data_controller|Add0~19\ $ (GND))) # 
-- (!\u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin\(11) & (!\u0|onchip_flash_0|avmm_data_controller|Add0~19\ & VCC))
-- \u0|onchip_flash_0|avmm_data_controller|Add0~21\ = CARRY((\u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin\(11) & !\u0|onchip_flash_0|avmm_data_controller|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin\(11),
	datad => VCC,
	cin => \u0|onchip_flash_0|avmm_data_controller|Add0~19\,
	combout => \u0|onchip_flash_0|avmm_data_controller|Add0~20_combout\,
	cout => \u0|onchip_flash_0|avmm_data_controller|Add0~21\);

-- Location: LCCOMB_X18_Y11_N22
\u0|onchip_flash_0|avmm_data_controller|Selector28~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|Selector28~0_combout\ = (\u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_SETUP~q\ & (\u0|onchip_flash_0|avmm_data_controller|Add0~20_combout\ & 
-- ((!\u0|onchip_flash_0|avmm_data_controller|Selector38~0_combout\)))) # (!\u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_SETUP~q\ & (((reg_fbs(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_SETUP~q\,
	datab => \u0|onchip_flash_0|avmm_data_controller|Add0~20_combout\,
	datac => reg_fbs(2),
	datad => \u0|onchip_flash_0|avmm_data_controller|Selector38~0_combout\,
	combout => \u0|onchip_flash_0|avmm_data_controller|Selector28~0_combout\);

-- Location: FF_X18_Y11_N23
\u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_57~inputclkctrl_outclk\,
	d => \u0|onchip_flash_0|avmm_data_controller|Selector28~0_combout\,
	ena => \u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin\(11));

-- Location: LCCOMB_X16_Y11_N6
\u0|onchip_flash_0|avmm_data_controller|Add0~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|Add0~22_combout\ = (\u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin\(12) & (!\u0|onchip_flash_0|avmm_data_controller|Add0~21\)) # (!\u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin\(12) & 
-- ((\u0|onchip_flash_0|avmm_data_controller|Add0~21\) # (GND)))
-- \u0|onchip_flash_0|avmm_data_controller|Add0~23\ = CARRY((!\u0|onchip_flash_0|avmm_data_controller|Add0~21\) # (!\u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin\(12),
	datad => VCC,
	cin => \u0|onchip_flash_0|avmm_data_controller|Add0~21\,
	combout => \u0|onchip_flash_0|avmm_data_controller|Add0~22_combout\,
	cout => \u0|onchip_flash_0|avmm_data_controller|Add0~23\);

-- Location: LCCOMB_X18_Y11_N10
\u0|onchip_flash_0|avmm_data_controller|Selector27~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|Selector27~0_combout\ = (\u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_SETUP~q\ & (!\u0|onchip_flash_0|avmm_data_controller|Selector38~0_combout\ & 
-- (\u0|onchip_flash_0|avmm_data_controller|Add0~22_combout\))) # (!\u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_SETUP~q\ & (((reg_fbs(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|Selector38~0_combout\,
	datab => \u0|onchip_flash_0|avmm_data_controller|Add0~22_combout\,
	datac => \u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_SETUP~q\,
	datad => reg_fbs(3),
	combout => \u0|onchip_flash_0|avmm_data_controller|Selector27~0_combout\);

-- Location: FF_X18_Y11_N11
\u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_57~inputclkctrl_outclk\,
	d => \u0|onchip_flash_0|avmm_data_controller|Selector27~0_combout\,
	ena => \u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin\(12));

-- Location: LCCOMB_X16_Y11_N8
\u0|onchip_flash_0|avmm_data_controller|Add0~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|Add0~24_combout\ = (\u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin\(13) & (\u0|onchip_flash_0|avmm_data_controller|Add0~23\ $ (GND))) # 
-- (!\u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin\(13) & (!\u0|onchip_flash_0|avmm_data_controller|Add0~23\ & VCC))
-- \u0|onchip_flash_0|avmm_data_controller|Add0~25\ = CARRY((\u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin\(13) & !\u0|onchip_flash_0|avmm_data_controller|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin\(13),
	datad => VCC,
	cin => \u0|onchip_flash_0|avmm_data_controller|Add0~23\,
	combout => \u0|onchip_flash_0|avmm_data_controller|Add0~24_combout\,
	cout => \u0|onchip_flash_0|avmm_data_controller|Add0~25\);

-- Location: LCCOMB_X18_Y11_N30
\u0|onchip_flash_0|avmm_data_controller|Selector26~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|Selector26~0_combout\ = (\u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_SETUP~q\ & (\u0|onchip_flash_0|avmm_data_controller|Add0~24_combout\ & 
-- ((!\u0|onchip_flash_0|avmm_data_controller|Selector38~0_combout\)))) # (!\u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_SETUP~q\ & (((reg_fbs(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|Add0~24_combout\,
	datab => reg_fbs(4),
	datac => \u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_SETUP~q\,
	datad => \u0|onchip_flash_0|avmm_data_controller|Selector38~0_combout\,
	combout => \u0|onchip_flash_0|avmm_data_controller|Selector26~0_combout\);

-- Location: FF_X18_Y11_N31
\u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_57~inputclkctrl_outclk\,
	d => \u0|onchip_flash_0|avmm_data_controller|Selector26~0_combout\,
	ena => \u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin\(13));

-- Location: LCCOMB_X16_Y11_N10
\u0|onchip_flash_0|avmm_data_controller|Add0~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|Add0~26_combout\ = (\u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin\(14) & (!\u0|onchip_flash_0|avmm_data_controller|Add0~25\)) # (!\u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin\(14) & 
-- ((\u0|onchip_flash_0|avmm_data_controller|Add0~25\) # (GND)))
-- \u0|onchip_flash_0|avmm_data_controller|Add0~27\ = CARRY((!\u0|onchip_flash_0|avmm_data_controller|Add0~25\) # (!\u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin\(14),
	datad => VCC,
	cin => \u0|onchip_flash_0|avmm_data_controller|Add0~25\,
	combout => \u0|onchip_flash_0|avmm_data_controller|Add0~26_combout\,
	cout => \u0|onchip_flash_0|avmm_data_controller|Add0~27\);

-- Location: LCCOMB_X16_Y11_N12
\u0|onchip_flash_0|avmm_data_controller|Add0~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|Add0~28_combout\ = (\u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin\(15) & (\u0|onchip_flash_0|avmm_data_controller|Add0~27\ $ (GND))) # 
-- (!\u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin\(15) & (!\u0|onchip_flash_0|avmm_data_controller|Add0~27\ & VCC))
-- \u0|onchip_flash_0|avmm_data_controller|Add0~29\ = CARRY((\u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin\(15) & !\u0|onchip_flash_0|avmm_data_controller|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin\(15),
	datad => VCC,
	cin => \u0|onchip_flash_0|avmm_data_controller|Add0~27\,
	combout => \u0|onchip_flash_0|avmm_data_controller|Add0~28_combout\,
	cout => \u0|onchip_flash_0|avmm_data_controller|Add0~29\);

-- Location: LCCOMB_X16_Y11_N14
\u0|onchip_flash_0|avmm_data_controller|Add0~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|Add0~30_combout\ = (\u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin\(16) & (!\u0|onchip_flash_0|avmm_data_controller|Add0~29\)) # (!\u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin\(16) & 
-- ((\u0|onchip_flash_0|avmm_data_controller|Add0~29\) # (GND)))
-- \u0|onchip_flash_0|avmm_data_controller|Add0~31\ = CARRY((!\u0|onchip_flash_0|avmm_data_controller|Add0~29\) # (!\u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin\(16),
	datad => VCC,
	cin => \u0|onchip_flash_0|avmm_data_controller|Add0~29\,
	combout => \u0|onchip_flash_0|avmm_data_controller|Add0~30_combout\,
	cout => \u0|onchip_flash_0|avmm_data_controller|Add0~31\);

-- Location: LCCOMB_X16_Y11_N16
\u0|onchip_flash_0|avmm_data_controller|Add0~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|Add0~32_combout\ = !\u0|onchip_flash_0|avmm_data_controller|Add0~31\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \u0|onchip_flash_0|avmm_data_controller|Add0~31\,
	combout => \u0|onchip_flash_0|avmm_data_controller|Add0~32_combout\);

-- Location: LCCOMB_X16_Y11_N20
\u0|onchip_flash_0|avmm_data_controller|Selector25~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|Selector25~1_combout\ = (\u0|onchip_flash_0|avmm_data_controller|Selector25~0_combout\ & (((!\u0|onchip_flash_0|avmm_data_controller|Add0~30_combout\ & !\u0|onchip_flash_0|avmm_data_controller|Add0~32_combout\)) # 
-- (!\u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_SETUP~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|Selector25~0_combout\,
	datab => \u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_SETUP~q\,
	datac => \u0|onchip_flash_0|avmm_data_controller|Add0~30_combout\,
	datad => \u0|onchip_flash_0|avmm_data_controller|Add0~32_combout\,
	combout => \u0|onchip_flash_0|avmm_data_controller|Selector25~1_combout\);

-- Location: FF_X16_Y11_N21
\u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_57~inputclkctrl_outclk\,
	d => \u0|onchip_flash_0|avmm_data_controller|Selector25~1_combout\,
	ena => \u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin\(14));

-- Location: LCCOMB_X16_Y11_N24
\u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin[4]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin[4]~1_combout\ = (\u0|onchip_flash_0|avmm_data_controller|Add0~26_combout\) # ((\u0|onchip_flash_0|avmm_data_controller|Add0~20_combout\ & 
-- (\u0|onchip_flash_0|avmm_data_controller|Add0~24_combout\ & \u0|onchip_flash_0|avmm_data_controller|Add0~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|Add0~26_combout\,
	datab => \u0|onchip_flash_0|avmm_data_controller|Add0~20_combout\,
	datac => \u0|onchip_flash_0|avmm_data_controller|Add0~24_combout\,
	datad => \u0|onchip_flash_0|avmm_data_controller|Add0~22_combout\,
	combout => \u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin[4]~1_combout\);

-- Location: LCCOMB_X16_Y11_N28
\u0|onchip_flash_0|avmm_data_controller|Selector23~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|Selector23~0_combout\ = (\u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_SETUP~q\ & (\u0|onchip_flash_0|avmm_data_controller|Add0~30_combout\ & 
-- (!\u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin[4]~1_combout\))) # (!\u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_SETUP~q\ & (((reg_fbs(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|Add0~30_combout\,
	datab => \u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin[4]~1_combout\,
	datac => \u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_SETUP~q\,
	datad => reg_fbs(7),
	combout => \u0|onchip_flash_0|avmm_data_controller|Selector23~0_combout\);

-- Location: LCCOMB_X16_Y11_N26
\u0|onchip_flash_0|avmm_data_controller|Selector23~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|Selector23~1_combout\ = (\u0|onchip_flash_0|avmm_data_controller|Selector23~0_combout\ & (((!\u0|onchip_flash_0|avmm_data_controller|Add0~28_combout\ & !\u0|onchip_flash_0|avmm_data_controller|Add0~32_combout\)) # 
-- (!\u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_SETUP~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|Add0~28_combout\,
	datab => \u0|onchip_flash_0|avmm_data_controller|Selector23~0_combout\,
	datac => \u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_SETUP~q\,
	datad => \u0|onchip_flash_0|avmm_data_controller|Add0~32_combout\,
	combout => \u0|onchip_flash_0|avmm_data_controller|Selector23~1_combout\);

-- Location: FF_X16_Y11_N27
\u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_57~inputclkctrl_outclk\,
	d => \u0|onchip_flash_0|avmm_data_controller|Selector23~1_combout\,
	ena => \u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin\(16));

-- Location: LCCOMB_X16_Y11_N22
\u0|onchip_flash_0|avmm_data_controller|Selector24~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|Selector24~1_combout\ = (\u0|onchip_flash_0|avmm_data_controller|Selector24~0_combout\ & (((!\u0|onchip_flash_0|avmm_data_controller|Add0~30_combout\ & !\u0|onchip_flash_0|avmm_data_controller|Add0~32_combout\)) # 
-- (!\u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_SETUP~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|Selector24~0_combout\,
	datab => \u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_SETUP~q\,
	datac => \u0|onchip_flash_0|avmm_data_controller|Add0~30_combout\,
	datad => \u0|onchip_flash_0|avmm_data_controller|Add0~32_combout\,
	combout => \u0|onchip_flash_0|avmm_data_controller|Selector24~1_combout\);

-- Location: FF_X16_Y11_N23
\u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_57~inputclkctrl_outclk\,
	d => \u0|onchip_flash_0|avmm_data_controller|Selector24~1_combout\,
	ena => \u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin\(15));

-- Location: LCCOMB_X16_Y11_N18
\u0|onchip_flash_0|avmm_data_controller|Selector38~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|Selector38~0_combout\ = (\u0|onchip_flash_0|avmm_data_controller|Add0~32_combout\) # ((\u0|onchip_flash_0|avmm_data_controller|Add0~30_combout\ & ((\u0|onchip_flash_0|avmm_data_controller|Add0~28_combout\) # 
-- (\u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin[4]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|Add0~28_combout\,
	datab => \u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin[4]~1_combout\,
	datac => \u0|onchip_flash_0|avmm_data_controller|Add0~30_combout\,
	datad => \u0|onchip_flash_0|avmm_data_controller|Add0~32_combout\,
	combout => \u0|onchip_flash_0|avmm_data_controller|Selector38~0_combout\);

-- Location: LCCOMB_X16_Y12_N6
\u0|onchip_flash_0|avmm_data_controller|Selector38~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|Selector38~1_combout\ = (\u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_SETUP~q\ & (!\u0|onchip_flash_0|avmm_data_controller|Selector38~0_combout\ & 
-- ((\u0|onchip_flash_0|avmm_data_controller|Add0~0_combout\)))) # (!\u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_SETUP~q\ & (((!addr_latch(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|Selector38~0_combout\,
	datab => \u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_SETUP~q\,
	datac => addr_latch(3),
	datad => \u0|onchip_flash_0|avmm_data_controller|Add0~0_combout\,
	combout => \u0|onchip_flash_0|avmm_data_controller|Selector38~1_combout\);

-- Location: FF_X16_Y12_N7
\u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_57~inputclkctrl_outclk\,
	d => \u0|onchip_flash_0|avmm_data_controller|Selector38~1_combout\,
	ena => \u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin\(1));

-- Location: LCCOMB_X16_Y12_N8
\u0|onchip_flash_0|avmm_data_controller|flash_page_addr~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|flash_page_addr~1_combout\ = (\u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_IDLE~q\ & (\u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin\(1))) # 
-- (!\u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_IDLE~q\ & ((!addr_latch(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001110100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin\(1),
	datab => addr_latch(3),
	datac => \u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_IDLE~q\,
	combout => \u0|onchip_flash_0|avmm_data_controller|flash_page_addr~1_combout\);

-- Location: FF_X16_Y12_N9
\u0|onchip_flash_0|avmm_data_controller|flash_page_addr[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_57~inputclkctrl_outclk\,
	d => \u0|onchip_flash_0|avmm_data_controller|flash_page_addr~1_combout\,
	sclr => \u0|onchip_flash_0|avmm_data_controller|ALT_INV_reset_n_reg2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|flash_page_addr\(1));

-- Location: LCCOMB_X16_Y12_N10
\u0|onchip_flash_0|avmm_data_controller|flash_page_addr~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|flash_page_addr~2_combout\ = (\u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_IDLE~q\ & ((\u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin\(2)))) # 
-- (!\u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_IDLE~q\ & (!addr_latch(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010111000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => addr_latch(4),
	datab => \u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin\(2),
	datac => \u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_IDLE~q\,
	combout => \u0|onchip_flash_0|avmm_data_controller|flash_page_addr~2_combout\);

-- Location: FF_X16_Y12_N11
\u0|onchip_flash_0|avmm_data_controller|flash_page_addr[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_57~inputclkctrl_outclk\,
	d => \u0|onchip_flash_0|avmm_data_controller|flash_page_addr~2_combout\,
	sclr => \u0|onchip_flash_0|avmm_data_controller|ALT_INV_reset_n_reg2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|flash_page_addr\(2));

-- Location: LCCOMB_X18_Y11_N0
\u0|onchip_flash_0|avmm_data_controller|flash_page_addr~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|flash_page_addr~3_combout\ = (\u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_IDLE~q\ & (\u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin\(3))) # 
-- (!\u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_IDLE~q\ & ((!addr_latch(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin\(3),
	datab => addr_latch(5),
	datad => \u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_IDLE~q\,
	combout => \u0|onchip_flash_0|avmm_data_controller|flash_page_addr~3_combout\);

-- Location: FF_X18_Y11_N1
\u0|onchip_flash_0|avmm_data_controller|flash_page_addr[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_57~inputclkctrl_outclk\,
	d => \u0|onchip_flash_0|avmm_data_controller|flash_page_addr~3_combout\,
	sclr => \u0|onchip_flash_0|avmm_data_controller|ALT_INV_reset_n_reg2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|flash_page_addr\(3));

-- Location: LCCOMB_X6_Y9_N0
\u0|onchip_flash_0|avmm_data_controller|flash_page_addr~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|flash_page_addr~4_combout\ = (\u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_IDLE~q\ & ((\u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin\(4)))) # 
-- (!\u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_IDLE~q\ & (!addr_latch(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000111010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => addr_latch(6),
	datab => \u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_IDLE~q\,
	datac => \u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin\(4),
	combout => \u0|onchip_flash_0|avmm_data_controller|flash_page_addr~4_combout\);

-- Location: FF_X6_Y9_N1
\u0|onchip_flash_0|avmm_data_controller|flash_page_addr[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_57~inputclkctrl_outclk\,
	d => \u0|onchip_flash_0|avmm_data_controller|flash_page_addr~4_combout\,
	sclr => \u0|onchip_flash_0|avmm_data_controller|ALT_INV_reset_n_reg2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|flash_page_addr\(4));

-- Location: LCCOMB_X16_Y12_N4
\u0|onchip_flash_0|avmm_data_controller|flash_page_addr~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|flash_page_addr~5_combout\ = (\u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_IDLE~q\ & (\u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin\(5))) # 
-- (!\u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_IDLE~q\ & ((!addr_latch(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101110001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin\(5),
	datab => \u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_IDLE~q\,
	datac => addr_latch(7),
	combout => \u0|onchip_flash_0|avmm_data_controller|flash_page_addr~5_combout\);

-- Location: FF_X16_Y12_N5
\u0|onchip_flash_0|avmm_data_controller|flash_page_addr[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_57~inputclkctrl_outclk\,
	d => \u0|onchip_flash_0|avmm_data_controller|flash_page_addr~5_combout\,
	sclr => \u0|onchip_flash_0|avmm_data_controller|ALT_INV_reset_n_reg2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|flash_page_addr\(5));

-- Location: LCCOMB_X15_Y11_N0
\u0|onchip_flash_0|avmm_data_controller|flash_page_addr~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|flash_page_addr~6_combout\ = (\u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_IDLE~q\ & ((\u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin\(6)))) # 
-- (!\u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_IDLE~q\ & (!addr_latch(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => addr_latch(8),
	datac => \u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_IDLE~q\,
	datad => \u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin\(6),
	combout => \u0|onchip_flash_0|avmm_data_controller|flash_page_addr~6_combout\);

-- Location: FF_X15_Y11_N1
\u0|onchip_flash_0|avmm_data_controller|flash_page_addr[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_57~inputclkctrl_outclk\,
	d => \u0|onchip_flash_0|avmm_data_controller|flash_page_addr~6_combout\,
	sclr => \u0|onchip_flash_0|avmm_data_controller|ALT_INV_reset_n_reg2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|flash_page_addr\(6));

-- Location: LCCOMB_X18_Y11_N26
\u0|onchip_flash_0|avmm_data_controller|flash_page_addr~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|flash_page_addr~7_combout\ = (\u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_IDLE~q\ & ((\u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin\(7)))) # 
-- (!\u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_IDLE~q\ & (!addr_latch(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => addr_latch(9),
	datab => \u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin\(7),
	datad => \u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_IDLE~q\,
	combout => \u0|onchip_flash_0|avmm_data_controller|flash_page_addr~7_combout\);

-- Location: FF_X18_Y11_N27
\u0|onchip_flash_0|avmm_data_controller|flash_page_addr[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_57~inputclkctrl_outclk\,
	d => \u0|onchip_flash_0|avmm_data_controller|flash_page_addr~7_combout\,
	sclr => \u0|onchip_flash_0|avmm_data_controller|ALT_INV_reset_n_reg2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|flash_page_addr\(7));

-- Location: LCCOMB_X18_Y11_N28
\u0|onchip_flash_0|avmm_data_controller|flash_page_addr~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|flash_page_addr~8_combout\ = (\u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_IDLE~q\ & ((\u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin\(8)))) # 
-- (!\u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_IDLE~q\ & (!addr_latch(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => addr_latch(10),
	datab => \u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin\(8),
	datad => \u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_IDLE~q\,
	combout => \u0|onchip_flash_0|avmm_data_controller|flash_page_addr~8_combout\);

-- Location: FF_X18_Y11_N29
\u0|onchip_flash_0|avmm_data_controller|flash_page_addr[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_57~inputclkctrl_outclk\,
	d => \u0|onchip_flash_0|avmm_data_controller|flash_page_addr~8_combout\,
	sclr => \u0|onchip_flash_0|avmm_data_controller|ALT_INV_reset_n_reg2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|flash_page_addr\(8));

-- Location: LCCOMB_X11_Y11_N4
\u0|onchip_flash_0|avmm_data_controller|flash_read_addr[9]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|flash_read_addr[9]~0_combout\ = (\u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_IDLE~q\ & (\u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin\(9))) # 
-- (!\u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_IDLE~q\ & ((reg_fbs(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin\(9),
	datac => reg_fbs(0),
	datad => \u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_IDLE~q\,
	combout => \u0|onchip_flash_0|avmm_data_controller|flash_read_addr[9]~0_combout\);

-- Location: LCCOMB_X16_Y13_N10
\u0|onchip_flash_0|avmm_data_controller|address_convertor|Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|address_convertor|Add0~0_combout\ = \u0|onchip_flash_0|avmm_data_controller|flash_read_addr[9]~0_combout\ $ (VCC)
-- \u0|onchip_flash_0|avmm_data_controller|address_convertor|Add0~1\ = CARRY(\u0|onchip_flash_0|avmm_data_controller|flash_read_addr[9]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|flash_read_addr[9]~0_combout\,
	datad => VCC,
	combout => \u0|onchip_flash_0|avmm_data_controller|address_convertor|Add0~0_combout\,
	cout => \u0|onchip_flash_0|avmm_data_controller|address_convertor|Add0~1\);

-- Location: LCCOMB_X17_Y13_N4
\u0|onchip_flash_0|avmm_data_controller|flash_read_addr[14]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|flash_read_addr[14]~2_combout\ = (\u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_IDLE~q\ & (\u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin\(14))) # 
-- (!\u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_IDLE~q\ & ((reg_fbs(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin\(14),
	datab => reg_fbs(5),
	datad => \u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_IDLE~q\,
	combout => \u0|onchip_flash_0|avmm_data_controller|flash_read_addr[14]~2_combout\);

-- Location: LCCOMB_X18_Y11_N12
\u0|onchip_flash_0|avmm_data_controller|flash_read_addr[12]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|flash_read_addr[12]~5_combout\ = (\u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_IDLE~q\ & (\u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin\(12))) # 
-- (!\u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_IDLE~q\ & ((reg_fbs(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin\(12),
	datab => \u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_IDLE~q\,
	datad => reg_fbs(3),
	combout => \u0|onchip_flash_0|avmm_data_controller|flash_read_addr[12]~5_combout\);

-- Location: LCCOMB_X18_Y11_N24
\u0|onchip_flash_0|avmm_data_controller|flash_read_addr[11]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|flash_read_addr[11]~6_combout\ = (\u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_IDLE~q\ & ((\u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin\(11)))) # 
-- (!\u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_IDLE~q\ & (reg_fbs(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => reg_fbs(2),
	datac => \u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin\(11),
	datad => \u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_IDLE~q\,
	combout => \u0|onchip_flash_0|avmm_data_controller|flash_read_addr[11]~6_combout\);

-- Location: LCCOMB_X18_Y11_N8
\u0|onchip_flash_0|avmm_data_controller|flash_read_addr[13]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|flash_read_addr[13]~4_combout\ = (\u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_IDLE~q\ & (\u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin\(13))) # 
-- (!\u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_IDLE~q\ & ((reg_fbs(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin\(13),
	datab => \u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_IDLE~q\,
	datad => reg_fbs(4),
	combout => \u0|onchip_flash_0|avmm_data_controller|flash_read_addr[13]~4_combout\);

-- Location: LCCOMB_X16_Y13_N4
\u0|onchip_flash_0|avmm_data_controller|address_convertor|LessThan0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|address_convertor|LessThan0~0_combout\ = (\u0|onchip_flash_0|avmm_data_controller|flash_read_addr[12]~5_combout\ & (\u0|onchip_flash_0|avmm_data_controller|flash_read_addr[11]~6_combout\ & 
-- \u0|onchip_flash_0|avmm_data_controller|flash_read_addr[13]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|flash_read_addr[12]~5_combout\,
	datab => \u0|onchip_flash_0|avmm_data_controller|flash_read_addr[11]~6_combout\,
	datad => \u0|onchip_flash_0|avmm_data_controller|flash_read_addr[13]~4_combout\,
	combout => \u0|onchip_flash_0|avmm_data_controller|address_convertor|LessThan0~0_combout\);

-- Location: LCCOMB_X17_Y13_N14
\u0|onchip_flash_0|avmm_data_controller|flash_read_addr[15]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|flash_read_addr[15]~3_combout\ = (\u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_IDLE~q\ & (\u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin\(15))) # 
-- (!\u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_IDLE~q\ & ((reg_fbs(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin\(15),
	datac => \u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_IDLE~q\,
	datad => reg_fbs(6),
	combout => \u0|onchip_flash_0|avmm_data_controller|flash_read_addr[15]~3_combout\);

-- Location: LCCOMB_X20_Y10_N0
\u0|onchip_flash_0|avmm_data_controller|flash_read_addr[16]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|flash_read_addr[16]~1_combout\ = (\u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_IDLE~q\ & ((\u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin\(16)))) # 
-- (!\u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_IDLE~q\ & (reg_fbs(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_IDLE~q\,
	datac => reg_fbs(7),
	datad => \u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin\(16),
	combout => \u0|onchip_flash_0|avmm_data_controller|flash_read_addr[16]~1_combout\);

-- Location: LCCOMB_X16_Y13_N6
\u0|onchip_flash_0|avmm_data_controller|address_convertor|LessThan0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|address_convertor|LessThan0~1_combout\ = (\u0|onchip_flash_0|avmm_data_controller|flash_read_addr[16]~1_combout\ & ((\u0|onchip_flash_0|avmm_data_controller|flash_read_addr[14]~2_combout\) # 
-- ((\u0|onchip_flash_0|avmm_data_controller|address_convertor|LessThan0~0_combout\) # (\u0|onchip_flash_0|avmm_data_controller|flash_read_addr[15]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|flash_read_addr[14]~2_combout\,
	datab => \u0|onchip_flash_0|avmm_data_controller|address_convertor|LessThan0~0_combout\,
	datac => \u0|onchip_flash_0|avmm_data_controller|flash_read_addr[15]~3_combout\,
	datad => \u0|onchip_flash_0|avmm_data_controller|flash_read_addr[16]~1_combout\,
	combout => \u0|onchip_flash_0|avmm_data_controller|address_convertor|LessThan0~1_combout\);

-- Location: LCCOMB_X11_Y11_N0
\u0|onchip_flash_0|avmm_data_controller|address_convertor|Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|address_convertor|Add0~2_combout\ = (\u0|onchip_flash_0|avmm_data_controller|address_convertor|LessThan0~1_combout\ & ((\u0|onchip_flash_0|avmm_data_controller|flash_read_addr[9]~0_combout\))) # 
-- (!\u0|onchip_flash_0|avmm_data_controller|address_convertor|LessThan0~1_combout\ & (\u0|onchip_flash_0|avmm_data_controller|address_convertor|Add0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|address_convertor|Add0~0_combout\,
	datab => \u0|onchip_flash_0|avmm_data_controller|flash_read_addr[9]~0_combout\,
	datad => \u0|onchip_flash_0|avmm_data_controller|address_convertor|LessThan0~1_combout\,
	combout => \u0|onchip_flash_0|avmm_data_controller|address_convertor|Add0~2_combout\);

-- Location: FF_X11_Y11_N1
\u0|onchip_flash_0|avmm_data_controller|flash_page_addr[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_57~inputclkctrl_outclk\,
	d => \u0|onchip_flash_0|avmm_data_controller|address_convertor|Add0~2_combout\,
	sclr => \u0|onchip_flash_0|avmm_data_controller|ALT_INV_reset_n_reg2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|flash_page_addr\(9));

-- Location: LCCOMB_X16_Y9_N14
\u0|onchip_flash_0|avmm_data_controller|flash_read_addr[10]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|flash_read_addr[10]~7_combout\ = (\u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_IDLE~q\ & (\u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin\(10))) # 
-- (!\u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_IDLE~q\ & ((reg_fbs(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin\(10),
	datab => \u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_IDLE~q\,
	datad => reg_fbs(1),
	combout => \u0|onchip_flash_0|avmm_data_controller|flash_read_addr[10]~7_combout\);

-- Location: LCCOMB_X16_Y13_N12
\u0|onchip_flash_0|avmm_data_controller|address_convertor|Add0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|address_convertor|Add0~3_combout\ = (\u0|onchip_flash_0|avmm_data_controller|flash_read_addr[10]~7_combout\ & (!\u0|onchip_flash_0|avmm_data_controller|address_convertor|Add0~1\)) # 
-- (!\u0|onchip_flash_0|avmm_data_controller|flash_read_addr[10]~7_combout\ & ((\u0|onchip_flash_0|avmm_data_controller|address_convertor|Add0~1\) # (GND)))
-- \u0|onchip_flash_0|avmm_data_controller|address_convertor|Add0~4\ = CARRY((!\u0|onchip_flash_0|avmm_data_controller|address_convertor|Add0~1\) # (!\u0|onchip_flash_0|avmm_data_controller|flash_read_addr[10]~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u0|onchip_flash_0|avmm_data_controller|flash_read_addr[10]~7_combout\,
	datad => VCC,
	cin => \u0|onchip_flash_0|avmm_data_controller|address_convertor|Add0~1\,
	combout => \u0|onchip_flash_0|avmm_data_controller|address_convertor|Add0~3_combout\,
	cout => \u0|onchip_flash_0|avmm_data_controller|address_convertor|Add0~4\);

-- Location: LCCOMB_X11_Y11_N2
\u0|onchip_flash_0|avmm_data_controller|address_convertor|Add0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|address_convertor|Add0~5_combout\ = (\u0|onchip_flash_0|avmm_data_controller|address_convertor|LessThan0~1_combout\ & (\u0|onchip_flash_0|avmm_data_controller|flash_read_addr[10]~7_combout\)) # 
-- (!\u0|onchip_flash_0|avmm_data_controller|address_convertor|LessThan0~1_combout\ & ((\u0|onchip_flash_0|avmm_data_controller|address_convertor|Add0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|flash_read_addr[10]~7_combout\,
	datac => \u0|onchip_flash_0|avmm_data_controller|address_convertor|Add0~3_combout\,
	datad => \u0|onchip_flash_0|avmm_data_controller|address_convertor|LessThan0~1_combout\,
	combout => \u0|onchip_flash_0|avmm_data_controller|address_convertor|Add0~5_combout\);

-- Location: FF_X11_Y11_N3
\u0|onchip_flash_0|avmm_data_controller|flash_page_addr[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_57~inputclkctrl_outclk\,
	d => \u0|onchip_flash_0|avmm_data_controller|address_convertor|Add0~5_combout\,
	sclr => \u0|onchip_flash_0|avmm_data_controller|ALT_INV_reset_n_reg2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|flash_page_addr\(10));

-- Location: LCCOMB_X16_Y13_N14
\u0|onchip_flash_0|avmm_data_controller|address_convertor|Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|address_convertor|Add0~6_combout\ = (\u0|onchip_flash_0|avmm_data_controller|flash_read_addr[11]~6_combout\ & (\u0|onchip_flash_0|avmm_data_controller|address_convertor|Add0~4\ $ (GND))) # 
-- (!\u0|onchip_flash_0|avmm_data_controller|flash_read_addr[11]~6_combout\ & (!\u0|onchip_flash_0|avmm_data_controller|address_convertor|Add0~4\ & VCC))
-- \u0|onchip_flash_0|avmm_data_controller|address_convertor|Add0~7\ = CARRY((\u0|onchip_flash_0|avmm_data_controller|flash_read_addr[11]~6_combout\ & !\u0|onchip_flash_0|avmm_data_controller|address_convertor|Add0~4\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u0|onchip_flash_0|avmm_data_controller|flash_read_addr[11]~6_combout\,
	datad => VCC,
	cin => \u0|onchip_flash_0|avmm_data_controller|address_convertor|Add0~4\,
	combout => \u0|onchip_flash_0|avmm_data_controller|address_convertor|Add0~6_combout\,
	cout => \u0|onchip_flash_0|avmm_data_controller|address_convertor|Add0~7\);

-- Location: LCCOMB_X16_Y13_N8
\u0|onchip_flash_0|avmm_data_controller|address_convertor|Add0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|address_convertor|Add0~8_combout\ = (\u0|onchip_flash_0|avmm_data_controller|address_convertor|LessThan0~1_combout\ & ((\u0|onchip_flash_0|avmm_data_controller|flash_read_addr[11]~6_combout\))) # 
-- (!\u0|onchip_flash_0|avmm_data_controller|address_convertor|LessThan0~1_combout\ & (\u0|onchip_flash_0|avmm_data_controller|address_convertor|Add0~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|address_convertor|LessThan0~1_combout\,
	datac => \u0|onchip_flash_0|avmm_data_controller|address_convertor|Add0~6_combout\,
	datad => \u0|onchip_flash_0|avmm_data_controller|flash_read_addr[11]~6_combout\,
	combout => \u0|onchip_flash_0|avmm_data_controller|address_convertor|Add0~8_combout\);

-- Location: FF_X16_Y13_N9
\u0|onchip_flash_0|avmm_data_controller|flash_page_addr[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_57~inputclkctrl_outclk\,
	d => \u0|onchip_flash_0|avmm_data_controller|address_convertor|Add0~8_combout\,
	sclr => \u0|onchip_flash_0|avmm_data_controller|ALT_INV_reset_n_reg2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|flash_page_addr\(11));

-- Location: LCCOMB_X16_Y13_N16
\u0|onchip_flash_0|avmm_data_controller|address_convertor|Add0~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|address_convertor|Add0~9_combout\ = (\u0|onchip_flash_0|avmm_data_controller|flash_read_addr[12]~5_combout\ & (!\u0|onchip_flash_0|avmm_data_controller|address_convertor|Add0~7\)) # 
-- (!\u0|onchip_flash_0|avmm_data_controller|flash_read_addr[12]~5_combout\ & ((\u0|onchip_flash_0|avmm_data_controller|address_convertor|Add0~7\) # (GND)))
-- \u0|onchip_flash_0|avmm_data_controller|address_convertor|Add0~10\ = CARRY((!\u0|onchip_flash_0|avmm_data_controller|address_convertor|Add0~7\) # (!\u0|onchip_flash_0|avmm_data_controller|flash_read_addr[12]~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|flash_read_addr[12]~5_combout\,
	datad => VCC,
	cin => \u0|onchip_flash_0|avmm_data_controller|address_convertor|Add0~7\,
	combout => \u0|onchip_flash_0|avmm_data_controller|address_convertor|Add0~9_combout\,
	cout => \u0|onchip_flash_0|avmm_data_controller|address_convertor|Add0~10\);

-- Location: LCCOMB_X16_Y13_N2
\u0|onchip_flash_0|avmm_data_controller|address_convertor|Add0~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|address_convertor|Add0~11_combout\ = (\u0|onchip_flash_0|avmm_data_controller|address_convertor|LessThan0~1_combout\ & ((\u0|onchip_flash_0|avmm_data_controller|flash_read_addr[12]~5_combout\))) # 
-- (!\u0|onchip_flash_0|avmm_data_controller|address_convertor|LessThan0~1_combout\ & (\u0|onchip_flash_0|avmm_data_controller|address_convertor|Add0~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|address_convertor|LessThan0~1_combout\,
	datab => \u0|onchip_flash_0|avmm_data_controller|address_convertor|Add0~9_combout\,
	datad => \u0|onchip_flash_0|avmm_data_controller|flash_read_addr[12]~5_combout\,
	combout => \u0|onchip_flash_0|avmm_data_controller|address_convertor|Add0~11_combout\);

-- Location: FF_X16_Y13_N3
\u0|onchip_flash_0|avmm_data_controller|flash_page_addr[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_57~inputclkctrl_outclk\,
	d => \u0|onchip_flash_0|avmm_data_controller|address_convertor|Add0~11_combout\,
	sclr => \u0|onchip_flash_0|avmm_data_controller|ALT_INV_reset_n_reg2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|flash_page_addr\(12));

-- Location: LCCOMB_X16_Y13_N18
\u0|onchip_flash_0|avmm_data_controller|address_convertor|Add0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|address_convertor|Add0~12_combout\ = (\u0|onchip_flash_0|avmm_data_controller|flash_read_addr[13]~4_combout\ & (\u0|onchip_flash_0|avmm_data_controller|address_convertor|Add0~10\ $ (GND))) # 
-- (!\u0|onchip_flash_0|avmm_data_controller|flash_read_addr[13]~4_combout\ & (!\u0|onchip_flash_0|avmm_data_controller|address_convertor|Add0~10\ & VCC))
-- \u0|onchip_flash_0|avmm_data_controller|address_convertor|Add0~13\ = CARRY((\u0|onchip_flash_0|avmm_data_controller|flash_read_addr[13]~4_combout\ & !\u0|onchip_flash_0|avmm_data_controller|address_convertor|Add0~10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u0|onchip_flash_0|avmm_data_controller|flash_read_addr[13]~4_combout\,
	datad => VCC,
	cin => \u0|onchip_flash_0|avmm_data_controller|address_convertor|Add0~10\,
	combout => \u0|onchip_flash_0|avmm_data_controller|address_convertor|Add0~12_combout\,
	cout => \u0|onchip_flash_0|avmm_data_controller|address_convertor|Add0~13\);

-- Location: LCCOMB_X16_Y13_N28
\u0|onchip_flash_0|avmm_data_controller|address_convertor|Add0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|address_convertor|Add0~14_combout\ = (\u0|onchip_flash_0|avmm_data_controller|address_convertor|LessThan0~1_combout\ & ((\u0|onchip_flash_0|avmm_data_controller|flash_read_addr[13]~4_combout\))) # 
-- (!\u0|onchip_flash_0|avmm_data_controller|address_convertor|LessThan0~1_combout\ & (\u0|onchip_flash_0|avmm_data_controller|address_convertor|Add0~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|address_convertor|LessThan0~1_combout\,
	datab => \u0|onchip_flash_0|avmm_data_controller|address_convertor|Add0~12_combout\,
	datad => \u0|onchip_flash_0|avmm_data_controller|flash_read_addr[13]~4_combout\,
	combout => \u0|onchip_flash_0|avmm_data_controller|address_convertor|Add0~14_combout\);

-- Location: FF_X16_Y13_N29
\u0|onchip_flash_0|avmm_data_controller|flash_page_addr[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_57~inputclkctrl_outclk\,
	d => \u0|onchip_flash_0|avmm_data_controller|address_convertor|Add0~14_combout\,
	sclr => \u0|onchip_flash_0|avmm_data_controller|ALT_INV_reset_n_reg2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|flash_page_addr\(13));

-- Location: LCCOMB_X16_Y13_N20
\u0|onchip_flash_0|avmm_data_controller|address_convertor|Add0~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|address_convertor|Add0~15_combout\ = (\u0|onchip_flash_0|avmm_data_controller|flash_read_addr[14]~2_combout\ & (!\u0|onchip_flash_0|avmm_data_controller|address_convertor|Add0~13\)) # 
-- (!\u0|onchip_flash_0|avmm_data_controller|flash_read_addr[14]~2_combout\ & ((\u0|onchip_flash_0|avmm_data_controller|address_convertor|Add0~13\) # (GND)))
-- \u0|onchip_flash_0|avmm_data_controller|address_convertor|Add0~16\ = CARRY((!\u0|onchip_flash_0|avmm_data_controller|address_convertor|Add0~13\) # (!\u0|onchip_flash_0|avmm_data_controller|flash_read_addr[14]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|flash_read_addr[14]~2_combout\,
	datad => VCC,
	cin => \u0|onchip_flash_0|avmm_data_controller|address_convertor|Add0~13\,
	combout => \u0|onchip_flash_0|avmm_data_controller|address_convertor|Add0~15_combout\,
	cout => \u0|onchip_flash_0|avmm_data_controller|address_convertor|Add0~16\);

-- Location: LCCOMB_X16_Y13_N30
\u0|onchip_flash_0|avmm_data_controller|address_convertor|Add0~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|address_convertor|Add0~17_combout\ = (\u0|onchip_flash_0|avmm_data_controller|address_convertor|LessThan0~1_combout\ & ((\u0|onchip_flash_0|avmm_data_controller|flash_read_addr[14]~2_combout\))) # 
-- (!\u0|onchip_flash_0|avmm_data_controller|address_convertor|LessThan0~1_combout\ & (\u0|onchip_flash_0|avmm_data_controller|address_convertor|Add0~15_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|address_convertor|LessThan0~1_combout\,
	datab => \u0|onchip_flash_0|avmm_data_controller|address_convertor|Add0~15_combout\,
	datad => \u0|onchip_flash_0|avmm_data_controller|flash_read_addr[14]~2_combout\,
	combout => \u0|onchip_flash_0|avmm_data_controller|address_convertor|Add0~17_combout\);

-- Location: FF_X16_Y13_N31
\u0|onchip_flash_0|avmm_data_controller|flash_page_addr[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_57~inputclkctrl_outclk\,
	d => \u0|onchip_flash_0|avmm_data_controller|address_convertor|Add0~17_combout\,
	sclr => \u0|onchip_flash_0|avmm_data_controller|ALT_INV_reset_n_reg2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|flash_page_addr\(14));

-- Location: LCCOMB_X16_Y13_N22
\u0|onchip_flash_0|avmm_data_controller|address_convertor|Add0~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|address_convertor|Add0~18_combout\ = (\u0|onchip_flash_0|avmm_data_controller|flash_read_addr[15]~3_combout\ & (\u0|onchip_flash_0|avmm_data_controller|address_convertor|Add0~16\ $ (GND))) # 
-- (!\u0|onchip_flash_0|avmm_data_controller|flash_read_addr[15]~3_combout\ & (!\u0|onchip_flash_0|avmm_data_controller|address_convertor|Add0~16\ & VCC))
-- \u0|onchip_flash_0|avmm_data_controller|address_convertor|Add0~19\ = CARRY((\u0|onchip_flash_0|avmm_data_controller|flash_read_addr[15]~3_combout\ & !\u0|onchip_flash_0|avmm_data_controller|address_convertor|Add0~16\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u0|onchip_flash_0|avmm_data_controller|flash_read_addr[15]~3_combout\,
	datad => VCC,
	cin => \u0|onchip_flash_0|avmm_data_controller|address_convertor|Add0~16\,
	combout => \u0|onchip_flash_0|avmm_data_controller|address_convertor|Add0~18_combout\,
	cout => \u0|onchip_flash_0|avmm_data_controller|address_convertor|Add0~19\);

-- Location: LCCOMB_X16_Y13_N0
\u0|onchip_flash_0|avmm_data_controller|address_convertor|Add0~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|address_convertor|Add0~20_combout\ = (\u0|onchip_flash_0|avmm_data_controller|address_convertor|LessThan0~1_combout\ & (\u0|onchip_flash_0|avmm_data_controller|flash_read_addr[15]~3_combout\)) # 
-- (!\u0|onchip_flash_0|avmm_data_controller|address_convertor|LessThan0~1_combout\ & ((\u0|onchip_flash_0|avmm_data_controller|address_convertor|Add0~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u0|onchip_flash_0|avmm_data_controller|flash_read_addr[15]~3_combout\,
	datac => \u0|onchip_flash_0|avmm_data_controller|address_convertor|Add0~18_combout\,
	datad => \u0|onchip_flash_0|avmm_data_controller|address_convertor|LessThan0~1_combout\,
	combout => \u0|onchip_flash_0|avmm_data_controller|address_convertor|Add0~20_combout\);

-- Location: FF_X16_Y13_N1
\u0|onchip_flash_0|avmm_data_controller|flash_page_addr[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_57~inputclkctrl_outclk\,
	d => \u0|onchip_flash_0|avmm_data_controller|address_convertor|Add0~20_combout\,
	sclr => \u0|onchip_flash_0|avmm_data_controller|ALT_INV_reset_n_reg2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|flash_page_addr\(15));

-- Location: LCCOMB_X16_Y13_N24
\u0|onchip_flash_0|avmm_data_controller|address_convertor|Add0~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|address_convertor|Add0~21_combout\ = (\u0|onchip_flash_0|avmm_data_controller|flash_read_addr[16]~1_combout\ & (!\u0|onchip_flash_0|avmm_data_controller|address_convertor|Add0~19\)) # 
-- (!\u0|onchip_flash_0|avmm_data_controller|flash_read_addr[16]~1_combout\ & ((\u0|onchip_flash_0|avmm_data_controller|address_convertor|Add0~19\) # (GND)))
-- \u0|onchip_flash_0|avmm_data_controller|address_convertor|Add0~22\ = CARRY((!\u0|onchip_flash_0|avmm_data_controller|address_convertor|Add0~19\) # (!\u0|onchip_flash_0|avmm_data_controller|flash_read_addr[16]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|flash_read_addr[16]~1_combout\,
	datad => VCC,
	cin => \u0|onchip_flash_0|avmm_data_controller|address_convertor|Add0~19\,
	combout => \u0|onchip_flash_0|avmm_data_controller|address_convertor|Add0~21_combout\,
	cout => \u0|onchip_flash_0|avmm_data_controller|address_convertor|Add0~22\);

-- Location: LCCOMB_X11_Y11_N28
\u0|onchip_flash_0|avmm_data_controller|address_convertor|Add0~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|address_convertor|Add0~23_combout\ = (\u0|onchip_flash_0|avmm_data_controller|address_convertor|LessThan0~1_combout\) # (\u0|onchip_flash_0|avmm_data_controller|address_convertor|Add0~21_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u0|onchip_flash_0|avmm_data_controller|address_convertor|LessThan0~1_combout\,
	datad => \u0|onchip_flash_0|avmm_data_controller|address_convertor|Add0~21_combout\,
	combout => \u0|onchip_flash_0|avmm_data_controller|address_convertor|Add0~23_combout\);

-- Location: FF_X11_Y11_N29
\u0|onchip_flash_0|avmm_data_controller|flash_page_addr[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_57~inputclkctrl_outclk\,
	d => \u0|onchip_flash_0|avmm_data_controller|address_convertor|Add0~23_combout\,
	sclr => \u0|onchip_flash_0|avmm_data_controller|ALT_INV_reset_n_reg2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|flash_page_addr\(16));

-- Location: LCCOMB_X16_Y13_N26
\u0|onchip_flash_0|avmm_data_controller|address_convertor|Add0~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|address_convertor|Add0~24_combout\ = !\u0|onchip_flash_0|avmm_data_controller|address_convertor|Add0~22\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \u0|onchip_flash_0|avmm_data_controller|address_convertor|Add0~22\,
	combout => \u0|onchip_flash_0|avmm_data_controller|address_convertor|Add0~24_combout\);

-- Location: LCCOMB_X11_Y11_N30
\u0|onchip_flash_0|avmm_data_controller|address_convertor|Add0~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|address_convertor|Add0~26_combout\ = (\u0|onchip_flash_0|avmm_data_controller|address_convertor|Add0~24_combout\ & !\u0|onchip_flash_0|avmm_data_controller|address_convertor|LessThan0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|address_convertor|Add0~24_combout\,
	datad => \u0|onchip_flash_0|avmm_data_controller|address_convertor|LessThan0~1_combout\,
	combout => \u0|onchip_flash_0|avmm_data_controller|address_convertor|Add0~26_combout\);

-- Location: FF_X11_Y11_N31
\u0|onchip_flash_0|avmm_data_controller|flash_page_addr[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_57~inputclkctrl_outclk\,
	d => \u0|onchip_flash_0|avmm_data_controller|address_convertor|Add0~26_combout\,
	sclr => \u0|onchip_flash_0|avmm_data_controller|ALT_INV_reset_n_reg2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|flash_page_addr\(17));

-- Location: UNVM_X0_Y11_N40
\u0|onchip_flash_0|altera_onchip_flash_block|ufm_block\ : fiftyfivenm_unvm
-- pragma translate_off
GENERIC MAP (
,
	addr_range1_end_addr => 79871,
	addr_range1_offset => 512,
	addr_range2_offset => 0,
	device_id => "08",
	init_filename => "c:/users/steve/documents/github/atari_pbi/atari/handler/handler.hex",
	init_filename_sim => "c:/users/steve/documents/github/atari_pbi/atari/handler/handler.hex",
	is_compressed_image => "false",
	is_dual_boot => "false",
	is_eram_skip => "true",
	max_ufm_valid_addr => 29183,
	max_valid_addr => 79871,
	min_ufm_valid_addr => 0,
	min_valid_addr => 0,
	part_name => "10m08sae144c8g",
	reserve_block => "false")
-- pragma translate_on
PORT MAP (
	arclk => \u0|onchip_flash_0|avmm_data_controller|flash_arclk~0_combout\,
	arshft => VCC,
	drclk => \u0|onchip_flash_0|avmm_data_controller|flash_drclk~0_combout\,
	drshft => \u0|onchip_flash_0|avmm_data_controller|flash_drshft_neg_reg~_wirecell_combout\,
	drdin => VCC,
	nprogram => VCC,
	nerase => VCC,
	nosc_ena => \~GND~combout\,
	par_en => VCC,
	xe_ye => \u0|onchip_flash_0|avmm_data_controller|flash_xe_ye~combout\,
	se => \u0|onchip_flash_0|avmm_data_controller|flash_se_neg_reg~q\,
	ardin => \u0|onchip_flash_0|altera_onchip_flash_block|ufm_block_ARDIN_bus\,
	drdout => \u0|onchip_flash_0|altera_onchip_flash_block|ufm_block_DRDOUT_bus\);

-- Location: LCCOMB_X17_Y12_N0
\u0|onchip_flash_0|avmm_data_controller|avmm_readdata[16]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|avmm_readdata[16]~0_combout\ = (\u0|onchip_flash_0|avmm_data_controller|csr_status_r_pass~q\ & !\u0|onchip_flash_0|altera_onchip_flash_block|drdout\(16))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u0|onchip_flash_0|avmm_data_controller|csr_status_r_pass~q\,
	datad => \u0|onchip_flash_0|altera_onchip_flash_block|drdout\(16),
	combout => \u0|onchip_flash_0|avmm_data_controller|avmm_readdata[16]~0_combout\);

-- Location: LCCOMB_X11_Y11_N8
\u0|onchip_flash_0|avmm_data_controller|avmm_readdatavalid_reg~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|avmm_readdatavalid_reg~0_combout\ = (\u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_reg~7_combout\) # ((!\u0|onchip_flash_0|avmm_data_controller|avmm_read_valid_state~q\ & 
-- ((\u0|onchip_flash_0|avmm_data_controller|avmm_readdata_ready~q\) # (\u0|onchip_flash_0|avmm_data_controller|avmm_readdatavalid_reg~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|avmm_read_valid_state~q\,
	datab => \u0|onchip_flash_0|avmm_data_controller|avmm_readdata_ready~q\,
	datac => \u0|onchip_flash_0|avmm_data_controller|avmm_readdatavalid_reg~q\,
	datad => \u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_reg~7_combout\,
	combout => \u0|onchip_flash_0|avmm_data_controller|avmm_readdatavalid_reg~0_combout\);

-- Location: FF_X11_Y11_N9
\u0|onchip_flash_0|avmm_data_controller|avmm_readdatavalid_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_57~inputclkctrl_outclk\,
	d => \u0|onchip_flash_0|avmm_data_controller|avmm_readdatavalid_reg~0_combout\,
	sclr => \u0|onchip_flash_0|avmm_data_controller|ALT_INV_reset_n_reg2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|avmm_readdatavalid_reg~q\);

-- Location: FF_X17_Y12_N1
\flash_data_latch[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk_57~inputclkctrl_outclk\,
	d => \u0|onchip_flash_0|avmm_data_controller|avmm_readdata[16]~0_combout\,
	clrn => \phi2~inputclkctrl_outclk\,
	ena => \u0|onchip_flash_0|avmm_data_controller|avmm_readdatavalid_reg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => flash_data_latch(16));

-- Location: LCCOMB_X17_Y12_N26
\u0|onchip_flash_0|avmm_data_controller|avmm_readdata[8]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|avmm_readdata[8]~1_combout\ = (\u0|onchip_flash_0|avmm_data_controller|csr_status_r_pass~q\ & !\u0|onchip_flash_0|altera_onchip_flash_block|drdout\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u0|onchip_flash_0|avmm_data_controller|csr_status_r_pass~q\,
	datac => \u0|onchip_flash_0|altera_onchip_flash_block|drdout\(8),
	combout => \u0|onchip_flash_0|avmm_data_controller|avmm_readdata[8]~1_combout\);

-- Location: FF_X17_Y12_N27
\flash_data_latch[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk_57~inputclkctrl_outclk\,
	d => \u0|onchip_flash_0|avmm_data_controller|avmm_readdata[8]~1_combout\,
	clrn => \phi2~inputclkctrl_outclk\,
	ena => \u0|onchip_flash_0|avmm_data_controller|avmm_readdatavalid_reg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => flash_data_latch(8));

-- Location: LCCOMB_X17_Y12_N28
\u0|onchip_flash_0|avmm_data_controller|avmm_readdata[0]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|avmm_readdata[0]~2_combout\ = (\u0|onchip_flash_0|avmm_data_controller|csr_status_r_pass~q\ & !\u0|onchip_flash_0|altera_onchip_flash_block|drdout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u0|onchip_flash_0|avmm_data_controller|csr_status_r_pass~q\,
	datad => \u0|onchip_flash_0|altera_onchip_flash_block|drdout\(0),
	combout => \u0|onchip_flash_0|avmm_data_controller|avmm_readdata[0]~2_combout\);

-- Location: FF_X17_Y12_N29
\flash_data_latch[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk_57~inputclkctrl_outclk\,
	d => \u0|onchip_flash_0|avmm_data_controller|avmm_readdata[0]~2_combout\,
	clrn => \phi2~inputclkctrl_outclk\,
	ena => \u0|onchip_flash_0|avmm_data_controller|avmm_readdatavalid_reg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => flash_data_latch(0));

-- Location: LCCOMB_X17_Y12_N22
\data[0]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data[0]~16_combout\ = (addr_latch(0) & (addr_latch(1) & ((!flash_data_latch(0))))) # (!addr_latch(0) & (((!flash_data_latch(8))) # (!addr_latch(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010110011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => addr_latch(0),
	datab => addr_latch(1),
	datac => flash_data_latch(8),
	datad => flash_data_latch(0),
	combout => \data[0]~16_combout\);

-- Location: LCCOMB_X17_Y12_N24
\u0|onchip_flash_0|avmm_data_controller|avmm_readdata[24]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|avmm_readdata[24]~3_combout\ = (\u0|onchip_flash_0|avmm_data_controller|csr_status_r_pass~q\ & !\u0|onchip_flash_0|altera_onchip_flash_block|drdout\(24))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u0|onchip_flash_0|avmm_data_controller|csr_status_r_pass~q\,
	datad => \u0|onchip_flash_0|altera_onchip_flash_block|drdout\(24),
	combout => \u0|onchip_flash_0|avmm_data_controller|avmm_readdata[24]~3_combout\);

-- Location: FF_X17_Y12_N25
\flash_data_latch[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk_57~inputclkctrl_outclk\,
	d => \u0|onchip_flash_0|avmm_data_controller|avmm_readdata[24]~3_combout\,
	clrn => \phi2~inputclkctrl_outclk\,
	ena => \u0|onchip_flash_0|avmm_data_controller|avmm_readdatavalid_reg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => flash_data_latch(24));

-- Location: LCCOMB_X17_Y12_N10
\data[0]~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data[0]~17_combout\ = (addr_latch(1) & (((\data[0]~16_combout\)))) # (!addr_latch(1) & ((\data[0]~16_combout\ & ((!flash_data_latch(24)))) # (!\data[0]~16_combout\ & (!flash_data_latch(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000111110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => addr_latch(1),
	datab => flash_data_latch(16),
	datac => \data[0]~16_combout\,
	datad => flash_data_latch(24),
	combout => \data[0]~17_combout\);

-- Location: LCCOMB_X17_Y12_N4
\data[0]~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data[0]~34_combout\ = (\dev_rom_act~q\ & ((\data[0]~17_combout\))) # (!\dev_rom_act~q\ & (\data[0]~33_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dev_rom_act~q\,
	datac => \data[0]~33_combout\,
	datad => \data[0]~17_combout\,
	combout => \data[0]~34_combout\);

-- Location: LCCOMB_X7_Y6_N4
\n_data_oe~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \n_data_oe~0_combout\ = (!\slave_ram_rden~0_combout\ & (!\master_ram_rden~0_combout\ & (!\dev_reg_act~q\ & !\dev_rom_act~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \slave_ram_rden~0_combout\,
	datab => \master_ram_rden~0_combout\,
	datac => \dev_reg_act~q\,
	datad => \dev_rom_act~q\,
	combout => \n_data_oe~0_combout\);

-- Location: LCCOMB_X7_Y6_N2
\n_extsel~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \n_extsel~0_combout\ = (\master_ram_wren~0_combout\) # (((\n_data_oe~0_combout\) # (!\Equal13~6_combout\)) # (!\rw_latch~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \master_ram_wren~0_combout\,
	datab => \rw_latch~q\,
	datac => \Equal13~6_combout\,
	datad => \n_data_oe~0_combout\,
	combout => \n_extsel~0_combout\);

-- Location: LCCOMB_X16_Y8_N16
\u0|onchip_flash_0|avmm_data_controller|avmm_readdata[17]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|avmm_readdata[17]~5_combout\ = (\u0|onchip_flash_0|avmm_data_controller|csr_status_r_pass~q\ & !\u0|onchip_flash_0|altera_onchip_flash_block|drdout\(17))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u0|onchip_flash_0|avmm_data_controller|csr_status_r_pass~q\,
	datad => \u0|onchip_flash_0|altera_onchip_flash_block|drdout\(17),
	combout => \u0|onchip_flash_0|avmm_data_controller|avmm_readdata[17]~5_combout\);

-- Location: FF_X16_Y8_N17
\flash_data_latch[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk_57~inputclkctrl_outclk\,
	d => \u0|onchip_flash_0|avmm_data_controller|avmm_readdata[17]~5_combout\,
	clrn => \phi2~inputclkctrl_outclk\,
	ena => \u0|onchip_flash_0|avmm_data_controller|avmm_readdatavalid_reg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => flash_data_latch(17));

-- Location: LCCOMB_X16_Y8_N2
\u0|onchip_flash_0|avmm_data_controller|avmm_readdata[1]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|avmm_readdata[1]~6_combout\ = (\u0|onchip_flash_0|avmm_data_controller|csr_status_r_pass~q\ & !\u0|onchip_flash_0|altera_onchip_flash_block|drdout\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u0|onchip_flash_0|avmm_data_controller|csr_status_r_pass~q\,
	datad => \u0|onchip_flash_0|altera_onchip_flash_block|drdout\(1),
	combout => \u0|onchip_flash_0|avmm_data_controller|avmm_readdata[1]~6_combout\);

-- Location: FF_X16_Y8_N3
\flash_data_latch[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk_57~inputclkctrl_outclk\,
	d => \u0|onchip_flash_0|avmm_data_controller|avmm_readdata[1]~6_combout\,
	clrn => \phi2~inputclkctrl_outclk\,
	ena => \u0|onchip_flash_0|avmm_data_controller|avmm_readdatavalid_reg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => flash_data_latch(1));

-- Location: LCCOMB_X16_Y8_N12
\data[1]~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data[1]~35_combout\ = (addr_latch(0) & ((addr_latch(1) & ((!flash_data_latch(1)))) # (!addr_latch(1) & (!flash_data_latch(17))))) # (!addr_latch(0) & (((!addr_latch(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011110100111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => addr_latch(0),
	datab => flash_data_latch(17),
	datac => addr_latch(1),
	datad => flash_data_latch(1),
	combout => \data[1]~35_combout\);

-- Location: LCCOMB_X11_Y13_N8
\u0|onchip_flash_0|avmm_data_controller|avmm_readdata[9]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|avmm_readdata[9]~4_combout\ = (\u0|onchip_flash_0|avmm_data_controller|csr_status_r_pass~q\ & !\u0|onchip_flash_0|altera_onchip_flash_block|drdout\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|csr_status_r_pass~q\,
	datad => \u0|onchip_flash_0|altera_onchip_flash_block|drdout\(9),
	combout => \u0|onchip_flash_0|avmm_data_controller|avmm_readdata[9]~4_combout\);

-- Location: FF_X11_Y13_N9
\flash_data_latch[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk_57~inputclkctrl_outclk\,
	d => \u0|onchip_flash_0|avmm_data_controller|avmm_readdata[9]~4_combout\,
	clrn => \phi2~inputclkctrl_outclk\,
	ena => \u0|onchip_flash_0|avmm_data_controller|avmm_readdatavalid_reg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => flash_data_latch(9));

-- Location: LCCOMB_X16_Y8_N14
\u0|onchip_flash_0|avmm_data_controller|avmm_readdata[25]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|avmm_readdata[25]~7_combout\ = (\u0|onchip_flash_0|avmm_data_controller|csr_status_r_pass~q\ & !\u0|onchip_flash_0|altera_onchip_flash_block|drdout\(25))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u0|onchip_flash_0|avmm_data_controller|csr_status_r_pass~q\,
	datad => \u0|onchip_flash_0|altera_onchip_flash_block|drdout\(25),
	combout => \u0|onchip_flash_0|avmm_data_controller|avmm_readdata[25]~7_combout\);

-- Location: FF_X16_Y8_N15
\flash_data_latch[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk_57~inputclkctrl_outclk\,
	d => \u0|onchip_flash_0|avmm_data_controller|avmm_readdata[25]~7_combout\,
	clrn => \phi2~inputclkctrl_outclk\,
	ena => \u0|onchip_flash_0|avmm_data_controller|avmm_readdatavalid_reg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => flash_data_latch(25));

-- Location: LCCOMB_X16_Y8_N8
\data[1]~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data[1]~36_combout\ = (\data[1]~35_combout\ & (((addr_latch(0)) # (!flash_data_latch(25))))) # (!\data[1]~35_combout\ & (!flash_data_latch(9) & ((!addr_latch(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000011011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data[1]~35_combout\,
	datab => flash_data_latch(9),
	datac => flash_data_latch(25),
	datad => addr_latch(0),
	combout => \data[1]~36_combout\);

-- Location: LCCOMB_X28_Y3_N4
\u1|r_mtbycr[1]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|r_mtbycr[1]~4_combout\ = (\u1|Decoder0~3_combout\ & ((\u1|r_mtbycr[0]~2_combout\) # ((\u1|r_mtbycr\(1) & !\u1|r_mtbycr[6]~12_combout\)))) # (!\u1|Decoder0~3_combout\ & (\u1|r_mtbycr\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|r_mtbycr\(1),
	datab => \u1|Decoder0~3_combout\,
	datac => \u1|r_mtbycr[0]~2_combout\,
	datad => \u1|r_mtbycr[6]~12_combout\,
	combout => \u1|r_mtbycr[1]~4_combout\);

-- Location: LCCOMB_X30_Y3_N8
\u1|r_mtbycr[1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|r_mtbycr[1]~feeder_combout\ = \u1|r_mtbycr[1]~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u1|r_mtbycr[1]~4_combout\,
	combout => \u1|r_mtbycr[1]~feeder_combout\);

-- Location: FF_X30_Y3_N9
\u1|r_mtbycr[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \spi_clk~input_o\,
	d => \u1|r_mtbycr[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|r_mtbycr\(1));

-- Location: LCCOMB_X23_Y1_N10
\u1|r_mtbkcr[1]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|r_mtbkcr[1]~4_combout\ = (\u1|Decoder0~3_combout\ & ((\u1|r_mtbkcr[0]~2_combout\) # ((!\u1|r_mtbkcr[6]~11_combout\ & \u1|r_mtbkcr\(1))))) # (!\u1|Decoder0~3_combout\ & (((\u1|r_mtbkcr\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|Decoder0~3_combout\,
	datab => \u1|r_mtbkcr[6]~11_combout\,
	datac => \u1|r_mtbkcr[0]~2_combout\,
	datad => \u1|r_mtbkcr\(1),
	combout => \u1|r_mtbkcr[1]~4_combout\);

-- Location: LCCOMB_X27_Y1_N16
\u1|r_mtbkcr[1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|r_mtbkcr[1]~feeder_combout\ = \u1|r_mtbkcr[1]~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u1|r_mtbkcr[1]~4_combout\,
	combout => \u1|r_mtbkcr[1]~feeder_combout\);

-- Location: FF_X27_Y1_N17
\u1|r_mtbkcr[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \spi_clk~input_o\,
	d => \u1|r_mtbkcr[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|r_mtbkcr\(1));

-- Location: LCCOMB_X23_Y1_N4
\data[1]~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data[1]~37_combout\ = (\data[0]~21_combout\ & (\data[0]~22_combout\ & ((\u1|r_mtbkcr\(1))))) # (!\data[0]~21_combout\ & (((reg_mrbs(1))) # (!\data[0]~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data[0]~21_combout\,
	datab => \data[0]~22_combout\,
	datac => reg_mrbs(1),
	datad => \u1|r_mtbkcr\(1),
	combout => \data[1]~37_combout\);

-- Location: LCCOMB_X20_Y10_N26
\data[1]~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data[1]~38_combout\ = (\data[0]~23_combout\ & ((\data[1]~37_combout\ & ((reg_fbs(1)))) # (!\data[1]~37_combout\ & (reg_srbs(1))))) # (!\data[0]~23_combout\ & (\data[1]~37_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data[0]~23_combout\,
	datab => \data[1]~37_combout\,
	datac => reg_srbs(1),
	datad => reg_fbs(1),
	combout => \data[1]~38_combout\);

-- Location: LCCOMB_X28_Y3_N6
\u1|s_sdsr[1]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|s_sdsr[1]~2_combout\ = (\u1|s_sdsr[0]~0_combout\ & ((\u1|Decoder0~3_combout\ & (\spi_mosi~input_o\)) # (!\u1|Decoder0~3_combout\ & ((\u1|s_sdsr\(1)))))) # (!\u1|s_sdsr[0]~0_combout\ & (((\u1|s_sdsr\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|s_sdsr[0]~0_combout\,
	datab => \spi_mosi~input_o\,
	datac => \u1|s_sdsr\(1),
	datad => \u1|Decoder0~3_combout\,
	combout => \u1|s_sdsr[1]~2_combout\);

-- Location: FF_X28_Y3_N7
\u1|s_sdsr[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \spi_clk~input_o\,
	d => \u1|s_sdsr[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|s_sdsr\(1));

-- Location: LCCOMB_X28_Y3_N16
\data[1]~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data[1]~39_combout\ = (\data[0]~20_combout\ & (((\data[0]~19_combout\)))) # (!\data[0]~20_combout\ & ((\data[0]~19_combout\ & ((\u1|s_sdsr\(1)))) # (!\data[0]~19_combout\ & (\data[1]~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data[1]~38_combout\,
	datab => \data[0]~20_combout\,
	datac => \data[0]~19_combout\,
	datad => \u1|s_sdsr\(1),
	combout => \data[1]~39_combout\);

-- Location: LCCOMB_X28_Y3_N0
\data[1]~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data[1]~40_combout\ = (\data[1]~39_combout\ & (((reg_stbkcr(1)) # (!\data[0]~20_combout\)))) # (!\data[1]~39_combout\ & (\u1|r_mtbycr\(1) & ((\data[0]~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|r_mtbycr\(1),
	datab => \data[1]~39_combout\,
	datac => reg_stbkcr(1),
	datad => \data[0]~20_combout\,
	combout => \data[1]~40_combout\);

-- Location: LCCOMB_X30_Y2_N24
\u1|s_master_ram_data[1]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|s_master_ram_data[1]~2_combout\ = (\u1|s_master_ram_data[7]~0_combout\ & ((\u1|Decoder0~3_combout\ & ((\spi_mosi~input_o\))) # (!\u1|Decoder0~3_combout\ & (\u1|s_master_ram_data\(1))))) # (!\u1|s_master_ram_data[7]~0_combout\ & 
-- (((\u1|s_master_ram_data\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|s_master_ram_data[7]~0_combout\,
	datab => \u1|Decoder0~3_combout\,
	datac => \u1|s_master_ram_data\(1),
	datad => \spi_mosi~input_o\,
	combout => \u1|s_master_ram_data[1]~2_combout\);

-- Location: FF_X30_Y2_N25
\u1|s_master_ram_data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \spi_clk~input_o\,
	d => \u1|s_master_ram_data[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|s_master_ram_data\(1));

-- Location: M9K_X8_Y5_N0
\u1|dpram_master|altsyncram_component|auto_generated|ram_block1a9\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "spi_dpram:u1|dpram:dpram_master|altsyncram:altsyncram_component|altsyncram_p9o3:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "bidir_dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 1,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 16384,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "old_data",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_in_clock => "clock1",
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "clock1",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 1,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 16384,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "old_data",
	port_b_read_enable_clock => "clock1",
	port_b_write_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \u1|dpram_master|altsyncram_component|auto_generated|decode2|eq_node\(1),
	portare => VCC,
	portbwe => \u1|dpram_master|altsyncram_component|auto_generated|decode3|eq_node\(1),
	portbre => \master_ram_rden~0_combout\,
	clk0 => \u1|s_master_ram_clk~clkctrl_outclk\,
	clk1 => \master_ram_clk~reg0clkctrl_outclk\,
	ena0 => \u1|s_master_ram_bank\(5),
	ena1 => \u1|dpram_master|altsyncram_component|auto_generated|rden_decode_b|eq_node\(1),
	portadatain => \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a9_PORTADATAIN_bus\,
	portbdatain => \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a9_PORTBDATAIN_bus\,
	portaaddr => \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a9_PORTAADDR_bus\,
	portbaddr => \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a9_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a9_PORTADATAOUT_bus\,
	portbdataout => \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a9_PORTBDATAOUT_bus\);

-- Location: M9K_X26_Y4_N0
\u1|dpram_master|altsyncram_component|auto_generated|ram_block1a1\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "spi_dpram:u1|dpram:dpram_master|altsyncram:altsyncram_component|altsyncram_p9o3:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "bidir_dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 1,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 16384,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "old_data",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_in_clock => "clock1",
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "clock1",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 1,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 16384,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "old_data",
	port_b_read_enable_clock => "clock1",
	port_b_write_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \u1|dpram_master|altsyncram_component|auto_generated|decode2|eq_node\(0),
	portare => VCC,
	portbwe => \u1|dpram_master|altsyncram_component|auto_generated|decode3|eq_node\(0),
	portbre => \master_ram_rden~0_combout\,
	clk0 => \u1|s_master_ram_clk~clkctrl_outclk\,
	clk1 => \master_ram_clk~reg0clkctrl_outclk\,
	ena0 => \u1|ALT_INV_s_master_ram_bank\(5),
	ena1 => \u1|dpram_master|altsyncram_component|auto_generated|rden_decode_b|eq_node\(0),
	portadatain => \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a1_PORTADATAIN_bus\,
	portbdatain => \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a1_PORTBDATAIN_bus\,
	portaaddr => \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a1_PORTAADDR_bus\,
	portbaddr => \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a1_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a1_PORTADATAOUT_bus\,
	portbdataout => \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a1_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X19_Y9_N12
\data[1]~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data[1]~41_combout\ = (\master_ram_rden~0_combout\ & (((\u1|dpram_master|altsyncram_component|auto_generated|ram_block1a1~PORTBDATAOUT0\) # (\data[0]~29_combout\)))) # (!\master_ram_rden~0_combout\ & 
-- (\u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a1~PORTBDATAOUT0\ & ((!\data[0]~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \master_ram_rden~0_combout\,
	datab => \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a1~PORTBDATAOUT0\,
	datac => \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a1~PORTBDATAOUT0\,
	datad => \data[0]~29_combout\,
	combout => \data[1]~41_combout\);

-- Location: LCCOMB_X19_Y9_N6
\data[1]~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data[1]~42_combout\ = (\data[0]~29_combout\ & ((\data[1]~41_combout\ & ((\u1|dpram_master|altsyncram_component|auto_generated|ram_block1a9~PORTBDATAOUT0\))) # (!\data[1]~41_combout\ & 
-- (\u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a9~PORTBDATAOUT0\)))) # (!\data[0]~29_combout\ & (((\data[1]~41_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data[0]~29_combout\,
	datab => \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a9~PORTBDATAOUT0\,
	datac => \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a9~PORTBDATAOUT0\,
	datad => \data[1]~41_combout\,
	combout => \data[1]~42_combout\);

-- Location: LCCOMB_X24_Y8_N16
\data[1]~43\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data[1]~43_combout\ = (\data[0]~28_combout\ & (((\data[0]~18_combout\)))) # (!\data[0]~28_combout\ & ((\data[0]~18_combout\ & ((reg_sdcr(1)))) # (!\data[0]~18_combout\ & (\data[1]~42_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data[1]~42_combout\,
	datab => \data[0]~28_combout\,
	datac => reg_sdcr(1),
	datad => \data[0]~18_combout\,
	combout => \data[1]~43_combout\);

-- Location: LCCOMB_X24_Y8_N14
\data[1]~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data[1]~44_combout\ = (\data[0]~28_combout\ & ((\data[1]~43_combout\ & ((reg_stbycr(1)))) # (!\data[1]~43_combout\ & (\data[1]~40_combout\)))) # (!\data[0]~28_combout\ & (((\data[1]~43_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data[1]~40_combout\,
	datab => \data[0]~28_combout\,
	datac => reg_stbycr(1),
	datad => \data[1]~43_combout\,
	combout => \data[1]~44_combout\);

-- Location: LCCOMB_X24_Y8_N6
\data[1]~45\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data[1]~45_combout\ = (\dev_rom_act~q\ & (\data[1]~36_combout\)) # (!\dev_rom_act~q\ & ((\data[1]~44_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data[1]~36_combout\,
	datac => \dev_rom_act~q\,
	datad => \data[1]~44_combout\,
	combout => \data[1]~45_combout\);

-- Location: LCCOMB_X16_Y14_N10
\u0|onchip_flash_0|avmm_data_controller|avmm_readdata[10]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|avmm_readdata[10]~9_combout\ = (\u0|onchip_flash_0|avmm_data_controller|csr_status_r_pass~q\ & !\u0|onchip_flash_0|altera_onchip_flash_block|drdout\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u0|onchip_flash_0|avmm_data_controller|csr_status_r_pass~q\,
	datad => \u0|onchip_flash_0|altera_onchip_flash_block|drdout\(10),
	combout => \u0|onchip_flash_0|avmm_data_controller|avmm_readdata[10]~9_combout\);

-- Location: FF_X16_Y14_N11
\flash_data_latch[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk_57~inputclkctrl_outclk\,
	d => \u0|onchip_flash_0|avmm_data_controller|avmm_readdata[10]~9_combout\,
	clrn => \phi2~inputclkctrl_outclk\,
	ena => \u0|onchip_flash_0|avmm_data_controller|avmm_readdatavalid_reg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => flash_data_latch(10));

-- Location: LCCOMB_X16_Y14_N20
\u0|onchip_flash_0|avmm_data_controller|avmm_readdata[2]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|avmm_readdata[2]~10_combout\ = (\u0|onchip_flash_0|avmm_data_controller|csr_status_r_pass~q\ & !\u0|onchip_flash_0|altera_onchip_flash_block|drdout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u0|onchip_flash_0|avmm_data_controller|csr_status_r_pass~q\,
	datad => \u0|onchip_flash_0|altera_onchip_flash_block|drdout\(2),
	combout => \u0|onchip_flash_0|avmm_data_controller|avmm_readdata[2]~10_combout\);

-- Location: FF_X16_Y14_N21
\flash_data_latch[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk_57~inputclkctrl_outclk\,
	d => \u0|onchip_flash_0|avmm_data_controller|avmm_readdata[2]~10_combout\,
	clrn => \phi2~inputclkctrl_outclk\,
	ena => \u0|onchip_flash_0|avmm_data_controller|avmm_readdatavalid_reg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => flash_data_latch(2));

-- Location: LCCOMB_X16_Y14_N6
\data[2]~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data[2]~46_combout\ = (addr_latch(1) & ((addr_latch(0) & ((!flash_data_latch(2)))) # (!addr_latch(0) & (!flash_data_latch(10))))) # (!addr_latch(1) & (((!addr_latch(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000001011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => flash_data_latch(10),
	datab => flash_data_latch(2),
	datac => addr_latch(1),
	datad => addr_latch(0),
	combout => \data[2]~46_combout\);

-- Location: LCCOMB_X16_Y14_N0
\u0|onchip_flash_0|avmm_data_controller|avmm_readdata[18]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|avmm_readdata[18]~8_combout\ = (\u0|onchip_flash_0|avmm_data_controller|csr_status_r_pass~q\ & !\u0|onchip_flash_0|altera_onchip_flash_block|drdout\(18))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u0|onchip_flash_0|avmm_data_controller|csr_status_r_pass~q\,
	datad => \u0|onchip_flash_0|altera_onchip_flash_block|drdout\(18),
	combout => \u0|onchip_flash_0|avmm_data_controller|avmm_readdata[18]~8_combout\);

-- Location: FF_X16_Y14_N1
\flash_data_latch[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk_57~inputclkctrl_outclk\,
	d => \u0|onchip_flash_0|avmm_data_controller|avmm_readdata[18]~8_combout\,
	clrn => \phi2~inputclkctrl_outclk\,
	ena => \u0|onchip_flash_0|avmm_data_controller|avmm_readdatavalid_reg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => flash_data_latch(18));

-- Location: LCCOMB_X16_Y14_N24
\u0|onchip_flash_0|avmm_data_controller|avmm_readdata[26]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|avmm_readdata[26]~11_combout\ = (\u0|onchip_flash_0|avmm_data_controller|csr_status_r_pass~q\ & !\u0|onchip_flash_0|altera_onchip_flash_block|drdout\(26))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u0|onchip_flash_0|avmm_data_controller|csr_status_r_pass~q\,
	datad => \u0|onchip_flash_0|altera_onchip_flash_block|drdout\(26),
	combout => \u0|onchip_flash_0|avmm_data_controller|avmm_readdata[26]~11_combout\);

-- Location: FF_X16_Y14_N25
\flash_data_latch[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk_57~inputclkctrl_outclk\,
	d => \u0|onchip_flash_0|avmm_data_controller|avmm_readdata[26]~11_combout\,
	clrn => \phi2~inputclkctrl_outclk\,
	ena => \u0|onchip_flash_0|avmm_data_controller|avmm_readdatavalid_reg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => flash_data_latch(26));

-- Location: LCCOMB_X16_Y14_N26
\data[2]~47\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data[2]~47_combout\ = (\data[2]~46_combout\ & (((addr_latch(1)) # (!flash_data_latch(26))))) # (!\data[2]~46_combout\ & (!flash_data_latch(18) & (!addr_latch(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000110101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data[2]~46_combout\,
	datab => flash_data_latch(18),
	datac => addr_latch(1),
	datad => flash_data_latch(26),
	combout => \data[2]~47_combout\);

-- Location: LCCOMB_X30_Y8_N8
\u1|s_sdsr[2]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|s_sdsr[2]~3_combout\ = (\u1|Decoder0~4_combout\ & ((\u1|s_sdsr[0]~0_combout\ & ((\spi_mosi~input_o\))) # (!\u1|s_sdsr[0]~0_combout\ & (\u1|s_sdsr\(2))))) # (!\u1|Decoder0~4_combout\ & (\u1|s_sdsr\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|Decoder0~4_combout\,
	datab => \u1|s_sdsr\(2),
	datac => \u1|s_sdsr[0]~0_combout\,
	datad => \spi_mosi~input_o\,
	combout => \u1|s_sdsr[2]~3_combout\);

-- Location: LCCOMB_X30_Y4_N16
\u1|s_sdsr[2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|s_sdsr[2]~feeder_combout\ = \u1|s_sdsr[2]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u1|s_sdsr[2]~3_combout\,
	combout => \u1|s_sdsr[2]~feeder_combout\);

-- Location: FF_X30_Y4_N17
\u1|s_sdsr[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \spi_clk~input_o\,
	d => \u1|s_sdsr[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|s_sdsr\(2));

-- Location: LCCOMB_X30_Y9_N14
\u1|r_mtbycr[2]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|r_mtbycr[2]~5_combout\ = (\u1|Decoder0~4_combout\ & ((\u1|r_mtbycr[0]~2_combout\) # ((\u1|r_mtbycr\(2) & !\u1|r_mtbycr[6]~12_combout\)))) # (!\u1|Decoder0~4_combout\ & (((\u1|r_mtbycr\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|Decoder0~4_combout\,
	datab => \u1|r_mtbycr[0]~2_combout\,
	datac => \u1|r_mtbycr\(2),
	datad => \u1|r_mtbycr[6]~12_combout\,
	combout => \u1|r_mtbycr[2]~5_combout\);

-- Location: FF_X30_Y9_N15
\u1|r_mtbycr[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \spi_clk~input_o\,
	d => \u1|r_mtbycr[2]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|r_mtbycr\(2));

-- Location: LCCOMB_X23_Y1_N24
\u1|r_mtbkcr[2]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|r_mtbkcr[2]~5_combout\ = (\u1|Decoder0~4_combout\ & ((\u1|r_mtbkcr[0]~2_combout\) # ((!\u1|r_mtbkcr[6]~11_combout\ & \u1|r_mtbkcr\(2))))) # (!\u1|Decoder0~4_combout\ & (((\u1|r_mtbkcr\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|r_mtbkcr[0]~2_combout\,
	datab => \u1|r_mtbkcr[6]~11_combout\,
	datac => \u1|r_mtbkcr\(2),
	datad => \u1|Decoder0~4_combout\,
	combout => \u1|r_mtbkcr[2]~5_combout\);

-- Location: FF_X23_Y1_N25
\u1|r_mtbkcr[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \spi_clk~input_o\,
	d => \u1|r_mtbkcr[2]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|r_mtbkcr\(2));

-- Location: LCCOMB_X23_Y1_N22
\data[2]~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data[2]~48_combout\ = (\data[0]~21_combout\ & (\u1|r_mtbkcr\(2) & ((\data[0]~22_combout\)))) # (!\data[0]~21_combout\ & (((reg_mrbs(2)) # (!\data[0]~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data[0]~21_combout\,
	datab => \u1|r_mtbkcr\(2),
	datac => reg_mrbs(2),
	datad => \data[0]~22_combout\,
	combout => \data[2]~48_combout\);

-- Location: LCCOMB_X20_Y10_N4
\data[2]~49\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data[2]~49_combout\ = (\data[0]~23_combout\ & ((\data[2]~48_combout\ & ((reg_fbs(2)))) # (!\data[2]~48_combout\ & (reg_srbs(2))))) # (!\data[0]~23_combout\ & (\data[2]~48_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data[0]~23_combout\,
	datab => \data[2]~48_combout\,
	datac => reg_srbs(2),
	datad => reg_fbs(2),
	combout => \data[2]~49_combout\);

-- Location: LCCOMB_X30_Y9_N8
\data[2]~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data[2]~50_combout\ = (\data[0]~19_combout\ & (\data[0]~20_combout\)) # (!\data[0]~19_combout\ & ((\data[0]~20_combout\ & (\u1|r_mtbycr\(2))) # (!\data[0]~20_combout\ & ((\data[2]~49_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data[0]~19_combout\,
	datab => \data[0]~20_combout\,
	datac => \u1|r_mtbycr\(2),
	datad => \data[2]~49_combout\,
	combout => \data[2]~50_combout\);

-- Location: LCCOMB_X30_Y8_N12
\data[2]~51\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data[2]~51_combout\ = (\data[0]~19_combout\ & ((\data[2]~50_combout\ & ((reg_stbkcr(2)))) # (!\data[2]~50_combout\ & (\u1|s_sdsr\(2))))) # (!\data[0]~19_combout\ & (((\data[2]~50_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data[0]~19_combout\,
	datab => \u1|s_sdsr\(2),
	datac => reg_stbkcr(2),
	datad => \data[2]~50_combout\,
	combout => \data[2]~51_combout\);

-- Location: LCCOMB_X29_Y5_N24
\u1|s_master_ram_data[2]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|s_master_ram_data[2]~3_combout\ = (\u1|Decoder0~4_combout\ & ((\u1|s_master_ram_data[7]~0_combout\ & ((\spi_mosi~input_o\))) # (!\u1|s_master_ram_data[7]~0_combout\ & (\u1|s_master_ram_data\(2))))) # (!\u1|Decoder0~4_combout\ & 
-- (((\u1|s_master_ram_data\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|Decoder0~4_combout\,
	datab => \u1|s_master_ram_data[7]~0_combout\,
	datac => \u1|s_master_ram_data\(2),
	datad => \spi_mosi~input_o\,
	combout => \u1|s_master_ram_data[2]~3_combout\);

-- Location: FF_X29_Y5_N25
\u1|s_master_ram_data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \spi_clk~input_o\,
	d => \u1|s_master_ram_data[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|s_master_ram_data\(2));

-- Location: M9K_X26_Y20_N0
\u1|dpram_master|altsyncram_component|auto_generated|ram_block1a10\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "spi_dpram:u1|dpram:dpram_master|altsyncram:altsyncram_component|altsyncram_p9o3:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "bidir_dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 2,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 16384,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "old_data",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_in_clock => "clock1",
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "clock1",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 2,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 16384,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "old_data",
	port_b_read_enable_clock => "clock1",
	port_b_write_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \u1|dpram_master|altsyncram_component|auto_generated|decode2|eq_node\(1),
	portare => VCC,
	portbwe => \u1|dpram_master|altsyncram_component|auto_generated|decode3|eq_node\(1),
	portbre => \master_ram_rden~0_combout\,
	clk0 => \u1|s_master_ram_clk~clkctrl_outclk\,
	clk1 => \master_ram_clk~reg0clkctrl_outclk\,
	ena0 => \u1|s_master_ram_bank\(5),
	ena1 => \u1|dpram_master|altsyncram_component|auto_generated|rden_decode_b|eq_node\(1),
	portadatain => \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a10_PORTADATAIN_bus\,
	portbdatain => \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a10_PORTBDATAIN_bus\,
	portaaddr => \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a10_PORTAADDR_bus\,
	portbaddr => \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a10_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a10_PORTADATAOUT_bus\,
	portbdataout => \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a10_PORTBDATAOUT_bus\);

-- Location: M9K_X26_Y23_N0
\u1|dpram_master|altsyncram_component|auto_generated|ram_block1a2\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "spi_dpram:u1|dpram:dpram_master|altsyncram:altsyncram_component|altsyncram_p9o3:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "bidir_dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 2,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 16384,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "old_data",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_in_clock => "clock1",
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "clock1",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 2,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 16384,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "old_data",
	port_b_read_enable_clock => "clock1",
	port_b_write_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \u1|dpram_master|altsyncram_component|auto_generated|decode2|eq_node\(0),
	portare => VCC,
	portbwe => \u1|dpram_master|altsyncram_component|auto_generated|decode3|eq_node\(0),
	portbre => \master_ram_rden~0_combout\,
	clk0 => \u1|s_master_ram_clk~clkctrl_outclk\,
	clk1 => \master_ram_clk~reg0clkctrl_outclk\,
	ena0 => \u1|ALT_INV_s_master_ram_bank\(5),
	ena1 => \u1|dpram_master|altsyncram_component|auto_generated|rden_decode_b|eq_node\(0),
	portadatain => \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a2_PORTADATAIN_bus\,
	portbdatain => \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a2_PORTBDATAIN_bus\,
	portaaddr => \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a2_PORTAADDR_bus\,
	portbaddr => \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a2_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a2_PORTADATAOUT_bus\,
	portbdataout => \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a2_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X19_Y9_N16
\data[2]~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data[2]~52_combout\ = (\master_ram_rden~0_combout\ & (((\u1|dpram_master|altsyncram_component|auto_generated|ram_block1a2~PORTBDATAOUT0\) # (\data[0]~29_combout\)))) # (!\master_ram_rden~0_combout\ & 
-- (\u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a2~PORTBDATAOUT0\ & ((!\data[0]~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \master_ram_rden~0_combout\,
	datab => \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a2~PORTBDATAOUT0\,
	datac => \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a2~PORTBDATAOUT0\,
	datad => \data[0]~29_combout\,
	combout => \data[2]~52_combout\);

-- Location: LCCOMB_X19_Y9_N18
\data[2]~53\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data[2]~53_combout\ = (\data[0]~29_combout\ & ((\data[2]~52_combout\ & ((\u1|dpram_master|altsyncram_component|auto_generated|ram_block1a10~PORTBDATAOUT0\))) # (!\data[2]~52_combout\ & 
-- (\u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a10~PORTBDATAOUT0\)))) # (!\data[0]~29_combout\ & (((\data[2]~52_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data[0]~29_combout\,
	datab => \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a10~PORTBDATAOUT0\,
	datac => \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a10~PORTBDATAOUT0\,
	datad => \data[2]~52_combout\,
	combout => \data[2]~53_combout\);

-- Location: LCCOMB_X24_Y8_N8
\data[2]~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data[2]~54_combout\ = (\data[0]~28_combout\ & ((\data[2]~51_combout\) # ((\data[0]~18_combout\)))) # (!\data[0]~28_combout\ & (((\data[2]~53_combout\ & !\data[0]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data[2]~51_combout\,
	datab => \data[2]~53_combout\,
	datac => \data[0]~28_combout\,
	datad => \data[0]~18_combout\,
	combout => \data[2]~54_combout\);

-- Location: LCCOMB_X24_Y8_N28
\data[2]~55\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data[2]~55_combout\ = (\data[0]~18_combout\ & ((\data[2]~54_combout\ & ((reg_stbycr(2)))) # (!\data[2]~54_combout\ & (reg_sdcr(2))))) # (!\data[0]~18_combout\ & (\data[2]~54_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data[0]~18_combout\,
	datab => \data[2]~54_combout\,
	datac => reg_sdcr(2),
	datad => reg_stbycr(2),
	combout => \data[2]~55_combout\);

-- Location: LCCOMB_X16_Y14_N4
\data[2]~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data[2]~56_combout\ = (\dev_rom_act~q\ & (\data[2]~47_combout\)) # (!\dev_rom_act~q\ & ((\data[2]~55_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data[2]~47_combout\,
	datab => \dev_rom_act~q\,
	datad => \data[2]~55_combout\,
	combout => \data[2]~56_combout\);

-- Location: LCCOMB_X23_Y1_N28
\u1|r_mtbkcr[3]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|r_mtbkcr[3]~6_combout\ = (\u1|Decoder0~1_combout\ & ((\u1|r_mtbkcr[0]~2_combout\) # ((\u1|r_mtbkcr\(3) & !\u1|r_mtbkcr[6]~11_combout\)))) # (!\u1|Decoder0~1_combout\ & (((\u1|r_mtbkcr\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|r_mtbkcr[0]~2_combout\,
	datab => \u1|r_mtbkcr\(3),
	datac => \u1|Decoder0~1_combout\,
	datad => \u1|r_mtbkcr[6]~11_combout\,
	combout => \u1|r_mtbkcr[3]~6_combout\);

-- Location: LCCOMB_X27_Y1_N26
\u1|r_mtbkcr[3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|r_mtbkcr[3]~feeder_combout\ = \u1|r_mtbkcr[3]~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u1|r_mtbkcr[3]~6_combout\,
	combout => \u1|r_mtbkcr[3]~feeder_combout\);

-- Location: FF_X27_Y1_N27
\u1|r_mtbkcr[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \spi_clk~input_o\,
	d => \u1|r_mtbkcr[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|r_mtbkcr\(3));

-- Location: LCCOMB_X23_Y1_N26
\data[3]~59\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data[3]~59_combout\ = (\data[0]~21_combout\ & (\u1|r_mtbkcr\(3) & ((\data[0]~22_combout\)))) # (!\data[0]~21_combout\ & (((reg_mrbs(3)) # (!\data[0]~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data[0]~21_combout\,
	datab => \u1|r_mtbkcr\(3),
	datac => reg_mrbs(3),
	datad => \data[0]~22_combout\,
	combout => \data[3]~59_combout\);

-- Location: LCCOMB_X20_Y10_N30
\data[3]~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data[3]~60_combout\ = (\data[0]~23_combout\ & ((\data[3]~59_combout\ & ((reg_fbs(3)))) # (!\data[3]~59_combout\ & (reg_srbs(3))))) # (!\data[0]~23_combout\ & (\data[3]~59_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data[0]~23_combout\,
	datab => \data[3]~59_combout\,
	datac => reg_srbs(3),
	datad => reg_fbs(3),
	combout => \data[3]~60_combout\);

-- Location: LCCOMB_X30_Y9_N12
\u1|s_sdsr[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|s_sdsr[3]~4_combout\ = (\u1|s_sdsr[0]~0_combout\ & ((\u1|Decoder0~1_combout\ & (\spi_mosi~input_o\)) # (!\u1|Decoder0~1_combout\ & ((\u1|s_sdsr\(3)))))) # (!\u1|s_sdsr[0]~0_combout\ & (((\u1|s_sdsr\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi_mosi~input_o\,
	datab => \u1|s_sdsr[0]~0_combout\,
	datac => \u1|s_sdsr\(3),
	datad => \u1|Decoder0~1_combout\,
	combout => \u1|s_sdsr[3]~4_combout\);

-- Location: FF_X30_Y9_N13
\u1|s_sdsr[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \spi_clk~input_o\,
	d => \u1|s_sdsr[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|s_sdsr\(3));

-- Location: LCCOMB_X30_Y9_N22
\data[3]~61\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data[3]~61_combout\ = (\data[0]~20_combout\ & (((\data[0]~19_combout\)))) # (!\data[0]~20_combout\ & ((\data[0]~19_combout\ & ((\u1|s_sdsr\(3)))) # (!\data[0]~19_combout\ & (\data[3]~60_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data[3]~60_combout\,
	datab => \data[0]~20_combout\,
	datac => \data[0]~19_combout\,
	datad => \u1|s_sdsr\(3),
	combout => \data[3]~61_combout\);

-- Location: LCCOMB_X30_Y9_N10
\u1|r_mtbycr[3]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|r_mtbycr[3]~6_combout\ = (\u1|Decoder0~1_combout\ & ((\u1|r_mtbycr[0]~2_combout\) # ((\u1|r_mtbycr\(3) & !\u1|r_mtbycr[6]~12_combout\)))) # (!\u1|Decoder0~1_combout\ & (((\u1|r_mtbycr\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|Decoder0~1_combout\,
	datab => \u1|r_mtbycr[0]~2_combout\,
	datac => \u1|r_mtbycr\(3),
	datad => \u1|r_mtbycr[6]~12_combout\,
	combout => \u1|r_mtbycr[3]~6_combout\);

-- Location: FF_X30_Y9_N11
\u1|r_mtbycr[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \spi_clk~input_o\,
	d => \u1|r_mtbycr[3]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|r_mtbycr\(3));

-- Location: LCCOMB_X30_Y9_N0
\data[3]~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data[3]~62_combout\ = (\data[3]~61_combout\ & (((reg_stbkcr(3))) # (!\data[0]~20_combout\))) # (!\data[3]~61_combout\ & (\data[0]~20_combout\ & ((\u1|r_mtbycr\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data[3]~61_combout\,
	datab => \data[0]~20_combout\,
	datac => reg_stbkcr(3),
	datad => \u1|r_mtbycr\(3),
	combout => \data[3]~62_combout\);

-- Location: LCCOMB_X23_Y6_N18
\u1|s_master_ram_data[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|s_master_ram_data[3]~4_combout\ = (\u1|s_master_ram_data[7]~0_combout\ & ((\u1|Decoder0~1_combout\ & ((\spi_mosi~input_o\))) # (!\u1|Decoder0~1_combout\ & (\u1|s_master_ram_data\(3))))) # (!\u1|s_master_ram_data[7]~0_combout\ & 
-- (((\u1|s_master_ram_data\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|s_master_ram_data[7]~0_combout\,
	datab => \u1|Decoder0~1_combout\,
	datac => \u1|s_master_ram_data\(3),
	datad => \spi_mosi~input_o\,
	combout => \u1|s_master_ram_data[3]~4_combout\);

-- Location: FF_X23_Y6_N19
\u1|s_master_ram_data[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \spi_clk~input_o\,
	d => \u1|s_master_ram_data[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|s_master_ram_data\(3));

-- Location: M9K_X26_Y10_N0
\u1|dpram_master|altsyncram_component|auto_generated|ram_block1a11\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "spi_dpram:u1|dpram:dpram_master|altsyncram:altsyncram_component|altsyncram_p9o3:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "bidir_dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 3,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 16384,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "old_data",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_in_clock => "clock1",
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "clock1",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 3,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 16384,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "old_data",
	port_b_read_enable_clock => "clock1",
	port_b_write_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \u1|dpram_master|altsyncram_component|auto_generated|decode2|eq_node\(1),
	portare => VCC,
	portbwe => \u1|dpram_master|altsyncram_component|auto_generated|decode3|eq_node\(1),
	portbre => \master_ram_rden~0_combout\,
	clk0 => \u1|s_master_ram_clk~clkctrl_outclk\,
	clk1 => \master_ram_clk~reg0clkctrl_outclk\,
	ena0 => \u1|s_master_ram_bank\(5),
	ena1 => \u1|dpram_master|altsyncram_component|auto_generated|rden_decode_b|eq_node\(1),
	portadatain => \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a11_PORTADATAIN_bus\,
	portbdatain => \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a11_PORTBDATAIN_bus\,
	portaaddr => \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a11_PORTAADDR_bus\,
	portbaddr => \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a11_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a11_PORTADATAOUT_bus\,
	portbdataout => \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a11_PORTBDATAOUT_bus\);

-- Location: M9K_X26_Y6_N0
\u1|dpram_master|altsyncram_component|auto_generated|ram_block1a3\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "spi_dpram:u1|dpram:dpram_master|altsyncram:altsyncram_component|altsyncram_p9o3:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "bidir_dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 3,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 16384,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "old_data",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_in_clock => "clock1",
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "clock1",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 3,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 16384,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "old_data",
	port_b_read_enable_clock => "clock1",
	port_b_write_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \u1|dpram_master|altsyncram_component|auto_generated|decode2|eq_node\(0),
	portare => VCC,
	portbwe => \u1|dpram_master|altsyncram_component|auto_generated|decode3|eq_node\(0),
	portbre => \master_ram_rden~0_combout\,
	clk0 => \u1|s_master_ram_clk~clkctrl_outclk\,
	clk1 => \master_ram_clk~reg0clkctrl_outclk\,
	ena0 => \u1|ALT_INV_s_master_ram_bank\(5),
	ena1 => \u1|dpram_master|altsyncram_component|auto_generated|rden_decode_b|eq_node\(0),
	portadatain => \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a3_PORTADATAIN_bus\,
	portbdatain => \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a3_PORTBDATAIN_bus\,
	portaaddr => \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a3_PORTAADDR_bus\,
	portbaddr => \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a3_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a3_PORTADATAOUT_bus\,
	portbdataout => \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a3_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X19_Y9_N4
\data[3]~63\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data[3]~63_combout\ = (\master_ram_rden~0_combout\ & (((\u1|dpram_master|altsyncram_component|auto_generated|ram_block1a3~PORTBDATAOUT0\) # (\data[0]~29_combout\)))) # (!\master_ram_rden~0_combout\ & 
-- (\u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a3~PORTBDATAOUT0\ & ((!\data[0]~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \master_ram_rden~0_combout\,
	datab => \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a3~PORTBDATAOUT0\,
	datac => \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a3~PORTBDATAOUT0\,
	datad => \data[0]~29_combout\,
	combout => \data[3]~63_combout\);

-- Location: LCCOMB_X19_Y9_N14
\data[3]~64\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data[3]~64_combout\ = (\data[3]~63_combout\ & ((\u1|dpram_master|altsyncram_component|auto_generated|ram_block1a11~PORTBDATAOUT0\) # ((!\data[0]~29_combout\)))) # (!\data[3]~63_combout\ & 
-- (((\u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a11~PORTBDATAOUT0\ & \data[0]~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a11~PORTBDATAOUT0\,
	datab => \data[3]~63_combout\,
	datac => \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a11~PORTBDATAOUT0\,
	datad => \data[0]~29_combout\,
	combout => \data[3]~64_combout\);

-- Location: LCCOMB_X24_Y8_N12
\data[3]~65\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data[3]~65_combout\ = (\data[0]~28_combout\ & (((\data[0]~18_combout\)))) # (!\data[0]~28_combout\ & ((\data[0]~18_combout\ & ((reg_sdcr(3)))) # (!\data[0]~18_combout\ & (\data[3]~64_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data[3]~64_combout\,
	datab => \data[0]~28_combout\,
	datac => reg_sdcr(3),
	datad => \data[0]~18_combout\,
	combout => \data[3]~65_combout\);

-- Location: LCCOMB_X24_Y8_N2
\data[3]~66\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data[3]~66_combout\ = (\data[0]~28_combout\ & ((\data[3]~65_combout\ & ((reg_stbycr(3)))) # (!\data[3]~65_combout\ & (\data[3]~62_combout\)))) # (!\data[0]~28_combout\ & (((\data[3]~65_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data[3]~62_combout\,
	datab => \data[0]~28_combout\,
	datac => reg_stbycr(3),
	datad => \data[3]~65_combout\,
	combout => \data[3]~66_combout\);

-- Location: LCCOMB_X16_Y8_N10
\u0|onchip_flash_0|avmm_data_controller|avmm_readdata[27]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|avmm_readdata[27]~15_combout\ = (\u0|onchip_flash_0|avmm_data_controller|csr_status_r_pass~q\ & !\u0|onchip_flash_0|altera_onchip_flash_block|drdout\(27))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|csr_status_r_pass~q\,
	datac => \u0|onchip_flash_0|altera_onchip_flash_block|drdout\(27),
	combout => \u0|onchip_flash_0|avmm_data_controller|avmm_readdata[27]~15_combout\);

-- Location: FF_X16_Y8_N11
\flash_data_latch[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk_57~inputclkctrl_outclk\,
	d => \u0|onchip_flash_0|avmm_data_controller|avmm_readdata[27]~15_combout\,
	clrn => \phi2~inputclkctrl_outclk\,
	ena => \u0|onchip_flash_0|avmm_data_controller|avmm_readdatavalid_reg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => flash_data_latch(27));

-- Location: LCCOMB_X16_Y8_N30
\u0|onchip_flash_0|avmm_data_controller|avmm_readdata[3]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|avmm_readdata[3]~14_combout\ = (\u0|onchip_flash_0|avmm_data_controller|csr_status_r_pass~q\ & !\u0|onchip_flash_0|altera_onchip_flash_block|drdout\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u0|onchip_flash_0|avmm_data_controller|csr_status_r_pass~q\,
	datad => \u0|onchip_flash_0|altera_onchip_flash_block|drdout\(3),
	combout => \u0|onchip_flash_0|avmm_data_controller|avmm_readdata[3]~14_combout\);

-- Location: FF_X16_Y8_N31
\flash_data_latch[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk_57~inputclkctrl_outclk\,
	d => \u0|onchip_flash_0|avmm_data_controller|avmm_readdata[3]~14_combout\,
	clrn => \phi2~inputclkctrl_outclk\,
	ena => \u0|onchip_flash_0|avmm_data_controller|avmm_readdatavalid_reg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => flash_data_latch(3));

-- Location: LCCOMB_X16_Y8_N28
\u0|onchip_flash_0|avmm_data_controller|avmm_readdata[19]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|avmm_readdata[19]~13_combout\ = (\u0|onchip_flash_0|avmm_data_controller|csr_status_r_pass~q\ & !\u0|onchip_flash_0|altera_onchip_flash_block|drdout\(19))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|csr_status_r_pass~q\,
	datac => \u0|onchip_flash_0|altera_onchip_flash_block|drdout\(19),
	combout => \u0|onchip_flash_0|avmm_data_controller|avmm_readdata[19]~13_combout\);

-- Location: FF_X16_Y8_N29
\flash_data_latch[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk_57~inputclkctrl_outclk\,
	d => \u0|onchip_flash_0|avmm_data_controller|avmm_readdata[19]~13_combout\,
	clrn => \phi2~inputclkctrl_outclk\,
	ena => \u0|onchip_flash_0|avmm_data_controller|avmm_readdatavalid_reg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => flash_data_latch(19));

-- Location: LCCOMB_X16_Y8_N0
\data[3]~57\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data[3]~57_combout\ = (addr_latch(1) & (!flash_data_latch(3) & ((addr_latch(0))))) # (!addr_latch(1) & (((!addr_latch(0)) # (!flash_data_latch(19)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => flash_data_latch(3),
	datab => flash_data_latch(19),
	datac => addr_latch(1),
	datad => addr_latch(0),
	combout => \data[3]~57_combout\);

-- Location: LCCOMB_X16_Y8_N26
\u0|onchip_flash_0|avmm_data_controller|avmm_readdata[11]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|avmm_readdata[11]~12_combout\ = (\u0|onchip_flash_0|avmm_data_controller|csr_status_r_pass~q\ & !\u0|onchip_flash_0|altera_onchip_flash_block|drdout\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u0|onchip_flash_0|avmm_data_controller|csr_status_r_pass~q\,
	datad => \u0|onchip_flash_0|altera_onchip_flash_block|drdout\(11),
	combout => \u0|onchip_flash_0|avmm_data_controller|avmm_readdata[11]~12_combout\);

-- Location: FF_X16_Y8_N27
\flash_data_latch[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk_57~inputclkctrl_outclk\,
	d => \u0|onchip_flash_0|avmm_data_controller|avmm_readdata[11]~12_combout\,
	clrn => \phi2~inputclkctrl_outclk\,
	ena => \u0|onchip_flash_0|avmm_data_controller|avmm_readdatavalid_reg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => flash_data_latch(11));

-- Location: LCCOMB_X16_Y8_N20
\data[3]~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data[3]~58_combout\ = (\data[3]~57_combout\ & (((addr_latch(0))) # (!flash_data_latch(27)))) # (!\data[3]~57_combout\ & (((!flash_data_latch(11) & !addr_latch(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => flash_data_latch(27),
	datab => \data[3]~57_combout\,
	datac => flash_data_latch(11),
	datad => addr_latch(0),
	combout => \data[3]~58_combout\);

-- Location: LCCOMB_X16_Y8_N22
\data[3]~67\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data[3]~67_combout\ = (\dev_rom_act~q\ & ((\data[3]~58_combout\))) # (!\dev_rom_act~q\ & (\data[3]~66_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dev_rom_act~q\,
	datac => \data[3]~66_combout\,
	datad => \data[3]~58_combout\,
	combout => \data[3]~67_combout\);

-- Location: LCCOMB_X28_Y3_N26
\u1|s_sdsr[4]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|s_sdsr[4]~5_combout\ = (\u1|s_sdsr[0]~0_combout\ & ((\u1|Decoder0~5_combout\ & (\spi_mosi~input_o\)) # (!\u1|Decoder0~5_combout\ & ((\u1|s_sdsr\(4)))))) # (!\u1|s_sdsr[0]~0_combout\ & (((\u1|s_sdsr\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|s_sdsr[0]~0_combout\,
	datab => \spi_mosi~input_o\,
	datac => \u1|s_sdsr\(4),
	datad => \u1|Decoder0~5_combout\,
	combout => \u1|s_sdsr[4]~5_combout\);

-- Location: FF_X28_Y3_N27
\u1|s_sdsr[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \spi_clk~input_o\,
	d => \u1|s_sdsr[4]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|s_sdsr\(4));

-- Location: LCCOMB_X23_Y1_N14
\u1|r_mtbkcr[4]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|r_mtbkcr[4]~7_combout\ = (\u1|Decoder0~5_combout\ & ((\u1|r_mtbkcr[0]~2_combout\) # ((!\u1|r_mtbkcr[6]~11_combout\ & \u1|r_mtbkcr\(4))))) # (!\u1|Decoder0~5_combout\ & (((\u1|r_mtbkcr\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|r_mtbkcr[0]~2_combout\,
	datab => \u1|r_mtbkcr[6]~11_combout\,
	datac => \u1|r_mtbkcr\(4),
	datad => \u1|Decoder0~5_combout\,
	combout => \u1|r_mtbkcr[4]~7_combout\);

-- Location: FF_X23_Y1_N15
\u1|r_mtbkcr[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \spi_clk~input_o\,
	d => \u1|r_mtbkcr[4]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|r_mtbkcr\(4));

-- Location: LCCOMB_X23_Y1_N12
\data[4]~70\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data[4]~70_combout\ = (\data[0]~21_combout\ & (\u1|r_mtbkcr\(4) & ((\data[0]~22_combout\)))) # (!\data[0]~21_combout\ & (((reg_mrbs(4)) # (!\data[0]~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data[0]~21_combout\,
	datab => \u1|r_mtbkcr\(4),
	datac => reg_mrbs(4),
	datad => \data[0]~22_combout\,
	combout => \data[4]~70_combout\);

-- Location: LCCOMB_X20_Y10_N16
\data[4]~71\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data[4]~71_combout\ = (\data[0]~23_combout\ & ((\data[4]~70_combout\ & ((reg_fbs(4)))) # (!\data[4]~70_combout\ & (reg_srbs(4))))) # (!\data[0]~23_combout\ & (\data[4]~70_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data[0]~23_combout\,
	datab => \data[4]~70_combout\,
	datac => reg_srbs(4),
	datad => reg_fbs(4),
	combout => \data[4]~71_combout\);

-- Location: LCCOMB_X28_Y3_N20
\u1|r_mtbycr[4]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|r_mtbycr[4]~7_combout\ = (\u1|Decoder0~5_combout\ & ((\u1|r_mtbycr[0]~2_combout\) # ((\u1|r_mtbycr\(4) & !\u1|r_mtbycr[6]~12_combout\)))) # (!\u1|Decoder0~5_combout\ & (((\u1|r_mtbycr\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|r_mtbycr[0]~2_combout\,
	datab => \u1|Decoder0~5_combout\,
	datac => \u1|r_mtbycr\(4),
	datad => \u1|r_mtbycr[6]~12_combout\,
	combout => \u1|r_mtbycr[4]~7_combout\);

-- Location: FF_X28_Y3_N21
\u1|r_mtbycr[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \spi_clk~input_o\,
	d => \u1|r_mtbycr[4]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|r_mtbycr\(4));

-- Location: LCCOMB_X28_Y3_N30
\data[4]~72\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data[4]~72_combout\ = (\data[0]~20_combout\ & (((\data[0]~19_combout\) # (\u1|r_mtbycr\(4))))) # (!\data[0]~20_combout\ & (\data[4]~71_combout\ & (!\data[0]~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data[0]~20_combout\,
	datab => \data[4]~71_combout\,
	datac => \data[0]~19_combout\,
	datad => \u1|r_mtbycr\(4),
	combout => \data[4]~72_combout\);

-- Location: LCCOMB_X28_Y3_N8
\data[4]~73\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data[4]~73_combout\ = (\data[0]~19_combout\ & ((\data[4]~72_combout\ & ((reg_stbkcr(4)))) # (!\data[4]~72_combout\ & (\u1|s_sdsr\(4))))) # (!\data[0]~19_combout\ & (((\data[4]~72_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|s_sdsr\(4),
	datab => \data[0]~19_combout\,
	datac => reg_stbkcr(4),
	datad => \data[4]~72_combout\,
	combout => \data[4]~73_combout\);

-- Location: LCCOMB_X28_Y3_N22
\u1|s_master_ram_data[4]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|s_master_ram_data[4]~5_combout\ = (\u1|s_master_ram_data[7]~0_combout\ & ((\u1|Decoder0~5_combout\ & (\spi_mosi~input_o\)) # (!\u1|Decoder0~5_combout\ & ((\u1|s_master_ram_data\(4)))))) # (!\u1|s_master_ram_data[7]~0_combout\ & 
-- (((\u1|s_master_ram_data\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|s_master_ram_data[7]~0_combout\,
	datab => \spi_mosi~input_o\,
	datac => \u1|s_master_ram_data\(4),
	datad => \u1|Decoder0~5_combout\,
	combout => \u1|s_master_ram_data[4]~5_combout\);

-- Location: FF_X28_Y3_N23
\u1|s_master_ram_data[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \spi_clk~input_o\,
	d => \u1|s_master_ram_data[4]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|s_master_ram_data\(4));

-- Location: M9K_X26_Y5_N0
\u1|dpram_master|altsyncram_component|auto_generated|ram_block1a12\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "spi_dpram:u1|dpram:dpram_master|altsyncram:altsyncram_component|altsyncram_p9o3:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "bidir_dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 4,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 16384,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "old_data",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_in_clock => "clock1",
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "clock1",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 4,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 16384,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "old_data",
	port_b_read_enable_clock => "clock1",
	port_b_write_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \u1|dpram_master|altsyncram_component|auto_generated|decode2|eq_node\(1),
	portare => VCC,
	portbwe => \u1|dpram_master|altsyncram_component|auto_generated|decode3|eq_node\(1),
	portbre => \master_ram_rden~0_combout\,
	clk0 => \u1|s_master_ram_clk~clkctrl_outclk\,
	clk1 => \master_ram_clk~reg0clkctrl_outclk\,
	ena0 => \u1|s_master_ram_bank\(5),
	ena1 => \u1|dpram_master|altsyncram_component|auto_generated|rden_decode_b|eq_node\(1),
	portadatain => \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a12_PORTADATAIN_bus\,
	portbdatain => \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a12_PORTBDATAIN_bus\,
	portaaddr => \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a12_PORTAADDR_bus\,
	portbaddr => \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a12_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a12_PORTADATAOUT_bus\,
	portbdataout => \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a12_PORTBDATAOUT_bus\);

-- Location: M9K_X26_Y2_N0
\u1|dpram_master|altsyncram_component|auto_generated|ram_block1a4\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "spi_dpram:u1|dpram:dpram_master|altsyncram:altsyncram_component|altsyncram_p9o3:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "bidir_dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 4,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 16384,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "old_data",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_in_clock => "clock1",
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "clock1",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 4,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 16384,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "old_data",
	port_b_read_enable_clock => "clock1",
	port_b_write_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \u1|dpram_master|altsyncram_component|auto_generated|decode2|eq_node\(0),
	portare => VCC,
	portbwe => \u1|dpram_master|altsyncram_component|auto_generated|decode3|eq_node\(0),
	portbre => \master_ram_rden~0_combout\,
	clk0 => \u1|s_master_ram_clk~clkctrl_outclk\,
	clk1 => \master_ram_clk~reg0clkctrl_outclk\,
	ena0 => \u1|ALT_INV_s_master_ram_bank\(5),
	ena1 => \u1|dpram_master|altsyncram_component|auto_generated|rden_decode_b|eq_node\(0),
	portadatain => \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a4_PORTADATAIN_bus\,
	portbdatain => \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a4_PORTBDATAIN_bus\,
	portaaddr => \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a4_PORTAADDR_bus\,
	portbaddr => \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a4_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a4_PORTADATAOUT_bus\,
	portbdataout => \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a4_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X19_Y9_N8
\data[4]~74\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data[4]~74_combout\ = (\master_ram_rden~0_combout\ & ((\u1|dpram_master|altsyncram_component|auto_generated|ram_block1a4~PORTBDATAOUT0\) # ((\data[0]~29_combout\)))) # (!\master_ram_rden~0_combout\ & 
-- (((\u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a4~PORTBDATAOUT0\ & !\data[0]~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \master_ram_rden~0_combout\,
	datab => \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a4~PORTBDATAOUT0\,
	datac => \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a4~PORTBDATAOUT0\,
	datad => \data[0]~29_combout\,
	combout => \data[4]~74_combout\);

-- Location: LCCOMB_X19_Y9_N26
\data[4]~75\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data[4]~75_combout\ = (\data[4]~74_combout\ & (((\u1|dpram_master|altsyncram_component|auto_generated|ram_block1a12~PORTBDATAOUT0\) # (!\data[0]~29_combout\)))) # (!\data[4]~74_combout\ & 
-- (\u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a12~PORTBDATAOUT0\ & ((\data[0]~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a12~PORTBDATAOUT0\,
	datab => \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a12~PORTBDATAOUT0\,
	datac => \data[4]~74_combout\,
	datad => \data[0]~29_combout\,
	combout => \data[4]~75_combout\);

-- Location: LCCOMB_X24_Y8_N10
\data[4]~76\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data[4]~76_combout\ = (\data[0]~28_combout\ & ((\data[4]~73_combout\) # ((\data[0]~18_combout\)))) # (!\data[0]~28_combout\ & (((\data[4]~75_combout\ & !\data[0]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data[4]~73_combout\,
	datab => \data[4]~75_combout\,
	datac => \data[0]~28_combout\,
	datad => \data[0]~18_combout\,
	combout => \data[4]~76_combout\);

-- Location: LCCOMB_X24_Y8_N4
\data[4]~77\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data[4]~77_combout\ = (\data[0]~18_combout\ & ((\data[4]~76_combout\ & (reg_stbycr(4))) # (!\data[4]~76_combout\ & ((reg_sdcr(4)))))) # (!\data[0]~18_combout\ & (((\data[4]~76_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => reg_stbycr(4),
	datab => \data[0]~18_combout\,
	datac => reg_sdcr(4),
	datad => \data[4]~76_combout\,
	combout => \data[4]~77_combout\);

-- Location: LCCOMB_X13_Y13_N16
\u0|onchip_flash_0|avmm_data_controller|avmm_readdata[20]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|avmm_readdata[20]~16_combout\ = (\u0|onchip_flash_0|avmm_data_controller|csr_status_r_pass~q\ & !\u0|onchip_flash_0|altera_onchip_flash_block|drdout\(20))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u0|onchip_flash_0|avmm_data_controller|csr_status_r_pass~q\,
	datac => \u0|onchip_flash_0|altera_onchip_flash_block|drdout\(20),
	combout => \u0|onchip_flash_0|avmm_data_controller|avmm_readdata[20]~16_combout\);

-- Location: FF_X13_Y13_N17
\flash_data_latch[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk_57~inputclkctrl_outclk\,
	d => \u0|onchip_flash_0|avmm_data_controller|avmm_readdata[20]~16_combout\,
	clrn => \phi2~inputclkctrl_outclk\,
	ena => \u0|onchip_flash_0|avmm_data_controller|avmm_readdatavalid_reg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => flash_data_latch(20));

-- Location: LCCOMB_X13_Y13_N24
\u0|onchip_flash_0|avmm_data_controller|avmm_readdata[28]~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|avmm_readdata[28]~19_combout\ = (\u0|onchip_flash_0|avmm_data_controller|csr_status_r_pass~q\ & !\u0|onchip_flash_0|altera_onchip_flash_block|drdout\(28))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u0|onchip_flash_0|avmm_data_controller|csr_status_r_pass~q\,
	datad => \u0|onchip_flash_0|altera_onchip_flash_block|drdout\(28),
	combout => \u0|onchip_flash_0|avmm_data_controller|avmm_readdata[28]~19_combout\);

-- Location: FF_X13_Y13_N25
\flash_data_latch[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk_57~inputclkctrl_outclk\,
	d => \u0|onchip_flash_0|avmm_data_controller|avmm_readdata[28]~19_combout\,
	clrn => \phi2~inputclkctrl_outclk\,
	ena => \u0|onchip_flash_0|avmm_data_controller|avmm_readdatavalid_reg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => flash_data_latch(28));

-- Location: LCCOMB_X13_Y13_N20
\u0|onchip_flash_0|avmm_data_controller|avmm_readdata[4]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|avmm_readdata[4]~18_combout\ = (\u0|onchip_flash_0|avmm_data_controller|csr_status_r_pass~q\ & !\u0|onchip_flash_0|altera_onchip_flash_block|drdout\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u0|onchip_flash_0|avmm_data_controller|csr_status_r_pass~q\,
	datad => \u0|onchip_flash_0|altera_onchip_flash_block|drdout\(4),
	combout => \u0|onchip_flash_0|avmm_data_controller|avmm_readdata[4]~18_combout\);

-- Location: FF_X13_Y13_N21
\flash_data_latch[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk_57~inputclkctrl_outclk\,
	d => \u0|onchip_flash_0|avmm_data_controller|avmm_readdata[4]~18_combout\,
	clrn => \phi2~inputclkctrl_outclk\,
	ena => \u0|onchip_flash_0|avmm_data_controller|avmm_readdatavalid_reg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => flash_data_latch(4));

-- Location: LCCOMB_X13_Y13_N26
\u0|onchip_flash_0|avmm_data_controller|avmm_readdata[12]~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|avmm_readdata[12]~17_combout\ = (\u0|onchip_flash_0|avmm_data_controller|csr_status_r_pass~q\ & !\u0|onchip_flash_0|altera_onchip_flash_block|drdout\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u0|onchip_flash_0|avmm_data_controller|csr_status_r_pass~q\,
	datad => \u0|onchip_flash_0|altera_onchip_flash_block|drdout\(12),
	combout => \u0|onchip_flash_0|avmm_data_controller|avmm_readdata[12]~17_combout\);

-- Location: FF_X13_Y13_N27
\flash_data_latch[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk_57~inputclkctrl_outclk\,
	d => \u0|onchip_flash_0|avmm_data_controller|avmm_readdata[12]~17_combout\,
	clrn => \phi2~inputclkctrl_outclk\,
	ena => \u0|onchip_flash_0|avmm_data_controller|avmm_readdatavalid_reg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => flash_data_latch(12));

-- Location: LCCOMB_X13_Y13_N22
\data[4]~68\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data[4]~68_combout\ = (addr_latch(0) & (!flash_data_latch(4) & ((addr_latch(1))))) # (!addr_latch(0) & (((!addr_latch(1)) # (!flash_data_latch(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => addr_latch(0),
	datab => flash_data_latch(4),
	datac => flash_data_latch(12),
	datad => addr_latch(1),
	combout => \data[4]~68_combout\);

-- Location: LCCOMB_X13_Y13_N18
\data[4]~69\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data[4]~69_combout\ = (\data[4]~68_combout\ & (((addr_latch(1)) # (!flash_data_latch(28))))) # (!\data[4]~68_combout\ & (!flash_data_latch(20) & ((!addr_latch(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => flash_data_latch(20),
	datab => flash_data_latch(28),
	datac => \data[4]~68_combout\,
	datad => addr_latch(1),
	combout => \data[4]~69_combout\);

-- Location: LCCOMB_X16_Y8_N24
\data[4]~78\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data[4]~78_combout\ = (\dev_rom_act~q\ & ((\data[4]~69_combout\))) # (!\dev_rom_act~q\ & (\data[4]~77_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dev_rom_act~q\,
	datac => \data[4]~77_combout\,
	datad => \data[4]~69_combout\,
	combout => \data[4]~78_combout\);

-- Location: LCCOMB_X27_Y2_N8
\u1|s_master_ram_data[5]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|s_master_ram_data[5]~6_combout\ = (\u1|s_master_ram_data[7]~0_combout\ & ((\u1|Decoder0~0_combout\ & (\spi_mosi~input_o\)) # (!\u1|Decoder0~0_combout\ & ((\u1|s_master_ram_data\(5)))))) # (!\u1|s_master_ram_data[7]~0_combout\ & 
-- (((\u1|s_master_ram_data\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi_mosi~input_o\,
	datab => \u1|s_master_ram_data[7]~0_combout\,
	datac => \u1|s_master_ram_data\(5),
	datad => \u1|Decoder0~0_combout\,
	combout => \u1|s_master_ram_data[5]~6_combout\);

-- Location: FF_X27_Y2_N9
\u1|s_master_ram_data[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \spi_clk~input_o\,
	d => \u1|s_master_ram_data[5]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|s_master_ram_data\(5));

-- Location: M9K_X26_Y24_N0
\u1|dpram_master|altsyncram_component|auto_generated|ram_block1a13\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "spi_dpram:u1|dpram:dpram_master|altsyncram:altsyncram_component|altsyncram_p9o3:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "bidir_dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 5,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 16384,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "old_data",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_in_clock => "clock1",
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "clock1",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 5,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 16384,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "old_data",
	port_b_read_enable_clock => "clock1",
	port_b_write_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \u1|dpram_master|altsyncram_component|auto_generated|decode2|eq_node\(1),
	portare => VCC,
	portbwe => \u1|dpram_master|altsyncram_component|auto_generated|decode3|eq_node\(1),
	portbre => \master_ram_rden~0_combout\,
	clk0 => \u1|s_master_ram_clk~clkctrl_outclk\,
	clk1 => \master_ram_clk~reg0clkctrl_outclk\,
	ena0 => \u1|s_master_ram_bank\(5),
	ena1 => \u1|dpram_master|altsyncram_component|auto_generated|rden_decode_b|eq_node\(1),
	portadatain => \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a13_PORTADATAIN_bus\,
	portbdatain => \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a13_PORTBDATAIN_bus\,
	portaaddr => \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a13_PORTAADDR_bus\,
	portbaddr => \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a13_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a13_PORTADATAOUT_bus\,
	portbdataout => \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a13_PORTBDATAOUT_bus\);

-- Location: M9K_X5_Y4_N0
\u1|dpram_master|altsyncram_component|auto_generated|ram_block1a5\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "spi_dpram:u1|dpram:dpram_master|altsyncram:altsyncram_component|altsyncram_p9o3:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "bidir_dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 5,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 16384,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "old_data",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_in_clock => "clock1",
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "clock1",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 5,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 16384,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "old_data",
	port_b_read_enable_clock => "clock1",
	port_b_write_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \u1|dpram_master|altsyncram_component|auto_generated|decode2|eq_node\(0),
	portare => VCC,
	portbwe => \u1|dpram_master|altsyncram_component|auto_generated|decode3|eq_node\(0),
	portbre => \master_ram_rden~0_combout\,
	clk0 => \u1|s_master_ram_clk~clkctrl_outclk\,
	clk1 => \master_ram_clk~reg0clkctrl_outclk\,
	ena0 => \u1|ALT_INV_s_master_ram_bank\(5),
	ena1 => \u1|dpram_master|altsyncram_component|auto_generated|rden_decode_b|eq_node\(0),
	portadatain => \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a5_PORTADATAIN_bus\,
	portbdatain => \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a5_PORTBDATAIN_bus\,
	portaaddr => \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a5_PORTAADDR_bus\,
	portbaddr => \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a5_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a5_PORTADATAOUT_bus\,
	portbdataout => \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a5_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X19_Y9_N20
\data[5]~85\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data[5]~85_combout\ = (\master_ram_rden~0_combout\ & ((\u1|dpram_master|altsyncram_component|auto_generated|ram_block1a5~PORTBDATAOUT0\) # ((\data[0]~29_combout\)))) # (!\master_ram_rden~0_combout\ & 
-- (((\u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a5~PORTBDATAOUT0\ & !\data[0]~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \master_ram_rden~0_combout\,
	datab => \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a5~PORTBDATAOUT0\,
	datac => \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a5~PORTBDATAOUT0\,
	datad => \data[0]~29_combout\,
	combout => \data[5]~85_combout\);

-- Location: LCCOMB_X19_Y9_N30
\data[5]~86\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data[5]~86_combout\ = (\data[0]~29_combout\ & ((\data[5]~85_combout\ & ((\u1|dpram_master|altsyncram_component|auto_generated|ram_block1a13~PORTBDATAOUT0\))) # (!\data[5]~85_combout\ & 
-- (\u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a13~PORTBDATAOUT0\)))) # (!\data[0]~29_combout\ & (((\data[5]~85_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data[0]~29_combout\,
	datab => \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a13~PORTBDATAOUT0\,
	datac => \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a13~PORTBDATAOUT0\,
	datad => \data[5]~85_combout\,
	combout => \data[5]~86_combout\);

-- Location: LCCOMB_X22_Y9_N14
\data[5]~87\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data[5]~87_combout\ = (\data[0]~28_combout\ & (((\data[0]~18_combout\)))) # (!\data[0]~28_combout\ & ((\data[0]~18_combout\ & ((reg_sdcr(5)))) # (!\data[0]~18_combout\ & (\data[5]~86_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data[0]~28_combout\,
	datab => \data[5]~86_combout\,
	datac => reg_sdcr(5),
	datad => \data[0]~18_combout\,
	combout => \data[5]~87_combout\);

-- Location: LCCOMB_X23_Y1_N8
\u1|r_mtbkcr[5]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|r_mtbkcr[5]~8_combout\ = (\u1|Decoder0~0_combout\ & ((\u1|r_mtbkcr[0]~2_combout\) # ((!\u1|r_mtbkcr[6]~11_combout\ & \u1|r_mtbkcr\(5))))) # (!\u1|Decoder0~0_combout\ & (((\u1|r_mtbkcr\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|r_mtbkcr[0]~2_combout\,
	datab => \u1|r_mtbkcr[6]~11_combout\,
	datac => \u1|r_mtbkcr\(5),
	datad => \u1|Decoder0~0_combout\,
	combout => \u1|r_mtbkcr[5]~8_combout\);

-- Location: FF_X23_Y1_N9
\u1|r_mtbkcr[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \spi_clk~input_o\,
	d => \u1|r_mtbkcr[5]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|r_mtbkcr\(5));

-- Location: LCCOMB_X23_Y1_N2
\data[5]~81\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data[5]~81_combout\ = (\data[0]~21_combout\ & (((\u1|r_mtbkcr\(5) & \data[0]~22_combout\)))) # (!\data[0]~21_combout\ & ((reg_mrbs(5)) # ((!\data[0]~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data[0]~21_combout\,
	datab => reg_mrbs(5),
	datac => \u1|r_mtbkcr\(5),
	datad => \data[0]~22_combout\,
	combout => \data[5]~81_combout\);

-- Location: LCCOMB_X20_Y10_N10
\data[5]~82\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data[5]~82_combout\ = (\data[0]~23_combout\ & ((\data[5]~81_combout\ & (reg_fbs(5))) # (!\data[5]~81_combout\ & ((reg_srbs(5)))))) # (!\data[0]~23_combout\ & (\data[5]~81_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data[0]~23_combout\,
	datab => \data[5]~81_combout\,
	datac => reg_fbs(5),
	datad => reg_srbs(5),
	combout => \data[5]~82_combout\);

-- Location: LCCOMB_X30_Y9_N2
\u1|s_sdsr[5]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|s_sdsr[5]~6_combout\ = (\u1|s_sdsr[0]~0_combout\ & ((\u1|Decoder0~0_combout\ & (\spi_mosi~input_o\)) # (!\u1|Decoder0~0_combout\ & ((\u1|s_sdsr\(5)))))) # (!\u1|s_sdsr[0]~0_combout\ & (((\u1|s_sdsr\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi_mosi~input_o\,
	datab => \u1|s_sdsr[0]~0_combout\,
	datac => \u1|s_sdsr\(5),
	datad => \u1|Decoder0~0_combout\,
	combout => \u1|s_sdsr[5]~6_combout\);

-- Location: FF_X30_Y9_N3
\u1|s_sdsr[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \spi_clk~input_o\,
	d => \u1|s_sdsr[5]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|s_sdsr\(5));

-- Location: LCCOMB_X30_Y9_N20
\data[5]~83\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data[5]~83_combout\ = (\data[0]~20_combout\ & (((\data[0]~19_combout\)))) # (!\data[0]~20_combout\ & ((\data[0]~19_combout\ & ((\u1|s_sdsr\(5)))) # (!\data[0]~19_combout\ & (\data[5]~82_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data[5]~82_combout\,
	datab => \data[0]~20_combout\,
	datac => \data[0]~19_combout\,
	datad => \u1|s_sdsr\(5),
	combout => \data[5]~83_combout\);

-- Location: LCCOMB_X30_Y9_N24
\u1|r_mtbycr[5]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|r_mtbycr[5]~8_combout\ = (\u1|Decoder0~0_combout\ & ((\u1|r_mtbycr[0]~2_combout\) # ((\u1|r_mtbycr\(5) & !\u1|r_mtbycr[6]~12_combout\)))) # (!\u1|Decoder0~0_combout\ & (((\u1|r_mtbycr\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|Decoder0~0_combout\,
	datab => \u1|r_mtbycr[0]~2_combout\,
	datac => \u1|r_mtbycr\(5),
	datad => \u1|r_mtbycr[6]~12_combout\,
	combout => \u1|r_mtbycr[5]~8_combout\);

-- Location: FF_X30_Y9_N25
\u1|r_mtbycr[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \spi_clk~input_o\,
	d => \u1|r_mtbycr[5]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|r_mtbycr\(5));

-- Location: LCCOMB_X30_Y9_N18
\data[5]~84\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data[5]~84_combout\ = (\data[0]~20_combout\ & ((\data[5]~83_combout\ & (reg_stbkcr(5))) # (!\data[5]~83_combout\ & ((\u1|r_mtbycr\(5)))))) # (!\data[0]~20_combout\ & (\data[5]~83_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data[0]~20_combout\,
	datab => \data[5]~83_combout\,
	datac => reg_stbkcr(5),
	datad => \u1|r_mtbycr\(5),
	combout => \data[5]~84_combout\);

-- Location: LCCOMB_X22_Y9_N28
\data[5]~88\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data[5]~88_combout\ = (\data[0]~28_combout\ & ((\data[5]~87_combout\ & (reg_stbycr(5))) # (!\data[5]~87_combout\ & ((\data[5]~84_combout\))))) # (!\data[0]~28_combout\ & (\data[5]~87_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data[0]~28_combout\,
	datab => \data[5]~87_combout\,
	datac => reg_stbycr(5),
	datad => \data[5]~84_combout\,
	combout => \data[5]~88_combout\);

-- Location: LCCOMB_X16_Y14_N14
\u0|onchip_flash_0|avmm_data_controller|avmm_readdata[29]~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|avmm_readdata[29]~23_combout\ = (\u0|onchip_flash_0|avmm_data_controller|csr_status_r_pass~q\ & !\u0|onchip_flash_0|altera_onchip_flash_block|drdout\(29))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u0|onchip_flash_0|avmm_data_controller|csr_status_r_pass~q\,
	datad => \u0|onchip_flash_0|altera_onchip_flash_block|drdout\(29),
	combout => \u0|onchip_flash_0|avmm_data_controller|avmm_readdata[29]~23_combout\);

-- Location: FF_X16_Y14_N15
\flash_data_latch[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk_57~inputclkctrl_outclk\,
	d => \u0|onchip_flash_0|avmm_data_controller|avmm_readdata[29]~23_combout\,
	clrn => \phi2~inputclkctrl_outclk\,
	ena => \u0|onchip_flash_0|avmm_data_controller|avmm_readdatavalid_reg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => flash_data_latch(29));

-- Location: LCCOMB_X16_Y14_N30
\u0|onchip_flash_0|avmm_data_controller|avmm_readdata[13]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|avmm_readdata[13]~20_combout\ = (\u0|onchip_flash_0|avmm_data_controller|csr_status_r_pass~q\ & !\u0|onchip_flash_0|altera_onchip_flash_block|drdout\(13))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u0|onchip_flash_0|avmm_data_controller|csr_status_r_pass~q\,
	datad => \u0|onchip_flash_0|altera_onchip_flash_block|drdout\(13),
	combout => \u0|onchip_flash_0|avmm_data_controller|avmm_readdata[13]~20_combout\);

-- Location: FF_X16_Y14_N31
\flash_data_latch[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk_57~inputclkctrl_outclk\,
	d => \u0|onchip_flash_0|avmm_data_controller|avmm_readdata[13]~20_combout\,
	clrn => \phi2~inputclkctrl_outclk\,
	ena => \u0|onchip_flash_0|avmm_data_controller|avmm_readdatavalid_reg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => flash_data_latch(13));

-- Location: LCCOMB_X16_Y14_N8
\u0|onchip_flash_0|avmm_data_controller|avmm_readdata[21]~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|avmm_readdata[21]~21_combout\ = (\u0|onchip_flash_0|avmm_data_controller|csr_status_r_pass~q\ & !\u0|onchip_flash_0|altera_onchip_flash_block|drdout\(21))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|csr_status_r_pass~q\,
	datac => \u0|onchip_flash_0|altera_onchip_flash_block|drdout\(21),
	combout => \u0|onchip_flash_0|avmm_data_controller|avmm_readdata[21]~21_combout\);

-- Location: FF_X16_Y14_N9
\flash_data_latch[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk_57~inputclkctrl_outclk\,
	d => \u0|onchip_flash_0|avmm_data_controller|avmm_readdata[21]~21_combout\,
	clrn => \phi2~inputclkctrl_outclk\,
	ena => \u0|onchip_flash_0|avmm_data_controller|avmm_readdatavalid_reg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => flash_data_latch(21));

-- Location: LCCOMB_X16_Y14_N2
\u0|onchip_flash_0|avmm_data_controller|avmm_readdata[5]~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|avmm_readdata[5]~22_combout\ = (\u0|onchip_flash_0|avmm_data_controller|csr_status_r_pass~q\ & !\u0|onchip_flash_0|altera_onchip_flash_block|drdout\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u0|onchip_flash_0|avmm_data_controller|csr_status_r_pass~q\,
	datad => \u0|onchip_flash_0|altera_onchip_flash_block|drdout\(5),
	combout => \u0|onchip_flash_0|avmm_data_controller|avmm_readdata[5]~22_combout\);

-- Location: FF_X16_Y14_N3
\flash_data_latch[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk_57~inputclkctrl_outclk\,
	d => \u0|onchip_flash_0|avmm_data_controller|avmm_readdata[5]~22_combout\,
	clrn => \phi2~inputclkctrl_outclk\,
	ena => \u0|onchip_flash_0|avmm_data_controller|avmm_readdatavalid_reg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => flash_data_latch(5));

-- Location: LCCOMB_X16_Y14_N28
\data[5]~79\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data[5]~79_combout\ = (addr_latch(0) & ((addr_latch(1) & ((!flash_data_latch(5)))) # (!addr_latch(1) & (!flash_data_latch(21))))) # (!addr_latch(0) & (!addr_latch(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001110011011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => addr_latch(0),
	datab => addr_latch(1),
	datac => flash_data_latch(21),
	datad => flash_data_latch(5),
	combout => \data[5]~79_combout\);

-- Location: LCCOMB_X16_Y14_N16
\data[5]~80\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data[5]~80_combout\ = (addr_latch(0) & (((\data[5]~79_combout\)))) # (!addr_latch(0) & ((\data[5]~79_combout\ & (!flash_data_latch(29))) # (!\data[5]~79_combout\ & ((!flash_data_latch(13))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => addr_latch(0),
	datab => flash_data_latch(29),
	datac => flash_data_latch(13),
	datad => \data[5]~79_combout\,
	combout => \data[5]~80_combout\);

-- Location: LCCOMB_X16_Y14_N18
\data[5]~89\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data[5]~89_combout\ = (\dev_rom_act~q\ & ((\data[5]~80_combout\))) # (!\dev_rom_act~q\ & (\data[5]~88_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dev_rom_act~q\,
	datac => \data[5]~88_combout\,
	datad => \data[5]~80_combout\,
	combout => \data[5]~89_combout\);

-- Location: LCCOMB_X13_Y13_N6
\u0|onchip_flash_0|avmm_data_controller|avmm_readdata[14]~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|avmm_readdata[14]~25_combout\ = (\u0|onchip_flash_0|avmm_data_controller|csr_status_r_pass~q\ & !\u0|onchip_flash_0|altera_onchip_flash_block|drdout\(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u0|onchip_flash_0|avmm_data_controller|csr_status_r_pass~q\,
	datad => \u0|onchip_flash_0|altera_onchip_flash_block|drdout\(14),
	combout => \u0|onchip_flash_0|avmm_data_controller|avmm_readdata[14]~25_combout\);

-- Location: FF_X13_Y13_N7
\flash_data_latch[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk_57~inputclkctrl_outclk\,
	d => \u0|onchip_flash_0|avmm_data_controller|avmm_readdata[14]~25_combout\,
	clrn => \phi2~inputclkctrl_outclk\,
	ena => \u0|onchip_flash_0|avmm_data_controller|avmm_readdatavalid_reg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => flash_data_latch(14));

-- Location: LCCOMB_X13_Y13_N8
\u0|onchip_flash_0|avmm_data_controller|avmm_readdata[6]~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|avmm_readdata[6]~26_combout\ = (\u0|onchip_flash_0|avmm_data_controller|csr_status_r_pass~q\ & !\u0|onchip_flash_0|altera_onchip_flash_block|drdout\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u0|onchip_flash_0|avmm_data_controller|csr_status_r_pass~q\,
	datad => \u0|onchip_flash_0|altera_onchip_flash_block|drdout\(6),
	combout => \u0|onchip_flash_0|avmm_data_controller|avmm_readdata[6]~26_combout\);

-- Location: FF_X13_Y13_N9
\flash_data_latch[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk_57~inputclkctrl_outclk\,
	d => \u0|onchip_flash_0|avmm_data_controller|avmm_readdata[6]~26_combout\,
	clrn => \phi2~inputclkctrl_outclk\,
	ena => \u0|onchip_flash_0|avmm_data_controller|avmm_readdatavalid_reg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => flash_data_latch(6));

-- Location: LCCOMB_X13_Y13_N10
\data[6]~90\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data[6]~90_combout\ = (addr_latch(0) & (((!flash_data_latch(6) & addr_latch(1))))) # (!addr_latch(0) & (((!addr_latch(1))) # (!flash_data_latch(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001110100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => flash_data_latch(14),
	datab => addr_latch(0),
	datac => flash_data_latch(6),
	datad => addr_latch(1),
	combout => \data[6]~90_combout\);

-- Location: LCCOMB_X13_Y13_N28
\u0|onchip_flash_0|avmm_data_controller|avmm_readdata[22]~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|avmm_readdata[22]~24_combout\ = (\u0|onchip_flash_0|avmm_data_controller|csr_status_r_pass~q\ & !\u0|onchip_flash_0|altera_onchip_flash_block|drdout\(22))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u0|onchip_flash_0|avmm_data_controller|csr_status_r_pass~q\,
	datad => \u0|onchip_flash_0|altera_onchip_flash_block|drdout\(22),
	combout => \u0|onchip_flash_0|avmm_data_controller|avmm_readdata[22]~24_combout\);

-- Location: FF_X13_Y13_N29
\flash_data_latch[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk_57~inputclkctrl_outclk\,
	d => \u0|onchip_flash_0|avmm_data_controller|avmm_readdata[22]~24_combout\,
	clrn => \phi2~inputclkctrl_outclk\,
	ena => \u0|onchip_flash_0|avmm_data_controller|avmm_readdatavalid_reg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => flash_data_latch(22));

-- Location: LCCOMB_X13_Y13_N4
\u0|onchip_flash_0|avmm_data_controller|avmm_readdata[30]~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|avmm_readdata[30]~27_combout\ = (\u0|onchip_flash_0|avmm_data_controller|csr_status_r_pass~q\ & !\u0|onchip_flash_0|altera_onchip_flash_block|drdout\(30))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u0|onchip_flash_0|avmm_data_controller|csr_status_r_pass~q\,
	datac => \u0|onchip_flash_0|altera_onchip_flash_block|drdout\(30),
	combout => \u0|onchip_flash_0|avmm_data_controller|avmm_readdata[30]~27_combout\);

-- Location: FF_X13_Y13_N5
\flash_data_latch[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk_57~inputclkctrl_outclk\,
	d => \u0|onchip_flash_0|avmm_data_controller|avmm_readdata[30]~27_combout\,
	clrn => \phi2~inputclkctrl_outclk\,
	ena => \u0|onchip_flash_0|avmm_data_controller|avmm_readdatavalid_reg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => flash_data_latch(30));

-- Location: LCCOMB_X13_Y13_N30
\data[6]~91\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data[6]~91_combout\ = (\data[6]~90_combout\ & (((addr_latch(1)) # (!flash_data_latch(30))))) # (!\data[6]~90_combout\ & (!flash_data_latch(22) & ((!addr_latch(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000011011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data[6]~90_combout\,
	datab => flash_data_latch(22),
	datac => flash_data_latch(30),
	datad => addr_latch(1),
	combout => \data[6]~91_combout\);

-- Location: LCCOMB_X30_Y8_N18
\u1|r_mtbycr[6]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|r_mtbycr[6]~9_combout\ = (\u1|bit_cnt\(0) & (!\u1|bit_cnt\(1) & !\u1|bit_cnt\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|bit_cnt\(0),
	datac => \u1|bit_cnt\(1),
	datad => \u1|bit_cnt\(2),
	combout => \u1|r_mtbycr[6]~9_combout\);

-- Location: LCCOMB_X28_Y5_N8
\u1|s_master_ram_data[6]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|s_master_ram_data[6]~7_combout\ = (\u1|s_master_ram_data[7]~0_combout\ & ((\u1|r_mtbycr[6]~9_combout\ & (\spi_mosi~input_o\)) # (!\u1|r_mtbycr[6]~9_combout\ & ((\u1|s_master_ram_data\(6)))))) # (!\u1|s_master_ram_data[7]~0_combout\ & 
-- (((\u1|s_master_ram_data\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi_mosi~input_o\,
	datab => \u1|s_master_ram_data[7]~0_combout\,
	datac => \u1|s_master_ram_data\(6),
	datad => \u1|r_mtbycr[6]~9_combout\,
	combout => \u1|s_master_ram_data[6]~7_combout\);

-- Location: FF_X28_Y5_N9
\u1|s_master_ram_data[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \spi_clk~input_o\,
	d => \u1|s_master_ram_data[6]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|s_master_ram_data\(6));

-- Location: M9K_X5_Y5_N0
\u1|dpram_master|altsyncram_component|auto_generated|ram_block1a6\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "spi_dpram:u1|dpram:dpram_master|altsyncram:altsyncram_component|altsyncram_p9o3:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "bidir_dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 6,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 16384,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "old_data",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_in_clock => "clock1",
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "clock1",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 6,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 16384,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "old_data",
	port_b_read_enable_clock => "clock1",
	port_b_write_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \u1|dpram_master|altsyncram_component|auto_generated|decode2|eq_node\(0),
	portare => VCC,
	portbwe => \u1|dpram_master|altsyncram_component|auto_generated|decode3|eq_node\(0),
	portbre => \master_ram_rden~0_combout\,
	clk0 => \u1|s_master_ram_clk~clkctrl_outclk\,
	clk1 => \master_ram_clk~reg0clkctrl_outclk\,
	ena0 => \u1|ALT_INV_s_master_ram_bank\(5),
	ena1 => \u1|dpram_master|altsyncram_component|auto_generated|rden_decode_b|eq_node\(0),
	portadatain => \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a6_PORTADATAIN_bus\,
	portbdatain => \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a6_PORTBDATAIN_bus\,
	portaaddr => \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a6_PORTAADDR_bus\,
	portbaddr => \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a6_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a6_PORTADATAOUT_bus\,
	portbdataout => \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a6_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X19_Y9_N0
\data[6]~96\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data[6]~96_combout\ = (\master_ram_rden~0_combout\ & (((\u1|dpram_master|altsyncram_component|auto_generated|ram_block1a6~PORTBDATAOUT0\) # (\data[0]~29_combout\)))) # (!\master_ram_rden~0_combout\ & 
-- (\u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a6~PORTBDATAOUT0\ & ((!\data[0]~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \master_ram_rden~0_combout\,
	datab => \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a6~PORTBDATAOUT0\,
	datac => \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a6~PORTBDATAOUT0\,
	datad => \data[0]~29_combout\,
	combout => \data[6]~96_combout\);

-- Location: M9K_X26_Y3_N0
\u1|dpram_master|altsyncram_component|auto_generated|ram_block1a14\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "spi_dpram:u1|dpram:dpram_master|altsyncram:altsyncram_component|altsyncram_p9o3:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "bidir_dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 6,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 16384,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "old_data",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_in_clock => "clock1",
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "clock1",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 6,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 16384,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "old_data",
	port_b_read_enable_clock => "clock1",
	port_b_write_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \u1|dpram_master|altsyncram_component|auto_generated|decode2|eq_node\(1),
	portare => VCC,
	portbwe => \u1|dpram_master|altsyncram_component|auto_generated|decode3|eq_node\(1),
	portbre => \master_ram_rden~0_combout\,
	clk0 => \u1|s_master_ram_clk~clkctrl_outclk\,
	clk1 => \master_ram_clk~reg0clkctrl_outclk\,
	ena0 => \u1|s_master_ram_bank\(5),
	ena1 => \u1|dpram_master|altsyncram_component|auto_generated|rden_decode_b|eq_node\(1),
	portadatain => \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a14_PORTADATAIN_bus\,
	portbdatain => \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a14_PORTBDATAIN_bus\,
	portaaddr => \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a14_PORTAADDR_bus\,
	portbaddr => \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a14_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a14_PORTADATAOUT_bus\,
	portbdataout => \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a14_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X19_Y9_N2
\data[6]~97\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data[6]~97_combout\ = (\data[0]~29_combout\ & ((\data[6]~96_combout\ & ((\u1|dpram_master|altsyncram_component|auto_generated|ram_block1a14~PORTBDATAOUT0\))) # (!\data[6]~96_combout\ & 
-- (\u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a14~PORTBDATAOUT0\)))) # (!\data[0]~29_combout\ & (\data[6]~96_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data[0]~29_combout\,
	datab => \data[6]~96_combout\,
	datac => \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a14~PORTBDATAOUT0\,
	datad => \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a14~PORTBDATAOUT0\,
	combout => \data[6]~97_combout\);

-- Location: LCCOMB_X30_Y8_N26
\u1|r_mtbycr[6]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|r_mtbycr[6]~10_combout\ = (\u1|r_mtbycr[6]~12_combout\ & ((\u1|r_mtbycr[6]~9_combout\ & ((\spi_mosi~input_o\))) # (!\u1|r_mtbycr[6]~9_combout\ & (\u1|r_mtbycr\(6))))) # (!\u1|r_mtbycr[6]~12_combout\ & (((\u1|r_mtbycr\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|r_mtbycr[6]~12_combout\,
	datab => \u1|r_mtbycr[6]~9_combout\,
	datac => \u1|r_mtbycr\(6),
	datad => \spi_mosi~input_o\,
	combout => \u1|r_mtbycr[6]~10_combout\);

-- Location: FF_X30_Y8_N27
\u1|r_mtbycr[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \spi_clk~input_o\,
	d => \u1|r_mtbycr[6]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|r_mtbycr\(6));

-- Location: LCCOMB_X23_Y1_N6
\u1|r_mtbkcr[6]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|r_mtbkcr[6]~9_combout\ = (\u1|r_mtbycr[6]~9_combout\ & ((\u1|r_mtbkcr[6]~11_combout\ & (\spi_mosi~input_o\)) # (!\u1|r_mtbkcr[6]~11_combout\ & ((\u1|r_mtbkcr\(6)))))) # (!\u1|r_mtbycr[6]~9_combout\ & (((\u1|r_mtbkcr\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|r_mtbycr[6]~9_combout\,
	datab => \u1|r_mtbkcr[6]~11_combout\,
	datac => \spi_mosi~input_o\,
	datad => \u1|r_mtbkcr\(6),
	combout => \u1|r_mtbkcr[6]~9_combout\);

-- Location: FF_X27_Y1_N29
\u1|r_mtbkcr[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \spi_clk~input_o\,
	asdata => \u1|r_mtbkcr[6]~9_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|r_mtbkcr\(6));

-- Location: FF_X23_Y1_N21
\reg_mrbs[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_phi2_early~reg0clkctrl_outclk\,
	asdata => \data[6]~input_o\,
	clrn => \n_reset~input_o\,
	sload => VCC,
	ena => \reg_mrbs[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_mrbs(6));

-- Location: LCCOMB_X23_Y1_N20
\data[6]~92\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data[6]~92_combout\ = (\data[0]~22_combout\ & ((\data[0]~21_combout\ & (\u1|r_mtbkcr\(6))) # (!\data[0]~21_combout\ & ((reg_mrbs(6)))))) # (!\data[0]~22_combout\ & (((!\data[0]~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data[0]~22_combout\,
	datab => \u1|r_mtbkcr\(6),
	datac => reg_mrbs(6),
	datad => \data[0]~21_combout\,
	combout => \data[6]~92_combout\);

-- Location: FF_X20_Y10_N19
\reg_srbs[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_phi2_early~reg0clkctrl_outclk\,
	asdata => \data[6]~input_o\,
	clrn => \n_reset~input_o\,
	sload => VCC,
	ena => \reg_srbs[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_srbs(6));

-- Location: LCCOMB_X20_Y10_N18
\data[6]~93\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data[6]~93_combout\ = (\data[0]~23_combout\ & ((\data[6]~92_combout\ & ((reg_fbs(6)))) # (!\data[6]~92_combout\ & (reg_srbs(6))))) # (!\data[0]~23_combout\ & (\data[6]~92_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data[0]~23_combout\,
	datab => \data[6]~92_combout\,
	datac => reg_srbs(6),
	datad => reg_fbs(6),
	combout => \data[6]~93_combout\);

-- Location: LCCOMB_X30_Y9_N30
\data[6]~94\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data[6]~94_combout\ = (\data[0]~19_combout\ & (\data[0]~20_combout\)) # (!\data[0]~19_combout\ & ((\data[0]~20_combout\ & (\u1|r_mtbycr\(6))) # (!\data[0]~20_combout\ & ((\data[6]~93_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data[0]~19_combout\,
	datab => \data[0]~20_combout\,
	datac => \u1|r_mtbycr\(6),
	datad => \data[6]~93_combout\,
	combout => \data[6]~94_combout\);

-- Location: LCCOMB_X30_Y8_N2
\u1|s_sdsr[6]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|s_sdsr[6]~7_combout\ = (\u1|s_sdsr[0]~0_combout\ & ((\u1|r_mtbycr[6]~9_combout\ & ((\spi_mosi~input_o\))) # (!\u1|r_mtbycr[6]~9_combout\ & (\u1|s_sdsr\(6))))) # (!\u1|s_sdsr[0]~0_combout\ & (((\u1|s_sdsr\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|s_sdsr[0]~0_combout\,
	datab => \u1|r_mtbycr[6]~9_combout\,
	datac => \u1|s_sdsr\(6),
	datad => \spi_mosi~input_o\,
	combout => \u1|s_sdsr[6]~7_combout\);

-- Location: FF_X30_Y8_N3
\u1|s_sdsr[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \spi_clk~input_o\,
	d => \u1|s_sdsr[6]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|s_sdsr\(6));

-- Location: LCCOMB_X30_Y8_N10
\data[6]~95\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data[6]~95_combout\ = (\data[6]~94_combout\ & (((reg_stbkcr(6))) # (!\data[0]~19_combout\))) # (!\data[6]~94_combout\ & (\data[0]~19_combout\ & ((\u1|s_sdsr\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data[6]~94_combout\,
	datab => \data[0]~19_combout\,
	datac => reg_stbkcr(6),
	datad => \u1|s_sdsr\(6),
	combout => \data[6]~95_combout\);

-- Location: LCCOMB_X24_Y8_N20
\data[6]~98\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data[6]~98_combout\ = (\data[0]~18_combout\ & (((\data[0]~28_combout\)))) # (!\data[0]~18_combout\ & ((\data[0]~28_combout\ & ((\data[6]~95_combout\))) # (!\data[0]~28_combout\ & (\data[6]~97_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data[6]~97_combout\,
	datab => \data[0]~18_combout\,
	datac => \data[0]~28_combout\,
	datad => \data[6]~95_combout\,
	combout => \data[6]~98_combout\);

-- Location: LCCOMB_X24_Y8_N24
\data[6]~99\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data[6]~99_combout\ = (\data[0]~18_combout\ & ((\data[6]~98_combout\ & (reg_stbycr(6))) # (!\data[6]~98_combout\ & ((reg_sdcr(6)))))) # (!\data[0]~18_combout\ & (((\data[6]~98_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => reg_stbycr(6),
	datab => \data[0]~18_combout\,
	datac => reg_sdcr(6),
	datad => \data[6]~98_combout\,
	combout => \data[6]~99_combout\);

-- Location: LCCOMB_X24_Y8_N30
\data[6]~100\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data[6]~100_combout\ = (\dev_rom_act~q\ & (\data[6]~91_combout\)) # (!\dev_rom_act~q\ & ((\data[6]~99_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data[6]~91_combout\,
	datac => \dev_rom_act~q\,
	datad => \data[6]~99_combout\,
	combout => \data[6]~100_combout\);

-- Location: LCCOMB_X23_Y1_N0
\u1|r_mtbkcr[7]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|r_mtbkcr[7]~10_combout\ = (\u1|Decoder0~6_combout\ & ((\u1|r_mtbkcr[0]~2_combout\) # ((!\u1|r_mtbkcr[6]~11_combout\ & \u1|r_mtbkcr\(7))))) # (!\u1|Decoder0~6_combout\ & (((\u1|r_mtbkcr\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|r_mtbkcr[0]~2_combout\,
	datab => \u1|r_mtbkcr[6]~11_combout\,
	datac => \u1|r_mtbkcr\(7),
	datad => \u1|Decoder0~6_combout\,
	combout => \u1|r_mtbkcr[7]~10_combout\);

-- Location: FF_X23_Y1_N1
\u1|r_mtbkcr[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \spi_clk~input_o\,
	d => \u1|r_mtbkcr[7]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|r_mtbkcr\(7));

-- Location: FF_X23_Y1_N31
\reg_mrbs[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_phi2_early~reg0clkctrl_outclk\,
	asdata => \data[7]~input_o\,
	clrn => \n_reset~input_o\,
	sload => VCC,
	ena => \reg_mrbs[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_mrbs(7));

-- Location: LCCOMB_X23_Y1_N30
\data[7]~103\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data[7]~103_combout\ = (\data[0]~21_combout\ & (\u1|r_mtbkcr\(7) & ((\data[0]~22_combout\)))) # (!\data[0]~21_combout\ & (((reg_mrbs(7)) # (!\data[0]~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data[0]~21_combout\,
	datab => \u1|r_mtbkcr\(7),
	datac => reg_mrbs(7),
	datad => \data[0]~22_combout\,
	combout => \data[7]~103_combout\);

-- Location: FF_X20_Y10_N29
\reg_srbs[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_phi2_early~reg0clkctrl_outclk\,
	asdata => \data[7]~input_o\,
	clrn => \n_reset~input_o\,
	sload => VCC,
	ena => \reg_srbs[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_srbs(7));

-- Location: LCCOMB_X20_Y10_N28
\data[7]~104\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data[7]~104_combout\ = (\data[0]~23_combout\ & ((\data[7]~103_combout\ & ((reg_fbs(7)))) # (!\data[7]~103_combout\ & (reg_srbs(7))))) # (!\data[0]~23_combout\ & (\data[7]~103_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data[0]~23_combout\,
	datab => \data[7]~103_combout\,
	datac => reg_srbs(7),
	datad => reg_fbs(7),
	combout => \data[7]~104_combout\);

-- Location: LCCOMB_X30_Y9_N26
\data[7]~105\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data[7]~105_combout\ = (\data[0]~19_combout\ & ((\data[0]~20_combout\) # ((!\spi_ss_n~input_o\)))) # (!\data[0]~19_combout\ & (!\data[0]~20_combout\ & ((\data[7]~104_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001101110001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data[0]~19_combout\,
	datab => \data[0]~20_combout\,
	datac => \spi_ss_n~input_o\,
	datad => \data[7]~104_combout\,
	combout => \data[7]~105_combout\);

-- Location: LCCOMB_X30_Y9_N16
\u1|r_mtbycr[7]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|r_mtbycr[7]~11_combout\ = (\u1|Decoder0~6_combout\ & ((\u1|r_mtbycr[0]~2_combout\) # ((\u1|r_mtbycr\(7) & !\u1|r_mtbycr[6]~12_combout\)))) # (!\u1|Decoder0~6_combout\ & (((\u1|r_mtbycr\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|Decoder0~6_combout\,
	datab => \u1|r_mtbycr[0]~2_combout\,
	datac => \u1|r_mtbycr\(7),
	datad => \u1|r_mtbycr[6]~12_combout\,
	combout => \u1|r_mtbycr[7]~11_combout\);

-- Location: FF_X30_Y9_N17
\u1|r_mtbycr[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \spi_clk~input_o\,
	d => \u1|r_mtbycr[7]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|r_mtbycr\(7));

-- Location: LCCOMB_X30_Y9_N28
\data[7]~106\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data[7]~106_combout\ = (\data[7]~105_combout\ & (((reg_stbkcr(7))) # (!\data[0]~20_combout\))) # (!\data[7]~105_combout\ & (\data[0]~20_combout\ & ((\u1|r_mtbycr\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data[7]~105_combout\,
	datab => \data[0]~20_combout\,
	datac => reg_stbkcr(7),
	datad => \u1|r_mtbycr\(7),
	combout => \data[7]~106_combout\);

-- Location: LCCOMB_X24_Y1_N8
\u1|s_master_ram_data[7]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|s_master_ram_data[7]~8_combout\ = (\u1|Decoder0~6_combout\ & ((\u1|s_master_ram_data[7]~0_combout\ & ((\spi_mosi~input_o\))) # (!\u1|s_master_ram_data[7]~0_combout\ & (\u1|s_master_ram_data\(7))))) # (!\u1|Decoder0~6_combout\ & 
-- (((\u1|s_master_ram_data\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|Decoder0~6_combout\,
	datab => \u1|s_master_ram_data[7]~0_combout\,
	datac => \u1|s_master_ram_data\(7),
	datad => \spi_mosi~input_o\,
	combout => \u1|s_master_ram_data[7]~8_combout\);

-- Location: LCCOMB_X27_Y1_N22
\u1|s_master_ram_data[7]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|s_master_ram_data[7]~feeder_combout\ = \u1|s_master_ram_data[7]~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u1|s_master_ram_data[7]~8_combout\,
	combout => \u1|s_master_ram_data[7]~feeder_combout\);

-- Location: FF_X27_Y1_N23
\u1|s_master_ram_data[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \spi_clk~input_o\,
	d => \u1|s_master_ram_data[7]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|s_master_ram_data\(7));

-- Location: M9K_X26_Y22_N0
\u1|dpram_master|altsyncram_component|auto_generated|ram_block1a15\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "spi_dpram:u1|dpram:dpram_master|altsyncram:altsyncram_component|altsyncram_p9o3:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "bidir_dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 7,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 16384,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "old_data",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_in_clock => "clock1",
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "clock1",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 7,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 16384,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "old_data",
	port_b_read_enable_clock => "clock1",
	port_b_write_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \u1|dpram_master|altsyncram_component|auto_generated|decode2|eq_node\(1),
	portare => VCC,
	portbwe => \u1|dpram_master|altsyncram_component|auto_generated|decode3|eq_node\(1),
	portbre => \master_ram_rden~0_combout\,
	clk0 => \u1|s_master_ram_clk~clkctrl_outclk\,
	clk1 => \master_ram_clk~reg0clkctrl_outclk\,
	ena0 => \u1|s_master_ram_bank\(5),
	ena1 => \u1|dpram_master|altsyncram_component|auto_generated|rden_decode_b|eq_node\(1),
	portadatain => \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a15_PORTADATAIN_bus\,
	portbdatain => \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a15_PORTBDATAIN_bus\,
	portaaddr => \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a15_PORTAADDR_bus\,
	portbaddr => \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a15_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a15_PORTADATAOUT_bus\,
	portbdataout => \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a15_PORTBDATAOUT_bus\);

-- Location: M9K_X26_Y16_N0
\u1|dpram_master|altsyncram_component|auto_generated|ram_block1a7\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "spi_dpram:u1|dpram:dpram_master|altsyncram:altsyncram_component|altsyncram_p9o3:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "bidir_dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 7,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 16384,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "old_data",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_in_clock => "clock1",
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "clock1",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 7,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 16384,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "old_data",
	port_b_read_enable_clock => "clock1",
	port_b_write_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \u1|dpram_master|altsyncram_component|auto_generated|decode2|eq_node\(0),
	portare => VCC,
	portbwe => \u1|dpram_master|altsyncram_component|auto_generated|decode3|eq_node\(0),
	portbre => \master_ram_rden~0_combout\,
	clk0 => \u1|s_master_ram_clk~clkctrl_outclk\,
	clk1 => \master_ram_clk~reg0clkctrl_outclk\,
	ena0 => \u1|ALT_INV_s_master_ram_bank\(5),
	ena1 => \u1|dpram_master|altsyncram_component|auto_generated|rden_decode_b|eq_node\(0),
	portadatain => \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a7_PORTADATAIN_bus\,
	portbdatain => \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a7_PORTBDATAIN_bus\,
	portaaddr => \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a7_PORTAADDR_bus\,
	portbaddr => \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a7_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a7_PORTADATAOUT_bus\,
	portbdataout => \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a7_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X19_Y9_N28
\data[7]~107\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data[7]~107_combout\ = (\master_ram_rden~0_combout\ & (((\u1|dpram_master|altsyncram_component|auto_generated|ram_block1a7~PORTBDATAOUT0\) # (\data[0]~29_combout\)))) # (!\master_ram_rden~0_combout\ & 
-- (\u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a7~PORTBDATAOUT0\ & ((!\data[0]~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \master_ram_rden~0_combout\,
	datab => \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a7~PORTBDATAOUT0\,
	datac => \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a7~PORTBDATAOUT0\,
	datad => \data[0]~29_combout\,
	combout => \data[7]~107_combout\);

-- Location: LCCOMB_X19_Y9_N22
\data[7]~108\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data[7]~108_combout\ = (\data[0]~29_combout\ & ((\data[7]~107_combout\ & ((\u1|dpram_master|altsyncram_component|auto_generated|ram_block1a15~PORTBDATAOUT0\))) # (!\data[7]~107_combout\ & 
-- (\u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a15~PORTBDATAOUT0\)))) # (!\data[0]~29_combout\ & (((\data[7]~107_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data[0]~29_combout\,
	datab => \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a15~PORTBDATAOUT0\,
	datac => \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a15~PORTBDATAOUT0\,
	datad => \data[7]~107_combout\,
	combout => \data[7]~108_combout\);

-- Location: LCCOMB_X22_Y9_N10
\data[7]~109\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data[7]~109_combout\ = (\data[0]~28_combout\ & (((\data[0]~18_combout\)))) # (!\data[0]~28_combout\ & ((\data[0]~18_combout\ & ((reg_sdcr(7)))) # (!\data[0]~18_combout\ & (\data[7]~108_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data[0]~28_combout\,
	datab => \data[7]~108_combout\,
	datac => reg_sdcr(7),
	datad => \data[0]~18_combout\,
	combout => \data[7]~109_combout\);

-- Location: LCCOMB_X22_Y9_N0
\data[7]~110\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data[7]~110_combout\ = (\data[0]~28_combout\ & ((\data[7]~109_combout\ & ((reg_stbycr(7)))) # (!\data[7]~109_combout\ & (\data[7]~106_combout\)))) # (!\data[0]~28_combout\ & (((\data[7]~109_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data[0]~28_combout\,
	datab => \data[7]~106_combout\,
	datac => reg_stbycr(7),
	datad => \data[7]~109_combout\,
	combout => \data[7]~110_combout\);

-- Location: LCCOMB_X17_Y12_N30
\u0|onchip_flash_0|avmm_data_controller|avmm_readdata[31]~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|avmm_readdata[31]~31_combout\ = (\u0|onchip_flash_0|avmm_data_controller|csr_status_r_pass~q\ & !\u0|onchip_flash_0|altera_onchip_flash_block|drdout\(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u0|onchip_flash_0|avmm_data_controller|csr_status_r_pass~q\,
	datad => \u0|onchip_flash_0|altera_onchip_flash_block|drdout\(31),
	combout => \u0|onchip_flash_0|avmm_data_controller|avmm_readdata[31]~31_combout\);

-- Location: FF_X17_Y12_N31
\flash_data_latch[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk_57~inputclkctrl_outclk\,
	d => \u0|onchip_flash_0|avmm_data_controller|avmm_readdata[31]~31_combout\,
	clrn => \phi2~inputclkctrl_outclk\,
	ena => \u0|onchip_flash_0|avmm_data_controller|avmm_readdatavalid_reg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => flash_data_latch(31));

-- Location: LCCOMB_X17_Y12_N14
\u0|onchip_flash_0|avmm_data_controller|avmm_readdata[15]~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|avmm_readdata[15]~28_combout\ = (\u0|onchip_flash_0|avmm_data_controller|csr_status_r_pass~q\ & !\u0|onchip_flash_0|altera_onchip_flash_block|drdout\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u0|onchip_flash_0|avmm_data_controller|csr_status_r_pass~q\,
	datad => \u0|onchip_flash_0|altera_onchip_flash_block|drdout\(15),
	combout => \u0|onchip_flash_0|avmm_data_controller|avmm_readdata[15]~28_combout\);

-- Location: FF_X17_Y12_N15
\flash_data_latch[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk_57~inputclkctrl_outclk\,
	d => \u0|onchip_flash_0|avmm_data_controller|avmm_readdata[15]~28_combout\,
	clrn => \phi2~inputclkctrl_outclk\,
	ena => \u0|onchip_flash_0|avmm_data_controller|avmm_readdatavalid_reg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => flash_data_latch(15));

-- Location: LCCOMB_X17_Y12_N8
\u0|onchip_flash_0|avmm_data_controller|avmm_readdata[23]~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|avmm_readdata[23]~29_combout\ = (\u0|onchip_flash_0|avmm_data_controller|csr_status_r_pass~q\ & !\u0|onchip_flash_0|altera_onchip_flash_block|drdout\(23))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u0|onchip_flash_0|avmm_data_controller|csr_status_r_pass~q\,
	datad => \u0|onchip_flash_0|altera_onchip_flash_block|drdout\(23),
	combout => \u0|onchip_flash_0|avmm_data_controller|avmm_readdata[23]~29_combout\);

-- Location: FF_X17_Y12_N9
\flash_data_latch[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk_57~inputclkctrl_outclk\,
	d => \u0|onchip_flash_0|avmm_data_controller|avmm_readdata[23]~29_combout\,
	clrn => \phi2~inputclkctrl_outclk\,
	ena => \u0|onchip_flash_0|avmm_data_controller|avmm_readdatavalid_reg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => flash_data_latch(23));

-- Location: LCCOMB_X17_Y12_N18
\u0|onchip_flash_0|avmm_data_controller|avmm_readdata[7]~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|avmm_readdata[7]~30_combout\ = (\u0|onchip_flash_0|avmm_data_controller|csr_status_r_pass~q\ & !\u0|onchip_flash_0|altera_onchip_flash_block|drdout\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u0|onchip_flash_0|avmm_data_controller|csr_status_r_pass~q\,
	datad => \u0|onchip_flash_0|altera_onchip_flash_block|drdout\(7),
	combout => \u0|onchip_flash_0|avmm_data_controller|avmm_readdata[7]~30_combout\);

-- Location: FF_X17_Y12_N19
\flash_data_latch[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk_57~inputclkctrl_outclk\,
	d => \u0|onchip_flash_0|avmm_data_controller|avmm_readdata[7]~30_combout\,
	clrn => \phi2~inputclkctrl_outclk\,
	ena => \u0|onchip_flash_0|avmm_data_controller|avmm_readdatavalid_reg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => flash_data_latch(7));

-- Location: LCCOMB_X17_Y12_N12
\data[7]~101\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data[7]~101_combout\ = (addr_latch(0) & ((addr_latch(1) & ((!flash_data_latch(7)))) # (!addr_latch(1) & (!flash_data_latch(23))))) # (!addr_latch(0) & (!addr_latch(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001110011011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => addr_latch(0),
	datab => addr_latch(1),
	datac => flash_data_latch(23),
	datad => flash_data_latch(7),
	combout => \data[7]~101_combout\);

-- Location: LCCOMB_X17_Y12_N16
\data[7]~102\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data[7]~102_combout\ = (addr_latch(0) & (((\data[7]~101_combout\)))) # (!addr_latch(0) & ((\data[7]~101_combout\ & (!flash_data_latch(31))) # (!\data[7]~101_combout\ & ((!flash_data_latch(15))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => flash_data_latch(31),
	datab => flash_data_latch(15),
	datac => addr_latch(0),
	datad => \data[7]~101_combout\,
	combout => \data[7]~102_combout\);

-- Location: LCCOMB_X17_Y12_N2
\data[7]~111\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data[7]~111_combout\ = (\dev_rom_act~q\ & ((\data[7]~102_combout\))) # (!\dev_rom_act~q\ & (\data[7]~110_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data[7]~110_combout\,
	datab => \dev_rom_act~q\,
	datad => \data[7]~102_combout\,
	combout => \data[7]~111_combout\);

-- Location: LCCOMB_X15_Y8_N18
\led_latch[0]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \led_latch[0]~2_combout\ = (addr_latch(0) & (\reg_mrbs[0]~0_combout\ & (!addr_latch(5) & \led_latch[0]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => addr_latch(0),
	datab => \reg_mrbs[0]~0_combout\,
	datac => addr_latch(5),
	datad => \led_latch[0]~1_combout\,
	combout => \led_latch[0]~2_combout\);

-- Location: FF_X28_Y13_N11
\led_latch[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_phi2_early~reg0clkctrl_outclk\,
	asdata => \data[0]~input_o\,
	clrn => \n_reset~input_o\,
	sload => VCC,
	ena => \led_latch[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => led_latch(0));

-- Location: FF_X28_Y13_N13
\led_latch[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_phi2_early~reg0clkctrl_outclk\,
	asdata => \data[1]~input_o\,
	clrn => \n_reset~input_o\,
	sload => VCC,
	ena => \led_latch[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => led_latch(1));

-- Location: LCCOMB_X28_Y13_N22
\led_latch[2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \led_latch[2]~feeder_combout\ = \data[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data[2]~input_o\,
	combout => \led_latch[2]~feeder_combout\);

-- Location: FF_X28_Y13_N23
\led_latch[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_phi2_early~reg0clkctrl_outclk\,
	d => \led_latch[2]~feeder_combout\,
	clrn => \n_reset~input_o\,
	ena => \led_latch[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => led_latch(2));

-- Location: LCCOMB_X18_Y8_N24
\led_latch[3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \led_latch[3]~feeder_combout\ = \data[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data[3]~input_o\,
	combout => \led_latch[3]~feeder_combout\);

-- Location: FF_X18_Y8_N25
\led_latch[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_phi2_early~reg0clkctrl_outclk\,
	d => \led_latch[3]~feeder_combout\,
	clrn => \n_reset~input_o\,
	ena => \led_latch[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => led_latch(3));

-- Location: LCCOMB_X28_Y13_N8
\led_latch[4]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \led_latch[4]~0_combout\ = (\Equal13~4_combout\ & (!\Equal13~5_combout\ & \n_reset~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal13~4_combout\,
	datab => \Equal13~5_combout\,
	datac => \n_reset~input_o\,
	combout => \led_latch[4]~0_combout\);

-- Location: LCCOMB_X17_Y9_N12
\process_5~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \process_5~3_combout\ = (\addr[11]~input_o\) # ((\addr[9]~input_o\ & \addr[10]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr[9]~input_o\,
	datab => \addr[11]~input_o\,
	datac => \addr[10]~input_o\,
	combout => \process_5~3_combout\);

-- Location: LCCOMB_X17_Y9_N28
\process_5~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \process_5~4_combout\ = (\Equal12~2_combout\ & ((\process_5~3_combout\) # ((!\LessThan5~0_combout\ & !\LessThan4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_5~3_combout\,
	datab => \LessThan5~0_combout\,
	datac => \LessThan4~0_combout\,
	datad => \Equal12~2_combout\,
	combout => \process_5~4_combout\);

-- Location: LCCOMB_X17_Y9_N18
\data_dir~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data_dir~0_combout\ = (\rw~input_o\ & ((\Equal12~7_combout\) # ((\Equal13~6_combout\ & \process_5~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal12~7_combout\,
	datab => \Equal13~6_combout\,
	datac => \rw~input_o\,
	datad => \process_5~4_combout\,
	combout => \data_dir~0_combout\);

-- Location: FF_X17_Y9_N19
\data_dir~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \phi2~inputclkctrl_outclk\,
	d => \data_dir~0_combout\,
	clrn => \n_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_dir~reg0_q\);

-- Location: LCCOMB_X7_Y6_N28
\n_data_oe~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \n_data_oe~1_combout\ = (\Equal13~4_combout\ & (\phi2~input_o\ & !\Equal13~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal13~4_combout\,
	datac => \phi2~input_o\,
	datad => \Equal13~5_combout\,
	combout => \n_data_oe~1_combout\);

-- Location: LCCOMB_X7_Y6_N14
\n_data_oe~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \n_data_oe~2_combout\ = ((\rw_latch~q\ & ((\n_data_oe~0_combout\) # (!\n_data_oe~1_combout\)))) # (!\n_reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \n_reset~input_o\,
	datab => \n_data_oe~0_combout\,
	datac => \rw_latch~q\,
	datad => \n_data_oe~1_combout\,
	combout => \n_data_oe~2_combout\);

-- Location: LCCOMB_X28_Y13_N18
\spi_mbf~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi_mbf~0_combout\ = (\n_reset~input_o\ & reg_sdcr(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \n_reset~input_o\,
	datad => reg_sdcr(1),
	combout => \spi_mbf~0_combout\);

-- Location: LCCOMB_X22_Y9_N16
\spi_sdav~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi_sdav~0_combout\ = (\n_reset~input_o\ & reg_sdcr(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \n_reset~input_o\,
	datad => reg_sdcr(0),
	combout => \spi_sdav~0_combout\);

-- Location: IOIBUF_X31_Y11_N15
\extenb~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_extenb,
	o => \extenb~input_o\);

-- Location: ADCBLOCK_X10_Y24_N0
\~QUARTUS_CREATED_ADC1~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 1,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~GND~combout\,
	usr_pwd => VCC,
	tsen => \~GND~combout\,
	chsel => \~QUARTUS_CREATED_ADC1~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC1~~eoc\);

ww_master_ram_clk <= \master_ram_clk~output_o\;

ww_master_ram_rden <= \master_ram_rden~output_o\;

ww_master_ram_wren <= \master_ram_wren~output_o\;

ww_n_led1 <= \n_led1~output_o\;

ww_n_led2 <= \n_led2~output_o\;

ww_n_led3 <= \n_led3~output_o\;

ww_n_led4 <= \n_led4~output_o\;

ww_n_led5 <= \n_led5~output_o\;

ww_phi2_early <= \phi2_early~output_o\;

ww_data_dir <= \data_dir~output_o\;

ww_n_data_oe <= \n_data_oe~output_o\;

ww_n_extsel <= \n_extsel~output_o\;

ww_n_mpd <= \n_mpd~output_o\;

ww_n_irq <= \n_irq~output_o\;

ww_n_rdy <= \n_rdy~output_o\;

ww_spi_miso <= \spi_miso~output_o\;

ww_spi_mbf <= \spi_mbf~output_o\;

ww_spi_sdav <= \spi_sdav~output_o\;

data(0) <= \data[0]~output_o\;

data(1) <= \data[1]~output_o\;

data(2) <= \data[2]~output_o\;

data(3) <= \data[3]~output_o\;

data(4) <= \data[4]~output_o\;

data(5) <= \data[5]~output_o\;

data(6) <= \data[6]~output_o\;

data(7) <= \data[7]~output_o\;
END structure;


