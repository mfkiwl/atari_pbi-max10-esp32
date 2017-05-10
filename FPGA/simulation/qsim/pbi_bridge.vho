-- Copyright (C) 2017  Intel Corporation. All rights reserved.
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
-- VERSION "Version 17.0.0 Build 595 04/25/2017 SJ Lite Edition"

-- DATE "05/09/2017 20:58:53"

-- 
-- Device: Altera 10M08SAE144C8G Package EQFP144
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	pbi_bridge IS
    PORT (
	n_led1 : OUT std_logic;
	n_led2 : OUT std_logic;
	n_led3 : OUT std_logic;
	n_led4 : OUT std_logic;
	n_led5 : OUT std_logic;
	dip_sw : IN std_logic_vector(4 DOWNTO 0);
	clk_57 : IN std_logic;
	phi2 : IN std_logic;
	phi2_early : BUFFER std_logic;
	rw : IN std_logic;
	addr : IN std_logic_vector(15 DOWNTO 0);
	data : INOUT std_logic_vector(7 DOWNTO 0);
	data_dir : OUT std_logic;
	n_data_oe : OUT std_logic;
	n_reset : IN std_logic;
	extenb : IN std_logic;
	n_extsel : OUT std_logic;
	n_mpd : OUT std_logic;
	n_irq : OUT std_logic;
	n_rdy : OUT std_logic;
	spi_clk : IN std_logic;
	spi_ss_n : IN std_logic;
	spi_mosi : IN std_logic;
	spi_miso : OUT std_logic
	);
END pbi_bridge;

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
SIGNAL \u0|onchip_flash_0|altera_onchip_flash_block|ufm_block_ARDIN_bus\ : std_logic_vector(22 DOWNTO 0);
SIGNAL \u0|onchip_flash_0|altera_onchip_flash_block|ufm_block_DRDOUT_bus\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a8_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a8_PORTBDATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a8_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a8_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a8_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a8_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a0_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a0_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a8_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a8_PORTBDATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a8_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a8_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a8_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a8_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a9_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a9_PORTBDATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a9_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a9_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a9_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a9_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a1_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a1_PORTBDATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a1_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a1_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a1_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a1_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a1_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a1_PORTBDATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a1_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a1_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a1_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a1_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a9_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a9_PORTBDATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a9_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a9_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a9_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a9_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a10_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a10_PORTBDATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a10_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a10_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a10_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a10_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a2_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a2_PORTBDATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a2_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a2_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a2_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a2_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a2_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a2_PORTBDATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a2_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a2_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a2_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a2_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a10_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a10_PORTBDATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a10_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a10_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a10_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a10_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a11_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a11_PORTBDATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a11_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a11_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a11_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a11_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a3_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a3_PORTBDATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a3_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a3_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a3_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a3_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a3_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a3_PORTBDATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a3_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a3_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a3_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a3_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a11_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a11_PORTBDATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a11_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a11_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a11_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a11_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a12_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a12_PORTBDATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a12_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a12_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a12_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a12_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a4_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a4_PORTBDATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a4_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a4_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a4_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a4_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a4_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a4_PORTBDATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a4_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a4_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a4_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a4_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a12_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a12_PORTBDATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a12_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a12_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a12_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a12_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a13_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a13_PORTBDATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a13_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a13_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a13_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a13_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a5_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a5_PORTBDATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a5_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a5_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a5_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a5_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a5_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a5_PORTBDATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a5_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a5_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a5_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a5_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a13_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a13_PORTBDATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a13_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a13_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a13_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a13_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a14_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a14_PORTBDATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a14_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a14_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a14_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a14_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a6_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a6_PORTBDATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a6_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a6_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a6_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a6_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a6_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a6_PORTBDATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a6_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a6_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a6_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a6_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a14_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a14_PORTBDATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a14_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a14_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a14_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a14_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a15_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a15_PORTBDATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a15_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a15_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a15_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a15_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a7_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a7_PORTBDATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a7_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a7_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a7_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a7_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a7_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a7_PORTBDATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a7_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a7_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a7_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a7_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a15_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a15_PORTBDATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a15_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a15_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a15_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a15_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a8~portadataout\ : std_logic;
SIGNAL \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a0~portadataout\ : std_logic;
SIGNAL \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a8~portadataout\ : std_logic;
SIGNAL \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a9~portadataout\ : std_logic;
SIGNAL \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a1~portadataout\ : std_logic;
SIGNAL \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a9~portadataout\ : std_logic;
SIGNAL \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a10~portadataout\ : std_logic;
SIGNAL \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a2~portadataout\ : std_logic;
SIGNAL \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a10~portadataout\ : std_logic;
SIGNAL \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a11~portadataout\ : std_logic;
SIGNAL \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a3~portadataout\ : std_logic;
SIGNAL \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a11~portadataout\ : std_logic;
SIGNAL \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a12~portadataout\ : std_logic;
SIGNAL \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a4~portadataout\ : std_logic;
SIGNAL \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a12~portadataout\ : std_logic;
SIGNAL \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a13~portadataout\ : std_logic;
SIGNAL \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a5~portadataout\ : std_logic;
SIGNAL \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a13~portadataout\ : std_logic;
SIGNAL \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a14~portadataout\ : std_logic;
SIGNAL \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a6~portadataout\ : std_logic;
SIGNAL \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a14~portadataout\ : std_logic;
SIGNAL \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a15~portadataout\ : std_logic;
SIGNAL \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a7~portadataout\ : std_logic;
SIGNAL \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a15~portadataout\ : std_logic;
SIGNAL \extenb~input_o\ : std_logic;
SIGNAL \spi_clk~input_o\ : std_logic;
SIGNAL \clk_57~input_o\ : std_logic;
SIGNAL \clk_counter[0]~3_combout\ : std_logic;
SIGNAL \n_reset~input_o\ : std_logic;
SIGNAL \phi2~input_o\ : std_logic;
SIGNAL \phi2_early~0_combout\ : std_logic;
SIGNAL \clk_counter[1]~2_combout\ : std_logic;
SIGNAL \clk_counter[2]~1_combout\ : std_logic;
SIGNAL \clk_counter[3]~0_combout\ : std_logic;
SIGNAL \Equal9~0_combout\ : std_logic;
SIGNAL \phi2_early~reg0_q\ : std_logic;
SIGNAL \data[6]~input_o\ : std_logic;
SIGNAL \addr[5]~input_o\ : std_logic;
SIGNAL \addr_latch[5]~14_combout\ : std_logic;
SIGNAL \addr[4]~input_o\ : std_logic;
SIGNAL \addr_latch[4]~15_combout\ : std_logic;
SIGNAL \addr[1]~input_o\ : std_logic;
SIGNAL \addr_latch[1]~0_combout\ : std_logic;
SIGNAL \addr[13]~input_o\ : std_logic;
SIGNAL \addr_latch[13]~1_combout\ : std_logic;
SIGNAL \addr[15]~input_o\ : std_logic;
SIGNAL \addr_latch[15]~2_combout\ : std_logic;
SIGNAL \addr[14]~input_o\ : std_logic;
SIGNAL \addr_latch[14]~3_combout\ : std_logic;
SIGNAL \addr[12]~input_o\ : std_logic;
SIGNAL \addr_latch[12]~4_combout\ : std_logic;
SIGNAL \Equal13~0_combout\ : std_logic;
SIGNAL \addr[11]~input_o\ : std_logic;
SIGNAL \addr_latch[11]~5_combout\ : std_logic;
SIGNAL \addr[10]~input_o\ : std_logic;
SIGNAL \addr_latch[10]~6_combout\ : std_logic;
SIGNAL \addr[9]~input_o\ : std_logic;
SIGNAL \addr_latch[9]~7_combout\ : std_logic;
SIGNAL \addr[8]~input_o\ : std_logic;
SIGNAL \addr_latch[8]~8_combout\ : std_logic;
SIGNAL \Equal13~1_combout\ : std_logic;
SIGNAL \addr[7]~input_o\ : std_logic;
SIGNAL \addr_latch[7]~9_combout\ : std_logic;
SIGNAL \addr[6]~input_o\ : std_logic;
SIGNAL \addr_latch[6]~10_combout\ : std_logic;
SIGNAL \addr[3]~input_o\ : std_logic;
SIGNAL \addr_latch[3]~11_combout\ : std_logic;
SIGNAL \addr[2]~input_o\ : std_logic;
SIGNAL \addr_latch[2]~12_combout\ : std_logic;
SIGNAL \Equal13~2_combout\ : std_logic;
SIGNAL \Equal13~3_combout\ : std_logic;
SIGNAL \Equal13~4_combout\ : std_logic;
SIGNAL \dip_sw[0]~input_o\ : std_logic;
SIGNAL \dip_sw[3]~input_o\ : std_logic;
SIGNAL \dip_sw[1]~input_o\ : std_logic;
SIGNAL \dip_sw[4]~input_o\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \dip_sw[2]~input_o\ : std_logic;
SIGNAL \data[4]~input_o\ : std_logic;
SIGNAL \Equal11~3_combout\ : std_logic;
SIGNAL \Equal11~4_combout\ : std_logic;
SIGNAL \addr[0]~input_o\ : std_logic;
SIGNAL \Equal11~0_combout\ : std_logic;
SIGNAL \Equal11~1_combout\ : std_logic;
SIGNAL \Equal11~2_combout\ : std_logic;
SIGNAL \Equal11~5_combout\ : std_logic;
SIGNAL \hw_sel_act~q\ : std_logic;
SIGNAL \rw~input_o\ : std_logic;
SIGNAL \rw_latch~q\ : std_logic;
SIGNAL \hw_sel[5]~0_combout\ : std_logic;
SIGNAL \data[0]~input_o\ : std_logic;
SIGNAL \Equal10~0_combout\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \data[5]~input_o\ : std_logic;
SIGNAL \data[1]~input_o\ : std_logic;
SIGNAL \Equal10~1_combout\ : std_logic;
SIGNAL \Equal2~0_combout\ : std_logic;
SIGNAL \data[2]~input_o\ : std_logic;
SIGNAL \Equal10~2_combout\ : std_logic;
SIGNAL \data[3]~input_o\ : std_logic;
SIGNAL \PBI_ADDR[3]~0_combout\ : std_logic;
SIGNAL \Equal10~3_combout\ : std_logic;
SIGNAL \Equal10~4_combout\ : std_logic;
SIGNAL \PBI_ADDR[7]~1_combout\ : std_logic;
SIGNAL \data[7]~input_o\ : std_logic;
SIGNAL \Equal10~5_combout\ : std_logic;
SIGNAL \Equal11~6_combout\ : std_logic;
SIGNAL \dev_reg_act~0_combout\ : std_logic;
SIGNAL \dev_reg_act~q\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \process_4~6_combout\ : std_logic;
SIGNAL \slave_ram_en~q\ : std_logic;
SIGNAL \process_4~3_combout\ : std_logic;
SIGNAL \process_4~4_combout\ : std_logic;
SIGNAL \LessThan4~0_combout\ : std_logic;
SIGNAL \process_4~5_combout\ : std_logic;
SIGNAL \master_ram_en~q\ : std_logic;
SIGNAL \led_latch[0]~1_combout\ : std_logic;
SIGNAL \led_latch[0]~2_combout\ : std_logic;
SIGNAL \reg_sdcr[0]~0_combout\ : std_logic;
SIGNAL \addr_latch[0]~13_combout\ : std_logic;
SIGNAL \reg_stbycr[0]~0_combout\ : std_logic;
SIGNAL \u1|bit_cnt[0]~24_combout\ : std_logic;
SIGNAL \spi_ss_n~input_o\ : std_logic;
SIGNAL \u1|process_1~0_combout\ : std_logic;
SIGNAL \u1|bit_cnt[1]~8_combout\ : std_logic;
SIGNAL \u1|bit_cnt[1]~9\ : std_logic;
SIGNAL \u1|bit_cnt[2]~10_combout\ : std_logic;
SIGNAL \u1|bit_cnt[2]~11\ : std_logic;
SIGNAL \u1|bit_cnt[3]~12_combout\ : std_logic;
SIGNAL \u1|bit_cnt[3]~13\ : std_logic;
SIGNAL \u1|bit_cnt[4]~14_combout\ : std_logic;
SIGNAL \u1|bit_cnt[4]~15\ : std_logic;
SIGNAL \u1|bit_cnt[5]~16_combout\ : std_logic;
SIGNAL \u1|bit_cnt[5]~17\ : std_logic;
SIGNAL \u1|bit_cnt[6]~18_combout\ : std_logic;
SIGNAL \u1|bit_cnt[6]~19\ : std_logic;
SIGNAL \u1|bit_cnt[7]~20_combout\ : std_logic;
SIGNAL \u1|bit_cnt[7]~21\ : std_logic;
SIGNAL \u1|bit_cnt[8]~22_combout\ : std_logic;
SIGNAL \u1|LessThan0~0_combout\ : std_logic;
SIGNAL \u1|LessThan2~0_combout\ : std_logic;
SIGNAL \Equal14~0_combout\ : std_logic;
SIGNAL \Equal14~1_combout\ : std_logic;
SIGNAL \reg_stbkcr[0]~0_combout\ : std_logic;
SIGNAL \u1|tx_buf[0]~0_combout\ : std_logic;
SIGNAL \reg_sdcr[0]~1_combout\ : std_logic;
SIGNAL \u1|tx_buf~1_combout\ : std_logic;
SIGNAL \u1|master_wren~0_combout\ : std_logic;
SIGNAL \u1|process_1~1_combout\ : std_logic;
SIGNAL \u1|slave_rden~q\ : std_logic;
SIGNAL \led_latch[0]~3_combout\ : std_logic;
SIGNAL \Equal19~0_combout\ : std_logic;
SIGNAL \reg_srbs[0]~0_combout\ : std_logic;
SIGNAL \u1|comb~1_combout\ : std_logic;
SIGNAL \u1|slave_ram_clk~combout\ : std_logic;
SIGNAL \u1|dpram_slave|altsyncram_component|auto_generated|rden_a_store~q\ : std_logic;
SIGNAL \u1|dpram_slave|altsyncram_component|auto_generated|_~0_combout\ : std_logic;
SIGNAL \u1|dpram_slave|altsyncram_component|auto_generated|rden_b_store~q\ : std_logic;
SIGNAL \u1|comb~3_combout\ : std_logic;
SIGNAL \u1|dpram_slave|altsyncram_component|auto_generated|wren_b_store~q\ : std_logic;
SIGNAL \u1|dpram_slave|altsyncram_component|auto_generated|rden_decode_b|eq_node[0]~0_combout\ : std_logic;
SIGNAL \u1|master_ram_clk~1_combout\ : std_logic;
SIGNAL \u1|process_1~2_combout\ : std_logic;
SIGNAL \u1|s_rd_addr[0]~7_combout\ : std_logic;
SIGNAL \u1|s_rd_addr[1]~8_combout\ : std_logic;
SIGNAL \u1|s_rd_addr[1]~9\ : std_logic;
SIGNAL \u1|s_rd_addr[2]~10_combout\ : std_logic;
SIGNAL \u1|s_rd_addr[2]~11\ : std_logic;
SIGNAL \u1|s_rd_addr[3]~12_combout\ : std_logic;
SIGNAL \u1|s_rd_addr[3]~13\ : std_logic;
SIGNAL \u1|s_rd_addr[4]~14_combout\ : std_logic;
SIGNAL \u1|s_rd_addr[4]~15\ : std_logic;
SIGNAL \u1|s_rd_addr[5]~16_combout\ : std_logic;
SIGNAL \u1|s_rd_addr[5]~17\ : std_logic;
SIGNAL \u1|s_rd_addr[6]~18_combout\ : std_logic;
SIGNAL \u1|s_rd_addr[6]~19\ : std_logic;
SIGNAL \u1|s_rd_addr[7]~20_combout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \master_din[0]~0_combout\ : std_logic;
SIGNAL \slave_din[0]~3_combout\ : std_logic;
SIGNAL \addr_latch[0]~_wirecell_combout\ : std_logic;
SIGNAL \addr_latch[1]~_wirecell_combout\ : std_logic;
SIGNAL \addr_latch[2]~_wirecell_combout\ : std_logic;
SIGNAL \addr_latch[3]~_wirecell_combout\ : std_logic;
SIGNAL \addr_latch[4]~_wirecell_combout\ : std_logic;
SIGNAL \addr_latch[5]~_wirecell_combout\ : std_logic;
SIGNAL \addr_latch[6]~_wirecell_combout\ : std_logic;
SIGNAL \addr_latch[7]~_wirecell_combout\ : std_logic;
SIGNAL \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a6~portadataout\ : std_logic;
SIGNAL \u1|tx_buf~2_combout\ : std_logic;
SIGNAL \u1|tx_buf~3_combout\ : std_logic;
SIGNAL \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a5~portadataout\ : std_logic;
SIGNAL \u1|tx_buf~4_combout\ : std_logic;
SIGNAL \u1|tx_buf~5_combout\ : std_logic;
SIGNAL \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a4~portadataout\ : std_logic;
SIGNAL \u1|tx_buf~6_combout\ : std_logic;
SIGNAL \u1|Mux0~0_combout\ : std_logic;
SIGNAL \u1|tx_buf~7_combout\ : std_logic;
SIGNAL \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a7~portadataout\ : std_logic;
SIGNAL \u1|tx_buf~8_combout\ : std_logic;
SIGNAL \u1|Mux0~1_combout\ : std_logic;
SIGNAL \u1|tx_buf~9_combout\ : std_logic;
SIGNAL \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a2~portadataout\ : std_logic;
SIGNAL \u1|tx_buf~10_combout\ : std_logic;
SIGNAL \u1|tx_buf~11_combout\ : std_logic;
SIGNAL \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a1~portadataout\ : std_logic;
SIGNAL \u1|tx_buf~12_combout\ : std_logic;
SIGNAL \u1|tx_buf~13_combout\ : std_logic;
SIGNAL \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a0~portadataout\ : std_logic;
SIGNAL \u1|tx_buf~14_combout\ : std_logic;
SIGNAL \u1|Mux0~2_combout\ : std_logic;
SIGNAL \u1|tx_buf~15_combout\ : std_logic;
SIGNAL \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a3~portadataout\ : std_logic;
SIGNAL \u1|tx_buf~16_combout\ : std_logic;
SIGNAL \u1|Mux0~3_combout\ : std_logic;
SIGNAL \u1|Mux0~4_combout\ : std_logic;
SIGNAL \u1|miso~reg0_q\ : std_logic;
SIGNAL \u1|miso~en_q\ : std_logic;
SIGNAL \Equal18~0_combout\ : std_logic;
SIGNAL \reg_mrbs[0]~0_combout\ : std_logic;
SIGNAL \u1|comb~0_combout\ : std_logic;
SIGNAL \u1|master_ram_clk~combout\ : std_logic;
SIGNAL \u1|dpram_master|altsyncram_component|auto_generated|rden_b_store~q\ : std_logic;
SIGNAL \u1|comb~2_combout\ : std_logic;
SIGNAL \u1|dpram_master|altsyncram_component|auto_generated|wren_b_store~q\ : std_logic;
SIGNAL \u1|dpram_master|altsyncram_component|auto_generated|rden_decode_b|eq_node[1]~0_combout\ : std_logic;
SIGNAL \spi_mosi~input_o\ : std_logic;
SIGNAL \u1|rx_buf[0]~0_combout\ : std_logic;
SIGNAL \u1|slave_ram_clk~0_combout\ : std_logic;
SIGNAL \u1|rx_buf[0]~1_combout\ : std_logic;
SIGNAL \master_din[0]~1_combout\ : std_logic;
SIGNAL \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a8~PORTBDATAOUT0\ : std_logic;
SIGNAL \data[2]~16_combout\ : std_logic;
SIGNAL \Equal20~0_combout\ : std_logic;
SIGNAL \reg_fbs[0]~0_combout\ : std_logic;
SIGNAL \Equal17~0_combout\ : std_logic;
SIGNAL \data[2]~17_combout\ : std_logic;
SIGNAL \data[0]~18_combout\ : std_logic;
SIGNAL \data[0]~19_combout\ : std_logic;
SIGNAL \data[0]~20_combout\ : std_logic;
SIGNAL \data[0]~21_combout\ : std_logic;
SIGNAL \data[2]~22_combout\ : std_logic;
SIGNAL \u1|master_wren~q\ : std_logic;
SIGNAL \u1|dpram_master|altsyncram_component|auto_generated|rden_decode_b|eq_node[0]~1_combout\ : std_logic;
SIGNAL \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a0~PORTBDATAOUT0\ : std_logic;
SIGNAL \data[2]~23_combout\ : std_logic;
SIGNAL \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a0~PORTBDATAOUT0\ : std_logic;
SIGNAL \slave_din[0]~2_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|reset_n_reg1~q\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|reset_n_reg2~q\ : std_logic;
SIGNAL \dev_rom_act~0_combout\ : std_logic;
SIGNAL \dev_rom_act~q\ : std_logic;
SIGNAL \flash_read~0_combout\ : std_logic;
SIGNAL \flash_read~1_combout\ : std_logic;
SIGNAL \flash_read~q\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|read_state~18_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_FINAL~q\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Selector0~0_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|avmm_read_state~q\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Selector1~0_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Selector1~1_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|avmm_readdata_ready~q\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_input_reg[0]~0_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_reg~12_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|data_count~8_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|data_count~4_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|data_count[2]~10_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|data_count[2]~5_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|data_count~7_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|data_count~6_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|LessThan2~0_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Selector2~0_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin[0]~0_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Selector39~0_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_reg~8_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|flash_ardin_align_backup_reg~3_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|flash_ardin_align_backup_reg~2_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Add4~1_cout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Add4~2_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Add4~3\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Add4~4_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Add4~5\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Add4~6_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Add4~7\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Add4~8_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_reg~6_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_reg~7_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_reg[3]~13_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|data_count~9_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|avmm_read_valid_state~q\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_reg[0]~9_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_reg[0]~14_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_reg[0]~10_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_reg~11_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_reg~4_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_reg~5_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Equal1~0_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Selector7~0_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|read_state~19_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_CLEAR~q\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|read_state~17_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_IDLE~q\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|read_state~21_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_ADDR~q\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Selector12~1_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_SETUP~q\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Selector5~0_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Selector5~1_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Selector4~0_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Selector4~1_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Selector13~0_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_DUMMY~q\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|read_state~20_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_READY~q\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|flash_arclk_arshft_en_w~1_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|enable_arclk_sync_reg~q\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|enable_arclk_neg_reg~0_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|enable_arclk_neg_reg~q\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|enable_arclk_neg_pos_reg~0_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|enable_arclk_neg_pos_reg~q\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|flash_arclk~0_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Selector6~0_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|enable_drclk_neg_pos_reg~q\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Selector12~0_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Selector7~1_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|read_drclk_en~q\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|enable_drclk_neg_reg~0_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|enable_drclk_neg_reg~q\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|flash_drclk~0_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Selector8~0_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|flash_drshft_reg~q\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|flash_drshft_neg_reg~0_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|flash_drshft_neg_reg~q\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|flash_drshft_neg_reg~_wirecell_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|flash_xe_ye~combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|flash_se_neg_reg~0_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|flash_se_neg_reg~q\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|flash_page_addr~0_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|flash_addr_wire_neg_reg~0_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Add0~0_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Add0~1\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Add0~2_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Selector37~0_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin[1]~3_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Add0~3\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Add0~4_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin[1]~1_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Selector36~0_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Selector36~1_combout\ : std_logic;
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
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Add0~26_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Selector25~0_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Selector25~1_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Add0~27\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Add0~28_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin[1]~2_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|Selector38~0_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|flash_page_addr~1_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|flash_addr_wire_neg_reg~1_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|flash_page_addr~2_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|flash_addr_wire_neg_reg~2_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|flash_page_addr~3_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|flash_addr_wire_neg_reg~3_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|flash_page_addr~4_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|flash_addr_wire_neg_reg~4_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|flash_page_addr~5_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|flash_addr_wire_neg_reg~5_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|flash_page_addr~6_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|flash_addr_wire_neg_reg~6_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|flash_page_addr~7_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|flash_addr_wire_neg_reg~7_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|flash_page_addr~8_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|flash_addr_wire_neg_reg~8_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|flash_read_addr[9]~0_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|flash_read_addr[14]~1_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|flash_read_addr[11]~2_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|flash_read_addr[10]~3_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|address_convertor|LessThan0~0_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|flash_read_addr[13]~4_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|flash_read_addr[12]~5_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|address_convertor|LessThan0~1_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|address_convertor|Add0~0_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|flash_addr_wire_neg_reg~9_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|address_convertor|Add0~1\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|address_convertor|Add0~2_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|flash_addr_wire_neg_reg~10_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|address_convertor|Add0~3\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|address_convertor|Add0~4_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|flash_addr_wire_neg_reg~11_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|address_convertor|Add0~5\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|address_convertor|Add0~6_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|flash_addr_wire_neg_reg~12_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|address_convertor|Add0~7\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|address_convertor|Add0~8_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|flash_addr_wire_neg_reg~13_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|address_convertor|Add0~9\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|address_convertor|Add0~10_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|flash_addr_wire_neg_reg~14_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|address_convertor|Add0~11\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|address_convertor|Add0~12_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|flash_addr_wire_neg_reg~15_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|csr_status_r_pass~0_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|csr_status_r_pass~1_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|csr_status_r_pass~2_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|csr_status_r_pass~q\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|avmm_readdata~0_combout\ : std_logic;
SIGNAL \flash_data_latch[16]~0_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|avmm_readdatavalid_reg~0_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|avmm_readdatavalid_reg~q\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|avmm_readdata~1_combout\ : std_logic;
SIGNAL \flash_data_latch[8]~1_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|avmm_readdata~2_combout\ : std_logic;
SIGNAL \flash_data_latch[0]~2_combout\ : std_logic;
SIGNAL \data[0]~24_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|avmm_readdata~3_combout\ : std_logic;
SIGNAL \flash_data_latch[24]~3_combout\ : std_logic;
SIGNAL \data[0]~25_combout\ : std_logic;
SIGNAL \data[0]~26_combout\ : std_logic;
SIGNAL \u1|dpram_slave|altsyncram_component|auto_generated|rden_decode_b|eq_node[1]~1_combout\ : std_logic;
SIGNAL \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a8~PORTBDATAOUT0\ : std_logic;
SIGNAL \data[0]~27_combout\ : std_logic;
SIGNAL \data[0]~28_combout\ : std_logic;
SIGNAL \data[0]~29_combout\ : std_logic;
SIGNAL \data[2]~30_combout\ : std_logic;
SIGNAL \data[0]~31_combout\ : std_logic;
SIGNAL \process_4~2_combout\ : std_logic;
SIGNAL \n_data_oe~0_combout\ : std_logic;
SIGNAL \data[7]~32_combout\ : std_logic;
SIGNAL \u1|rx_buf[1]~2_combout\ : std_logic;
SIGNAL \u1|rx_buf[1]~3_combout\ : std_logic;
SIGNAL \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a9~PORTBDATAOUT0\ : std_logic;
SIGNAL \data[1]~33_combout\ : std_logic;
SIGNAL \data[1]~34_combout\ : std_logic;
SIGNAL \data[1]~35_combout\ : std_logic;
SIGNAL \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a1~PORTBDATAOUT0\ : std_logic;
SIGNAL \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a1~PORTBDATAOUT0\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|avmm_readdata~4_combout\ : std_logic;
SIGNAL \flash_data_latch[9]~4_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|avmm_readdata~5_combout\ : std_logic;
SIGNAL \flash_data_latch[17]~5_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|avmm_readdata~6_combout\ : std_logic;
SIGNAL \flash_data_latch[1]~6_combout\ : std_logic;
SIGNAL \data[1]~36_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|avmm_readdata~7_combout\ : std_logic;
SIGNAL \flash_data_latch[25]~7_combout\ : std_logic;
SIGNAL \data[1]~37_combout\ : std_logic;
SIGNAL \data[1]~38_combout\ : std_logic;
SIGNAL \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a9~PORTBDATAOUT0\ : std_logic;
SIGNAL \data[1]~39_combout\ : std_logic;
SIGNAL \data[1]~40_combout\ : std_logic;
SIGNAL \data[1]~41_combout\ : std_logic;
SIGNAL \data[1]~42_combout\ : std_logic;
SIGNAL \u1|rx_buf[2]~4_combout\ : std_logic;
SIGNAL \u1|rx_buf[2]~5_combout\ : std_logic;
SIGNAL \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a10~PORTBDATAOUT0\ : std_logic;
SIGNAL \data[2]~43_combout\ : std_logic;
SIGNAL \data[2]~44_combout\ : std_logic;
SIGNAL \data[2]~45_combout\ : std_logic;
SIGNAL \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a2~PORTBDATAOUT0\ : std_logic;
SIGNAL \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a2~PORTBDATAOUT0\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|avmm_readdata~8_combout\ : std_logic;
SIGNAL \flash_data_latch[18]~8_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|avmm_readdata~9_combout\ : std_logic;
SIGNAL \flash_data_latch[10]~9_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|avmm_readdata~10_combout\ : std_logic;
SIGNAL \flash_data_latch[2]~10_combout\ : std_logic;
SIGNAL \data[2]~46_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|avmm_readdata~11_combout\ : std_logic;
SIGNAL \flash_data_latch[26]~11_combout\ : std_logic;
SIGNAL \data[2]~47_combout\ : std_logic;
SIGNAL \data[2]~48_combout\ : std_logic;
SIGNAL \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a10~PORTBDATAOUT0\ : std_logic;
SIGNAL \data[2]~49_combout\ : std_logic;
SIGNAL \data[2]~50_combout\ : std_logic;
SIGNAL \data[2]~51_combout\ : std_logic;
SIGNAL \data[2]~52_combout\ : std_logic;
SIGNAL \u1|rx_buf[3]~6_combout\ : std_logic;
SIGNAL \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a11~PORTBDATAOUT0\ : std_logic;
SIGNAL \data[3]~53_combout\ : std_logic;
SIGNAL \data[3]~54_combout\ : std_logic;
SIGNAL \data[3]~55_combout\ : std_logic;
SIGNAL \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a3~PORTBDATAOUT0\ : std_logic;
SIGNAL \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a3~PORTBDATAOUT0\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|avmm_readdata~12_combout\ : std_logic;
SIGNAL \flash_data_latch[11]~12_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|avmm_readdata~13_combout\ : std_logic;
SIGNAL \flash_data_latch[19]~13_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|avmm_readdata~14_combout\ : std_logic;
SIGNAL \flash_data_latch[3]~14_combout\ : std_logic;
SIGNAL \data[3]~56_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|avmm_readdata~15_combout\ : std_logic;
SIGNAL \flash_data_latch[27]~15_combout\ : std_logic;
SIGNAL \data[3]~57_combout\ : std_logic;
SIGNAL \data[3]~58_combout\ : std_logic;
SIGNAL \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a11~PORTBDATAOUT0\ : std_logic;
SIGNAL \data[3]~59_combout\ : std_logic;
SIGNAL \data[3]~60_combout\ : std_logic;
SIGNAL \data[3]~61_combout\ : std_logic;
SIGNAL \data[3]~62_combout\ : std_logic;
SIGNAL \u1|rx_buf[4]~7_combout\ : std_logic;
SIGNAL \u1|rx_buf[4]~8_combout\ : std_logic;
SIGNAL \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a12~PORTBDATAOUT0\ : std_logic;
SIGNAL \data[4]~63_combout\ : std_logic;
SIGNAL \data[4]~64_combout\ : std_logic;
SIGNAL \data[4]~65_combout\ : std_logic;
SIGNAL \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a4~PORTBDATAOUT0\ : std_logic;
SIGNAL \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a4~PORTBDATAOUT0\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|avmm_readdata~16_combout\ : std_logic;
SIGNAL \flash_data_latch[20]~16_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|avmm_readdata~17_combout\ : std_logic;
SIGNAL \flash_data_latch[12]~17_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|avmm_readdata~18_combout\ : std_logic;
SIGNAL \flash_data_latch[4]~18_combout\ : std_logic;
SIGNAL \data[4]~66_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|avmm_readdata~19_combout\ : std_logic;
SIGNAL \flash_data_latch[28]~19_combout\ : std_logic;
SIGNAL \data[4]~67_combout\ : std_logic;
SIGNAL \data[4]~68_combout\ : std_logic;
SIGNAL \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a12~PORTBDATAOUT0\ : std_logic;
SIGNAL \data[4]~69_combout\ : std_logic;
SIGNAL \data[4]~70_combout\ : std_logic;
SIGNAL \data[4]~71_combout\ : std_logic;
SIGNAL \data[4]~72_combout\ : std_logic;
SIGNAL \u1|rx_buf[5]~9_combout\ : std_logic;
SIGNAL \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a13~PORTBDATAOUT0\ : std_logic;
SIGNAL \data[5]~73_combout\ : std_logic;
SIGNAL \data[5]~74_combout\ : std_logic;
SIGNAL \data[5]~75_combout\ : std_logic;
SIGNAL \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a5~PORTBDATAOUT0\ : std_logic;
SIGNAL \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a5~PORTBDATAOUT0\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|avmm_readdata~20_combout\ : std_logic;
SIGNAL \flash_data_latch[13]~20_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|avmm_readdata~21_combout\ : std_logic;
SIGNAL \flash_data_latch[21]~21_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|avmm_readdata~22_combout\ : std_logic;
SIGNAL \flash_data_latch[5]~22_combout\ : std_logic;
SIGNAL \data[5]~76_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|avmm_readdata~23_combout\ : std_logic;
SIGNAL \flash_data_latch[29]~23_combout\ : std_logic;
SIGNAL \data[5]~77_combout\ : std_logic;
SIGNAL \data[5]~78_combout\ : std_logic;
SIGNAL \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a13~PORTBDATAOUT0\ : std_logic;
SIGNAL \data[5]~79_combout\ : std_logic;
SIGNAL \data[5]~80_combout\ : std_logic;
SIGNAL \data[5]~81_combout\ : std_logic;
SIGNAL \data[5]~82_combout\ : std_logic;
SIGNAL \u1|rx_buf[6]~10_combout\ : std_logic;
SIGNAL \u1|rx_buf[6]~11_combout\ : std_logic;
SIGNAL \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a14~PORTBDATAOUT0\ : std_logic;
SIGNAL \data[6]~83_combout\ : std_logic;
SIGNAL \data[6]~84_combout\ : std_logic;
SIGNAL \data[6]~85_combout\ : std_logic;
SIGNAL \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a6~PORTBDATAOUT0\ : std_logic;
SIGNAL \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a6~PORTBDATAOUT0\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|avmm_readdata~24_combout\ : std_logic;
SIGNAL \flash_data_latch[22]~24_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|avmm_readdata~25_combout\ : std_logic;
SIGNAL \flash_data_latch[14]~25_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|avmm_readdata~26_combout\ : std_logic;
SIGNAL \flash_data_latch[6]~26_combout\ : std_logic;
SIGNAL \data[6]~86_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|avmm_readdata~27_combout\ : std_logic;
SIGNAL \flash_data_latch[30]~27_combout\ : std_logic;
SIGNAL \data[6]~87_combout\ : std_logic;
SIGNAL \data[6]~88_combout\ : std_logic;
SIGNAL \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a14~PORTBDATAOUT0\ : std_logic;
SIGNAL \data[6]~89_combout\ : std_logic;
SIGNAL \data[6]~90_combout\ : std_logic;
SIGNAL \data[6]~91_combout\ : std_logic;
SIGNAL \data[6]~92_combout\ : std_logic;
SIGNAL \u1|rx_buf[7]~12_combout\ : std_logic;
SIGNAL \u1|rx_buf[7]~13_combout\ : std_logic;
SIGNAL \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a15~PORTBDATAOUT0\ : std_logic;
SIGNAL \data[7]~93_combout\ : std_logic;
SIGNAL \data[7]~94_combout\ : std_logic;
SIGNAL \data[7]~95_combout\ : std_logic;
SIGNAL \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a7~PORTBDATAOUT0\ : std_logic;
SIGNAL \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a7~PORTBDATAOUT0\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|avmm_readdata~28_combout\ : std_logic;
SIGNAL \flash_data_latch[15]~28_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|avmm_readdata~29_combout\ : std_logic;
SIGNAL \flash_data_latch[23]~29_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|avmm_readdata~30_combout\ : std_logic;
SIGNAL \flash_data_latch[7]~30_combout\ : std_logic;
SIGNAL \data[7]~96_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|avmm_readdata~31_combout\ : std_logic;
SIGNAL \flash_data_latch[31]~31_combout\ : std_logic;
SIGNAL \data[7]~97_combout\ : std_logic;
SIGNAL \data[7]~98_combout\ : std_logic;
SIGNAL \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a15~PORTBDATAOUT0\ : std_logic;
SIGNAL \data[7]~99_combout\ : std_logic;
SIGNAL \data[7]~100_combout\ : std_logic;
SIGNAL \data[7]~101_combout\ : std_logic;
SIGNAL \data[7]~102_combout\ : std_logic;
SIGNAL \led_latch[0]~4_combout\ : std_logic;
SIGNAL \led_latch[0]~5_combout\ : std_logic;
SIGNAL \led_latch[4]~0_combout\ : std_logic;
SIGNAL \data_dir~0_combout\ : std_logic;
SIGNAL \data_dir~1_combout\ : std_logic;
SIGNAL \data_dir~2_combout\ : std_logic;
SIGNAL \data_dir~reg0_q\ : std_logic;
SIGNAL \n_data_oe~1_combout\ : std_logic;
SIGNAL \n_extsel~0_combout\ : std_logic;
SIGNAL \n_extsel~1_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|flash_page_addr\ : std_logic_vector(22 DOWNTO 0);
SIGNAL \u0|onchip_flash_0|altera_onchip_flash_block|drdout\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin\ : std_logic_vector(22 DOWNTO 0);
SIGNAL \u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_reg\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \u0|onchip_flash_0|avmm_data_controller|flash_ardin_align_reg\ : std_logic_vector(0 DOWNTO 0);
SIGNAL addr_latch : std_logic_vector(15 DOWNTO 0);
SIGNAL \u1|bit_cnt\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \u0|onchip_flash_0|avmm_data_controller|data_count\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \u0|onchip_flash_0|avmm_data_controller|flash_ardin_align_backup_reg\ : std_logic_vector(0 DOWNTO 0);
SIGNAL flash_data_latch : std_logic_vector(31 DOWNTO 0);
SIGNAL \u1|s_rd_addr\ : std_logic_vector(7 DOWNTO 0);
SIGNAL led_latch : std_logic_vector(4 DOWNTO 0);
SIGNAL \u1|tx_buf\ : std_logic_vector(7 DOWNTO 0);
SIGNAL hw_sel : std_logic_vector(7 DOWNTO 0);
SIGNAL \u0|onchip_flash_0|avmm_data_controller|flash_addr_wire_neg_reg\ : std_logic_vector(22 DOWNTO 0);
SIGNAL \u1|rx_buf\ : std_logic_vector(7 DOWNTO 0);
SIGNAL clk_counter : std_logic_vector(3 DOWNTO 0);
SIGNAL reg_sdcr : std_logic_vector(7 DOWNTO 0);
SIGNAL reg_fbs : std_logic_vector(7 DOWNTO 0);
SIGNAL reg_srbs : std_logic_vector(7 DOWNTO 0);
SIGNAL reg_mrbs : std_logic_vector(7 DOWNTO 0);
SIGNAL reg_stbkcr : std_logic_vector(7 DOWNTO 0);
SIGNAL \u1|dpram_slave|altsyncram_component|auto_generated|out_address_reg_b\ : std_logic_vector(0 DOWNTO 0);
SIGNAL reg_stbycr : std_logic_vector(7 DOWNTO 0);
SIGNAL \u1|dpram_master|altsyncram_component|auto_generated|decode3|eq_node\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_input_reg\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \u1|dpram_master|altsyncram_component|auto_generated|out_address_reg_b\ : std_logic_vector(0 DOWNTO 0);
SIGNAL master_din : std_logic_vector(7 DOWNTO 0);
SIGNAL \u1|dpram_slave|altsyncram_component|auto_generated|address_reg_b\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \u1|dpram_slave|altsyncram_component|auto_generated|decode3|eq_node\ : std_logic_vector(1 DOWNTO 0);
SIGNAL slave_din : std_logic_vector(7 DOWNTO 0);
SIGNAL \u0|onchip_flash_0|avmm_data_controller|avmm_readdata\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \u1|dpram_master|altsyncram_component|auto_generated|address_reg_b\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \u0|onchip_flash_0|avmm_data_controller|read_ctrl_count\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \ALT_INV_spi_clk~input_o\ : std_logic;
SIGNAL \ALT_INV_clk_57~input_o\ : std_logic;
SIGNAL \u1|ALT_INV_process_1~1_combout\ : std_logic;
SIGNAL \u1|ALT_INV_process_1~0_combout\ : std_logic;
SIGNAL \u0|onchip_flash_0|avmm_data_controller|ALT_INV_reset_n_reg2~q\ : std_logic;
SIGNAL \ALT_INV_phi2_early~0_combout\ : std_logic;
SIGNAL \ALT_INV_data_dir~reg0_q\ : std_logic;
SIGNAL \ALT_INV_phi2_early~reg0_q\ : std_logic;
SIGNAL \ALT_INV_led_latch[4]~0_combout\ : std_logic;
SIGNAL ALT_INV_led_latch : std_logic_vector(3 DOWNTO 0);

BEGIN

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
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\u0|onchip_flash_0|altera_onchip_flash_block|ufm_block_ARDIN_bus\ <= (\~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & 
\u0|onchip_flash_0|avmm_data_controller|flash_addr_wire_neg_reg\(15) & \u0|onchip_flash_0|avmm_data_controller|flash_addr_wire_neg_reg\(14) & \u0|onchip_flash_0|avmm_data_controller|flash_addr_wire_neg_reg\(13) & 
\u0|onchip_flash_0|avmm_data_controller|flash_addr_wire_neg_reg\(12) & \u0|onchip_flash_0|avmm_data_controller|flash_addr_wire_neg_reg\(11) & \u0|onchip_flash_0|avmm_data_controller|flash_addr_wire_neg_reg\(10) & 
\u0|onchip_flash_0|avmm_data_controller|flash_addr_wire_neg_reg\(9) & \u0|onchip_flash_0|avmm_data_controller|flash_addr_wire_neg_reg\(8) & \u0|onchip_flash_0|avmm_data_controller|flash_addr_wire_neg_reg\(7) & 
\u0|onchip_flash_0|avmm_data_controller|flash_addr_wire_neg_reg\(6) & \u0|onchip_flash_0|avmm_data_controller|flash_addr_wire_neg_reg\(5) & \u0|onchip_flash_0|avmm_data_controller|flash_addr_wire_neg_reg\(4) & 
\u0|onchip_flash_0|avmm_data_controller|flash_addr_wire_neg_reg\(3) & \u0|onchip_flash_0|avmm_data_controller|flash_addr_wire_neg_reg\(2) & \u0|onchip_flash_0|avmm_data_controller|flash_addr_wire_neg_reg\(1) & 
\u0|onchip_flash_0|avmm_data_controller|flash_addr_wire_neg_reg\(0));

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

\u1|dpram_master|altsyncram_component|auto_generated|ram_block1a8_PORTADATAIN_bus\(0) <= \u1|rx_buf\(0);

\u1|dpram_master|altsyncram_component|auto_generated|ram_block1a8_PORTBDATAIN_bus\(0) <= master_din(0);

\u1|dpram_master|altsyncram_component|auto_generated|ram_block1a8_PORTAADDR_bus\ <= (\~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \u1|s_rd_addr\(7) & \u1|s_rd_addr\(6) & \u1|s_rd_addr\(5) & \u1|s_rd_addr\(4)
& \u1|s_rd_addr\(3) & \u1|s_rd_addr\(2) & \u1|s_rd_addr\(1) & \u1|s_rd_addr\(0));

\u1|dpram_master|altsyncram_component|auto_generated|ram_block1a8_PORTBADDR_bus\ <= (reg_mrbs(4) & reg_mrbs(3) & reg_mrbs(2) & reg_mrbs(1) & reg_mrbs(0) & \addr_latch[7]~_wirecell_combout\ & \addr_latch[6]~_wirecell_combout\ & 
\addr_latch[5]~_wirecell_combout\ & \addr_latch[4]~_wirecell_combout\ & \addr_latch[3]~_wirecell_combout\ & \addr_latch[2]~_wirecell_combout\ & \addr_latch[1]~_wirecell_combout\ & \addr_latch[0]~_wirecell_combout\);

\u1|dpram_master|altsyncram_component|auto_generated|ram_block1a8~portadataout\ <= \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a8_PORTADATAOUT_bus\(0);

\u1|dpram_master|altsyncram_component|auto_generated|ram_block1a8~PORTBDATAOUT0\ <= \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a8_PORTBDATAOUT_bus\(0);

\u1|dpram_master|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\(0) <= \u1|rx_buf\(0);

\u1|dpram_master|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAIN_bus\(0) <= master_din(0);

\u1|dpram_master|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \u1|s_rd_addr\(7) & \u1|s_rd_addr\(6) & \u1|s_rd_addr\(5) & \u1|s_rd_addr\(4)
& \u1|s_rd_addr\(3) & \u1|s_rd_addr\(2) & \u1|s_rd_addr\(1) & \u1|s_rd_addr\(0));

\u1|dpram_master|altsyncram_component|auto_generated|ram_block1a0_PORTBADDR_bus\ <= (reg_mrbs(4) & reg_mrbs(3) & reg_mrbs(2) & reg_mrbs(1) & reg_mrbs(0) & \addr_latch[7]~_wirecell_combout\ & \addr_latch[6]~_wirecell_combout\ & 
\addr_latch[5]~_wirecell_combout\ & \addr_latch[4]~_wirecell_combout\ & \addr_latch[3]~_wirecell_combout\ & \addr_latch[2]~_wirecell_combout\ & \addr_latch[1]~_wirecell_combout\ & \addr_latch[0]~_wirecell_combout\);

\u1|dpram_master|altsyncram_component|auto_generated|ram_block1a0~portadataout\ <= \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);

\u1|dpram_master|altsyncram_component|auto_generated|ram_block1a0~PORTBDATAOUT0\ <= \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(0);

\u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\(0) <= vcc;

\u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAIN_bus\(0) <= slave_din(0);

\u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \u1|s_rd_addr\(7) & \u1|s_rd_addr\(6) & \u1|s_rd_addr\(5) & \u1|s_rd_addr\(4)
& \u1|s_rd_addr\(3) & \u1|s_rd_addr\(2) & \u1|s_rd_addr\(1) & \u1|s_rd_addr\(0));

\u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a0_PORTBADDR_bus\ <= (reg_srbs(4) & reg_srbs(3) & reg_srbs(2) & reg_srbs(1) & reg_srbs(0) & \addr_latch[7]~_wirecell_combout\ & \addr_latch[6]~_wirecell_combout\ & 
\addr_latch[5]~_wirecell_combout\ & \addr_latch[4]~_wirecell_combout\ & \addr_latch[3]~_wirecell_combout\ & \addr_latch[2]~_wirecell_combout\ & \addr_latch[1]~_wirecell_combout\ & \addr_latch[0]~_wirecell_combout\);

\u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a0~portadataout\ <= \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);

\u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a0~PORTBDATAOUT0\ <= \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(0);

\u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a8_PORTADATAIN_bus\(0) <= vcc;

\u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a8_PORTBDATAIN_bus\(0) <= slave_din(0);

\u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a8_PORTAADDR_bus\ <= (\~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \u1|s_rd_addr\(7) & \u1|s_rd_addr\(6) & \u1|s_rd_addr\(5) & \u1|s_rd_addr\(4)
& \u1|s_rd_addr\(3) & \u1|s_rd_addr\(2) & \u1|s_rd_addr\(1) & \u1|s_rd_addr\(0));

\u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a8_PORTBADDR_bus\ <= (reg_srbs(4) & reg_srbs(3) & reg_srbs(2) & reg_srbs(1) & reg_srbs(0) & \addr_latch[7]~_wirecell_combout\ & \addr_latch[6]~_wirecell_combout\ & 
\addr_latch[5]~_wirecell_combout\ & \addr_latch[4]~_wirecell_combout\ & \addr_latch[3]~_wirecell_combout\ & \addr_latch[2]~_wirecell_combout\ & \addr_latch[1]~_wirecell_combout\ & \addr_latch[0]~_wirecell_combout\);

\u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a8~portadataout\ <= \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a8_PORTADATAOUT_bus\(0);

\u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a8~PORTBDATAOUT0\ <= \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a8_PORTBDATAOUT_bus\(0);

\u1|dpram_master|altsyncram_component|auto_generated|ram_block1a9_PORTADATAIN_bus\(0) <= \u1|rx_buf\(1);

\u1|dpram_master|altsyncram_component|auto_generated|ram_block1a9_PORTBDATAIN_bus\(0) <= master_din(1);

\u1|dpram_master|altsyncram_component|auto_generated|ram_block1a9_PORTAADDR_bus\ <= (\~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \u1|s_rd_addr\(7) & \u1|s_rd_addr\(6) & \u1|s_rd_addr\(5) & \u1|s_rd_addr\(4)
& \u1|s_rd_addr\(3) & \u1|s_rd_addr\(2) & \u1|s_rd_addr\(1) & \u1|s_rd_addr\(0));

\u1|dpram_master|altsyncram_component|auto_generated|ram_block1a9_PORTBADDR_bus\ <= (reg_mrbs(4) & reg_mrbs(3) & reg_mrbs(2) & reg_mrbs(1) & reg_mrbs(0) & \addr_latch[7]~_wirecell_combout\ & \addr_latch[6]~_wirecell_combout\ & 
\addr_latch[5]~_wirecell_combout\ & \addr_latch[4]~_wirecell_combout\ & \addr_latch[3]~_wirecell_combout\ & \addr_latch[2]~_wirecell_combout\ & \addr_latch[1]~_wirecell_combout\ & \addr_latch[0]~_wirecell_combout\);

\u1|dpram_master|altsyncram_component|auto_generated|ram_block1a9~portadataout\ <= \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a9_PORTADATAOUT_bus\(0);

\u1|dpram_master|altsyncram_component|auto_generated|ram_block1a9~PORTBDATAOUT0\ <= \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a9_PORTBDATAOUT_bus\(0);

\u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a1_PORTADATAIN_bus\(0) <= vcc;

\u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a1_PORTBDATAIN_bus\(0) <= slave_din(1);

\u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a1_PORTAADDR_bus\ <= (\~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \u1|s_rd_addr\(7) & \u1|s_rd_addr\(6) & \u1|s_rd_addr\(5) & \u1|s_rd_addr\(4)
& \u1|s_rd_addr\(3) & \u1|s_rd_addr\(2) & \u1|s_rd_addr\(1) & \u1|s_rd_addr\(0));

\u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a1_PORTBADDR_bus\ <= (reg_srbs(4) & reg_srbs(3) & reg_srbs(2) & reg_srbs(1) & reg_srbs(0) & \addr_latch[7]~_wirecell_combout\ & \addr_latch[6]~_wirecell_combout\ & 
\addr_latch[5]~_wirecell_combout\ & \addr_latch[4]~_wirecell_combout\ & \addr_latch[3]~_wirecell_combout\ & \addr_latch[2]~_wirecell_combout\ & \addr_latch[1]~_wirecell_combout\ & \addr_latch[0]~_wirecell_combout\);

\u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a1~portadataout\ <= \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a1_PORTADATAOUT_bus\(0);

\u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a1~PORTBDATAOUT0\ <= \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a1_PORTBDATAOUT_bus\(0);

\u1|dpram_master|altsyncram_component|auto_generated|ram_block1a1_PORTADATAIN_bus\(0) <= \u1|rx_buf\(1);

\u1|dpram_master|altsyncram_component|auto_generated|ram_block1a1_PORTBDATAIN_bus\(0) <= master_din(1);

\u1|dpram_master|altsyncram_component|auto_generated|ram_block1a1_PORTAADDR_bus\ <= (\~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \u1|s_rd_addr\(7) & \u1|s_rd_addr\(6) & \u1|s_rd_addr\(5) & \u1|s_rd_addr\(4)
& \u1|s_rd_addr\(3) & \u1|s_rd_addr\(2) & \u1|s_rd_addr\(1) & \u1|s_rd_addr\(0));

\u1|dpram_master|altsyncram_component|auto_generated|ram_block1a1_PORTBADDR_bus\ <= (reg_mrbs(4) & reg_mrbs(3) & reg_mrbs(2) & reg_mrbs(1) & reg_mrbs(0) & \addr_latch[7]~_wirecell_combout\ & \addr_latch[6]~_wirecell_combout\ & 
\addr_latch[5]~_wirecell_combout\ & \addr_latch[4]~_wirecell_combout\ & \addr_latch[3]~_wirecell_combout\ & \addr_latch[2]~_wirecell_combout\ & \addr_latch[1]~_wirecell_combout\ & \addr_latch[0]~_wirecell_combout\);

\u1|dpram_master|altsyncram_component|auto_generated|ram_block1a1~portadataout\ <= \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a1_PORTADATAOUT_bus\(0);

\u1|dpram_master|altsyncram_component|auto_generated|ram_block1a1~PORTBDATAOUT0\ <= \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a1_PORTBDATAOUT_bus\(0);

\u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a9_PORTADATAIN_bus\(0) <= vcc;

\u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a9_PORTBDATAIN_bus\(0) <= slave_din(1);

\u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a9_PORTAADDR_bus\ <= (\~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \u1|s_rd_addr\(7) & \u1|s_rd_addr\(6) & \u1|s_rd_addr\(5) & \u1|s_rd_addr\(4)
& \u1|s_rd_addr\(3) & \u1|s_rd_addr\(2) & \u1|s_rd_addr\(1) & \u1|s_rd_addr\(0));

\u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a9_PORTBADDR_bus\ <= (reg_srbs(4) & reg_srbs(3) & reg_srbs(2) & reg_srbs(1) & reg_srbs(0) & \addr_latch[7]~_wirecell_combout\ & \addr_latch[6]~_wirecell_combout\ & 
\addr_latch[5]~_wirecell_combout\ & \addr_latch[4]~_wirecell_combout\ & \addr_latch[3]~_wirecell_combout\ & \addr_latch[2]~_wirecell_combout\ & \addr_latch[1]~_wirecell_combout\ & \addr_latch[0]~_wirecell_combout\);

\u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a9~portadataout\ <= \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a9_PORTADATAOUT_bus\(0);

\u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a9~PORTBDATAOUT0\ <= \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a9_PORTBDATAOUT_bus\(0);

\u1|dpram_master|altsyncram_component|auto_generated|ram_block1a10_PORTADATAIN_bus\(0) <= \u1|rx_buf\(2);

\u1|dpram_master|altsyncram_component|auto_generated|ram_block1a10_PORTBDATAIN_bus\(0) <= master_din(2);

\u1|dpram_master|altsyncram_component|auto_generated|ram_block1a10_PORTAADDR_bus\ <= (\~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \u1|s_rd_addr\(7) & \u1|s_rd_addr\(6) & \u1|s_rd_addr\(5) & 
\u1|s_rd_addr\(4) & \u1|s_rd_addr\(3) & \u1|s_rd_addr\(2) & \u1|s_rd_addr\(1) & \u1|s_rd_addr\(0));

\u1|dpram_master|altsyncram_component|auto_generated|ram_block1a10_PORTBADDR_bus\ <= (reg_mrbs(4) & reg_mrbs(3) & reg_mrbs(2) & reg_mrbs(1) & reg_mrbs(0) & \addr_latch[7]~_wirecell_combout\ & \addr_latch[6]~_wirecell_combout\ & 
\addr_latch[5]~_wirecell_combout\ & \addr_latch[4]~_wirecell_combout\ & \addr_latch[3]~_wirecell_combout\ & \addr_latch[2]~_wirecell_combout\ & \addr_latch[1]~_wirecell_combout\ & \addr_latch[0]~_wirecell_combout\);

\u1|dpram_master|altsyncram_component|auto_generated|ram_block1a10~portadataout\ <= \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a10_PORTADATAOUT_bus\(0);

\u1|dpram_master|altsyncram_component|auto_generated|ram_block1a10~PORTBDATAOUT0\ <= \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a10_PORTBDATAOUT_bus\(0);

\u1|dpram_master|altsyncram_component|auto_generated|ram_block1a2_PORTADATAIN_bus\(0) <= \u1|rx_buf\(2);

\u1|dpram_master|altsyncram_component|auto_generated|ram_block1a2_PORTBDATAIN_bus\(0) <= master_din(2);

\u1|dpram_master|altsyncram_component|auto_generated|ram_block1a2_PORTAADDR_bus\ <= (\~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \u1|s_rd_addr\(7) & \u1|s_rd_addr\(6) & \u1|s_rd_addr\(5) & \u1|s_rd_addr\(4)
& \u1|s_rd_addr\(3) & \u1|s_rd_addr\(2) & \u1|s_rd_addr\(1) & \u1|s_rd_addr\(0));

\u1|dpram_master|altsyncram_component|auto_generated|ram_block1a2_PORTBADDR_bus\ <= (reg_mrbs(4) & reg_mrbs(3) & reg_mrbs(2) & reg_mrbs(1) & reg_mrbs(0) & \addr_latch[7]~_wirecell_combout\ & \addr_latch[6]~_wirecell_combout\ & 
\addr_latch[5]~_wirecell_combout\ & \addr_latch[4]~_wirecell_combout\ & \addr_latch[3]~_wirecell_combout\ & \addr_latch[2]~_wirecell_combout\ & \addr_latch[1]~_wirecell_combout\ & \addr_latch[0]~_wirecell_combout\);

\u1|dpram_master|altsyncram_component|auto_generated|ram_block1a2~portadataout\ <= \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a2_PORTADATAOUT_bus\(0);

\u1|dpram_master|altsyncram_component|auto_generated|ram_block1a2~PORTBDATAOUT0\ <= \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a2_PORTBDATAOUT_bus\(0);

\u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a2_PORTADATAIN_bus\(0) <= vcc;

\u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a2_PORTBDATAIN_bus\(0) <= slave_din(2);

\u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a2_PORTAADDR_bus\ <= (\~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \u1|s_rd_addr\(7) & \u1|s_rd_addr\(6) & \u1|s_rd_addr\(5) & \u1|s_rd_addr\(4)
& \u1|s_rd_addr\(3) & \u1|s_rd_addr\(2) & \u1|s_rd_addr\(1) & \u1|s_rd_addr\(0));

\u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a2_PORTBADDR_bus\ <= (reg_srbs(4) & reg_srbs(3) & reg_srbs(2) & reg_srbs(1) & reg_srbs(0) & \addr_latch[7]~_wirecell_combout\ & \addr_latch[6]~_wirecell_combout\ & 
\addr_latch[5]~_wirecell_combout\ & \addr_latch[4]~_wirecell_combout\ & \addr_latch[3]~_wirecell_combout\ & \addr_latch[2]~_wirecell_combout\ & \addr_latch[1]~_wirecell_combout\ & \addr_latch[0]~_wirecell_combout\);

\u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a2~portadataout\ <= \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a2_PORTADATAOUT_bus\(0);

\u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a2~PORTBDATAOUT0\ <= \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a2_PORTBDATAOUT_bus\(0);

\u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a10_PORTADATAIN_bus\(0) <= vcc;

\u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a10_PORTBDATAIN_bus\(0) <= slave_din(2);

\u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a10_PORTAADDR_bus\ <= (\~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \u1|s_rd_addr\(7) & \u1|s_rd_addr\(6) & \u1|s_rd_addr\(5) & \u1|s_rd_addr\(4)
& \u1|s_rd_addr\(3) & \u1|s_rd_addr\(2) & \u1|s_rd_addr\(1) & \u1|s_rd_addr\(0));

\u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a10_PORTBADDR_bus\ <= (reg_srbs(4) & reg_srbs(3) & reg_srbs(2) & reg_srbs(1) & reg_srbs(0) & \addr_latch[7]~_wirecell_combout\ & \addr_latch[6]~_wirecell_combout\ & 
\addr_latch[5]~_wirecell_combout\ & \addr_latch[4]~_wirecell_combout\ & \addr_latch[3]~_wirecell_combout\ & \addr_latch[2]~_wirecell_combout\ & \addr_latch[1]~_wirecell_combout\ & \addr_latch[0]~_wirecell_combout\);

\u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a10~portadataout\ <= \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a10_PORTADATAOUT_bus\(0);

\u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a10~PORTBDATAOUT0\ <= \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a10_PORTBDATAOUT_bus\(0);

\u1|dpram_master|altsyncram_component|auto_generated|ram_block1a11_PORTADATAIN_bus\(0) <= \u1|rx_buf\(3);

\u1|dpram_master|altsyncram_component|auto_generated|ram_block1a11_PORTBDATAIN_bus\(0) <= master_din(3);

\u1|dpram_master|altsyncram_component|auto_generated|ram_block1a11_PORTAADDR_bus\ <= (\~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \u1|s_rd_addr\(7) & \u1|s_rd_addr\(6) & \u1|s_rd_addr\(5) & 
\u1|s_rd_addr\(4) & \u1|s_rd_addr\(3) & \u1|s_rd_addr\(2) & \u1|s_rd_addr\(1) & \u1|s_rd_addr\(0));

\u1|dpram_master|altsyncram_component|auto_generated|ram_block1a11_PORTBADDR_bus\ <= (reg_mrbs(4) & reg_mrbs(3) & reg_mrbs(2) & reg_mrbs(1) & reg_mrbs(0) & \addr_latch[7]~_wirecell_combout\ & \addr_latch[6]~_wirecell_combout\ & 
\addr_latch[5]~_wirecell_combout\ & \addr_latch[4]~_wirecell_combout\ & \addr_latch[3]~_wirecell_combout\ & \addr_latch[2]~_wirecell_combout\ & \addr_latch[1]~_wirecell_combout\ & \addr_latch[0]~_wirecell_combout\);

\u1|dpram_master|altsyncram_component|auto_generated|ram_block1a11~portadataout\ <= \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a11_PORTADATAOUT_bus\(0);

\u1|dpram_master|altsyncram_component|auto_generated|ram_block1a11~PORTBDATAOUT0\ <= \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a11_PORTBDATAOUT_bus\(0);

\u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a3_PORTADATAIN_bus\(0) <= vcc;

\u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a3_PORTBDATAIN_bus\(0) <= slave_din(3);

\u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a3_PORTAADDR_bus\ <= (\~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \u1|s_rd_addr\(7) & \u1|s_rd_addr\(6) & \u1|s_rd_addr\(5) & \u1|s_rd_addr\(4)
& \u1|s_rd_addr\(3) & \u1|s_rd_addr\(2) & \u1|s_rd_addr\(1) & \u1|s_rd_addr\(0));

\u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a3_PORTBADDR_bus\ <= (reg_srbs(4) & reg_srbs(3) & reg_srbs(2) & reg_srbs(1) & reg_srbs(0) & \addr_latch[7]~_wirecell_combout\ & \addr_latch[6]~_wirecell_combout\ & 
\addr_latch[5]~_wirecell_combout\ & \addr_latch[4]~_wirecell_combout\ & \addr_latch[3]~_wirecell_combout\ & \addr_latch[2]~_wirecell_combout\ & \addr_latch[1]~_wirecell_combout\ & \addr_latch[0]~_wirecell_combout\);

\u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a3~portadataout\ <= \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a3_PORTADATAOUT_bus\(0);

\u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a3~PORTBDATAOUT0\ <= \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a3_PORTBDATAOUT_bus\(0);

\u1|dpram_master|altsyncram_component|auto_generated|ram_block1a3_PORTADATAIN_bus\(0) <= \u1|rx_buf\(3);

\u1|dpram_master|altsyncram_component|auto_generated|ram_block1a3_PORTBDATAIN_bus\(0) <= master_din(3);

\u1|dpram_master|altsyncram_component|auto_generated|ram_block1a3_PORTAADDR_bus\ <= (\~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \u1|s_rd_addr\(7) & \u1|s_rd_addr\(6) & \u1|s_rd_addr\(5) & \u1|s_rd_addr\(4)
& \u1|s_rd_addr\(3) & \u1|s_rd_addr\(2) & \u1|s_rd_addr\(1) & \u1|s_rd_addr\(0));

\u1|dpram_master|altsyncram_component|auto_generated|ram_block1a3_PORTBADDR_bus\ <= (reg_mrbs(4) & reg_mrbs(3) & reg_mrbs(2) & reg_mrbs(1) & reg_mrbs(0) & \addr_latch[7]~_wirecell_combout\ & \addr_latch[6]~_wirecell_combout\ & 
\addr_latch[5]~_wirecell_combout\ & \addr_latch[4]~_wirecell_combout\ & \addr_latch[3]~_wirecell_combout\ & \addr_latch[2]~_wirecell_combout\ & \addr_latch[1]~_wirecell_combout\ & \addr_latch[0]~_wirecell_combout\);

\u1|dpram_master|altsyncram_component|auto_generated|ram_block1a3~portadataout\ <= \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a3_PORTADATAOUT_bus\(0);

\u1|dpram_master|altsyncram_component|auto_generated|ram_block1a3~PORTBDATAOUT0\ <= \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a3_PORTBDATAOUT_bus\(0);

\u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a11_PORTADATAIN_bus\(0) <= vcc;

\u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a11_PORTBDATAIN_bus\(0) <= slave_din(3);

\u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a11_PORTAADDR_bus\ <= (\~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \u1|s_rd_addr\(7) & \u1|s_rd_addr\(6) & \u1|s_rd_addr\(5) & \u1|s_rd_addr\(4)
& \u1|s_rd_addr\(3) & \u1|s_rd_addr\(2) & \u1|s_rd_addr\(1) & \u1|s_rd_addr\(0));

\u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a11_PORTBADDR_bus\ <= (reg_srbs(4) & reg_srbs(3) & reg_srbs(2) & reg_srbs(1) & reg_srbs(0) & \addr_latch[7]~_wirecell_combout\ & \addr_latch[6]~_wirecell_combout\ & 
\addr_latch[5]~_wirecell_combout\ & \addr_latch[4]~_wirecell_combout\ & \addr_latch[3]~_wirecell_combout\ & \addr_latch[2]~_wirecell_combout\ & \addr_latch[1]~_wirecell_combout\ & \addr_latch[0]~_wirecell_combout\);

\u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a11~portadataout\ <= \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a11_PORTADATAOUT_bus\(0);

\u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a11~PORTBDATAOUT0\ <= \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a11_PORTBDATAOUT_bus\(0);

\u1|dpram_master|altsyncram_component|auto_generated|ram_block1a12_PORTADATAIN_bus\(0) <= \u1|rx_buf\(4);

\u1|dpram_master|altsyncram_component|auto_generated|ram_block1a12_PORTBDATAIN_bus\(0) <= master_din(4);

\u1|dpram_master|altsyncram_component|auto_generated|ram_block1a12_PORTAADDR_bus\ <= (\~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \u1|s_rd_addr\(7) & \u1|s_rd_addr\(6) & \u1|s_rd_addr\(5) & 
\u1|s_rd_addr\(4) & \u1|s_rd_addr\(3) & \u1|s_rd_addr\(2) & \u1|s_rd_addr\(1) & \u1|s_rd_addr\(0));

\u1|dpram_master|altsyncram_component|auto_generated|ram_block1a12_PORTBADDR_bus\ <= (reg_mrbs(4) & reg_mrbs(3) & reg_mrbs(2) & reg_mrbs(1) & reg_mrbs(0) & \addr_latch[7]~_wirecell_combout\ & \addr_latch[6]~_wirecell_combout\ & 
\addr_latch[5]~_wirecell_combout\ & \addr_latch[4]~_wirecell_combout\ & \addr_latch[3]~_wirecell_combout\ & \addr_latch[2]~_wirecell_combout\ & \addr_latch[1]~_wirecell_combout\ & \addr_latch[0]~_wirecell_combout\);

\u1|dpram_master|altsyncram_component|auto_generated|ram_block1a12~portadataout\ <= \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a12_PORTADATAOUT_bus\(0);

\u1|dpram_master|altsyncram_component|auto_generated|ram_block1a12~PORTBDATAOUT0\ <= \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a12_PORTBDATAOUT_bus\(0);

\u1|dpram_master|altsyncram_component|auto_generated|ram_block1a4_PORTADATAIN_bus\(0) <= \u1|rx_buf\(4);

\u1|dpram_master|altsyncram_component|auto_generated|ram_block1a4_PORTBDATAIN_bus\(0) <= master_din(4);

\u1|dpram_master|altsyncram_component|auto_generated|ram_block1a4_PORTAADDR_bus\ <= (\~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \u1|s_rd_addr\(7) & \u1|s_rd_addr\(6) & \u1|s_rd_addr\(5) & \u1|s_rd_addr\(4)
& \u1|s_rd_addr\(3) & \u1|s_rd_addr\(2) & \u1|s_rd_addr\(1) & \u1|s_rd_addr\(0));

\u1|dpram_master|altsyncram_component|auto_generated|ram_block1a4_PORTBADDR_bus\ <= (reg_mrbs(4) & reg_mrbs(3) & reg_mrbs(2) & reg_mrbs(1) & reg_mrbs(0) & \addr_latch[7]~_wirecell_combout\ & \addr_latch[6]~_wirecell_combout\ & 
\addr_latch[5]~_wirecell_combout\ & \addr_latch[4]~_wirecell_combout\ & \addr_latch[3]~_wirecell_combout\ & \addr_latch[2]~_wirecell_combout\ & \addr_latch[1]~_wirecell_combout\ & \addr_latch[0]~_wirecell_combout\);

\u1|dpram_master|altsyncram_component|auto_generated|ram_block1a4~portadataout\ <= \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a4_PORTADATAOUT_bus\(0);

\u1|dpram_master|altsyncram_component|auto_generated|ram_block1a4~PORTBDATAOUT0\ <= \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a4_PORTBDATAOUT_bus\(0);

\u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a4_PORTADATAIN_bus\(0) <= vcc;

\u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a4_PORTBDATAIN_bus\(0) <= slave_din(4);

\u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a4_PORTAADDR_bus\ <= (\~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \u1|s_rd_addr\(7) & \u1|s_rd_addr\(6) & \u1|s_rd_addr\(5) & \u1|s_rd_addr\(4)
& \u1|s_rd_addr\(3) & \u1|s_rd_addr\(2) & \u1|s_rd_addr\(1) & \u1|s_rd_addr\(0));

\u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a4_PORTBADDR_bus\ <= (reg_srbs(4) & reg_srbs(3) & reg_srbs(2) & reg_srbs(1) & reg_srbs(0) & \addr_latch[7]~_wirecell_combout\ & \addr_latch[6]~_wirecell_combout\ & 
\addr_latch[5]~_wirecell_combout\ & \addr_latch[4]~_wirecell_combout\ & \addr_latch[3]~_wirecell_combout\ & \addr_latch[2]~_wirecell_combout\ & \addr_latch[1]~_wirecell_combout\ & \addr_latch[0]~_wirecell_combout\);

\u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a4~portadataout\ <= \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a4_PORTADATAOUT_bus\(0);

\u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a4~PORTBDATAOUT0\ <= \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a4_PORTBDATAOUT_bus\(0);

\u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a12_PORTADATAIN_bus\(0) <= vcc;

\u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a12_PORTBDATAIN_bus\(0) <= slave_din(4);

\u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a12_PORTAADDR_bus\ <= (\~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \u1|s_rd_addr\(7) & \u1|s_rd_addr\(6) & \u1|s_rd_addr\(5) & \u1|s_rd_addr\(4)
& \u1|s_rd_addr\(3) & \u1|s_rd_addr\(2) & \u1|s_rd_addr\(1) & \u1|s_rd_addr\(0));

\u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a12_PORTBADDR_bus\ <= (reg_srbs(4) & reg_srbs(3) & reg_srbs(2) & reg_srbs(1) & reg_srbs(0) & \addr_latch[7]~_wirecell_combout\ & \addr_latch[6]~_wirecell_combout\ & 
\addr_latch[5]~_wirecell_combout\ & \addr_latch[4]~_wirecell_combout\ & \addr_latch[3]~_wirecell_combout\ & \addr_latch[2]~_wirecell_combout\ & \addr_latch[1]~_wirecell_combout\ & \addr_latch[0]~_wirecell_combout\);

\u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a12~portadataout\ <= \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a12_PORTADATAOUT_bus\(0);

\u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a12~PORTBDATAOUT0\ <= \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a12_PORTBDATAOUT_bus\(0);

\u1|dpram_master|altsyncram_component|auto_generated|ram_block1a13_PORTADATAIN_bus\(0) <= \u1|rx_buf\(5);

\u1|dpram_master|altsyncram_component|auto_generated|ram_block1a13_PORTBDATAIN_bus\(0) <= master_din(5);

\u1|dpram_master|altsyncram_component|auto_generated|ram_block1a13_PORTAADDR_bus\ <= (\~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \u1|s_rd_addr\(7) & \u1|s_rd_addr\(6) & \u1|s_rd_addr\(5) & 
\u1|s_rd_addr\(4) & \u1|s_rd_addr\(3) & \u1|s_rd_addr\(2) & \u1|s_rd_addr\(1) & \u1|s_rd_addr\(0));

\u1|dpram_master|altsyncram_component|auto_generated|ram_block1a13_PORTBADDR_bus\ <= (reg_mrbs(4) & reg_mrbs(3) & reg_mrbs(2) & reg_mrbs(1) & reg_mrbs(0) & \addr_latch[7]~_wirecell_combout\ & \addr_latch[6]~_wirecell_combout\ & 
\addr_latch[5]~_wirecell_combout\ & \addr_latch[4]~_wirecell_combout\ & \addr_latch[3]~_wirecell_combout\ & \addr_latch[2]~_wirecell_combout\ & \addr_latch[1]~_wirecell_combout\ & \addr_latch[0]~_wirecell_combout\);

\u1|dpram_master|altsyncram_component|auto_generated|ram_block1a13~portadataout\ <= \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a13_PORTADATAOUT_bus\(0);

\u1|dpram_master|altsyncram_component|auto_generated|ram_block1a13~PORTBDATAOUT0\ <= \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a13_PORTBDATAOUT_bus\(0);

\u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a5_PORTADATAIN_bus\(0) <= vcc;

\u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a5_PORTBDATAIN_bus\(0) <= slave_din(5);

\u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a5_PORTAADDR_bus\ <= (\~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \u1|s_rd_addr\(7) & \u1|s_rd_addr\(6) & \u1|s_rd_addr\(5) & \u1|s_rd_addr\(4)
& \u1|s_rd_addr\(3) & \u1|s_rd_addr\(2) & \u1|s_rd_addr\(1) & \u1|s_rd_addr\(0));

\u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a5_PORTBADDR_bus\ <= (reg_srbs(4) & reg_srbs(3) & reg_srbs(2) & reg_srbs(1) & reg_srbs(0) & \addr_latch[7]~_wirecell_combout\ & \addr_latch[6]~_wirecell_combout\ & 
\addr_latch[5]~_wirecell_combout\ & \addr_latch[4]~_wirecell_combout\ & \addr_latch[3]~_wirecell_combout\ & \addr_latch[2]~_wirecell_combout\ & \addr_latch[1]~_wirecell_combout\ & \addr_latch[0]~_wirecell_combout\);

\u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a5~portadataout\ <= \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a5_PORTADATAOUT_bus\(0);

\u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a5~PORTBDATAOUT0\ <= \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a5_PORTBDATAOUT_bus\(0);

\u1|dpram_master|altsyncram_component|auto_generated|ram_block1a5_PORTADATAIN_bus\(0) <= \u1|rx_buf\(5);

\u1|dpram_master|altsyncram_component|auto_generated|ram_block1a5_PORTBDATAIN_bus\(0) <= master_din(5);

\u1|dpram_master|altsyncram_component|auto_generated|ram_block1a5_PORTAADDR_bus\ <= (\~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \u1|s_rd_addr\(7) & \u1|s_rd_addr\(6) & \u1|s_rd_addr\(5) & \u1|s_rd_addr\(4)
& \u1|s_rd_addr\(3) & \u1|s_rd_addr\(2) & \u1|s_rd_addr\(1) & \u1|s_rd_addr\(0));

\u1|dpram_master|altsyncram_component|auto_generated|ram_block1a5_PORTBADDR_bus\ <= (reg_mrbs(4) & reg_mrbs(3) & reg_mrbs(2) & reg_mrbs(1) & reg_mrbs(0) & \addr_latch[7]~_wirecell_combout\ & \addr_latch[6]~_wirecell_combout\ & 
\addr_latch[5]~_wirecell_combout\ & \addr_latch[4]~_wirecell_combout\ & \addr_latch[3]~_wirecell_combout\ & \addr_latch[2]~_wirecell_combout\ & \addr_latch[1]~_wirecell_combout\ & \addr_latch[0]~_wirecell_combout\);

\u1|dpram_master|altsyncram_component|auto_generated|ram_block1a5~portadataout\ <= \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a5_PORTADATAOUT_bus\(0);

\u1|dpram_master|altsyncram_component|auto_generated|ram_block1a5~PORTBDATAOUT0\ <= \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a5_PORTBDATAOUT_bus\(0);

\u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a13_PORTADATAIN_bus\(0) <= vcc;

\u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a13_PORTBDATAIN_bus\(0) <= slave_din(5);

\u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a13_PORTAADDR_bus\ <= (\~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \u1|s_rd_addr\(7) & \u1|s_rd_addr\(6) & \u1|s_rd_addr\(5) & \u1|s_rd_addr\(4)
& \u1|s_rd_addr\(3) & \u1|s_rd_addr\(2) & \u1|s_rd_addr\(1) & \u1|s_rd_addr\(0));

\u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a13_PORTBADDR_bus\ <= (reg_srbs(4) & reg_srbs(3) & reg_srbs(2) & reg_srbs(1) & reg_srbs(0) & \addr_latch[7]~_wirecell_combout\ & \addr_latch[6]~_wirecell_combout\ & 
\addr_latch[5]~_wirecell_combout\ & \addr_latch[4]~_wirecell_combout\ & \addr_latch[3]~_wirecell_combout\ & \addr_latch[2]~_wirecell_combout\ & \addr_latch[1]~_wirecell_combout\ & \addr_latch[0]~_wirecell_combout\);

\u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a13~portadataout\ <= \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a13_PORTADATAOUT_bus\(0);

\u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a13~PORTBDATAOUT0\ <= \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a13_PORTBDATAOUT_bus\(0);

\u1|dpram_master|altsyncram_component|auto_generated|ram_block1a14_PORTADATAIN_bus\(0) <= \u1|rx_buf\(6);

\u1|dpram_master|altsyncram_component|auto_generated|ram_block1a14_PORTBDATAIN_bus\(0) <= master_din(6);

\u1|dpram_master|altsyncram_component|auto_generated|ram_block1a14_PORTAADDR_bus\ <= (\~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \u1|s_rd_addr\(7) & \u1|s_rd_addr\(6) & \u1|s_rd_addr\(5) & 
\u1|s_rd_addr\(4) & \u1|s_rd_addr\(3) & \u1|s_rd_addr\(2) & \u1|s_rd_addr\(1) & \u1|s_rd_addr\(0));

\u1|dpram_master|altsyncram_component|auto_generated|ram_block1a14_PORTBADDR_bus\ <= (reg_mrbs(4) & reg_mrbs(3) & reg_mrbs(2) & reg_mrbs(1) & reg_mrbs(0) & \addr_latch[7]~_wirecell_combout\ & \addr_latch[6]~_wirecell_combout\ & 
\addr_latch[5]~_wirecell_combout\ & \addr_latch[4]~_wirecell_combout\ & \addr_latch[3]~_wirecell_combout\ & \addr_latch[2]~_wirecell_combout\ & \addr_latch[1]~_wirecell_combout\ & \addr_latch[0]~_wirecell_combout\);

\u1|dpram_master|altsyncram_component|auto_generated|ram_block1a14~portadataout\ <= \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a14_PORTADATAOUT_bus\(0);

\u1|dpram_master|altsyncram_component|auto_generated|ram_block1a14~PORTBDATAOUT0\ <= \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a14_PORTBDATAOUT_bus\(0);

\u1|dpram_master|altsyncram_component|auto_generated|ram_block1a6_PORTADATAIN_bus\(0) <= \u1|rx_buf\(6);

\u1|dpram_master|altsyncram_component|auto_generated|ram_block1a6_PORTBDATAIN_bus\(0) <= master_din(6);

\u1|dpram_master|altsyncram_component|auto_generated|ram_block1a6_PORTAADDR_bus\ <= (\~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \u1|s_rd_addr\(7) & \u1|s_rd_addr\(6) & \u1|s_rd_addr\(5) & \u1|s_rd_addr\(4)
& \u1|s_rd_addr\(3) & \u1|s_rd_addr\(2) & \u1|s_rd_addr\(1) & \u1|s_rd_addr\(0));

\u1|dpram_master|altsyncram_component|auto_generated|ram_block1a6_PORTBADDR_bus\ <= (reg_mrbs(4) & reg_mrbs(3) & reg_mrbs(2) & reg_mrbs(1) & reg_mrbs(0) & \addr_latch[7]~_wirecell_combout\ & \addr_latch[6]~_wirecell_combout\ & 
\addr_latch[5]~_wirecell_combout\ & \addr_latch[4]~_wirecell_combout\ & \addr_latch[3]~_wirecell_combout\ & \addr_latch[2]~_wirecell_combout\ & \addr_latch[1]~_wirecell_combout\ & \addr_latch[0]~_wirecell_combout\);

\u1|dpram_master|altsyncram_component|auto_generated|ram_block1a6~portadataout\ <= \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a6_PORTADATAOUT_bus\(0);

\u1|dpram_master|altsyncram_component|auto_generated|ram_block1a6~PORTBDATAOUT0\ <= \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a6_PORTBDATAOUT_bus\(0);

\u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a6_PORTADATAIN_bus\(0) <= vcc;

\u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a6_PORTBDATAIN_bus\(0) <= slave_din(6);

\u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a6_PORTAADDR_bus\ <= (\~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \u1|s_rd_addr\(7) & \u1|s_rd_addr\(6) & \u1|s_rd_addr\(5) & \u1|s_rd_addr\(4)
& \u1|s_rd_addr\(3) & \u1|s_rd_addr\(2) & \u1|s_rd_addr\(1) & \u1|s_rd_addr\(0));

\u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a6_PORTBADDR_bus\ <= (reg_srbs(4) & reg_srbs(3) & reg_srbs(2) & reg_srbs(1) & reg_srbs(0) & \addr_latch[7]~_wirecell_combout\ & \addr_latch[6]~_wirecell_combout\ & 
\addr_latch[5]~_wirecell_combout\ & \addr_latch[4]~_wirecell_combout\ & \addr_latch[3]~_wirecell_combout\ & \addr_latch[2]~_wirecell_combout\ & \addr_latch[1]~_wirecell_combout\ & \addr_latch[0]~_wirecell_combout\);

\u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a6~portadataout\ <= \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a6_PORTADATAOUT_bus\(0);

\u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a6~PORTBDATAOUT0\ <= \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a6_PORTBDATAOUT_bus\(0);

\u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a14_PORTADATAIN_bus\(0) <= vcc;

\u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a14_PORTBDATAIN_bus\(0) <= slave_din(6);

\u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a14_PORTAADDR_bus\ <= (\~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \u1|s_rd_addr\(7) & \u1|s_rd_addr\(6) & \u1|s_rd_addr\(5) & \u1|s_rd_addr\(4)
& \u1|s_rd_addr\(3) & \u1|s_rd_addr\(2) & \u1|s_rd_addr\(1) & \u1|s_rd_addr\(0));

\u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a14_PORTBADDR_bus\ <= (reg_srbs(4) & reg_srbs(3) & reg_srbs(2) & reg_srbs(1) & reg_srbs(0) & \addr_latch[7]~_wirecell_combout\ & \addr_latch[6]~_wirecell_combout\ & 
\addr_latch[5]~_wirecell_combout\ & \addr_latch[4]~_wirecell_combout\ & \addr_latch[3]~_wirecell_combout\ & \addr_latch[2]~_wirecell_combout\ & \addr_latch[1]~_wirecell_combout\ & \addr_latch[0]~_wirecell_combout\);

\u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a14~portadataout\ <= \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a14_PORTADATAOUT_bus\(0);

\u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a14~PORTBDATAOUT0\ <= \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a14_PORTBDATAOUT_bus\(0);

\u1|dpram_master|altsyncram_component|auto_generated|ram_block1a15_PORTADATAIN_bus\(0) <= \u1|rx_buf\(7);

\u1|dpram_master|altsyncram_component|auto_generated|ram_block1a15_PORTBDATAIN_bus\(0) <= master_din(7);

\u1|dpram_master|altsyncram_component|auto_generated|ram_block1a15_PORTAADDR_bus\ <= (\~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \u1|s_rd_addr\(7) & \u1|s_rd_addr\(6) & \u1|s_rd_addr\(5) & 
\u1|s_rd_addr\(4) & \u1|s_rd_addr\(3) & \u1|s_rd_addr\(2) & \u1|s_rd_addr\(1) & \u1|s_rd_addr\(0));

\u1|dpram_master|altsyncram_component|auto_generated|ram_block1a15_PORTBADDR_bus\ <= (reg_mrbs(4) & reg_mrbs(3) & reg_mrbs(2) & reg_mrbs(1) & reg_mrbs(0) & \addr_latch[7]~_wirecell_combout\ & \addr_latch[6]~_wirecell_combout\ & 
\addr_latch[5]~_wirecell_combout\ & \addr_latch[4]~_wirecell_combout\ & \addr_latch[3]~_wirecell_combout\ & \addr_latch[2]~_wirecell_combout\ & \addr_latch[1]~_wirecell_combout\ & \addr_latch[0]~_wirecell_combout\);

\u1|dpram_master|altsyncram_component|auto_generated|ram_block1a15~portadataout\ <= \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a15_PORTADATAOUT_bus\(0);

\u1|dpram_master|altsyncram_component|auto_generated|ram_block1a15~PORTBDATAOUT0\ <= \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a15_PORTBDATAOUT_bus\(0);

\u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a7_PORTADATAIN_bus\(0) <= vcc;

\u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a7_PORTBDATAIN_bus\(0) <= slave_din(7);

\u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a7_PORTAADDR_bus\ <= (\~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \u1|s_rd_addr\(7) & \u1|s_rd_addr\(6) & \u1|s_rd_addr\(5) & \u1|s_rd_addr\(4)
& \u1|s_rd_addr\(3) & \u1|s_rd_addr\(2) & \u1|s_rd_addr\(1) & \u1|s_rd_addr\(0));

\u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a7_PORTBADDR_bus\ <= (reg_srbs(4) & reg_srbs(3) & reg_srbs(2) & reg_srbs(1) & reg_srbs(0) & \addr_latch[7]~_wirecell_combout\ & \addr_latch[6]~_wirecell_combout\ & 
\addr_latch[5]~_wirecell_combout\ & \addr_latch[4]~_wirecell_combout\ & \addr_latch[3]~_wirecell_combout\ & \addr_latch[2]~_wirecell_combout\ & \addr_latch[1]~_wirecell_combout\ & \addr_latch[0]~_wirecell_combout\);

\u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a7~portadataout\ <= \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a7_PORTADATAOUT_bus\(0);

\u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a7~PORTBDATAOUT0\ <= \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a7_PORTBDATAOUT_bus\(0);

\u1|dpram_master|altsyncram_component|auto_generated|ram_block1a7_PORTADATAIN_bus\(0) <= \u1|rx_buf\(7);

\u1|dpram_master|altsyncram_component|auto_generated|ram_block1a7_PORTBDATAIN_bus\(0) <= master_din(7);

\u1|dpram_master|altsyncram_component|auto_generated|ram_block1a7_PORTAADDR_bus\ <= (\~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \u1|s_rd_addr\(7) & \u1|s_rd_addr\(6) & \u1|s_rd_addr\(5) & \u1|s_rd_addr\(4)
& \u1|s_rd_addr\(3) & \u1|s_rd_addr\(2) & \u1|s_rd_addr\(1) & \u1|s_rd_addr\(0));

\u1|dpram_master|altsyncram_component|auto_generated|ram_block1a7_PORTBADDR_bus\ <= (reg_mrbs(4) & reg_mrbs(3) & reg_mrbs(2) & reg_mrbs(1) & reg_mrbs(0) & \addr_latch[7]~_wirecell_combout\ & \addr_latch[6]~_wirecell_combout\ & 
\addr_latch[5]~_wirecell_combout\ & \addr_latch[4]~_wirecell_combout\ & \addr_latch[3]~_wirecell_combout\ & \addr_latch[2]~_wirecell_combout\ & \addr_latch[1]~_wirecell_combout\ & \addr_latch[0]~_wirecell_combout\);

\u1|dpram_master|altsyncram_component|auto_generated|ram_block1a7~portadataout\ <= \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a7_PORTADATAOUT_bus\(0);

\u1|dpram_master|altsyncram_component|auto_generated|ram_block1a7~PORTBDATAOUT0\ <= \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a7_PORTBDATAOUT_bus\(0);

\u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a15_PORTADATAIN_bus\(0) <= vcc;

\u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a15_PORTBDATAIN_bus\(0) <= slave_din(7);

\u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a15_PORTAADDR_bus\ <= (\~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \u1|s_rd_addr\(7) & \u1|s_rd_addr\(6) & \u1|s_rd_addr\(5) & \u1|s_rd_addr\(4)
& \u1|s_rd_addr\(3) & \u1|s_rd_addr\(2) & \u1|s_rd_addr\(1) & \u1|s_rd_addr\(0));

\u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a15_PORTBADDR_bus\ <= (reg_srbs(4) & reg_srbs(3) & reg_srbs(2) & reg_srbs(1) & reg_srbs(0) & \addr_latch[7]~_wirecell_combout\ & \addr_latch[6]~_wirecell_combout\ & 
\addr_latch[5]~_wirecell_combout\ & \addr_latch[4]~_wirecell_combout\ & \addr_latch[3]~_wirecell_combout\ & \addr_latch[2]~_wirecell_combout\ & \addr_latch[1]~_wirecell_combout\ & \addr_latch[0]~_wirecell_combout\);

\u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a15~portadataout\ <= \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a15_PORTADATAOUT_bus\(0);

\u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a15~PORTBDATAOUT0\ <= \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a15_PORTBDATAOUT_bus\(0);
\ALT_INV_spi_clk~input_o\ <= NOT \spi_clk~input_o\;
\ALT_INV_clk_57~input_o\ <= NOT \clk_57~input_o\;
\u1|ALT_INV_process_1~1_combout\ <= NOT \u1|process_1~1_combout\;
\u1|ALT_INV_process_1~0_combout\ <= NOT \u1|process_1~0_combout\;
\u0|onchip_flash_0|avmm_data_controller|ALT_INV_reset_n_reg2~q\ <= NOT \u0|onchip_flash_0|avmm_data_controller|reset_n_reg2~q\;
\ALT_INV_phi2_early~0_combout\ <= NOT \phi2_early~0_combout\;
\ALT_INV_data_dir~reg0_q\ <= NOT \data_dir~reg0_q\;
\ALT_INV_phi2_early~reg0_q\ <= NOT \phi2_early~reg0_q\;
\ALT_INV_led_latch[4]~0_combout\ <= NOT \led_latch[4]~0_combout\;
ALT_INV_led_latch(3) <= NOT led_latch(3);
ALT_INV_led_latch(2) <= NOT led_latch(2);
ALT_INV_led_latch(1) <= NOT led_latch(1);
ALT_INV_led_latch(0) <= NOT led_latch(0);

\spi_miso~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u1|miso~reg0_q\,
	oe => \u1|miso~en_q\,
	devoe => ww_devoe,
	o => ww_spi_miso);

\n_led1~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => ALT_INV_led_latch(0),
	devoe => ww_devoe,
	o => ww_n_led1);

\n_led2~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => ALT_INV_led_latch(1),
	devoe => ww_devoe,
	o => ww_n_led2);

\n_led3~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => ALT_INV_led_latch(2),
	devoe => ww_devoe,
	o => ww_n_led3);

\n_led4~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => ALT_INV_led_latch(3),
	devoe => ww_devoe,
	o => ww_n_led4);

\n_led5~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_led_latch[4]~0_combout\,
	devoe => ww_devoe,
	o => ww_n_led5);

\phi2_early~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \phi2_early~reg0_q\,
	devoe => ww_devoe,
	o => ww_phi2_early);

\data_dir~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_data_dir~reg0_q\,
	devoe => ww_devoe,
	o => ww_data_dir);

\n_data_oe~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \n_data_oe~1_combout\,
	devoe => ww_devoe,
	o => ww_n_data_oe);

\n_extsel~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \n_extsel~1_combout\,
	devoe => ww_devoe,
	o => ww_n_extsel);

\n_mpd~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \n_extsel~1_combout\,
	devoe => ww_devoe,
	o => ww_n_mpd);

\n_irq~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_n_irq);

\n_rdy~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_n_rdy);

\data[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data[0]~31_combout\,
	oe => \data[7]~32_combout\,
	devoe => ww_devoe,
	o => data(0));

\data[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data[1]~42_combout\,
	oe => \data[7]~32_combout\,
	devoe => ww_devoe,
	o => data(1));

\data[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data[2]~52_combout\,
	oe => \data[7]~32_combout\,
	devoe => ww_devoe,
	o => data(2));

\data[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data[3]~62_combout\,
	oe => \data[7]~32_combout\,
	devoe => ww_devoe,
	o => data(3));

\data[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data[4]~72_combout\,
	oe => \data[7]~32_combout\,
	devoe => ww_devoe,
	o => data(4));

\data[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data[5]~82_combout\,
	oe => \data[7]~32_combout\,
	devoe => ww_devoe,
	o => data(5));

\data[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data[6]~92_combout\,
	oe => \data[7]~32_combout\,
	devoe => ww_devoe,
	o => data(6));

\data[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data[7]~102_combout\,
	oe => \data[7]~32_combout\,
	devoe => ww_devoe,
	o => data(7));

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

\clk_counter[0]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_counter[0]~3_combout\ = (!clk_counter(0) & (((clk_counter(1)) # (!clk_counter(2))) # (!clk_counter(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clk_counter(0),
	datab => clk_counter(3),
	datac => clk_counter(2),
	datad => clk_counter(1),
	combout => \clk_counter[0]~3_combout\);

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

\phi2_early~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \phi2_early~0_combout\ = (!\phi2~input_o\) # (!\n_reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \n_reset~input_o\,
	datad => \phi2~input_o\,
	combout => \phi2_early~0_combout\);

\clk_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_57~input_o\,
	d => \clk_counter[0]~3_combout\,
	clrn => \ALT_INV_phi2_early~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_counter(0));

\clk_counter[1]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_counter[1]~2_combout\ = clk_counter(1) $ (clk_counter(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => clk_counter(1),
	datad => clk_counter(0),
	combout => \clk_counter[1]~2_combout\);

\clk_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_57~input_o\,
	d => \clk_counter[1]~2_combout\,
	clrn => \ALT_INV_phi2_early~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_counter(1));

\clk_counter[2]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_counter[2]~1_combout\ = clk_counter(2) $ (((clk_counter(1) & clk_counter(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => clk_counter(2),
	datac => clk_counter(1),
	datad => clk_counter(0),
	combout => \clk_counter[2]~1_combout\);

\clk_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_57~input_o\,
	d => \clk_counter[2]~1_combout\,
	clrn => \ALT_INV_phi2_early~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_counter(2));

\clk_counter[3]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_counter[3]~0_combout\ = clk_counter(3) $ (((clk_counter(2) & (clk_counter(1) & clk_counter(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clk_counter(3),
	datab => clk_counter(2),
	datac => clk_counter(1),
	datad => clk_counter(0),
	combout => \clk_counter[3]~0_combout\);

\clk_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_57~input_o\,
	d => \clk_counter[3]~0_combout\,
	clrn => \ALT_INV_phi2_early~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_counter(3));

\Equal9~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal9~0_combout\ = (((clk_counter(1)) # (clk_counter(0))) # (!clk_counter(2))) # (!clk_counter(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clk_counter(3),
	datab => clk_counter(2),
	datac => clk_counter(1),
	datad => clk_counter(0),
	combout => \Equal9~0_combout\);

\phi2_early~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_57~input_o\,
	d => \Equal9~0_combout\,
	clrn => \ALT_INV_phi2_early~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phi2_early~reg0_q\);

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

\addr_latch[5]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \addr_latch[5]~14_combout\ = !\addr[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr[5]~input_o\,
	combout => \addr_latch[5]~14_combout\);

\addr_latch[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \phi2~input_o\,
	d => \addr_latch[5]~14_combout\,
	clrn => \n_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => addr_latch(5));

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

\addr_latch[4]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \addr_latch[4]~15_combout\ = !\addr[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr[4]~input_o\,
	combout => \addr_latch[4]~15_combout\);

\addr_latch[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \phi2~input_o\,
	d => \addr_latch[4]~15_combout\,
	clrn => \n_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => addr_latch(4));

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

\addr_latch[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \addr_latch[1]~0_combout\ = !\addr[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr[1]~input_o\,
	combout => \addr_latch[1]~0_combout\);

\addr_latch[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \phi2~input_o\,
	d => \addr_latch[1]~0_combout\,
	clrn => \n_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => addr_latch(1));

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

\addr_latch[13]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \addr_latch[13]~1_combout\ = !\addr[13]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr[13]~input_o\,
	combout => \addr_latch[13]~1_combout\);

\addr_latch[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \phi2~input_o\,
	d => \addr_latch[13]~1_combout\,
	clrn => \n_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => addr_latch(13));

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

\addr_latch[15]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \addr_latch[15]~2_combout\ = !\addr[15]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr[15]~input_o\,
	combout => \addr_latch[15]~2_combout\);

\addr_latch[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \phi2~input_o\,
	d => \addr_latch[15]~2_combout\,
	clrn => \n_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => addr_latch(15));

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

\addr_latch[14]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \addr_latch[14]~3_combout\ = !\addr[14]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr[14]~input_o\,
	combout => \addr_latch[14]~3_combout\);

\addr_latch[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \phi2~input_o\,
	d => \addr_latch[14]~3_combout\,
	clrn => \n_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => addr_latch(14));

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

\addr_latch[12]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \addr_latch[12]~4_combout\ = !\addr[12]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr[12]~input_o\,
	combout => \addr_latch[12]~4_combout\);

\addr_latch[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \phi2~input_o\,
	d => \addr_latch[12]~4_combout\,
	clrn => \n_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => addr_latch(12));

\Equal13~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal13~0_combout\ = (addr_latch(13) & (!addr_latch(15) & (!addr_latch(14) & !addr_latch(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => addr_latch(13),
	datab => addr_latch(15),
	datac => addr_latch(14),
	datad => addr_latch(12),
	combout => \Equal13~0_combout\);

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

\addr_latch[11]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \addr_latch[11]~5_combout\ = !\addr[11]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr[11]~input_o\,
	combout => \addr_latch[11]~5_combout\);

\addr_latch[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \phi2~input_o\,
	d => \addr_latch[11]~5_combout\,
	clrn => \n_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => addr_latch(11));

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

\addr_latch[10]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \addr_latch[10]~6_combout\ = !\addr[10]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr[10]~input_o\,
	combout => \addr_latch[10]~6_combout\);

\addr_latch[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \phi2~input_o\,
	d => \addr_latch[10]~6_combout\,
	clrn => \n_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => addr_latch(10));

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

\addr_latch[9]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \addr_latch[9]~7_combout\ = !\addr[9]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr[9]~input_o\,
	combout => \addr_latch[9]~7_combout\);

\addr_latch[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \phi2~input_o\,
	d => \addr_latch[9]~7_combout\,
	clrn => \n_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => addr_latch(9));

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

\addr_latch[8]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \addr_latch[8]~8_combout\ = !\addr[8]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr[8]~input_o\,
	combout => \addr_latch[8]~8_combout\);

\addr_latch[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \phi2~input_o\,
	d => \addr_latch[8]~8_combout\,
	clrn => \n_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => addr_latch(8));

\Equal13~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal13~1_combout\ = (addr_latch(11) & (addr_latch(10) & (addr_latch(9) & !addr_latch(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => addr_latch(11),
	datab => addr_latch(10),
	datac => addr_latch(9),
	datad => addr_latch(8),
	combout => \Equal13~1_combout\);

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

\addr_latch[7]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \addr_latch[7]~9_combout\ = !\addr[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr[7]~input_o\,
	combout => \addr_latch[7]~9_combout\);

\addr_latch[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \phi2~input_o\,
	d => \addr_latch[7]~9_combout\,
	clrn => \n_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => addr_latch(7));

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

\addr_latch[6]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \addr_latch[6]~10_combout\ = !\addr[6]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr[6]~input_o\,
	combout => \addr_latch[6]~10_combout\);

\addr_latch[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \phi2~input_o\,
	d => \addr_latch[6]~10_combout\,
	clrn => \n_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => addr_latch(6));

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

\addr_latch[3]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \addr_latch[3]~11_combout\ = !\addr[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr[3]~input_o\,
	combout => \addr_latch[3]~11_combout\);

\addr_latch[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \phi2~input_o\,
	d => \addr_latch[3]~11_combout\,
	clrn => \n_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => addr_latch(3));

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

\addr_latch[2]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \addr_latch[2]~12_combout\ = !\addr[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr[2]~input_o\,
	combout => \addr_latch[2]~12_combout\);

\addr_latch[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \phi2~input_o\,
	d => \addr_latch[2]~12_combout\,
	clrn => \n_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => addr_latch(2));

\Equal13~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal13~2_combout\ = (addr_latch(7) & (addr_latch(6) & (addr_latch(3) & addr_latch(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => addr_latch(7),
	datab => addr_latch(6),
	datac => addr_latch(3),
	datad => addr_latch(2),
	combout => \Equal13~2_combout\);

\Equal13~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal13~3_combout\ = (\Equal13~0_combout\ & (\Equal13~1_combout\ & \Equal13~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal13~0_combout\,
	datab => \Equal13~1_combout\,
	datac => \Equal13~2_combout\,
	combout => \Equal13~3_combout\);

\Equal13~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal13~4_combout\ = (addr_latch(4) & (addr_latch(1) & \Equal13~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => addr_latch(4),
	datab => addr_latch(1),
	datac => \Equal13~3_combout\,
	combout => \Equal13~4_combout\);

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

\Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (\dip_sw[0]~input_o\ & (!\dip_sw[3]~input_o\ & (!\dip_sw[1]~input_o\ & !\dip_sw[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dip_sw[0]~input_o\,
	datab => \dip_sw[3]~input_o\,
	datac => \dip_sw[1]~input_o\,
	datad => \dip_sw[4]~input_o\,
	combout => \Equal0~0_combout\);

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

\Equal11~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal11~3_combout\ = (\addr[12]~input_o\ & (\addr[14]~input_o\ & (\addr[15]~input_o\ & !\addr[13]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr[12]~input_o\,
	datab => \addr[14]~input_o\,
	datac => \addr[15]~input_o\,
	datad => \addr[13]~input_o\,
	combout => \Equal11~3_combout\);

\Equal11~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal11~4_combout\ = (!\addr[9]~input_o\ & !\addr[10]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \addr[9]~input_o\,
	datad => \addr[10]~input_o\,
	combout => \Equal11~4_combout\);

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

\Equal11~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal11~0_combout\ = (\addr[0]~input_o\ & (\addr[1]~input_o\ & (\addr[2]~input_o\ & \addr[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr[0]~input_o\,
	datab => \addr[1]~input_o\,
	datac => \addr[2]~input_o\,
	datad => \addr[3]~input_o\,
	combout => \Equal11~0_combout\);

\Equal11~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal11~1_combout\ = (\addr[4]~input_o\ & (\addr[5]~input_o\ & (\addr[6]~input_o\ & \addr[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr[4]~input_o\,
	datab => \addr[5]~input_o\,
	datac => \addr[6]~input_o\,
	datad => \addr[7]~input_o\,
	combout => \Equal11~1_combout\);

\Equal11~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal11~2_combout\ = (\Equal11~0_combout\ & (\addr[8]~input_o\ & \Equal11~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal11~0_combout\,
	datab => \addr[8]~input_o\,
	datac => \Equal11~1_combout\,
	combout => \Equal11~2_combout\);

\Equal11~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal11~5_combout\ = (\Equal11~3_combout\ & (\Equal11~4_combout\ & (\Equal11~2_combout\ & !\addr[11]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal11~3_combout\,
	datab => \Equal11~4_combout\,
	datac => \Equal11~2_combout\,
	datad => \addr[11]~input_o\,
	combout => \Equal11~5_combout\);

hw_sel_act : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \phi2~input_o\,
	d => \Equal11~5_combout\,
	clrn => \n_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hw_sel_act~q\);

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

rw_latch : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \phi2~input_o\,
	d => \rw~input_o\,
	clrn => \n_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rw_latch~q\);

\hw_sel[5]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hw_sel[5]~0_combout\ = (\hw_sel_act~q\ & !\rw_latch~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hw_sel_act~q\,
	datad => \rw_latch~q\,
	combout => \hw_sel[5]~0_combout\);

\hw_sel[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_phi2_early~reg0_q\,
	d => \data[4]~input_o\,
	clrn => \n_reset~input_o\,
	ena => \hw_sel[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hw_sel(4));

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

\hw_sel[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_phi2_early~reg0_q\,
	d => \data[0]~input_o\,
	clrn => \n_reset~input_o\,
	ena => \hw_sel[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hw_sel(0));

\Equal10~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal10~0_combout\ = (\dip_sw[2]~input_o\ & (!hw_sel(0) & (\Equal0~0_combout\ $ (!hw_sel(4))))) # (!\dip_sw[2]~input_o\ & (!hw_sel(4) & (\Equal0~0_combout\ $ (!hw_sel(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \dip_sw[2]~input_o\,
	datac => hw_sel(4),
	datad => hw_sel(0),
	combout => \Equal10~0_combout\);

\Equal1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = (\dip_sw[1]~input_o\ & (!\dip_sw[3]~input_o\ & (!\dip_sw[0]~input_o\ & !\dip_sw[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dip_sw[1]~input_o\,
	datab => \dip_sw[3]~input_o\,
	datac => \dip_sw[0]~input_o\,
	datad => \dip_sw[4]~input_o\,
	combout => \Equal1~0_combout\);

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

\hw_sel[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_phi2_early~reg0_q\,
	d => \data[5]~input_o\,
	clrn => \n_reset~input_o\,
	ena => \hw_sel[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hw_sel(5));

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

\hw_sel[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_phi2_early~reg0_q\,
	d => \data[1]~input_o\,
	clrn => \n_reset~input_o\,
	ena => \hw_sel[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hw_sel(1));

\Equal10~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal10~1_combout\ = (\dip_sw[2]~input_o\ & (!hw_sel(1) & (\Equal1~0_combout\ $ (!hw_sel(5))))) # (!\dip_sw[2]~input_o\ & (!hw_sel(5) & (\Equal1~0_combout\ $ (!hw_sel(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~0_combout\,
	datab => \dip_sw[2]~input_o\,
	datac => hw_sel(5),
	datad => hw_sel(1),
	combout => \Equal10~1_combout\);

\Equal2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal2~0_combout\ = (\dip_sw[0]~input_o\ & (\dip_sw[1]~input_o\ & (!\dip_sw[3]~input_o\ & !\dip_sw[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dip_sw[0]~input_o\,
	datab => \dip_sw[1]~input_o\,
	datac => \dip_sw[3]~input_o\,
	datad => \dip_sw[4]~input_o\,
	combout => \Equal2~0_combout\);

\hw_sel[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_phi2_early~reg0_q\,
	d => \data[6]~input_o\,
	clrn => \n_reset~input_o\,
	ena => \hw_sel[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hw_sel(6));

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

\hw_sel[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_phi2_early~reg0_q\,
	d => \data[2]~input_o\,
	clrn => \n_reset~input_o\,
	ena => \hw_sel[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hw_sel(2));

\Equal10~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal10~2_combout\ = (\dip_sw[2]~input_o\ & (!hw_sel(2) & (\Equal2~0_combout\ $ (!hw_sel(6))))) # (!\dip_sw[2]~input_o\ & (!hw_sel(6) & (\Equal2~0_combout\ $ (!hw_sel(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~0_combout\,
	datab => \dip_sw[2]~input_o\,
	datac => hw_sel(6),
	datad => hw_sel(2),
	combout => \Equal10~2_combout\);

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

\hw_sel[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_phi2_early~reg0_q\,
	d => \data[3]~input_o\,
	clrn => \n_reset~input_o\,
	ena => \hw_sel[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hw_sel(3));

\PBI_ADDR[3]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PBI_ADDR[3]~0_combout\ = (\dip_sw[2]~input_o\ & (!\dip_sw[0]~input_o\ & (!\dip_sw[1]~input_o\ & !\dip_sw[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dip_sw[2]~input_o\,
	datab => \dip_sw[0]~input_o\,
	datac => \dip_sw[1]~input_o\,
	datad => \dip_sw[4]~input_o\,
	combout => \PBI_ADDR[3]~0_combout\);

\Equal10~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal10~3_combout\ = hw_sel(3) $ (((!\dip_sw[3]~input_o\ & \PBI_ADDR[3]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => hw_sel(3),
	datab => \dip_sw[3]~input_o\,
	datad => \PBI_ADDR[3]~0_combout\,
	combout => \Equal10~3_combout\);

\Equal10~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal10~4_combout\ = (\Equal10~0_combout\ & (\Equal10~1_combout\ & (\Equal10~2_combout\ & !\Equal10~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal10~0_combout\,
	datab => \Equal10~1_combout\,
	datac => \Equal10~2_combout\,
	datad => \Equal10~3_combout\,
	combout => \Equal10~4_combout\);

\PBI_ADDR[7]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PBI_ADDR[7]~1_combout\ = (!\dip_sw[2]~input_o\ & (!\dip_sw[0]~input_o\ & (!\dip_sw[1]~input_o\ & !\dip_sw[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dip_sw[2]~input_o\,
	datab => \dip_sw[0]~input_o\,
	datac => \dip_sw[1]~input_o\,
	datad => \dip_sw[4]~input_o\,
	combout => \PBI_ADDR[7]~1_combout\);

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

\hw_sel[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_phi2_early~reg0_q\,
	d => \data[7]~input_o\,
	clrn => \n_reset~input_o\,
	ena => \hw_sel[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hw_sel(7));

\Equal10~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal10~5_combout\ = (\Equal10~4_combout\ & (hw_sel(7) $ (((!\PBI_ADDR[7]~1_combout\) # (!\dip_sw[3]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal10~4_combout\,
	datab => \dip_sw[3]~input_o\,
	datac => \PBI_ADDR[7]~1_combout\,
	datad => hw_sel(7),
	combout => \Equal10~5_combout\);

\Equal11~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal11~6_combout\ = (\Equal11~3_combout\ & !\addr[11]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal11~3_combout\,
	datad => \addr[11]~input_o\,
	combout => \Equal11~6_combout\);

\dev_reg_act~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dev_reg_act~0_combout\ = (!\Equal11~2_combout\ & (\Equal11~6_combout\ & (\Equal11~4_combout\ & \addr[8]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal11~2_combout\,
	datab => \Equal11~6_combout\,
	datac => \Equal11~4_combout\,
	datad => \addr[8]~input_o\,
	combout => \dev_reg_act~0_combout\);

dev_reg_act : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \phi2~input_o\,
	d => \dev_reg_act~0_combout\,
	clrn => \n_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dev_reg_act~q\);

\LessThan0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = (\addr[9]~input_o\ & (\addr[10]~input_o\ & \addr[8]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr[9]~input_o\,
	datab => \addr[10]~input_o\,
	datac => \addr[8]~input_o\,
	combout => \LessThan0~0_combout\);

\process_4~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \process_4~6_combout\ = (\Equal11~3_combout\ & (!\addr[11]~input_o\ & (\Equal10~5_combout\ & \LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal11~3_combout\,
	datab => \addr[11]~input_o\,
	datac => \Equal10~5_combout\,
	datad => \LessThan0~0_combout\,
	combout => \process_4~6_combout\);

slave_ram_en : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \phi2~input_o\,
	d => \process_4~6_combout\,
	clrn => \n_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \slave_ram_en~q\);

\process_4~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \process_4~3_combout\ = (\addr[14]~input_o\ & (\addr[15]~input_o\ & !\addr[13]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr[14]~input_o\,
	datab => \addr[15]~input_o\,
	datad => \addr[13]~input_o\,
	combout => \process_4~3_combout\);

\process_4~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \process_4~4_combout\ = (!\addr[11]~input_o\ & (((!\addr[8]~input_o\) # (!\addr[10]~input_o\)) # (!\addr[9]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr[9]~input_o\,
	datab => \addr[10]~input_o\,
	datac => \addr[8]~input_o\,
	datad => \addr[11]~input_o\,
	combout => \process_4~4_combout\);

\LessThan4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan4~0_combout\ = ((!\addr[11]~input_o\ & ((!\addr[10]~input_o\) # (!\addr[9]~input_o\)))) # (!\addr[12]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr[9]~input_o\,
	datab => \addr[10]~input_o\,
	datac => \addr[11]~input_o\,
	datad => \addr[12]~input_o\,
	combout => \LessThan4~0_combout\);

\process_4~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \process_4~5_combout\ = (\Equal10~5_combout\ & (\process_4~3_combout\ & (\process_4~4_combout\ & !\LessThan4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal10~5_combout\,
	datab => \process_4~3_combout\,
	datac => \process_4~4_combout\,
	datad => \LessThan4~0_combout\,
	combout => \process_4~5_combout\);

master_ram_en : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \phi2~input_o\,
	d => \process_4~5_combout\,
	clrn => \n_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \master_ram_en~q\);

\led_latch[0]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \led_latch[0]~1_combout\ = (\dev_reg_act~q\ & (!\slave_ram_en~q\ & !\master_ram_en~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dev_reg_act~q\,
	datac => \slave_ram_en~q\,
	datad => \master_ram_en~q\,
	combout => \led_latch[0]~1_combout\);

\led_latch[0]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \led_latch[0]~2_combout\ = (\Equal10~5_combout\ & (\led_latch[0]~1_combout\ & !\hw_sel_act~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal10~5_combout\,
	datab => \led_latch[0]~1_combout\,
	datad => \hw_sel_act~q\,
	combout => \led_latch[0]~2_combout\);

\reg_sdcr[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_sdcr[0]~0_combout\ = (\n_reset~input_o\ & (\led_latch[0]~2_combout\ & !\rw_latch~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \n_reset~input_o\,
	datab => \led_latch[0]~2_combout\,
	datad => \rw_latch~q\,
	combout => \reg_sdcr[0]~0_combout\);

\addr_latch[0]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \addr_latch[0]~13_combout\ = !\addr[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr[0]~input_o\,
	combout => \addr_latch[0]~13_combout\);

\addr_latch[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \phi2~input_o\,
	d => \addr_latch[0]~13_combout\,
	clrn => \n_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => addr_latch(0));

\reg_stbycr[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_stbycr[0]~0_combout\ = (addr_latch(5) & (\Equal13~4_combout\ & (\reg_sdcr[0]~0_combout\ & !addr_latch(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => addr_latch(5),
	datab => \Equal13~4_combout\,
	datac => \reg_sdcr[0]~0_combout\,
	datad => addr_latch(0),
	combout => \reg_stbycr[0]~0_combout\);

\reg_stbycr[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_phi2_early~reg0_q\,
	d => \data[6]~input_o\,
	ena => \reg_stbycr[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_stbycr(6));

\u1|bit_cnt[0]~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|bit_cnt[0]~24_combout\ = !\u1|bit_cnt\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|bit_cnt\(0),
	combout => \u1|bit_cnt[0]~24_combout\);

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

\u1|process_1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|process_1~0_combout\ = (\spi_ss_n~input_o\) # (!\n_reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi_ss_n~input_o\,
	datad => \n_reset~input_o\,
	combout => \u1|process_1~0_combout\);

\u1|bit_cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \spi_clk~input_o\,
	d => \u1|bit_cnt[0]~24_combout\,
	clrn => \u1|ALT_INV_process_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|bit_cnt\(0));

\u1|bit_cnt[1]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|bit_cnt[1]~8_combout\ = (\u1|bit_cnt\(0) & (\u1|bit_cnt\(1) $ (VCC))) # (!\u1|bit_cnt\(0) & (\u1|bit_cnt\(1) & VCC))
-- \u1|bit_cnt[1]~9\ = CARRY((\u1|bit_cnt\(0) & \u1|bit_cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|bit_cnt\(0),
	datab => \u1|bit_cnt\(1),
	datad => VCC,
	combout => \u1|bit_cnt[1]~8_combout\,
	cout => \u1|bit_cnt[1]~9\);

\u1|bit_cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \spi_clk~input_o\,
	d => \u1|bit_cnt[1]~8_combout\,
	clrn => \u1|ALT_INV_process_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|bit_cnt\(1));

\u1|bit_cnt[2]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|bit_cnt[2]~10_combout\ = (\u1|bit_cnt\(2) & (!\u1|bit_cnt[1]~9\)) # (!\u1|bit_cnt\(2) & ((\u1|bit_cnt[1]~9\) # (GND)))
-- \u1|bit_cnt[2]~11\ = CARRY((!\u1|bit_cnt[1]~9\) # (!\u1|bit_cnt\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u1|bit_cnt\(2),
	datad => VCC,
	cin => \u1|bit_cnt[1]~9\,
	combout => \u1|bit_cnt[2]~10_combout\,
	cout => \u1|bit_cnt[2]~11\);

\u1|bit_cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \spi_clk~input_o\,
	d => \u1|bit_cnt[2]~10_combout\,
	clrn => \u1|ALT_INV_process_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|bit_cnt\(2));

\u1|bit_cnt[3]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|bit_cnt[3]~12_combout\ = (\u1|bit_cnt\(3) & (\u1|bit_cnt[2]~11\ $ (GND))) # (!\u1|bit_cnt\(3) & (!\u1|bit_cnt[2]~11\ & VCC))
-- \u1|bit_cnt[3]~13\ = CARRY((\u1|bit_cnt\(3) & !\u1|bit_cnt[2]~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u1|bit_cnt\(3),
	datad => VCC,
	cin => \u1|bit_cnt[2]~11\,
	combout => \u1|bit_cnt[3]~12_combout\,
	cout => \u1|bit_cnt[3]~13\);

\u1|bit_cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \spi_clk~input_o\,
	d => \u1|bit_cnt[3]~12_combout\,
	clrn => \u1|ALT_INV_process_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|bit_cnt\(3));

\u1|bit_cnt[4]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|bit_cnt[4]~14_combout\ = (\u1|bit_cnt\(4) & (!\u1|bit_cnt[3]~13\)) # (!\u1|bit_cnt\(4) & ((\u1|bit_cnt[3]~13\) # (GND)))
-- \u1|bit_cnt[4]~15\ = CARRY((!\u1|bit_cnt[3]~13\) # (!\u1|bit_cnt\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u1|bit_cnt\(4),
	datad => VCC,
	cin => \u1|bit_cnt[3]~13\,
	combout => \u1|bit_cnt[4]~14_combout\,
	cout => \u1|bit_cnt[4]~15\);

\u1|bit_cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \spi_clk~input_o\,
	d => \u1|bit_cnt[4]~14_combout\,
	clrn => \u1|ALT_INV_process_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|bit_cnt\(4));

\u1|bit_cnt[5]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|bit_cnt[5]~16_combout\ = (\u1|bit_cnt\(5) & (\u1|bit_cnt[4]~15\ $ (GND))) # (!\u1|bit_cnt\(5) & (!\u1|bit_cnt[4]~15\ & VCC))
-- \u1|bit_cnt[5]~17\ = CARRY((\u1|bit_cnt\(5) & !\u1|bit_cnt[4]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u1|bit_cnt\(5),
	datad => VCC,
	cin => \u1|bit_cnt[4]~15\,
	combout => \u1|bit_cnt[5]~16_combout\,
	cout => \u1|bit_cnt[5]~17\);

\u1|bit_cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \spi_clk~input_o\,
	d => \u1|bit_cnt[5]~16_combout\,
	clrn => \u1|ALT_INV_process_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|bit_cnt\(5));

\u1|bit_cnt[6]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|bit_cnt[6]~18_combout\ = (\u1|bit_cnt\(6) & (!\u1|bit_cnt[5]~17\)) # (!\u1|bit_cnt\(6) & ((\u1|bit_cnt[5]~17\) # (GND)))
-- \u1|bit_cnt[6]~19\ = CARRY((!\u1|bit_cnt[5]~17\) # (!\u1|bit_cnt\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u1|bit_cnt\(6),
	datad => VCC,
	cin => \u1|bit_cnt[5]~17\,
	combout => \u1|bit_cnt[6]~18_combout\,
	cout => \u1|bit_cnt[6]~19\);

\u1|bit_cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \spi_clk~input_o\,
	d => \u1|bit_cnt[6]~18_combout\,
	clrn => \u1|ALT_INV_process_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|bit_cnt\(6));

\u1|bit_cnt[7]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|bit_cnt[7]~20_combout\ = (\u1|bit_cnt\(7) & (\u1|bit_cnt[6]~19\ $ (GND))) # (!\u1|bit_cnt\(7) & (!\u1|bit_cnt[6]~19\ & VCC))
-- \u1|bit_cnt[7]~21\ = CARRY((\u1|bit_cnt\(7) & !\u1|bit_cnt[6]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u1|bit_cnt\(7),
	datad => VCC,
	cin => \u1|bit_cnt[6]~19\,
	combout => \u1|bit_cnt[7]~20_combout\,
	cout => \u1|bit_cnt[7]~21\);

\u1|bit_cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \spi_clk~input_o\,
	d => \u1|bit_cnt[7]~20_combout\,
	clrn => \u1|ALT_INV_process_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|bit_cnt\(7));

\u1|bit_cnt[8]~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|bit_cnt[8]~22_combout\ = \u1|bit_cnt\(8) $ (\u1|bit_cnt[7]~21\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u1|bit_cnt\(8),
	cin => \u1|bit_cnt[7]~21\,
	combout => \u1|bit_cnt[8]~22_combout\);

\u1|bit_cnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \spi_clk~input_o\,
	d => \u1|bit_cnt[8]~22_combout\,
	clrn => \u1|ALT_INV_process_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|bit_cnt\(8));

\u1|LessThan0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|LessThan0~0_combout\ = (!\u1|bit_cnt\(5) & (!\u1|bit_cnt\(6) & (!\u1|bit_cnt\(7) & !\u1|bit_cnt\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|bit_cnt\(5),
	datab => \u1|bit_cnt\(6),
	datac => \u1|bit_cnt\(7),
	datad => \u1|bit_cnt\(8),
	combout => \u1|LessThan0~0_combout\);

\u1|LessThan2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|LessThan2~0_combout\ = (\u1|LessThan0~0_combout\ & !\u1|bit_cnt\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|LessThan0~0_combout\,
	datad => \u1|bit_cnt\(3),
	combout => \u1|LessThan2~0_combout\);

\Equal14~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal14~0_combout\ = (addr_latch(0) & !addr_latch(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => addr_latch(0),
	datad => addr_latch(1),
	combout => \Equal14~0_combout\);

\Equal14~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal14~1_combout\ = (addr_latch(4) & (\Equal13~3_combout\ & (addr_latch(5) & \Equal14~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => addr_latch(4),
	datab => \Equal13~3_combout\,
	datac => addr_latch(5),
	datad => \Equal14~0_combout\,
	combout => \Equal14~1_combout\);

\reg_stbkcr[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_stbkcr[0]~0_combout\ = (\n_reset~input_o\ & (\led_latch[0]~2_combout\ & (\Equal14~1_combout\ & !\rw_latch~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \n_reset~input_o\,
	datab => \led_latch[0]~2_combout\,
	datac => \Equal14~1_combout\,
	datad => \rw_latch~q\,
	combout => \reg_stbkcr[0]~0_combout\);

\reg_stbkcr[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_phi2_early~reg0_q\,
	d => \data[6]~input_o\,
	ena => \reg_stbkcr[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_stbkcr(6));

\u1|tx_buf[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|tx_buf[0]~0_combout\ = (\u1|bit_cnt\(4)) # (!\u1|LessThan0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|bit_cnt\(4),
	datad => \u1|LessThan0~0_combout\,
	combout => \u1|tx_buf[0]~0_combout\);

\reg_sdcr[0]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_sdcr[0]~1_combout\ = (addr_latch(5) & (addr_latch(0) & (\Equal13~4_combout\ & \reg_sdcr[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => addr_latch(5),
	datab => addr_latch(0),
	datac => \Equal13~4_combout\,
	datad => \reg_sdcr[0]~0_combout\,
	combout => \reg_sdcr[0]~1_combout\);

\reg_sdcr[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_phi2_early~reg0_q\,
	d => \data[6]~input_o\,
	ena => \reg_sdcr[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_sdcr(6));

\u1|tx_buf~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|tx_buf~1_combout\ = (\u1|LessThan2~0_combout\ & ((\u1|tx_buf[0]~0_combout\ & (reg_stbkcr(6))) # (!\u1|tx_buf[0]~0_combout\ & ((reg_sdcr(6)))))) # (!\u1|LessThan2~0_combout\ & (((\u1|tx_buf[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|LessThan2~0_combout\,
	datab => reg_stbkcr(6),
	datac => \u1|tx_buf[0]~0_combout\,
	datad => reg_sdcr(6),
	combout => \u1|tx_buf~1_combout\);

\u1|master_wren~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|master_wren~0_combout\ = ((\u1|bit_cnt\(3) & \u1|bit_cnt\(4))) # (!\u1|LessThan0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|bit_cnt\(3),
	datab => \u1|bit_cnt\(4),
	datad => \u1|LessThan0~0_combout\,
	combout => \u1|master_wren~0_combout\);

\u1|process_1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|process_1~1_combout\ = (\u1|process_1~0_combout\) # ((\u1|LessThan0~0_combout\ & ((!\u1|bit_cnt\(4)) # (!\u1|bit_cnt\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|process_1~0_combout\,
	datab => \u1|LessThan0~0_combout\,
	datac => \u1|bit_cnt\(3),
	datad => \u1|bit_cnt\(4),
	combout => \u1|process_1~1_combout\);

\u1|slave_rden\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \spi_clk~input_o\,
	d => \u1|master_wren~0_combout\,
	clrn => \u1|ALT_INV_process_1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|slave_rden~q\);

\led_latch[0]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \led_latch[0]~3_combout\ = (addr_latch(1) & (\Equal13~0_combout\ & (\Equal13~1_combout\ & \Equal13~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => addr_latch(1),
	datab => \Equal13~0_combout\,
	datac => \Equal13~1_combout\,
	datad => \Equal13~2_combout\,
	combout => \led_latch[0]~3_combout\);

\Equal19~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal19~0_combout\ = (addr_latch(4) & (\led_latch[0]~3_combout\ & (!addr_latch(5) & !addr_latch(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => addr_latch(4),
	datab => \led_latch[0]~3_combout\,
	datac => addr_latch(5),
	datad => addr_latch(0),
	combout => \Equal19~0_combout\);

\reg_srbs[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_srbs[0]~0_combout\ = (\n_reset~input_o\ & (\led_latch[0]~2_combout\ & (\Equal19~0_combout\ & !\rw_latch~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \n_reset~input_o\,
	datab => \led_latch[0]~2_combout\,
	datac => \Equal19~0_combout\,
	datad => \rw_latch~q\,
	combout => \reg_srbs[0]~0_combout\);

\reg_srbs[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_phi2_early~reg0_q\,
	d => \data[5]~input_o\,
	ena => \reg_srbs[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_srbs(5));

\u1|dpram_slave|altsyncram_component|auto_generated|decode3|eq_node[0]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|dpram_slave|altsyncram_component|auto_generated|decode3|eq_node\(0) = (\slave_ram_en~q\ & (!\rw_latch~q\ & !reg_srbs(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \slave_ram_en~q\,
	datac => \rw_latch~q\,
	datad => reg_srbs(5),
	combout => \u1|dpram_slave|altsyncram_component|auto_generated|decode3|eq_node\(0));

\u1|comb~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|comb~1_combout\ = (\rw_latch~q\ & \slave_ram_en~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rw_latch~q\,
	datab => \slave_ram_en~q\,
	combout => \u1|comb~1_combout\);

\u1|slave_ram_clk\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|slave_ram_clk~combout\ = LCELL((\spi_clk~input_o\ & (!\u1|bit_cnt\(1) & (!\u1|bit_cnt\(0) & !\u1|bit_cnt\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi_clk~input_o\,
	datab => \u1|bit_cnt\(1),
	datac => \u1|bit_cnt\(0),
	datad => \u1|bit_cnt\(2),
	combout => \u1|slave_ram_clk~combout\);

\u1|dpram_slave|altsyncram_component|auto_generated|rden_a_store\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|slave_ram_clk~combout\,
	d => \u1|slave_rden~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|dpram_slave|altsyncram_component|auto_generated|rden_a_store~q\);

\u1|dpram_slave|altsyncram_component|auto_generated|_~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|dpram_slave|altsyncram_component|auto_generated|_~0_combout\ = (\u1|slave_rden~q\) # (\u1|dpram_slave|altsyncram_component|auto_generated|rden_a_store~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|slave_rden~q\,
	datab => \u1|dpram_slave|altsyncram_component|auto_generated|rden_a_store~q\,
	combout => \u1|dpram_slave|altsyncram_component|auto_generated|_~0_combout\);

\u1|dpram_slave|altsyncram_component|auto_generated|rden_b_store\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_phi2_early~reg0_q\,
	d => \u1|comb~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|dpram_slave|altsyncram_component|auto_generated|rden_b_store~q\);

\u1|comb~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|comb~3_combout\ = (\slave_ram_en~q\ & !\rw_latch~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \slave_ram_en~q\,
	datad => \rw_latch~q\,
	combout => \u1|comb~3_combout\);

\u1|dpram_slave|altsyncram_component|auto_generated|wren_b_store\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_phi2_early~reg0_q\,
	d => \u1|comb~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|dpram_slave|altsyncram_component|auto_generated|wren_b_store~q\);

\u1|dpram_slave|altsyncram_component|auto_generated|rden_decode_b|eq_node[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|dpram_slave|altsyncram_component|auto_generated|rden_decode_b|eq_node[0]~0_combout\ = (!reg_srbs(5) & ((\slave_ram_en~q\) # ((\u1|dpram_slave|altsyncram_component|auto_generated|rden_b_store~q\) # 
-- (\u1|dpram_slave|altsyncram_component|auto_generated|wren_b_store~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \slave_ram_en~q\,
	datab => \u1|dpram_slave|altsyncram_component|auto_generated|rden_b_store~q\,
	datac => \u1|dpram_slave|altsyncram_component|auto_generated|wren_b_store~q\,
	datad => reg_srbs(5),
	combout => \u1|dpram_slave|altsyncram_component|auto_generated|rden_decode_b|eq_node[0]~0_combout\);

\u1|master_ram_clk~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|master_ram_clk~1_combout\ = (\u1|bit_cnt\(1) & (\u1|bit_cnt\(0) & \u1|bit_cnt\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|bit_cnt\(1),
	datab => \u1|bit_cnt\(0),
	datac => \u1|bit_cnt\(2),
	combout => \u1|master_ram_clk~1_combout\);

\u1|process_1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|process_1~2_combout\ = (\u1|master_ram_clk~1_combout\ & (((\u1|bit_cnt\(3) & \u1|bit_cnt\(4))) # (!\u1|LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|master_ram_clk~1_combout\,
	datab => \u1|bit_cnt\(3),
	datac => \u1|bit_cnt\(4),
	datad => \u1|LessThan0~0_combout\,
	combout => \u1|process_1~2_combout\);

\u1|s_rd_addr[0]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|s_rd_addr[0]~7_combout\ = \u1|s_rd_addr\(0) $ (\u1|process_1~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u1|s_rd_addr\(0),
	datad => \u1|process_1~2_combout\,
	combout => \u1|s_rd_addr[0]~7_combout\);

\u1|s_rd_addr[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_spi_clk~input_o\,
	d => \u1|s_rd_addr[0]~7_combout\,
	clrn => \u1|ALT_INV_process_1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|s_rd_addr\(0));

\u1|s_rd_addr[1]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|s_rd_addr[1]~8_combout\ = (\u1|s_rd_addr\(1) & (\u1|s_rd_addr\(0) $ (VCC))) # (!\u1|s_rd_addr\(1) & (\u1|s_rd_addr\(0) & VCC))
-- \u1|s_rd_addr[1]~9\ = CARRY((\u1|s_rd_addr\(1) & \u1|s_rd_addr\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|s_rd_addr\(1),
	datab => \u1|s_rd_addr\(0),
	datad => VCC,
	combout => \u1|s_rd_addr[1]~8_combout\,
	cout => \u1|s_rd_addr[1]~9\);

\u1|s_rd_addr[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_spi_clk~input_o\,
	d => \u1|s_rd_addr[1]~8_combout\,
	clrn => \u1|ALT_INV_process_1~1_combout\,
	ena => \u1|process_1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|s_rd_addr\(1));

\u1|s_rd_addr[2]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|s_rd_addr[2]~10_combout\ = (\u1|s_rd_addr\(2) & (!\u1|s_rd_addr[1]~9\)) # (!\u1|s_rd_addr\(2) & ((\u1|s_rd_addr[1]~9\) # (GND)))
-- \u1|s_rd_addr[2]~11\ = CARRY((!\u1|s_rd_addr[1]~9\) # (!\u1|s_rd_addr\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u1|s_rd_addr\(2),
	datad => VCC,
	cin => \u1|s_rd_addr[1]~9\,
	combout => \u1|s_rd_addr[2]~10_combout\,
	cout => \u1|s_rd_addr[2]~11\);

\u1|s_rd_addr[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_spi_clk~input_o\,
	d => \u1|s_rd_addr[2]~10_combout\,
	clrn => \u1|ALT_INV_process_1~1_combout\,
	ena => \u1|process_1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|s_rd_addr\(2));

\u1|s_rd_addr[3]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|s_rd_addr[3]~12_combout\ = (\u1|s_rd_addr\(3) & (\u1|s_rd_addr[2]~11\ $ (GND))) # (!\u1|s_rd_addr\(3) & (!\u1|s_rd_addr[2]~11\ & VCC))
-- \u1|s_rd_addr[3]~13\ = CARRY((\u1|s_rd_addr\(3) & !\u1|s_rd_addr[2]~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u1|s_rd_addr\(3),
	datad => VCC,
	cin => \u1|s_rd_addr[2]~11\,
	combout => \u1|s_rd_addr[3]~12_combout\,
	cout => \u1|s_rd_addr[3]~13\);

\u1|s_rd_addr[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_spi_clk~input_o\,
	d => \u1|s_rd_addr[3]~12_combout\,
	clrn => \u1|ALT_INV_process_1~1_combout\,
	ena => \u1|process_1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|s_rd_addr\(3));

\u1|s_rd_addr[4]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|s_rd_addr[4]~14_combout\ = (\u1|s_rd_addr\(4) & (!\u1|s_rd_addr[3]~13\)) # (!\u1|s_rd_addr\(4) & ((\u1|s_rd_addr[3]~13\) # (GND)))
-- \u1|s_rd_addr[4]~15\ = CARRY((!\u1|s_rd_addr[3]~13\) # (!\u1|s_rd_addr\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u1|s_rd_addr\(4),
	datad => VCC,
	cin => \u1|s_rd_addr[3]~13\,
	combout => \u1|s_rd_addr[4]~14_combout\,
	cout => \u1|s_rd_addr[4]~15\);

\u1|s_rd_addr[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_spi_clk~input_o\,
	d => \u1|s_rd_addr[4]~14_combout\,
	clrn => \u1|ALT_INV_process_1~1_combout\,
	ena => \u1|process_1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|s_rd_addr\(4));

\u1|s_rd_addr[5]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|s_rd_addr[5]~16_combout\ = (\u1|s_rd_addr\(5) & (\u1|s_rd_addr[4]~15\ $ (GND))) # (!\u1|s_rd_addr\(5) & (!\u1|s_rd_addr[4]~15\ & VCC))
-- \u1|s_rd_addr[5]~17\ = CARRY((\u1|s_rd_addr\(5) & !\u1|s_rd_addr[4]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u1|s_rd_addr\(5),
	datad => VCC,
	cin => \u1|s_rd_addr[4]~15\,
	combout => \u1|s_rd_addr[5]~16_combout\,
	cout => \u1|s_rd_addr[5]~17\);

\u1|s_rd_addr[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_spi_clk~input_o\,
	d => \u1|s_rd_addr[5]~16_combout\,
	clrn => \u1|ALT_INV_process_1~1_combout\,
	ena => \u1|process_1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|s_rd_addr\(5));

\u1|s_rd_addr[6]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|s_rd_addr[6]~18_combout\ = (\u1|s_rd_addr\(6) & (!\u1|s_rd_addr[5]~17\)) # (!\u1|s_rd_addr\(6) & ((\u1|s_rd_addr[5]~17\) # (GND)))
-- \u1|s_rd_addr[6]~19\ = CARRY((!\u1|s_rd_addr[5]~17\) # (!\u1|s_rd_addr\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u1|s_rd_addr\(6),
	datad => VCC,
	cin => \u1|s_rd_addr[5]~17\,
	combout => \u1|s_rd_addr[6]~18_combout\,
	cout => \u1|s_rd_addr[6]~19\);

\u1|s_rd_addr[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_spi_clk~input_o\,
	d => \u1|s_rd_addr[6]~18_combout\,
	clrn => \u1|ALT_INV_process_1~1_combout\,
	ena => \u1|process_1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|s_rd_addr\(6));

\u1|s_rd_addr[7]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|s_rd_addr[7]~20_combout\ = \u1|s_rd_addr\(7) $ (!\u1|s_rd_addr[6]~19\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u1|s_rd_addr\(7),
	cin => \u1|s_rd_addr[6]~19\,
	combout => \u1|s_rd_addr[7]~20_combout\);

\u1|s_rd_addr[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_spi_clk~input_o\,
	d => \u1|s_rd_addr[7]~20_combout\,
	clrn => \u1|ALT_INV_process_1~1_combout\,
	ena => \u1|process_1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|s_rd_addr\(7));

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

\master_din[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \master_din[0]~0_combout\ = (\n_reset~input_o\ & (\Equal10~5_combout\ & (!\rw_latch~q\ & !\hw_sel_act~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \n_reset~input_o\,
	datab => \Equal10~5_combout\,
	datac => \rw_latch~q\,
	datad => \hw_sel_act~q\,
	combout => \master_din[0]~0_combout\);

\slave_din[0]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \slave_din[0]~3_combout\ = (\slave_ram_en~q\ & (!\master_ram_en~q\ & \master_din[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \slave_ram_en~q\,
	datab => \master_ram_en~q\,
	datac => \master_din[0]~0_combout\,
	combout => \slave_din[0]~3_combout\);

\slave_din[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_phi2_early~reg0_q\,
	d => \data[6]~input_o\,
	ena => \slave_din[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => slave_din(6));

\addr_latch[0]~_wirecell\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \addr_latch[0]~_wirecell_combout\ = !addr_latch(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => addr_latch(0),
	combout => \addr_latch[0]~_wirecell_combout\);

\addr_latch[1]~_wirecell\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \addr_latch[1]~_wirecell_combout\ = !addr_latch(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => addr_latch(1),
	combout => \addr_latch[1]~_wirecell_combout\);

\addr_latch[2]~_wirecell\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \addr_latch[2]~_wirecell_combout\ = !addr_latch(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => addr_latch(2),
	combout => \addr_latch[2]~_wirecell_combout\);

\addr_latch[3]~_wirecell\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \addr_latch[3]~_wirecell_combout\ = !addr_latch(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => addr_latch(3),
	combout => \addr_latch[3]~_wirecell_combout\);

\addr_latch[4]~_wirecell\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \addr_latch[4]~_wirecell_combout\ = !addr_latch(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => addr_latch(4),
	combout => \addr_latch[4]~_wirecell_combout\);

\addr_latch[5]~_wirecell\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \addr_latch[5]~_wirecell_combout\ = !addr_latch(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => addr_latch(5),
	combout => \addr_latch[5]~_wirecell_combout\);

\addr_latch[6]~_wirecell\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \addr_latch[6]~_wirecell_combout\ = !addr_latch(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => addr_latch(6),
	combout => \addr_latch[6]~_wirecell_combout\);

\addr_latch[7]~_wirecell\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \addr_latch[7]~_wirecell_combout\ = !addr_latch(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => addr_latch(7),
	combout => \addr_latch[7]~_wirecell_combout\);

\reg_srbs[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_phi2_early~reg0_q\,
	d => \data[0]~input_o\,
	ena => \reg_srbs[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_srbs(0));

\reg_srbs[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_phi2_early~reg0_q\,
	d => \data[1]~input_o\,
	ena => \reg_srbs[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_srbs(1));

\reg_srbs[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_phi2_early~reg0_q\,
	d => \data[2]~input_o\,
	ena => \reg_srbs[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_srbs(2));

\reg_srbs[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_phi2_early~reg0_q\,
	d => \data[3]~input_o\,
	ena => \reg_srbs[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_srbs(3));

\reg_srbs[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_phi2_early~reg0_q\,
	d => \data[4]~input_o\,
	ena => \reg_srbs[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_srbs(4));

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
	portare => \u1|slave_rden~q\,
	portbwe => \u1|dpram_slave|altsyncram_component|auto_generated|decode3|eq_node\(0),
	portbre => \u1|comb~1_combout\,
	clk0 => \u1|slave_ram_clk~combout\,
	clk1 => \ALT_INV_phi2_early~reg0_q\,
	ena0 => \u1|dpram_slave|altsyncram_component|auto_generated|_~0_combout\,
	ena1 => \u1|dpram_slave|altsyncram_component|auto_generated|rden_decode_b|eq_node[0]~0_combout\,
	portadatain => \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a6_PORTADATAIN_bus\,
	portbdatain => \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a6_PORTBDATAIN_bus\,
	portaaddr => \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a6_PORTAADDR_bus\,
	portbaddr => \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a6_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a6_PORTADATAOUT_bus\,
	portbdataout => \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a6_PORTBDATAOUT_bus\);

\u1|tx_buf~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|tx_buf~2_combout\ = (\u1|LessThan2~0_combout\ & (((\u1|tx_buf~1_combout\)))) # (!\u1|LessThan2~0_combout\ & ((\u1|tx_buf~1_combout\ & ((\u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a6~portadataout\))) # (!\u1|tx_buf~1_combout\ & 
-- (reg_stbycr(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => reg_stbycr(6),
	datab => \u1|LessThan2~0_combout\,
	datac => \u1|tx_buf~1_combout\,
	datad => \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a6~portadataout\,
	combout => \u1|tx_buf~2_combout\);

\u1|tx_buf[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \spi_clk~input_o\,
	d => \u1|tx_buf~2_combout\,
	clrn => \u1|ALT_INV_process_1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|tx_buf\(6));

\reg_stbkcr[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_phi2_early~reg0_q\,
	d => \data[5]~input_o\,
	ena => \reg_stbkcr[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_stbkcr(5));

\reg_stbycr[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_phi2_early~reg0_q\,
	d => \data[5]~input_o\,
	ena => \reg_stbycr[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_stbycr(5));

\reg_sdcr[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_phi2_early~reg0_q\,
	d => \data[5]~input_o\,
	ena => \reg_sdcr[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_sdcr(5));

\u1|tx_buf~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|tx_buf~3_combout\ = (\u1|tx_buf[0]~0_combout\ & (((!\u1|LessThan2~0_combout\)))) # (!\u1|tx_buf[0]~0_combout\ & ((\u1|LessThan2~0_combout\ & ((reg_sdcr(5)))) # (!\u1|LessThan2~0_combout\ & (reg_stbycr(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|tx_buf[0]~0_combout\,
	datab => reg_stbycr(5),
	datac => \u1|LessThan2~0_combout\,
	datad => reg_sdcr(5),
	combout => \u1|tx_buf~3_combout\);

\slave_din[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_phi2_early~reg0_q\,
	d => \data[5]~input_o\,
	ena => \slave_din[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => slave_din(5));

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
	portare => \u1|slave_rden~q\,
	portbwe => \u1|dpram_slave|altsyncram_component|auto_generated|decode3|eq_node\(0),
	portbre => \u1|comb~1_combout\,
	clk0 => \u1|slave_ram_clk~combout\,
	clk1 => \ALT_INV_phi2_early~reg0_q\,
	ena0 => \u1|dpram_slave|altsyncram_component|auto_generated|_~0_combout\,
	ena1 => \u1|dpram_slave|altsyncram_component|auto_generated|rden_decode_b|eq_node[0]~0_combout\,
	portadatain => \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a5_PORTADATAIN_bus\,
	portbdatain => \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a5_PORTBDATAIN_bus\,
	portaaddr => \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a5_PORTAADDR_bus\,
	portbaddr => \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a5_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a5_PORTADATAOUT_bus\,
	portbdataout => \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a5_PORTBDATAOUT_bus\);

\u1|tx_buf~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|tx_buf~4_combout\ = (\u1|tx_buf[0]~0_combout\ & ((\u1|tx_buf~3_combout\ & ((\u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a5~portadataout\))) # (!\u1|tx_buf~3_combout\ & (reg_stbkcr(5))))) # (!\u1|tx_buf[0]~0_combout\ & 
-- (((\u1|tx_buf~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => reg_stbkcr(5),
	datab => \u1|tx_buf[0]~0_combout\,
	datac => \u1|tx_buf~3_combout\,
	datad => \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a5~portadataout\,
	combout => \u1|tx_buf~4_combout\);

\u1|tx_buf[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \spi_clk~input_o\,
	d => \u1|tx_buf~4_combout\,
	clrn => \u1|ALT_INV_process_1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|tx_buf\(5));

\reg_stbycr[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_phi2_early~reg0_q\,
	d => \data[4]~input_o\,
	ena => \reg_stbycr[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_stbycr(4));

\reg_stbkcr[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_phi2_early~reg0_q\,
	d => \data[4]~input_o\,
	ena => \reg_stbkcr[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_stbkcr(4));

\reg_sdcr[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_phi2_early~reg0_q\,
	d => \data[4]~input_o\,
	ena => \reg_sdcr[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_sdcr(4));

\u1|tx_buf~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|tx_buf~5_combout\ = (\u1|LessThan2~0_combout\ & ((\u1|tx_buf[0]~0_combout\ & (reg_stbkcr(4))) # (!\u1|tx_buf[0]~0_combout\ & ((reg_sdcr(4)))))) # (!\u1|LessThan2~0_combout\ & (((\u1|tx_buf[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|LessThan2~0_combout\,
	datab => reg_stbkcr(4),
	datac => \u1|tx_buf[0]~0_combout\,
	datad => reg_sdcr(4),
	combout => \u1|tx_buf~5_combout\);

\slave_din[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_phi2_early~reg0_q\,
	d => \data[4]~input_o\,
	ena => \slave_din[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => slave_din(4));

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
	portare => \u1|slave_rden~q\,
	portbwe => \u1|dpram_slave|altsyncram_component|auto_generated|decode3|eq_node\(0),
	portbre => \u1|comb~1_combout\,
	clk0 => \u1|slave_ram_clk~combout\,
	clk1 => \ALT_INV_phi2_early~reg0_q\,
	ena0 => \u1|dpram_slave|altsyncram_component|auto_generated|_~0_combout\,
	ena1 => \u1|dpram_slave|altsyncram_component|auto_generated|rden_decode_b|eq_node[0]~0_combout\,
	portadatain => \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a4_PORTADATAIN_bus\,
	portbdatain => \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a4_PORTBDATAIN_bus\,
	portaaddr => \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a4_PORTAADDR_bus\,
	portbaddr => \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a4_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a4_PORTADATAOUT_bus\,
	portbdataout => \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a4_PORTBDATAOUT_bus\);

\u1|tx_buf~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|tx_buf~6_combout\ = (\u1|LessThan2~0_combout\ & (((\u1|tx_buf~5_combout\)))) # (!\u1|LessThan2~0_combout\ & ((\u1|tx_buf~5_combout\ & ((\u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a4~portadataout\))) # (!\u1|tx_buf~5_combout\ & 
-- (reg_stbycr(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => reg_stbycr(4),
	datab => \u1|LessThan2~0_combout\,
	datac => \u1|tx_buf~5_combout\,
	datad => \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a4~portadataout\,
	combout => \u1|tx_buf~6_combout\);

\u1|tx_buf[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \spi_clk~input_o\,
	d => \u1|tx_buf~6_combout\,
	clrn => \u1|ALT_INV_process_1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|tx_buf\(4));

\u1|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|Mux0~0_combout\ = (\u1|bit_cnt\(1) & (((\u1|bit_cnt\(0))))) # (!\u1|bit_cnt\(1) & ((\u1|bit_cnt\(0) & (\u1|tx_buf\(5))) # (!\u1|bit_cnt\(0) & ((\u1|tx_buf\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|bit_cnt\(1),
	datab => \u1|tx_buf\(5),
	datac => \u1|bit_cnt\(0),
	datad => \u1|tx_buf\(4),
	combout => \u1|Mux0~0_combout\);

\reg_stbycr[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_phi2_early~reg0_q\,
	d => \data[7]~input_o\,
	ena => \reg_stbycr[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_stbycr(7));

\reg_stbkcr[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_phi2_early~reg0_q\,
	d => \data[7]~input_o\,
	ena => \reg_stbkcr[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_stbkcr(7));

\reg_sdcr[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_phi2_early~reg0_q\,
	d => \data[7]~input_o\,
	ena => \reg_sdcr[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_sdcr(7));

\u1|tx_buf~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|tx_buf~7_combout\ = (\u1|LessThan2~0_combout\ & ((\u1|tx_buf[0]~0_combout\ & (reg_stbkcr(7))) # (!\u1|tx_buf[0]~0_combout\ & ((reg_sdcr(7)))))) # (!\u1|LessThan2~0_combout\ & (((\u1|tx_buf[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|LessThan2~0_combout\,
	datab => reg_stbkcr(7),
	datac => \u1|tx_buf[0]~0_combout\,
	datad => reg_sdcr(7),
	combout => \u1|tx_buf~7_combout\);

\slave_din[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_phi2_early~reg0_q\,
	d => \data[7]~input_o\,
	ena => \slave_din[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => slave_din(7));

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
	portare => \u1|slave_rden~q\,
	portbwe => \u1|dpram_slave|altsyncram_component|auto_generated|decode3|eq_node\(0),
	portbre => \u1|comb~1_combout\,
	clk0 => \u1|slave_ram_clk~combout\,
	clk1 => \ALT_INV_phi2_early~reg0_q\,
	ena0 => \u1|dpram_slave|altsyncram_component|auto_generated|_~0_combout\,
	ena1 => \u1|dpram_slave|altsyncram_component|auto_generated|rden_decode_b|eq_node[0]~0_combout\,
	portadatain => \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a7_PORTADATAIN_bus\,
	portbdatain => \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a7_PORTBDATAIN_bus\,
	portaaddr => \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a7_PORTAADDR_bus\,
	portbaddr => \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a7_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a7_PORTADATAOUT_bus\,
	portbdataout => \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a7_PORTBDATAOUT_bus\);

\u1|tx_buf~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|tx_buf~8_combout\ = (\u1|LessThan2~0_combout\ & (((\u1|tx_buf~7_combout\)))) # (!\u1|LessThan2~0_combout\ & ((\u1|tx_buf~7_combout\ & ((\u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a7~portadataout\))) # (!\u1|tx_buf~7_combout\ & 
-- (reg_stbycr(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => reg_stbycr(7),
	datab => \u1|LessThan2~0_combout\,
	datac => \u1|tx_buf~7_combout\,
	datad => \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a7~portadataout\,
	combout => \u1|tx_buf~8_combout\);

\u1|tx_buf[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \spi_clk~input_o\,
	d => \u1|tx_buf~8_combout\,
	clrn => \u1|ALT_INV_process_1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|tx_buf\(7));

\u1|Mux0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|Mux0~1_combout\ = (\u1|bit_cnt\(1) & ((\u1|Mux0~0_combout\ & ((\u1|tx_buf\(7)))) # (!\u1|Mux0~0_combout\ & (\u1|tx_buf\(6))))) # (!\u1|bit_cnt\(1) & (((\u1|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|tx_buf\(6),
	datab => \u1|bit_cnt\(1),
	datac => \u1|Mux0~0_combout\,
	datad => \u1|tx_buf\(7),
	combout => \u1|Mux0~1_combout\);

\reg_stbycr[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_phi2_early~reg0_q\,
	d => \data[2]~input_o\,
	ena => \reg_stbycr[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_stbycr(2));

\reg_stbkcr[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_phi2_early~reg0_q\,
	d => \data[2]~input_o\,
	ena => \reg_stbkcr[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_stbkcr(2));

\reg_sdcr[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_phi2_early~reg0_q\,
	d => \data[2]~input_o\,
	ena => \reg_sdcr[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_sdcr(2));

\u1|tx_buf~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|tx_buf~9_combout\ = (\u1|LessThan2~0_combout\ & ((\u1|tx_buf[0]~0_combout\ & (reg_stbkcr(2))) # (!\u1|tx_buf[0]~0_combout\ & ((reg_sdcr(2)))))) # (!\u1|LessThan2~0_combout\ & (((\u1|tx_buf[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|LessThan2~0_combout\,
	datab => reg_stbkcr(2),
	datac => \u1|tx_buf[0]~0_combout\,
	datad => reg_sdcr(2),
	combout => \u1|tx_buf~9_combout\);

\slave_din[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_phi2_early~reg0_q\,
	d => \data[2]~input_o\,
	ena => \slave_din[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => slave_din(2));

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
	portare => \u1|slave_rden~q\,
	portbwe => \u1|dpram_slave|altsyncram_component|auto_generated|decode3|eq_node\(0),
	portbre => \u1|comb~1_combout\,
	clk0 => \u1|slave_ram_clk~combout\,
	clk1 => \ALT_INV_phi2_early~reg0_q\,
	ena0 => \u1|dpram_slave|altsyncram_component|auto_generated|_~0_combout\,
	ena1 => \u1|dpram_slave|altsyncram_component|auto_generated|rden_decode_b|eq_node[0]~0_combout\,
	portadatain => \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a2_PORTADATAIN_bus\,
	portbdatain => \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a2_PORTBDATAIN_bus\,
	portaaddr => \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a2_PORTAADDR_bus\,
	portbaddr => \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a2_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a2_PORTADATAOUT_bus\,
	portbdataout => \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a2_PORTBDATAOUT_bus\);

\u1|tx_buf~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|tx_buf~10_combout\ = (\u1|LessThan2~0_combout\ & (((\u1|tx_buf~9_combout\)))) # (!\u1|LessThan2~0_combout\ & ((\u1|tx_buf~9_combout\ & ((\u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a2~portadataout\))) # (!\u1|tx_buf~9_combout\ & 
-- (reg_stbycr(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => reg_stbycr(2),
	datab => \u1|LessThan2~0_combout\,
	datac => \u1|tx_buf~9_combout\,
	datad => \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a2~portadataout\,
	combout => \u1|tx_buf~10_combout\);

\u1|tx_buf[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \spi_clk~input_o\,
	d => \u1|tx_buf~10_combout\,
	clrn => \u1|ALT_INV_process_1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|tx_buf\(2));

\reg_stbkcr[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_phi2_early~reg0_q\,
	d => \data[1]~input_o\,
	ena => \reg_stbkcr[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_stbkcr(1));

\reg_stbycr[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_phi2_early~reg0_q\,
	d => \data[1]~input_o\,
	ena => \reg_stbycr[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_stbycr(1));

\reg_sdcr[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_phi2_early~reg0_q\,
	d => \data[1]~input_o\,
	ena => \reg_sdcr[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_sdcr(1));

\u1|tx_buf~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|tx_buf~11_combout\ = (\u1|tx_buf[0]~0_combout\ & (((!\u1|LessThan2~0_combout\)))) # (!\u1|tx_buf[0]~0_combout\ & ((\u1|LessThan2~0_combout\ & ((reg_sdcr(1)))) # (!\u1|LessThan2~0_combout\ & (reg_stbycr(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|tx_buf[0]~0_combout\,
	datab => reg_stbycr(1),
	datac => \u1|LessThan2~0_combout\,
	datad => reg_sdcr(1),
	combout => \u1|tx_buf~11_combout\);

\slave_din[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_phi2_early~reg0_q\,
	d => \data[1]~input_o\,
	ena => \slave_din[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => slave_din(1));

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
	portare => \u1|slave_rden~q\,
	portbwe => \u1|dpram_slave|altsyncram_component|auto_generated|decode3|eq_node\(0),
	portbre => \u1|comb~1_combout\,
	clk0 => \u1|slave_ram_clk~combout\,
	clk1 => \ALT_INV_phi2_early~reg0_q\,
	ena0 => \u1|dpram_slave|altsyncram_component|auto_generated|_~0_combout\,
	ena1 => \u1|dpram_slave|altsyncram_component|auto_generated|rden_decode_b|eq_node[0]~0_combout\,
	portadatain => \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a1_PORTADATAIN_bus\,
	portbdatain => \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a1_PORTBDATAIN_bus\,
	portaaddr => \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a1_PORTAADDR_bus\,
	portbaddr => \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a1_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a1_PORTADATAOUT_bus\,
	portbdataout => \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a1_PORTBDATAOUT_bus\);

\u1|tx_buf~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|tx_buf~12_combout\ = (\u1|tx_buf[0]~0_combout\ & ((\u1|tx_buf~11_combout\ & ((\u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a1~portadataout\))) # (!\u1|tx_buf~11_combout\ & (reg_stbkcr(1))))) # (!\u1|tx_buf[0]~0_combout\ & 
-- (((\u1|tx_buf~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => reg_stbkcr(1),
	datab => \u1|tx_buf[0]~0_combout\,
	datac => \u1|tx_buf~11_combout\,
	datad => \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a1~portadataout\,
	combout => \u1|tx_buf~12_combout\);

\u1|tx_buf[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \spi_clk~input_o\,
	d => \u1|tx_buf~12_combout\,
	clrn => \u1|ALT_INV_process_1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|tx_buf\(1));

\reg_stbycr[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_phi2_early~reg0_q\,
	d => \data[0]~input_o\,
	ena => \reg_stbycr[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_stbycr(0));

\reg_stbkcr[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_phi2_early~reg0_q\,
	d => \data[0]~input_o\,
	ena => \reg_stbkcr[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_stbkcr(0));

\reg_sdcr[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_phi2_early~reg0_q\,
	d => \data[0]~input_o\,
	ena => \reg_sdcr[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_sdcr(0));

\u1|tx_buf~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|tx_buf~13_combout\ = (\u1|LessThan2~0_combout\ & ((\u1|tx_buf[0]~0_combout\ & (reg_stbkcr(0))) # (!\u1|tx_buf[0]~0_combout\ & ((reg_sdcr(0)))))) # (!\u1|LessThan2~0_combout\ & (((\u1|tx_buf[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|LessThan2~0_combout\,
	datab => reg_stbkcr(0),
	datac => \u1|tx_buf[0]~0_combout\,
	datad => reg_sdcr(0),
	combout => \u1|tx_buf~13_combout\);

\slave_din[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_phi2_early~reg0_q\,
	d => \data[0]~input_o\,
	ena => \slave_din[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => slave_din(0));

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
	portare => \u1|slave_rden~q\,
	portbwe => \u1|dpram_slave|altsyncram_component|auto_generated|decode3|eq_node\(0),
	portbre => \u1|comb~1_combout\,
	clk0 => \u1|slave_ram_clk~combout\,
	clk1 => \ALT_INV_phi2_early~reg0_q\,
	ena0 => \u1|dpram_slave|altsyncram_component|auto_generated|_~0_combout\,
	ena1 => \u1|dpram_slave|altsyncram_component|auto_generated|rden_decode_b|eq_node[0]~0_combout\,
	portadatain => \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portbdatain => \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAIN_bus\,
	portaaddr => \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\,
	portbaddr => \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\,
	portbdataout => \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\);

\u1|tx_buf~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|tx_buf~14_combout\ = (\u1|LessThan2~0_combout\ & (((\u1|tx_buf~13_combout\)))) # (!\u1|LessThan2~0_combout\ & ((\u1|tx_buf~13_combout\ & ((\u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a0~portadataout\))) # (!\u1|tx_buf~13_combout\ & 
-- (reg_stbycr(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => reg_stbycr(0),
	datab => \u1|LessThan2~0_combout\,
	datac => \u1|tx_buf~13_combout\,
	datad => \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a0~portadataout\,
	combout => \u1|tx_buf~14_combout\);

\u1|tx_buf[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \spi_clk~input_o\,
	d => \u1|tx_buf~14_combout\,
	clrn => \u1|ALT_INV_process_1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|tx_buf\(0));

\u1|Mux0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|Mux0~2_combout\ = (\u1|bit_cnt\(1) & (((\u1|bit_cnt\(0))))) # (!\u1|bit_cnt\(1) & ((\u1|bit_cnt\(0) & (\u1|tx_buf\(1))) # (!\u1|bit_cnt\(0) & ((\u1|tx_buf\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|bit_cnt\(1),
	datab => \u1|tx_buf\(1),
	datac => \u1|bit_cnt\(0),
	datad => \u1|tx_buf\(0),
	combout => \u1|Mux0~2_combout\);

\reg_stbkcr[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_phi2_early~reg0_q\,
	d => \data[3]~input_o\,
	ena => \reg_stbkcr[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_stbkcr(3));

\reg_stbycr[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_phi2_early~reg0_q\,
	d => \data[3]~input_o\,
	ena => \reg_stbycr[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_stbycr(3));

\reg_sdcr[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_phi2_early~reg0_q\,
	d => \data[3]~input_o\,
	ena => \reg_sdcr[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_sdcr(3));

\u1|tx_buf~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|tx_buf~15_combout\ = (\u1|tx_buf[0]~0_combout\ & (((!\u1|LessThan2~0_combout\)))) # (!\u1|tx_buf[0]~0_combout\ & ((\u1|LessThan2~0_combout\ & ((reg_sdcr(3)))) # (!\u1|LessThan2~0_combout\ & (reg_stbycr(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|tx_buf[0]~0_combout\,
	datab => reg_stbycr(3),
	datac => \u1|LessThan2~0_combout\,
	datad => reg_sdcr(3),
	combout => \u1|tx_buf~15_combout\);

\slave_din[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_phi2_early~reg0_q\,
	d => \data[3]~input_o\,
	ena => \slave_din[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => slave_din(3));

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
	portare => \u1|slave_rden~q\,
	portbwe => \u1|dpram_slave|altsyncram_component|auto_generated|decode3|eq_node\(0),
	portbre => \u1|comb~1_combout\,
	clk0 => \u1|slave_ram_clk~combout\,
	clk1 => \ALT_INV_phi2_early~reg0_q\,
	ena0 => \u1|dpram_slave|altsyncram_component|auto_generated|_~0_combout\,
	ena1 => \u1|dpram_slave|altsyncram_component|auto_generated|rden_decode_b|eq_node[0]~0_combout\,
	portadatain => \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a3_PORTADATAIN_bus\,
	portbdatain => \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a3_PORTBDATAIN_bus\,
	portaaddr => \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a3_PORTAADDR_bus\,
	portbaddr => \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a3_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a3_PORTADATAOUT_bus\,
	portbdataout => \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a3_PORTBDATAOUT_bus\);

\u1|tx_buf~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|tx_buf~16_combout\ = (\u1|tx_buf[0]~0_combout\ & ((\u1|tx_buf~15_combout\ & ((\u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a3~portadataout\))) # (!\u1|tx_buf~15_combout\ & (reg_stbkcr(3))))) # (!\u1|tx_buf[0]~0_combout\ & 
-- (((\u1|tx_buf~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => reg_stbkcr(3),
	datab => \u1|tx_buf[0]~0_combout\,
	datac => \u1|tx_buf~15_combout\,
	datad => \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a3~portadataout\,
	combout => \u1|tx_buf~16_combout\);

\u1|tx_buf[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \spi_clk~input_o\,
	d => \u1|tx_buf~16_combout\,
	clrn => \u1|ALT_INV_process_1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|tx_buf\(3));

\u1|Mux0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|Mux0~3_combout\ = (\u1|bit_cnt\(1) & ((\u1|Mux0~2_combout\ & ((\u1|tx_buf\(3)))) # (!\u1|Mux0~2_combout\ & (\u1|tx_buf\(2))))) # (!\u1|bit_cnt\(1) & (((\u1|Mux0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|tx_buf\(2),
	datab => \u1|bit_cnt\(1),
	datac => \u1|Mux0~2_combout\,
	datad => \u1|tx_buf\(3),
	combout => \u1|Mux0~3_combout\);

\u1|Mux0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|Mux0~4_combout\ = (\u1|bit_cnt\(2) & (\u1|Mux0~1_combout\)) # (!\u1|bit_cnt\(2) & ((\u1|Mux0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|Mux0~1_combout\,
	datab => \u1|Mux0~3_combout\,
	datad => \u1|bit_cnt\(2),
	combout => \u1|Mux0~4_combout\);

\u1|miso~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_spi_clk~input_o\,
	d => \u1|Mux0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|miso~reg0_q\);

\u1|miso~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_spi_clk~input_o\,
	d => VCC,
	clrn => \u1|ALT_INV_process_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|miso~en_q\);

\Equal18~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal18~0_combout\ = (addr_latch(4) & (\led_latch[0]~3_combout\ & (addr_latch(0) & !addr_latch(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => addr_latch(4),
	datab => \led_latch[0]~3_combout\,
	datac => addr_latch(0),
	datad => addr_latch(5),
	combout => \Equal18~0_combout\);

\reg_mrbs[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_mrbs[0]~0_combout\ = (\n_reset~input_o\ & (\led_latch[0]~2_combout\ & (\Equal18~0_combout\ & !\rw_latch~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \n_reset~input_o\,
	datab => \led_latch[0]~2_combout\,
	datac => \Equal18~0_combout\,
	datad => \rw_latch~q\,
	combout => \reg_mrbs[0]~0_combout\);

\reg_mrbs[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_phi2_early~reg0_q\,
	d => \data[5]~input_o\,
	ena => \reg_mrbs[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_mrbs(5));

\u1|dpram_master|altsyncram_component|auto_generated|decode3|eq_node[1]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|dpram_master|altsyncram_component|auto_generated|decode3|eq_node\(1) = (\master_ram_en~q\ & (reg_mrbs(5) & !\rw_latch~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \master_ram_en~q\,
	datab => reg_mrbs(5),
	datad => \rw_latch~q\,
	combout => \u1|dpram_master|altsyncram_component|auto_generated|decode3|eq_node\(1));

\u1|comb~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|comb~0_combout\ = (\rw_latch~q\ & \master_ram_en~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rw_latch~q\,
	datab => \master_ram_en~q\,
	combout => \u1|comb~0_combout\);

\u1|master_ram_clk\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|master_ram_clk~combout\ = LCELL((\u1|bit_cnt\(1) & (\u1|bit_cnt\(0) & (\u1|bit_cnt\(2) & !\spi_clk~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|bit_cnt\(1),
	datab => \u1|bit_cnt\(0),
	datac => \u1|bit_cnt\(2),
	datad => \spi_clk~input_o\,
	combout => \u1|master_ram_clk~combout\);

\u1|dpram_master|altsyncram_component|auto_generated|rden_b_store\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_phi2_early~reg0_q\,
	d => \u1|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|dpram_master|altsyncram_component|auto_generated|rden_b_store~q\);

\u1|comb~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|comb~2_combout\ = (\master_ram_en~q\ & !\rw_latch~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \master_ram_en~q\,
	datad => \rw_latch~q\,
	combout => \u1|comb~2_combout\);

\u1|dpram_master|altsyncram_component|auto_generated|wren_b_store\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_phi2_early~reg0_q\,
	d => \u1|comb~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|dpram_master|altsyncram_component|auto_generated|wren_b_store~q\);

\u1|dpram_master|altsyncram_component|auto_generated|rden_decode_b|eq_node[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|dpram_master|altsyncram_component|auto_generated|rden_decode_b|eq_node[1]~0_combout\ = (reg_mrbs(5) & ((\master_ram_en~q\) # ((\u1|dpram_master|altsyncram_component|auto_generated|rden_b_store~q\) # 
-- (\u1|dpram_master|altsyncram_component|auto_generated|wren_b_store~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => reg_mrbs(5),
	datab => \master_ram_en~q\,
	datac => \u1|dpram_master|altsyncram_component|auto_generated|rden_b_store~q\,
	datad => \u1|dpram_master|altsyncram_component|auto_generated|wren_b_store~q\,
	combout => \u1|dpram_master|altsyncram_component|auto_generated|rden_decode_b|eq_node[1]~0_combout\);

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

\u1|rx_buf[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|rx_buf[0]~0_combout\ = (\u1|master_wren~0_combout\ & (!\u1|bit_cnt\(0) & !\u1|process_1~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|master_wren~0_combout\,
	datac => \u1|bit_cnt\(0),
	datad => \u1|process_1~1_combout\,
	combout => \u1|rx_buf[0]~0_combout\);

\u1|slave_ram_clk~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|slave_ram_clk~0_combout\ = (!\u1|bit_cnt\(1) & !\u1|bit_cnt\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u1|bit_cnt\(1),
	datad => \u1|bit_cnt\(2),
	combout => \u1|slave_ram_clk~0_combout\);

\u1|rx_buf[0]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|rx_buf[0]~1_combout\ = (\u1|rx_buf[0]~0_combout\ & ((\u1|slave_ram_clk~0_combout\ & (\spi_mosi~input_o\)) # (!\u1|slave_ram_clk~0_combout\ & ((\u1|rx_buf\(0)))))) # (!\u1|rx_buf[0]~0_combout\ & (((\u1|rx_buf\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi_mosi~input_o\,
	datab => \u1|rx_buf\(0),
	datac => \u1|rx_buf[0]~0_combout\,
	datad => \u1|slave_ram_clk~0_combout\,
	combout => \u1|rx_buf[0]~1_combout\);

\u1|rx_buf[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \spi_clk~input_o\,
	d => \u1|rx_buf[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|rx_buf\(0));

\master_din[0]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \master_din[0]~1_combout\ = (\master_ram_en~q\ & \master_din[0]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \master_ram_en~q\,
	datab => \master_din[0]~0_combout\,
	combout => \master_din[0]~1_combout\);

\master_din[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_phi2_early~reg0_q\,
	d => \data[0]~input_o\,
	ena => \master_din[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => master_din(0));

\reg_mrbs[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_phi2_early~reg0_q\,
	d => \data[0]~input_o\,
	ena => \reg_mrbs[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_mrbs(0));

\reg_mrbs[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_phi2_early~reg0_q\,
	d => \data[1]~input_o\,
	ena => \reg_mrbs[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_mrbs(1));

\reg_mrbs[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_phi2_early~reg0_q\,
	d => \data[2]~input_o\,
	ena => \reg_mrbs[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_mrbs(2));

\reg_mrbs[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_phi2_early~reg0_q\,
	d => \data[3]~input_o\,
	ena => \reg_mrbs[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_mrbs(3));

\reg_mrbs[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_phi2_early~reg0_q\,
	d => \data[4]~input_o\,
	ena => \reg_mrbs[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_mrbs(4));

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
	port_a_first_address => 8192,
	port_a_first_bit_number => 0,
	port_a_last_address => 16383,
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
	port_b_first_address => 8192,
	port_b_first_bit_number => 0,
	port_b_last_address => 16383,
	port_b_logical_ram_depth => 16384,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "old_data",
	port_b_read_enable_clock => "clock1",
	port_b_write_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portare => VCC,
	portbwe => \u1|dpram_master|altsyncram_component|auto_generated|decode3|eq_node\(1),
	portbre => \u1|comb~0_combout\,
	clk0 => \u1|master_ram_clk~combout\,
	clk1 => \ALT_INV_phi2_early~reg0_q\,
	ena0 => GND,
	ena1 => \u1|dpram_master|altsyncram_component|auto_generated|rden_decode_b|eq_node[1]~0_combout\,
	portadatain => \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a8_PORTADATAIN_bus\,
	portbdatain => \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a8_PORTBDATAIN_bus\,
	portaaddr => \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a8_PORTAADDR_bus\,
	portbaddr => \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a8_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a8_PORTADATAOUT_bus\,
	portbdataout => \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a8_PORTBDATAOUT_bus\);

\data[2]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data[2]~16_combout\ = (\dev_reg_act~q\ & (addr_latch(5) & \Equal13~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dev_reg_act~q\,
	datab => addr_latch(5),
	datac => \Equal13~4_combout\,
	combout => \data[2]~16_combout\);

\Equal20~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal20~0_combout\ = (addr_latch(4) & (\Equal13~3_combout\ & (\Equal14~0_combout\ & !addr_latch(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => addr_latch(4),
	datab => \Equal13~3_combout\,
	datac => \Equal14~0_combout\,
	datad => addr_latch(5),
	combout => \Equal20~0_combout\);

\reg_fbs[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_fbs[0]~0_combout\ = (\n_reset~input_o\ & (\led_latch[0]~2_combout\ & (\Equal20~0_combout\ & !\rw_latch~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \n_reset~input_o\,
	datab => \led_latch[0]~2_combout\,
	datac => \Equal20~0_combout\,
	datad => \rw_latch~q\,
	combout => \reg_fbs[0]~0_combout\);

\reg_fbs[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_phi2_early~reg0_q\,
	d => \data[0]~input_o\,
	ena => \reg_fbs[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_fbs(0));

\Equal17~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal17~0_combout\ = (\Equal13~3_combout\ & (addr_latch(5) & (\Equal14~0_combout\ & !addr_latch(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal13~3_combout\,
	datab => addr_latch(5),
	datac => \Equal14~0_combout\,
	datad => addr_latch(4),
	combout => \Equal17~0_combout\);

\data[2]~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data[2]~17_combout\ = (!\Equal17~0_combout\ & (!\Equal18~0_combout\ & ((\Equal20~0_combout\) # (\Equal19~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal20~0_combout\,
	datab => \Equal19~0_combout\,
	datac => \Equal17~0_combout\,
	datad => \Equal18~0_combout\,
	combout => \data[2]~17_combout\);

\data[0]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data[0]~18_combout\ = (!\Equal17~0_combout\ & ((\Equal18~0_combout\ & ((reg_mrbs(0)))) # (!\Equal18~0_combout\ & (!\Equal19~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal19~0_combout\,
	datab => \Equal18~0_combout\,
	datac => \Equal17~0_combout\,
	datad => reg_mrbs(0),
	combout => \data[0]~18_combout\);

\data[0]~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data[0]~19_combout\ = (\data[2]~17_combout\ & ((\data[0]~18_combout\ & (reg_fbs(0))) # (!\data[0]~18_combout\ & ((reg_srbs(0)))))) # (!\data[2]~17_combout\ & (((\data[0]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => reg_fbs(0),
	datab => reg_srbs(0),
	datac => \data[2]~17_combout\,
	datad => \data[0]~18_combout\,
	combout => \data[0]~19_combout\);

\data[0]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data[0]~20_combout\ = (!\Equal14~1_combout\ & (((addr_latch(4)) # (!addr_latch(5))) # (!\led_latch[0]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \led_latch[0]~3_combout\,
	datab => addr_latch(5),
	datac => addr_latch(4),
	datad => \Equal14~1_combout\,
	combout => \data[0]~20_combout\);

\data[0]~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data[0]~21_combout\ = (\data[0]~19_combout\ & ((\data[0]~20_combout\) # ((reg_stbkcr(0) & \Equal14~1_combout\)))) # (!\data[0]~19_combout\ & (reg_stbkcr(0) & (\Equal14~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data[0]~19_combout\,
	datab => reg_stbkcr(0),
	datac => \Equal14~1_combout\,
	datad => \data[0]~20_combout\,
	combout => \data[0]~21_combout\);

\data[2]~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data[2]~22_combout\ = (\dev_reg_act~q\ & (((!\Equal13~4_combout\) # (!addr_latch(0))) # (!addr_latch(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dev_reg_act~q\,
	datab => addr_latch(5),
	datac => addr_latch(0),
	datad => \Equal13~4_combout\,
	combout => \data[2]~22_combout\);

\u1|master_wren\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \spi_clk~input_o\,
	d => \u1|master_wren~0_combout\,
	clrn => \u1|ALT_INV_process_1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|master_wren~q\);

\u1|dpram_master|altsyncram_component|auto_generated|decode3|eq_node[0]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|dpram_master|altsyncram_component|auto_generated|decode3|eq_node\(0) = (\master_ram_en~q\ & (!\rw_latch~q\ & !reg_mrbs(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \master_ram_en~q\,
	datac => \rw_latch~q\,
	datad => reg_mrbs(5),
	combout => \u1|dpram_master|altsyncram_component|auto_generated|decode3|eq_node\(0));

\u1|dpram_master|altsyncram_component|auto_generated|rden_decode_b|eq_node[0]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|dpram_master|altsyncram_component|auto_generated|rden_decode_b|eq_node[0]~1_combout\ = (!reg_mrbs(5) & ((\master_ram_en~q\) # ((\u1|dpram_master|altsyncram_component|auto_generated|rden_b_store~q\) # 
-- (\u1|dpram_master|altsyncram_component|auto_generated|wren_b_store~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \master_ram_en~q\,
	datab => \u1|dpram_master|altsyncram_component|auto_generated|rden_b_store~q\,
	datac => \u1|dpram_master|altsyncram_component|auto_generated|wren_b_store~q\,
	datad => reg_mrbs(5),
	combout => \u1|dpram_master|altsyncram_component|auto_generated|rden_decode_b|eq_node[0]~1_combout\);

\u1|dpram_master|altsyncram_component|auto_generated|ram_block1a0\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
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
	portawe => \u1|master_wren~q\,
	portare => VCC,
	portbwe => \u1|dpram_master|altsyncram_component|auto_generated|decode3|eq_node\(0),
	portbre => \u1|comb~0_combout\,
	clk0 => \u1|master_ram_clk~combout\,
	clk1 => \ALT_INV_phi2_early~reg0_q\,
	ena1 => \u1|dpram_master|altsyncram_component|auto_generated|rden_decode_b|eq_node[0]~1_combout\,
	portadatain => \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portbdatain => \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAIN_bus\,
	portaaddr => \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\,
	portbaddr => \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\,
	portbdataout => \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\);

\u1|dpram_slave|altsyncram_component|auto_generated|address_reg_b[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_phi2_early~reg0_q\,
	d => reg_srbs(5),
	ena => \u1|comb~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|dpram_slave|altsyncram_component|auto_generated|address_reg_b\(0));

\u1|dpram_slave|altsyncram_component|auto_generated|out_address_reg_b[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_phi2_early~reg0_q\,
	d => \u1|dpram_slave|altsyncram_component|auto_generated|address_reg_b\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|dpram_slave|altsyncram_component|auto_generated|out_address_reg_b\(0));

\data[2]~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data[2]~23_combout\ = (\master_ram_en~q\) # ((\slave_ram_en~q\ & \u1|dpram_slave|altsyncram_component|auto_generated|out_address_reg_b\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \master_ram_en~q\,
	datab => \slave_ram_en~q\,
	datac => \u1|dpram_slave|altsyncram_component|auto_generated|out_address_reg_b\(0),
	combout => \data[2]~23_combout\);

\slave_din[0]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \slave_din[0]~2_combout\ = (\slave_ram_en~q\ & !\master_ram_en~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \slave_ram_en~q\,
	datad => \master_ram_en~q\,
	combout => \slave_din[0]~2_combout\);

\u0|onchip_flash_0|avmm_data_controller|reset_n_reg1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_57~input_o\,
	d => VCC,
	clrn => \n_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|reset_n_reg1~q\);

\u0|onchip_flash_0|avmm_data_controller|reset_n_reg2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_57~input_o\,
	d => \u0|onchip_flash_0|avmm_data_controller|reset_n_reg1~q\,
	clrn => \n_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|reset_n_reg2~q\);

\dev_rom_act~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dev_rom_act~0_combout\ = (\addr[11]~input_o\ & \Equal11~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \addr[11]~input_o\,
	datad => \Equal11~3_combout\,
	combout => \dev_rom_act~0_combout\);

dev_rom_act : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \phi2~input_o\,
	d => \dev_rom_act~0_combout\,
	clrn => \n_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dev_rom_act~q\);

\flash_read~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \flash_read~0_combout\ = (clk_counter(0) & (!clk_counter(3) & (!clk_counter(2) & !clk_counter(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clk_counter(0),
	datab => clk_counter(3),
	datac => clk_counter(2),
	datad => clk_counter(1),
	combout => \flash_read~0_combout\);

\flash_read~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \flash_read~1_combout\ = (\rw_latch~q\ & (\dev_rom_act~q\ & \flash_read~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rw_latch~q\,
	datab => \dev_rom_act~q\,
	datac => \flash_read~0_combout\,
	combout => \flash_read~1_combout\);

flash_read : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_57~input_o\,
	d => \flash_read~1_combout\,
	clrn => \n_reset~input_o\,
	ena => \phi2~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \flash_read~q\);

\u0|onchip_flash_0|avmm_data_controller|read_state~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|read_state~18_combout\ = (\u0|onchip_flash_0|avmm_data_controller|reset_n_reg2~q\ & \u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_READY~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|reset_n_reg2~q\,
	datab => \u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_READY~q\,
	combout => \u0|onchip_flash_0|avmm_data_controller|read_state~18_combout\);

\u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_FINAL\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_57~input_o\,
	d => \u0|onchip_flash_0|avmm_data_controller|read_state~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_FINAL~q\);

\u0|onchip_flash_0|avmm_data_controller|Selector0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|Selector0~0_combout\ = (\u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_FINAL~q\) # ((\u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_IDLE~q\ & 
-- \u0|onchip_flash_0|avmm_data_controller|avmm_read_state~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_FINAL~q\,
	datab => \u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_IDLE~q\,
	datac => \u0|onchip_flash_0|avmm_data_controller|avmm_read_state~q\,
	combout => \u0|onchip_flash_0|avmm_data_controller|Selector0~0_combout\);

\u0|onchip_flash_0|avmm_data_controller|avmm_read_state\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_57~input_o\,
	d => \u0|onchip_flash_0|avmm_data_controller|Selector0~0_combout\,
	ena => \u0|onchip_flash_0|avmm_data_controller|reset_n_reg2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|avmm_read_state~q\);

\u0|onchip_flash_0|avmm_data_controller|Selector1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|Selector1~0_combout\ = (\u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_IDLE~q\ & !\u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_FINAL~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_IDLE~q\,
	datad => \u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_FINAL~q\,
	combout => \u0|onchip_flash_0|avmm_data_controller|Selector1~0_combout\);

\u0|onchip_flash_0|avmm_data_controller|Selector1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|Selector1~1_combout\ = (\u0|onchip_flash_0|avmm_data_controller|avmm_readdata_ready~q\ & ((\u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_READY~q\) # 
-- ((\u0|onchip_flash_0|avmm_data_controller|Selector1~0_combout\)))) # (!\u0|onchip_flash_0|avmm_data_controller|avmm_readdata_ready~q\ & (\u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_READY~q\ & 
-- ((!\u0|onchip_flash_0|avmm_data_controller|avmm_read_state~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|avmm_readdata_ready~q\,
	datab => \u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_READY~q\,
	datac => \u0|onchip_flash_0|avmm_data_controller|Selector1~0_combout\,
	datad => \u0|onchip_flash_0|avmm_data_controller|avmm_read_state~q\,
	combout => \u0|onchip_flash_0|avmm_data_controller|Selector1~1_combout\);

\u0|onchip_flash_0|avmm_data_controller|avmm_readdata_ready\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_57~input_o\,
	d => \u0|onchip_flash_0|avmm_data_controller|Selector1~1_combout\,
	ena => \u0|onchip_flash_0|avmm_data_controller|reset_n_reg2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|avmm_readdata_ready~q\);

\u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_input_reg[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_input_reg[0]~0_combout\ = (\u0|onchip_flash_0|avmm_data_controller|reset_n_reg2~q\ & ((\u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_IDLE~q\ & 
-- (\u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_input_reg\(0))) # (!\u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_IDLE~q\ & ((\flash_read~q\))))) # (!\u0|onchip_flash_0|avmm_data_controller|reset_n_reg2~q\ & 
-- (\u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_input_reg\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_input_reg\(0),
	datab => \flash_read~q\,
	datac => \u0|onchip_flash_0|avmm_data_controller|reset_n_reg2~q\,
	datad => \u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_IDLE~q\,
	combout => \u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_input_reg[0]~0_combout\);

\u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_input_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_57~input_o\,
	d => \u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_input_reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_input_reg\(0));

\u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_reg~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_reg~12_combout\ = (\u0|onchip_flash_0|avmm_data_controller|avmm_read_valid_state~q\ & (\u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_reg\(3) $ 
-- ((\u0|onchip_flash_0|avmm_data_controller|Equal1~0_combout\)))) # (!\u0|onchip_flash_0|avmm_data_controller|avmm_read_valid_state~q\ & (((!\u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_input_reg\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_reg\(3),
	datab => \u0|onchip_flash_0|avmm_data_controller|Equal1~0_combout\,
	datac => \u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_input_reg\(0),
	datad => \u0|onchip_flash_0|avmm_data_controller|avmm_read_valid_state~q\,
	combout => \u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_reg~12_combout\);

\u0|onchip_flash_0|avmm_data_controller|data_count~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|data_count~8_combout\ = (\u0|onchip_flash_0|avmm_data_controller|data_count\(2) $ (((!\u0|onchip_flash_0|avmm_data_controller|data_count\(1) & !\u0|onchip_flash_0|avmm_data_controller|data_count\(0))))) # 
-- (!\u0|onchip_flash_0|avmm_data_controller|avmm_read_valid_state~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|data_count\(2),
	datab => \u0|onchip_flash_0|avmm_data_controller|data_count\(1),
	datac => \u0|onchip_flash_0|avmm_data_controller|data_count\(0),
	datad => \u0|onchip_flash_0|avmm_data_controller|avmm_read_valid_state~q\,
	combout => \u0|onchip_flash_0|avmm_data_controller|data_count~8_combout\);

\u0|onchip_flash_0|avmm_data_controller|data_count~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|data_count~4_combout\ = (\u0|onchip_flash_0|avmm_data_controller|avmm_read_valid_state~q\ & ((\u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_reg\(3)) # 
-- (!\u0|onchip_flash_0|avmm_data_controller|Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|avmm_read_valid_state~q\,
	datab => \u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_reg\(3),
	datad => \u0|onchip_flash_0|avmm_data_controller|Equal1~0_combout\,
	combout => \u0|onchip_flash_0|avmm_data_controller|data_count~4_combout\);

\u0|onchip_flash_0|avmm_data_controller|data_count[2]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|data_count[2]~10_combout\ = (\u0|onchip_flash_0|avmm_data_controller|data_count~4_combout\) # (((\u0|onchip_flash_0|avmm_data_controller|avmm_readdata_ready~q\ & 
-- !\u0|onchip_flash_0|avmm_data_controller|avmm_read_valid_state~q\)) # (!\u0|onchip_flash_0|avmm_data_controller|reset_n_reg2~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|avmm_readdata_ready~q\,
	datab => \u0|onchip_flash_0|avmm_data_controller|avmm_read_valid_state~q\,
	datac => \u0|onchip_flash_0|avmm_data_controller|data_count~4_combout\,
	datad => \u0|onchip_flash_0|avmm_data_controller|reset_n_reg2~q\,
	combout => \u0|onchip_flash_0|avmm_data_controller|data_count[2]~10_combout\);

\u0|onchip_flash_0|avmm_data_controller|data_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_57~input_o\,
	d => \u0|onchip_flash_0|avmm_data_controller|data_count~8_combout\,
	sclr => \u0|onchip_flash_0|avmm_data_controller|ALT_INV_reset_n_reg2~q\,
	ena => \u0|onchip_flash_0|avmm_data_controller|data_count[2]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|data_count\(2));

\u0|onchip_flash_0|avmm_data_controller|data_count[2]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|data_count[2]~5_combout\ = (\u0|onchip_flash_0|avmm_data_controller|reset_n_reg2~q\ & (\u0|onchip_flash_0|avmm_data_controller|avmm_read_valid_state~q\ & 
-- ((\u0|onchip_flash_0|avmm_data_controller|LessThan2~0_combout\) # (\u0|onchip_flash_0|avmm_data_controller|data_count\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|reset_n_reg2~q\,
	datab => \u0|onchip_flash_0|avmm_data_controller|avmm_read_valid_state~q\,
	datac => \u0|onchip_flash_0|avmm_data_controller|LessThan2~0_combout\,
	datad => \u0|onchip_flash_0|avmm_data_controller|data_count\(2),
	combout => \u0|onchip_flash_0|avmm_data_controller|data_count[2]~5_combout\);

\u0|onchip_flash_0|avmm_data_controller|data_count~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|data_count~7_combout\ = (!\u0|onchip_flash_0|avmm_data_controller|data_count\(0) & \u0|onchip_flash_0|avmm_data_controller|data_count[2]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|data_count\(0),
	datad => \u0|onchip_flash_0|avmm_data_controller|data_count[2]~5_combout\,
	combout => \u0|onchip_flash_0|avmm_data_controller|data_count~7_combout\);

\u0|onchip_flash_0|avmm_data_controller|data_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_57~input_o\,
	d => \u0|onchip_flash_0|avmm_data_controller|data_count~7_combout\,
	ena => \u0|onchip_flash_0|avmm_data_controller|data_count[2]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|data_count\(0));

\u0|onchip_flash_0|avmm_data_controller|data_count~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|data_count~6_combout\ = (\u0|onchip_flash_0|avmm_data_controller|data_count[2]~5_combout\ & (\u0|onchip_flash_0|avmm_data_controller|data_count\(1) $ (!\u0|onchip_flash_0|avmm_data_controller|data_count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u0|onchip_flash_0|avmm_data_controller|data_count\(1),
	datac => \u0|onchip_flash_0|avmm_data_controller|data_count\(0),
	datad => \u0|onchip_flash_0|avmm_data_controller|data_count[2]~5_combout\,
	combout => \u0|onchip_flash_0|avmm_data_controller|data_count~6_combout\);

\u0|onchip_flash_0|avmm_data_controller|data_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_57~input_o\,
	d => \u0|onchip_flash_0|avmm_data_controller|data_count~6_combout\,
	ena => \u0|onchip_flash_0|avmm_data_controller|data_count[2]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|data_count\(1));

\u0|onchip_flash_0|avmm_data_controller|LessThan2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|LessThan2~0_combout\ = (\u0|onchip_flash_0|avmm_data_controller|data_count\(1)) # (\u0|onchip_flash_0|avmm_data_controller|data_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|data_count\(1),
	datab => \u0|onchip_flash_0|avmm_data_controller|data_count\(0),
	combout => \u0|onchip_flash_0|avmm_data_controller|LessThan2~0_combout\);

\u0|onchip_flash_0|avmm_data_controller|Selector2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|Selector2~0_combout\ = (\u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_IDLE~q\ & \u0|onchip_flash_0|avmm_data_controller|flash_ardin_align_reg\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_IDLE~q\,
	datab => \u0|onchip_flash_0|avmm_data_controller|flash_ardin_align_reg\(0),
	combout => \u0|onchip_flash_0|avmm_data_controller|Selector2~0_combout\);

\u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin[0]~0_combout\ = (\flash_read~q\ & ((!addr_latch(2)))) # (!\flash_read~q\ & (\u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin\(0),
	datab => addr_latch(2),
	datad => \flash_read~q\,
	combout => \u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin[0]~0_combout\);

\u0|onchip_flash_0|avmm_data_controller|Selector39~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|Selector39~0_combout\ = (\u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin\(0) & !\u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_SETUP~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin\(0),
	datad => \u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_SETUP~q\,
	combout => \u0|onchip_flash_0|avmm_data_controller|Selector39~0_combout\);

\u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_57~input_o\,
	d => \u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin[0]~0_combout\,
	asdata => \u0|onchip_flash_0|avmm_data_controller|Selector39~0_combout\,
	sload => \u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_IDLE~q\,
	ena => \u0|onchip_flash_0|avmm_data_controller|reset_n_reg2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin\(0));

\u0|onchip_flash_0|avmm_data_controller|flash_ardin_align_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_57~input_o\,
	d => \u0|onchip_flash_0|avmm_data_controller|Selector2~0_combout\,
	asdata => \u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin\(0),
	sload => \u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_SETUP~q\,
	ena => \u0|onchip_flash_0|avmm_data_controller|reset_n_reg2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|flash_ardin_align_reg\(0));

\u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_reg~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_reg~8_combout\ = (\u0|onchip_flash_0|avmm_data_controller|avmm_readdata_ready~q\ & !\u0|onchip_flash_0|avmm_data_controller|avmm_read_valid_state~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|avmm_readdata_ready~q\,
	datad => \u0|onchip_flash_0|avmm_data_controller|avmm_read_valid_state~q\,
	combout => \u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_reg~8_combout\);

\u0|onchip_flash_0|avmm_data_controller|flash_ardin_align_backup_reg~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|flash_ardin_align_backup_reg~3_combout\ = (!\u0|onchip_flash_0|avmm_data_controller|data_count\(1) & (!\u0|onchip_flash_0|avmm_data_controller|data_count\(0) & 
-- (\u0|onchip_flash_0|avmm_data_controller|data_count~4_combout\ & !\u0|onchip_flash_0|avmm_data_controller|data_count\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|data_count\(1),
	datab => \u0|onchip_flash_0|avmm_data_controller|data_count\(0),
	datac => \u0|onchip_flash_0|avmm_data_controller|data_count~4_combout\,
	datad => \u0|onchip_flash_0|avmm_data_controller|data_count\(2),
	combout => \u0|onchip_flash_0|avmm_data_controller|flash_ardin_align_backup_reg~3_combout\);

\u0|onchip_flash_0|avmm_data_controller|flash_ardin_align_backup_reg~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|flash_ardin_align_backup_reg~2_combout\ = (\u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_reg~8_combout\ & (\u0|onchip_flash_0|avmm_data_controller|flash_ardin_align_reg\(0))) # 
-- (!\u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_reg~8_combout\ & (((\u0|onchip_flash_0|avmm_data_controller|flash_ardin_align_backup_reg\(0) & !\u0|onchip_flash_0|avmm_data_controller|flash_ardin_align_backup_reg~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|flash_ardin_align_reg\(0),
	datab => \u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_reg~8_combout\,
	datac => \u0|onchip_flash_0|avmm_data_controller|flash_ardin_align_backup_reg\(0),
	datad => \u0|onchip_flash_0|avmm_data_controller|flash_ardin_align_backup_reg~3_combout\,
	combout => \u0|onchip_flash_0|avmm_data_controller|flash_ardin_align_backup_reg~2_combout\);

\u0|onchip_flash_0|avmm_data_controller|flash_ardin_align_backup_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_57~input_o\,
	d => \u0|onchip_flash_0|avmm_data_controller|flash_ardin_align_backup_reg~2_combout\,
	sclr => \u0|onchip_flash_0|avmm_data_controller|ALT_INV_reset_n_reg2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|flash_ardin_align_backup_reg\(0));

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

\u0|onchip_flash_0|avmm_data_controller|Add4~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|Add4~4_combout\ = (\u0|onchip_flash_0|avmm_data_controller|Add4~3\ & ((\u0|onchip_flash_0|avmm_data_controller|data_count\(2) $ (!\u0|onchip_flash_0|avmm_data_controller|LessThan2~0_combout\)))) # 
-- (!\u0|onchip_flash_0|avmm_data_controller|Add4~3\ & (\u0|onchip_flash_0|avmm_data_controller|data_count\(2) $ (\u0|onchip_flash_0|avmm_data_controller|LessThan2~0_combout\ $ (GND))))
-- \u0|onchip_flash_0|avmm_data_controller|Add4~5\ = CARRY((!\u0|onchip_flash_0|avmm_data_controller|Add4~3\ & (\u0|onchip_flash_0|avmm_data_controller|data_count\(2) $ (!\u0|onchip_flash_0|avmm_data_controller|LessThan2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000001001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|data_count\(2),
	datab => \u0|onchip_flash_0|avmm_data_controller|LessThan2~0_combout\,
	datad => VCC,
	cin => \u0|onchip_flash_0|avmm_data_controller|Add4~3\,
	combout => \u0|onchip_flash_0|avmm_data_controller|Add4~4_combout\,
	cout => \u0|onchip_flash_0|avmm_data_controller|Add4~5\);

\u0|onchip_flash_0|avmm_data_controller|Add4~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|Add4~6_combout\ = (\u0|onchip_flash_0|avmm_data_controller|Add4~5\ & (((!\u0|onchip_flash_0|avmm_data_controller|LessThan2~0_combout\)) # (!\u0|onchip_flash_0|avmm_data_controller|data_count\(2)))) # 
-- (!\u0|onchip_flash_0|avmm_data_controller|Add4~5\ & (((\u0|onchip_flash_0|avmm_data_controller|data_count\(2) & \u0|onchip_flash_0|avmm_data_controller|LessThan2~0_combout\)) # (GND)))
-- \u0|onchip_flash_0|avmm_data_controller|Add4~7\ = CARRY(((!\u0|onchip_flash_0|avmm_data_controller|Add4~5\) # (!\u0|onchip_flash_0|avmm_data_controller|LessThan2~0_combout\)) # (!\u0|onchip_flash_0|avmm_data_controller|data_count\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|data_count\(2),
	datab => \u0|onchip_flash_0|avmm_data_controller|LessThan2~0_combout\,
	datad => VCC,
	cin => \u0|onchip_flash_0|avmm_data_controller|Add4~5\,
	combout => \u0|onchip_flash_0|avmm_data_controller|Add4~6_combout\,
	cout => \u0|onchip_flash_0|avmm_data_controller|Add4~7\);

\u0|onchip_flash_0|avmm_data_controller|Add4~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|Add4~8_combout\ = \u0|onchip_flash_0|avmm_data_controller|Add4~7\ $ (((!\u0|onchip_flash_0|avmm_data_controller|LessThan2~0_combout\) # (!\u0|onchip_flash_0|avmm_data_controller|data_count\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011110000111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|data_count\(2),
	datab => \u0|onchip_flash_0|avmm_data_controller|LessThan2~0_combout\,
	cin => \u0|onchip_flash_0|avmm_data_controller|Add4~7\,
	combout => \u0|onchip_flash_0|avmm_data_controller|Add4~8_combout\);

\u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_reg~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_reg~6_combout\ = (\u0|onchip_flash_0|avmm_data_controller|Add4~2_combout\) # ((\u0|onchip_flash_0|avmm_data_controller|Add4~4_combout\) # ((\u0|onchip_flash_0|avmm_data_controller|Add4~6_combout\) # 
-- (\u0|onchip_flash_0|avmm_data_controller|Add4~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|Add4~2_combout\,
	datab => \u0|onchip_flash_0|avmm_data_controller|Add4~4_combout\,
	datac => \u0|onchip_flash_0|avmm_data_controller|Add4~6_combout\,
	datad => \u0|onchip_flash_0|avmm_data_controller|Add4~8_combout\,
	combout => \u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_reg~6_combout\);

\u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_reg~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_reg~7_combout\ = (\u0|onchip_flash_0|avmm_data_controller|data_count~4_combout\ & (((!\u0|onchip_flash_0|avmm_data_controller|LessThan2~0_combout\ & 
-- !\u0|onchip_flash_0|avmm_data_controller|data_count\(2))) # (!\u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_reg~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|LessThan2~0_combout\,
	datab => \u0|onchip_flash_0|avmm_data_controller|data_count\(2),
	datac => \u0|onchip_flash_0|avmm_data_controller|data_count~4_combout\,
	datad => \u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_reg~6_combout\,
	combout => \u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_reg~7_combout\);

\u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_reg[3]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_reg[3]~13_combout\ = (\u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_reg~7_combout\) # (((\u0|onchip_flash_0|avmm_data_controller|avmm_readdata_ready~q\ & 
-- !\u0|onchip_flash_0|avmm_data_controller|avmm_read_valid_state~q\)) # (!\u0|onchip_flash_0|avmm_data_controller|reset_n_reg2~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|avmm_readdata_ready~q\,
	datab => \u0|onchip_flash_0|avmm_data_controller|avmm_read_valid_state~q\,
	datac => \u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_reg~7_combout\,
	datad => \u0|onchip_flash_0|avmm_data_controller|reset_n_reg2~q\,
	combout => \u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_reg[3]~13_combout\);

\u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_57~input_o\,
	d => \u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_reg~12_combout\,
	sclr => \u0|onchip_flash_0|avmm_data_controller|ALT_INV_reset_n_reg2~q\,
	ena => \u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_reg[3]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_reg\(3));

\u0|onchip_flash_0|avmm_data_controller|data_count~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|data_count~9_combout\ = (\u0|onchip_flash_0|avmm_data_controller|avmm_read_valid_state~q\ & (((\u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_reg\(3)) # 
-- (!\u0|onchip_flash_0|avmm_data_controller|Equal1~0_combout\)))) # (!\u0|onchip_flash_0|avmm_data_controller|avmm_read_valid_state~q\ & (\u0|onchip_flash_0|avmm_data_controller|avmm_readdata_ready~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|avmm_readdata_ready~q\,
	datab => \u0|onchip_flash_0|avmm_data_controller|avmm_read_valid_state~q\,
	datac => \u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_reg\(3),
	datad => \u0|onchip_flash_0|avmm_data_controller|Equal1~0_combout\,
	combout => \u0|onchip_flash_0|avmm_data_controller|data_count~9_combout\);

\u0|onchip_flash_0|avmm_data_controller|avmm_read_valid_state\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_57~input_o\,
	d => \u0|onchip_flash_0|avmm_data_controller|data_count~9_combout\,
	sclr => \u0|onchip_flash_0|avmm_data_controller|ALT_INV_reset_n_reg2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|avmm_read_valid_state~q\);

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

\u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_reg[0]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_reg[0]~14_combout\ = (\u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_reg[0]~9_combout\ & ((\u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_reg~7_combout\) # 
-- ((\u0|onchip_flash_0|avmm_data_controller|avmm_readdata_ready~q\ & !\u0|onchip_flash_0|avmm_data_controller|avmm_read_valid_state~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|avmm_readdata_ready~q\,
	datab => \u0|onchip_flash_0|avmm_data_controller|avmm_read_valid_state~q\,
	datac => \u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_reg[0]~9_combout\,
	datad => \u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_reg~7_combout\,
	combout => \u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_reg[0]~14_combout\);

\u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_reg[0]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_reg[0]~10_combout\ = (\u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_reg[0]~14_combout\) # ((\u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_reg\(0) & 
-- !\u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_reg[3]~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_reg[0]~14_combout\,
	datab => \u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_reg\(0),
	datad => \u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_reg[3]~13_combout\,
	combout => \u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_reg[0]~10_combout\);

\u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_57~input_o\,
	d => \u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_reg[0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_reg\(0));

\u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_reg~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_reg~11_combout\ = (\u0|onchip_flash_0|avmm_data_controller|avmm_read_valid_state~q\ & ((\u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_reg\(0) $ 
-- (!\u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_reg\(1))))) # (!\u0|onchip_flash_0|avmm_data_controller|avmm_read_valid_state~q\ & (!\u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_input_reg\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000100011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_input_reg\(0),
	datab => \u0|onchip_flash_0|avmm_data_controller|avmm_read_valid_state~q\,
	datac => \u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_reg\(0),
	datad => \u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_reg\(1),
	combout => \u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_reg~11_combout\);

\u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_57~input_o\,
	d => \u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_reg~11_combout\,
	sclr => \u0|onchip_flash_0|avmm_data_controller|ALT_INV_reset_n_reg2~q\,
	ena => \u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_reg[3]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_reg\(1));

\u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_reg~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_reg~4_combout\ = (\u0|onchip_flash_0|avmm_data_controller|avmm_read_valid_state~q\ & (\u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_reg\(2) $ 
-- (((\u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_reg\(0)) # (\u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_reg\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|avmm_read_valid_state~q\,
	datab => \u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_reg\(0),
	datac => \u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_reg\(1),
	datad => \u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_reg\(2),
	combout => \u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_reg~4_combout\);

\u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_reg~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_reg~5_combout\ = (!\u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_reg~4_combout\ & ((\u0|onchip_flash_0|avmm_data_controller|avmm_read_valid_state~q\) # 
-- (!\u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_input_reg\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_reg~4_combout\,
	datab => \u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_input_reg\(0),
	datad => \u0|onchip_flash_0|avmm_data_controller|avmm_read_valid_state~q\,
	combout => \u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_reg~5_combout\);

\u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_57~input_o\,
	d => \u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_reg~5_combout\,
	sclr => \u0|onchip_flash_0|avmm_data_controller|ALT_INV_reset_n_reg2~q\,
	ena => \u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_reg[3]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_reg\(2));

\u0|onchip_flash_0|avmm_data_controller|Equal1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|Equal1~0_combout\ = (!\u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_reg\(2) & (!\u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_reg\(0) & 
-- !\u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_reg\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_reg\(2),
	datac => \u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_reg\(0),
	datad => \u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_reg\(1),
	combout => \u0|onchip_flash_0|avmm_data_controller|Equal1~0_combout\);

\u0|onchip_flash_0|avmm_data_controller|Selector7~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|Selector7~0_combout\ = (\u0|onchip_flash_0|avmm_data_controller|avmm_read_state~q\ & (\u0|onchip_flash_0|avmm_data_controller|Equal1~0_combout\ & !\u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_reg\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|avmm_read_state~q\,
	datab => \u0|onchip_flash_0|avmm_data_controller|Equal1~0_combout\,
	datad => \u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_reg\(3),
	combout => \u0|onchip_flash_0|avmm_data_controller|Selector7~0_combout\);

\u0|onchip_flash_0|avmm_data_controller|read_state~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|read_state~19_combout\ = (\u0|onchip_flash_0|avmm_data_controller|reset_n_reg2~q\ & (\u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_FINAL~q\ & 
-- \u0|onchip_flash_0|avmm_data_controller|Selector7~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|reset_n_reg2~q\,
	datab => \u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_FINAL~q\,
	datac => \u0|onchip_flash_0|avmm_data_controller|Selector7~0_combout\,
	combout => \u0|onchip_flash_0|avmm_data_controller|read_state~19_combout\);

\u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_CLEAR\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_57~input_o\,
	d => \u0|onchip_flash_0|avmm_data_controller|read_state~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_CLEAR~q\);

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

\u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_IDLE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_57~input_o\,
	d => \u0|onchip_flash_0|avmm_data_controller|read_state~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_IDLE~q\);

\u0|onchip_flash_0|avmm_data_controller|read_state~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|read_state~21_combout\ = (\flash_read~q\ & (\u0|onchip_flash_0|avmm_data_controller|reset_n_reg2~q\ & !\u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_IDLE~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \flash_read~q\,
	datab => \u0|onchip_flash_0|avmm_data_controller|reset_n_reg2~q\,
	datad => \u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_IDLE~q\,
	combout => \u0|onchip_flash_0|avmm_data_controller|read_state~21_combout\);

\u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_ADDR\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_57~input_o\,
	d => \u0|onchip_flash_0|avmm_data_controller|read_state~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_ADDR~q\);

\u0|onchip_flash_0|avmm_data_controller|Selector12~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|Selector12~1_combout\ = (\u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_ADDR~q\) # ((\u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_FINAL~q\ & 
-- !\u0|onchip_flash_0|avmm_data_controller|Selector7~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_ADDR~q\,
	datab => \u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_FINAL~q\,
	datad => \u0|onchip_flash_0|avmm_data_controller|Selector7~0_combout\,
	combout => \u0|onchip_flash_0|avmm_data_controller|Selector12~1_combout\);

\u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_SETUP\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_57~input_o\,
	d => \u0|onchip_flash_0|avmm_data_controller|Selector12~1_combout\,
	sclr => \u0|onchip_flash_0|avmm_data_controller|ALT_INV_reset_n_reg2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_SETUP~q\);

\u0|onchip_flash_0|avmm_data_controller|Selector5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|Selector5~0_combout\ = (\u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_IDLE~q\ & (\u0|onchip_flash_0|avmm_data_controller|read_ctrl_count\(0) & 
-- (!\u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_SETUP~q\ & !\u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_DUMMY~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_IDLE~q\,
	datab => \u0|onchip_flash_0|avmm_data_controller|read_ctrl_count\(0),
	datac => \u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_SETUP~q\,
	datad => \u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_DUMMY~q\,
	combout => \u0|onchip_flash_0|avmm_data_controller|Selector5~0_combout\);

\u0|onchip_flash_0|avmm_data_controller|Selector5~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|Selector5~1_combout\ = (\u0|onchip_flash_0|avmm_data_controller|Selector5~0_combout\) # ((\u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_DUMMY~q\ & 
-- (\u0|onchip_flash_0|avmm_data_controller|read_ctrl_count\(1) $ (\u0|onchip_flash_0|avmm_data_controller|read_ctrl_count\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|Selector5~0_combout\,
	datab => \u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_DUMMY~q\,
	datac => \u0|onchip_flash_0|avmm_data_controller|read_ctrl_count\(1),
	datad => \u0|onchip_flash_0|avmm_data_controller|read_ctrl_count\(0),
	combout => \u0|onchip_flash_0|avmm_data_controller|Selector5~1_combout\);

\u0|onchip_flash_0|avmm_data_controller|read_ctrl_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_57~input_o\,
	d => \u0|onchip_flash_0|avmm_data_controller|Selector5~1_combout\,
	ena => \u0|onchip_flash_0|avmm_data_controller|reset_n_reg2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|read_ctrl_count\(0));

\u0|onchip_flash_0|avmm_data_controller|Selector4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|Selector4~0_combout\ = (\u0|onchip_flash_0|avmm_data_controller|read_ctrl_count\(1) & ((\u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_DUMMY~q\ & 
-- (\u0|onchip_flash_0|avmm_data_controller|read_ctrl_count\(0))) # (!\u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_DUMMY~q\ & ((\u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_IDLE~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|read_ctrl_count\(1),
	datab => \u0|onchip_flash_0|avmm_data_controller|read_ctrl_count\(0),
	datac => \u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_IDLE~q\,
	datad => \u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_DUMMY~q\,
	combout => \u0|onchip_flash_0|avmm_data_controller|Selector4~0_combout\);

\u0|onchip_flash_0|avmm_data_controller|Selector4~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|Selector4~1_combout\ = (\u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_SETUP~q\) # (\u0|onchip_flash_0|avmm_data_controller|Selector4~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_SETUP~q\,
	datab => \u0|onchip_flash_0|avmm_data_controller|Selector4~0_combout\,
	combout => \u0|onchip_flash_0|avmm_data_controller|Selector4~1_combout\);

\u0|onchip_flash_0|avmm_data_controller|read_ctrl_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_57~input_o\,
	d => \u0|onchip_flash_0|avmm_data_controller|Selector4~1_combout\,
	ena => \u0|onchip_flash_0|avmm_data_controller|reset_n_reg2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|read_ctrl_count\(1));

\u0|onchip_flash_0|avmm_data_controller|Selector13~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|Selector13~0_combout\ = (\u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_SETUP~q\) # ((\u0|onchip_flash_0|avmm_data_controller|read_ctrl_count\(1) & 
-- \u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_DUMMY~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_SETUP~q\,
	datab => \u0|onchip_flash_0|avmm_data_controller|read_ctrl_count\(1),
	datac => \u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_DUMMY~q\,
	combout => \u0|onchip_flash_0|avmm_data_controller|Selector13~0_combout\);

\u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_DUMMY\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_57~input_o\,
	d => \u0|onchip_flash_0|avmm_data_controller|Selector13~0_combout\,
	sclr => \u0|onchip_flash_0|avmm_data_controller|ALT_INV_reset_n_reg2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_DUMMY~q\);

\u0|onchip_flash_0|avmm_data_controller|read_state~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|read_state~20_combout\ = (\u0|onchip_flash_0|avmm_data_controller|reset_n_reg2~q\ & (\u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_DUMMY~q\ & 
-- !\u0|onchip_flash_0|avmm_data_controller|read_ctrl_count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|reset_n_reg2~q\,
	datab => \u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_DUMMY~q\,
	datad => \u0|onchip_flash_0|avmm_data_controller|read_ctrl_count\(1),
	combout => \u0|onchip_flash_0|avmm_data_controller|read_state~20_combout\);

\u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_READY\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_57~input_o\,
	d => \u0|onchip_flash_0|avmm_data_controller|read_state~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_READY~q\);

\u0|onchip_flash_0|avmm_data_controller|flash_arclk_arshft_en_w~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|flash_arclk_arshft_en_w~1_combout\ = (\u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_IDLE~q\ & (\u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_READY~q\)) # 
-- (!\u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_IDLE~q\ & ((\flash_read~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_READY~q\,
	datab => \flash_read~q\,
	datad => \u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_IDLE~q\,
	combout => \u0|onchip_flash_0|avmm_data_controller|flash_arclk_arshft_en_w~1_combout\);

\u0|onchip_flash_0|avmm_data_controller|enable_arclk_sync_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_57~input_o\,
	d => \u0|onchip_flash_0|avmm_data_controller|flash_arclk_arshft_en_w~1_combout\,
	sclr => \u0|onchip_flash_0|avmm_data_controller|ALT_INV_reset_n_reg2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|enable_arclk_sync_reg~q\);

\u0|onchip_flash_0|avmm_data_controller|enable_arclk_neg_reg~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|enable_arclk_neg_reg~0_combout\ = (\u0|onchip_flash_0|avmm_data_controller|reset_n_reg2~q\ & \u0|onchip_flash_0|avmm_data_controller|enable_arclk_sync_reg~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|reset_n_reg2~q\,
	datab => \u0|onchip_flash_0|avmm_data_controller|enable_arclk_sync_reg~q\,
	combout => \u0|onchip_flash_0|avmm_data_controller|enable_arclk_neg_reg~0_combout\);

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

\u0|onchip_flash_0|avmm_data_controller|enable_arclk_neg_pos_reg~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|enable_arclk_neg_pos_reg~0_combout\ = (\u0|onchip_flash_0|avmm_data_controller|enable_arclk_neg_reg~q\ & \u0|onchip_flash_0|avmm_data_controller|reset_n_reg2~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|enable_arclk_neg_reg~q\,
	datab => \u0|onchip_flash_0|avmm_data_controller|reset_n_reg2~q\,
	combout => \u0|onchip_flash_0|avmm_data_controller|enable_arclk_neg_pos_reg~0_combout\);

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

\u0|onchip_flash_0|avmm_data_controller|flash_arclk~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|flash_arclk~0_combout\ = (\clk_57~input_o\) # ((\u0|onchip_flash_0|avmm_data_controller|enable_arclk_neg_pos_reg~q\) # (!\u0|onchip_flash_0|avmm_data_controller|enable_arclk_neg_reg~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_57~input_o\,
	datab => \u0|onchip_flash_0|avmm_data_controller|enable_arclk_neg_pos_reg~q\,
	datad => \u0|onchip_flash_0|avmm_data_controller|enable_arclk_neg_reg~q\,
	combout => \u0|onchip_flash_0|avmm_data_controller|flash_arclk~0_combout\);

\u0|onchip_flash_0|avmm_data_controller|Selector6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|Selector6~0_combout\ = (\u0|onchip_flash_0|avmm_data_controller|enable_drclk_neg_pos_reg~q\ & ((\u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_FINAL~q\) # 
-- ((\u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_IDLE~q\)))) # (!\u0|onchip_flash_0|avmm_data_controller|enable_drclk_neg_pos_reg~q\ & (\u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_FINAL~q\ & 
-- (\u0|onchip_flash_0|avmm_data_controller|Selector7~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|enable_drclk_neg_pos_reg~q\,
	datab => \u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_FINAL~q\,
	datac => \u0|onchip_flash_0|avmm_data_controller|Selector7~0_combout\,
	datad => \u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_IDLE~q\,
	combout => \u0|onchip_flash_0|avmm_data_controller|Selector6~0_combout\);

\u0|onchip_flash_0|avmm_data_controller|enable_drclk_neg_pos_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_57~input_o\,
	d => \u0|onchip_flash_0|avmm_data_controller|Selector6~0_combout\,
	ena => \u0|onchip_flash_0|avmm_data_controller|reset_n_reg2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|enable_drclk_neg_pos_reg~q\);

\u0|onchip_flash_0|avmm_data_controller|Selector12~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|Selector12~0_combout\ = (\u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_FINAL~q\ & ((\u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_reg\(3)) # 
-- ((!\u0|onchip_flash_0|avmm_data_controller|Equal1~0_combout\) # (!\u0|onchip_flash_0|avmm_data_controller|avmm_read_state~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_FINAL~q\,
	datab => \u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_reg\(3),
	datac => \u0|onchip_flash_0|avmm_data_controller|avmm_read_state~q\,
	datad => \u0|onchip_flash_0|avmm_data_controller|Equal1~0_combout\,
	combout => \u0|onchip_flash_0|avmm_data_controller|Selector12~0_combout\);

\u0|onchip_flash_0|avmm_data_controller|Selector7~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|Selector7~1_combout\ = (\u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_READY~q\) # ((\u0|onchip_flash_0|avmm_data_controller|read_drclk_en~q\ & 
-- ((\u0|onchip_flash_0|avmm_data_controller|Selector12~0_combout\) # (\u0|onchip_flash_0|avmm_data_controller|Selector1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_READY~q\,
	datab => \u0|onchip_flash_0|avmm_data_controller|read_drclk_en~q\,
	datac => \u0|onchip_flash_0|avmm_data_controller|Selector12~0_combout\,
	datad => \u0|onchip_flash_0|avmm_data_controller|Selector1~0_combout\,
	combout => \u0|onchip_flash_0|avmm_data_controller|Selector7~1_combout\);

\u0|onchip_flash_0|avmm_data_controller|read_drclk_en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_57~input_o\,
	d => \u0|onchip_flash_0|avmm_data_controller|Selector7~1_combout\,
	ena => \u0|onchip_flash_0|avmm_data_controller|reset_n_reg2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|read_drclk_en~q\);

\u0|onchip_flash_0|avmm_data_controller|enable_drclk_neg_reg~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|enable_drclk_neg_reg~0_combout\ = (\u0|onchip_flash_0|avmm_data_controller|reset_n_reg2~q\ & \u0|onchip_flash_0|avmm_data_controller|read_drclk_en~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|reset_n_reg2~q\,
	datab => \u0|onchip_flash_0|avmm_data_controller|read_drclk_en~q\,
	combout => \u0|onchip_flash_0|avmm_data_controller|enable_drclk_neg_reg~0_combout\);

\u0|onchip_flash_0|avmm_data_controller|enable_drclk_neg_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk_57~input_o\,
	d => \u0|onchip_flash_0|avmm_data_controller|enable_drclk_neg_reg~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|enable_drclk_neg_reg~q\);

\u0|onchip_flash_0|avmm_data_controller|flash_drclk~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|flash_drclk~0_combout\ = (\clk_57~input_o\) # ((\u0|onchip_flash_0|avmm_data_controller|enable_drclk_neg_pos_reg~q\) # (!\u0|onchip_flash_0|avmm_data_controller|enable_drclk_neg_reg~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_57~input_o\,
	datab => \u0|onchip_flash_0|avmm_data_controller|enable_drclk_neg_pos_reg~q\,
	datad => \u0|onchip_flash_0|avmm_data_controller|enable_drclk_neg_reg~q\,
	combout => \u0|onchip_flash_0|avmm_data_controller|flash_drclk~0_combout\);

\u0|onchip_flash_0|avmm_data_controller|Selector8~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|Selector8~0_combout\ = (!\u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_FINAL~q\ & (\u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_IDLE~q\ & 
-- ((\u0|onchip_flash_0|avmm_data_controller|flash_drshft_reg~q\) # (\u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_READY~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_FINAL~q\,
	datab => \u0|onchip_flash_0|avmm_data_controller|flash_drshft_reg~q\,
	datac => \u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_READY~q\,
	datad => \u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_IDLE~q\,
	combout => \u0|onchip_flash_0|avmm_data_controller|Selector8~0_combout\);

\u0|onchip_flash_0|avmm_data_controller|flash_drshft_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_57~input_o\,
	d => \u0|onchip_flash_0|avmm_data_controller|Selector8~0_combout\,
	ena => \u0|onchip_flash_0|avmm_data_controller|reset_n_reg2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|flash_drshft_reg~q\);

\u0|onchip_flash_0|avmm_data_controller|flash_drshft_neg_reg~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|flash_drshft_neg_reg~0_combout\ = (\u0|onchip_flash_0|avmm_data_controller|reset_n_reg2~q\ & \u0|onchip_flash_0|avmm_data_controller|flash_drshft_reg~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u0|onchip_flash_0|avmm_data_controller|reset_n_reg2~q\,
	datad => \u0|onchip_flash_0|avmm_data_controller|flash_drshft_reg~q\,
	combout => \u0|onchip_flash_0|avmm_data_controller|flash_drshft_neg_reg~0_combout\);

\u0|onchip_flash_0|avmm_data_controller|flash_drshft_neg_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk_57~input_o\,
	d => \u0|onchip_flash_0|avmm_data_controller|flash_drshft_neg_reg~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|flash_drshft_neg_reg~q\);

\u0|onchip_flash_0|avmm_data_controller|flash_drshft_neg_reg~_wirecell\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|flash_drshft_neg_reg~_wirecell_combout\ = !\u0|onchip_flash_0|avmm_data_controller|flash_drshft_neg_reg~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|flash_drshft_neg_reg~q\,
	combout => \u0|onchip_flash_0|avmm_data_controller|flash_drshft_neg_reg~_wirecell_combout\);

\u0|onchip_flash_0|avmm_data_controller|flash_xe_ye\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|flash_xe_ye~combout\ = (\flash_read~q\) # (\u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \flash_read~q\,
	datab => \u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_IDLE~q\,
	combout => \u0|onchip_flash_0|avmm_data_controller|flash_xe_ye~combout\);

\u0|onchip_flash_0|avmm_data_controller|flash_se_neg_reg~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|flash_se_neg_reg~0_combout\ = (\u0|onchip_flash_0|avmm_data_controller|reset_n_reg2~q\ & \u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_SETUP~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|reset_n_reg2~q\,
	datab => \u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_SETUP~q\,
	combout => \u0|onchip_flash_0|avmm_data_controller|flash_se_neg_reg~0_combout\);

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

\u0|onchip_flash_0|avmm_data_controller|flash_page_addr~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|flash_page_addr~0_combout\ = (\u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_IDLE~q\ & (\u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin\(0))) # 
-- (!\u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_IDLE~q\ & ((!addr_latch(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin\(0),
	datab => \u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_IDLE~q\,
	datad => addr_latch(2),
	combout => \u0|onchip_flash_0|avmm_data_controller|flash_page_addr~0_combout\);

\u0|onchip_flash_0|avmm_data_controller|flash_page_addr[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_57~input_o\,
	d => \u0|onchip_flash_0|avmm_data_controller|flash_page_addr~0_combout\,
	sclr => \u0|onchip_flash_0|avmm_data_controller|ALT_INV_reset_n_reg2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|flash_page_addr\(0));

\u0|onchip_flash_0|avmm_data_controller|flash_addr_wire_neg_reg~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|flash_addr_wire_neg_reg~0_combout\ = (\u0|onchip_flash_0|avmm_data_controller|reset_n_reg2~q\ & \u0|onchip_flash_0|avmm_data_controller|flash_page_addr\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|reset_n_reg2~q\,
	datab => \u0|onchip_flash_0|avmm_data_controller|flash_page_addr\(0),
	combout => \u0|onchip_flash_0|avmm_data_controller|flash_addr_wire_neg_reg~0_combout\);

\u0|onchip_flash_0|avmm_data_controller|flash_addr_wire_neg_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk_57~input_o\,
	d => \u0|onchip_flash_0|avmm_data_controller|flash_addr_wire_neg_reg~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|flash_addr_wire_neg_reg\(0));

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

\reg_fbs[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_phi2_early~reg0_q\,
	d => \data[4]~input_o\,
	ena => \reg_fbs[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_fbs(4));

\reg_fbs[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_phi2_early~reg0_q\,
	d => \data[1]~input_o\,
	ena => \reg_fbs[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_fbs(1));

\u0|onchip_flash_0|avmm_data_controller|Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|Add0~2_combout\ = (\u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin\(2) & (!\u0|onchip_flash_0|avmm_data_controller|Add0~1\)) # (!\u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin\(2) & 
-- ((\u0|onchip_flash_0|avmm_data_controller|Add0~1\) # (GND)))
-- \u0|onchip_flash_0|avmm_data_controller|Add0~3\ = CARRY((!\u0|onchip_flash_0|avmm_data_controller|Add0~1\) # (!\u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin\(2),
	datad => VCC,
	cin => \u0|onchip_flash_0|avmm_data_controller|Add0~1\,
	combout => \u0|onchip_flash_0|avmm_data_controller|Add0~2_combout\,
	cout => \u0|onchip_flash_0|avmm_data_controller|Add0~3\);

\u0|onchip_flash_0|avmm_data_controller|Selector37~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|Selector37~0_combout\ = (\u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_SETUP~q\ & (\u0|onchip_flash_0|avmm_data_controller|Add0~2_combout\ & 
-- ((!\u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin[1]~2_combout\)))) # (!\u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_SETUP~q\ & (((!addr_latch(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001110001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|Add0~2_combout\,
	datab => \u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_SETUP~q\,
	datac => addr_latch(4),
	datad => \u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin[1]~2_combout\,
	combout => \u0|onchip_flash_0|avmm_data_controller|Selector37~0_combout\);

\u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin[1]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin[1]~3_combout\ = (\u0|onchip_flash_0|avmm_data_controller|reset_n_reg2~q\ & ((\u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_IDLE~q\ & 
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
	combout => \u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin[1]~3_combout\);

\u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_57~input_o\,
	d => \u0|onchip_flash_0|avmm_data_controller|Selector37~0_combout\,
	ena => \u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin\(2));

\u0|onchip_flash_0|avmm_data_controller|Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|Add0~4_combout\ = (\u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin\(3) & (\u0|onchip_flash_0|avmm_data_controller|Add0~3\ $ (GND))) # (!\u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin\(3) & 
-- (!\u0|onchip_flash_0|avmm_data_controller|Add0~3\ & VCC))
-- \u0|onchip_flash_0|avmm_data_controller|Add0~5\ = CARRY((\u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin\(3) & !\u0|onchip_flash_0|avmm_data_controller|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin\(3),
	datad => VCC,
	cin => \u0|onchip_flash_0|avmm_data_controller|Add0~3\,
	combout => \u0|onchip_flash_0|avmm_data_controller|Add0~4_combout\,
	cout => \u0|onchip_flash_0|avmm_data_controller|Add0~5\);

\u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin[1]~1_combout\ = (\u0|onchip_flash_0|avmm_data_controller|Add0~22_combout\ & ((\u0|onchip_flash_0|avmm_data_controller|Add0~16_combout\) # 
-- ((\u0|onchip_flash_0|avmm_data_controller|Add0~18_combout\) # (\u0|onchip_flash_0|avmm_data_controller|Add0~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|Add0~22_combout\,
	datab => \u0|onchip_flash_0|avmm_data_controller|Add0~16_combout\,
	datac => \u0|onchip_flash_0|avmm_data_controller|Add0~18_combout\,
	datad => \u0|onchip_flash_0|avmm_data_controller|Add0~20_combout\,
	combout => \u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin[1]~1_combout\);

\u0|onchip_flash_0|avmm_data_controller|Selector36~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|Selector36~0_combout\ = (\u0|onchip_flash_0|avmm_data_controller|Add0~28_combout\) # ((\u0|onchip_flash_0|avmm_data_controller|Add0~24_combout\ & (\u0|onchip_flash_0|avmm_data_controller|Add0~26_combout\ & 
-- \u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin[1]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|Add0~24_combout\,
	datab => \u0|onchip_flash_0|avmm_data_controller|Add0~26_combout\,
	datac => \u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin[1]~1_combout\,
	datad => \u0|onchip_flash_0|avmm_data_controller|Add0~28_combout\,
	combout => \u0|onchip_flash_0|avmm_data_controller|Selector36~0_combout\);

\u0|onchip_flash_0|avmm_data_controller|Selector36~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|Selector36~1_combout\ = (\u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_SETUP~q\ & (\u0|onchip_flash_0|avmm_data_controller|Add0~4_combout\ & 
-- ((!\u0|onchip_flash_0|avmm_data_controller|Selector36~0_combout\)))) # (!\u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_SETUP~q\ & (((!addr_latch(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001110001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|Add0~4_combout\,
	datab => \u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_SETUP~q\,
	datac => addr_latch(5),
	datad => \u0|onchip_flash_0|avmm_data_controller|Selector36~0_combout\,
	combout => \u0|onchip_flash_0|avmm_data_controller|Selector36~1_combout\);

\u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_57~input_o\,
	d => \u0|onchip_flash_0|avmm_data_controller|Selector36~1_combout\,
	ena => \u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin\(3));

\u0|onchip_flash_0|avmm_data_controller|Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|Add0~6_combout\ = (\u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin\(4) & (!\u0|onchip_flash_0|avmm_data_controller|Add0~5\)) # (!\u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin\(4) & 
-- ((\u0|onchip_flash_0|avmm_data_controller|Add0~5\) # (GND)))
-- \u0|onchip_flash_0|avmm_data_controller|Add0~7\ = CARRY((!\u0|onchip_flash_0|avmm_data_controller|Add0~5\) # (!\u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin\(4),
	datad => VCC,
	cin => \u0|onchip_flash_0|avmm_data_controller|Add0~5\,
	combout => \u0|onchip_flash_0|avmm_data_controller|Add0~6_combout\,
	cout => \u0|onchip_flash_0|avmm_data_controller|Add0~7\);

\u0|onchip_flash_0|avmm_data_controller|Selector35~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|Selector35~0_combout\ = (\u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_SETUP~q\ & (\u0|onchip_flash_0|avmm_data_controller|Add0~6_combout\ & 
-- ((!\u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin[1]~2_combout\)))) # (!\u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_SETUP~q\ & (((!addr_latch(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001110001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|Add0~6_combout\,
	datab => \u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_SETUP~q\,
	datac => addr_latch(6),
	datad => \u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin[1]~2_combout\,
	combout => \u0|onchip_flash_0|avmm_data_controller|Selector35~0_combout\);

\u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_57~input_o\,
	d => \u0|onchip_flash_0|avmm_data_controller|Selector35~0_combout\,
	ena => \u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin\(4));

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

\u0|onchip_flash_0|avmm_data_controller|Selector34~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|Selector34~0_combout\ = (\u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_SETUP~q\ & (\u0|onchip_flash_0|avmm_data_controller|Add0~8_combout\ & 
-- ((!\u0|onchip_flash_0|avmm_data_controller|Selector36~0_combout\)))) # (!\u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_SETUP~q\ & (((!addr_latch(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001110001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|Add0~8_combout\,
	datab => \u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_SETUP~q\,
	datac => addr_latch(7),
	datad => \u0|onchip_flash_0|avmm_data_controller|Selector36~0_combout\,
	combout => \u0|onchip_flash_0|avmm_data_controller|Selector34~0_combout\);

\u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_57~input_o\,
	d => \u0|onchip_flash_0|avmm_data_controller|Selector34~0_combout\,
	ena => \u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin\(5));

\u0|onchip_flash_0|avmm_data_controller|Add0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|Add0~10_combout\ = (\u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin\(6) & (!\u0|onchip_flash_0|avmm_data_controller|Add0~9\)) # (!\u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin\(6) & 
-- ((\u0|onchip_flash_0|avmm_data_controller|Add0~9\) # (GND)))
-- \u0|onchip_flash_0|avmm_data_controller|Add0~11\ = CARRY((!\u0|onchip_flash_0|avmm_data_controller|Add0~9\) # (!\u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin\(6),
	datad => VCC,
	cin => \u0|onchip_flash_0|avmm_data_controller|Add0~9\,
	combout => \u0|onchip_flash_0|avmm_data_controller|Add0~10_combout\,
	cout => \u0|onchip_flash_0|avmm_data_controller|Add0~11\);

\u0|onchip_flash_0|avmm_data_controller|Selector33~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|Selector33~0_combout\ = (\u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_SETUP~q\ & (\u0|onchip_flash_0|avmm_data_controller|Add0~10_combout\ & 
-- ((!\u0|onchip_flash_0|avmm_data_controller|Selector36~0_combout\)))) # (!\u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_SETUP~q\ & (((!addr_latch(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001110001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|Add0~10_combout\,
	datab => \u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_SETUP~q\,
	datac => addr_latch(8),
	datad => \u0|onchip_flash_0|avmm_data_controller|Selector36~0_combout\,
	combout => \u0|onchip_flash_0|avmm_data_controller|Selector33~0_combout\);

\u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_57~input_o\,
	d => \u0|onchip_flash_0|avmm_data_controller|Selector33~0_combout\,
	ena => \u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin\(6));

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

\u0|onchip_flash_0|avmm_data_controller|Selector32~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|Selector32~0_combout\ = (\u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_SETUP~q\ & (\u0|onchip_flash_0|avmm_data_controller|Add0~12_combout\ & 
-- ((!\u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin[1]~2_combout\)))) # (!\u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_SETUP~q\ & (((!addr_latch(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001110001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|Add0~12_combout\,
	datab => \u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_SETUP~q\,
	datac => addr_latch(9),
	datad => \u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin[1]~2_combout\,
	combout => \u0|onchip_flash_0|avmm_data_controller|Selector32~0_combout\);

\u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_57~input_o\,
	d => \u0|onchip_flash_0|avmm_data_controller|Selector32~0_combout\,
	ena => \u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin\(7));

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

\u0|onchip_flash_0|avmm_data_controller|Selector31~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|Selector31~0_combout\ = (\u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_SETUP~q\ & (\u0|onchip_flash_0|avmm_data_controller|Add0~14_combout\ & 
-- ((!\u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin[1]~2_combout\)))) # (!\u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_SETUP~q\ & (((!addr_latch(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001110001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|Add0~14_combout\,
	datab => \u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_SETUP~q\,
	datac => addr_latch(10),
	datad => \u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin[1]~2_combout\,
	combout => \u0|onchip_flash_0|avmm_data_controller|Selector31~0_combout\);

\u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_57~input_o\,
	d => \u0|onchip_flash_0|avmm_data_controller|Selector31~0_combout\,
	ena => \u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin\(8));

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

\u0|onchip_flash_0|avmm_data_controller|Selector30~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|Selector30~0_combout\ = (\u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_SETUP~q\ & (((\u0|onchip_flash_0|avmm_data_controller|Add0~16_combout\ & 
-- !\u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin[1]~2_combout\)))) # (!\u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_SETUP~q\ & (reg_fbs(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => reg_fbs(0),
	datab => \u0|onchip_flash_0|avmm_data_controller|Add0~16_combout\,
	datac => \u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_SETUP~q\,
	datad => \u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin[1]~2_combout\,
	combout => \u0|onchip_flash_0|avmm_data_controller|Selector30~0_combout\);

\u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_57~input_o\,
	d => \u0|onchip_flash_0|avmm_data_controller|Selector30~0_combout\,
	ena => \u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin\(9));

\u0|onchip_flash_0|avmm_data_controller|Add0~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|Add0~18_combout\ = (\u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin\(10) & (!\u0|onchip_flash_0|avmm_data_controller|Add0~17\)) # (!\u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin\(10) & 
-- ((\u0|onchip_flash_0|avmm_data_controller|Add0~17\) # (GND)))
-- \u0|onchip_flash_0|avmm_data_controller|Add0~19\ = CARRY((!\u0|onchip_flash_0|avmm_data_controller|Add0~17\) # (!\u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin\(10),
	datad => VCC,
	cin => \u0|onchip_flash_0|avmm_data_controller|Add0~17\,
	combout => \u0|onchip_flash_0|avmm_data_controller|Add0~18_combout\,
	cout => \u0|onchip_flash_0|avmm_data_controller|Add0~19\);

\u0|onchip_flash_0|avmm_data_controller|Selector29~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|Selector29~0_combout\ = (\u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_SETUP~q\ & (((\u0|onchip_flash_0|avmm_data_controller|Add0~18_combout\ & 
-- !\u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin[1]~2_combout\)))) # (!\u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_SETUP~q\ & (reg_fbs(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => reg_fbs(1),
	datab => \u0|onchip_flash_0|avmm_data_controller|Add0~18_combout\,
	datac => \u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_SETUP~q\,
	datad => \u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin[1]~2_combout\,
	combout => \u0|onchip_flash_0|avmm_data_controller|Selector29~0_combout\);

\u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_57~input_o\,
	d => \u0|onchip_flash_0|avmm_data_controller|Selector29~0_combout\,
	ena => \u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin\(10));

\u0|onchip_flash_0|avmm_data_controller|Add0~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|Add0~20_combout\ = (\u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin\(11) & (\u0|onchip_flash_0|avmm_data_controller|Add0~19\ $ (GND))) # 
-- (!\u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin\(11) & (!\u0|onchip_flash_0|avmm_data_controller|Add0~19\ & VCC))
-- \u0|onchip_flash_0|avmm_data_controller|Add0~21\ = CARRY((\u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin\(11) & !\u0|onchip_flash_0|avmm_data_controller|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin\(11),
	datad => VCC,
	cin => \u0|onchip_flash_0|avmm_data_controller|Add0~19\,
	combout => \u0|onchip_flash_0|avmm_data_controller|Add0~20_combout\,
	cout => \u0|onchip_flash_0|avmm_data_controller|Add0~21\);

\reg_fbs[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_phi2_early~reg0_q\,
	d => \data[2]~input_o\,
	ena => \reg_fbs[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_fbs(2));

\u0|onchip_flash_0|avmm_data_controller|Selector28~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|Selector28~0_combout\ = (\u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_SETUP~q\ & (\u0|onchip_flash_0|avmm_data_controller|Add0~20_combout\ & 
-- ((!\u0|onchip_flash_0|avmm_data_controller|Selector36~0_combout\)))) # (!\u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_SETUP~q\ & (((reg_fbs(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|Add0~20_combout\,
	datab => \u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_SETUP~q\,
	datac => reg_fbs(2),
	datad => \u0|onchip_flash_0|avmm_data_controller|Selector36~0_combout\,
	combout => \u0|onchip_flash_0|avmm_data_controller|Selector28~0_combout\);

\u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_57~input_o\,
	d => \u0|onchip_flash_0|avmm_data_controller|Selector28~0_combout\,
	ena => \u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin\(11));

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

\reg_fbs[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_phi2_early~reg0_q\,
	d => \data[3]~input_o\,
	ena => \reg_fbs[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_fbs(3));

\u0|onchip_flash_0|avmm_data_controller|Selector27~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|Selector27~0_combout\ = (\u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_SETUP~q\ & (\u0|onchip_flash_0|avmm_data_controller|Add0~22_combout\ & 
-- ((!\u0|onchip_flash_0|avmm_data_controller|Selector36~0_combout\)))) # (!\u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_SETUP~q\ & (((reg_fbs(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|Add0~22_combout\,
	datab => \u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_SETUP~q\,
	datac => reg_fbs(3),
	datad => \u0|onchip_flash_0|avmm_data_controller|Selector36~0_combout\,
	combout => \u0|onchip_flash_0|avmm_data_controller|Selector27~0_combout\);

\u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_57~input_o\,
	d => \u0|onchip_flash_0|avmm_data_controller|Selector27~0_combout\,
	ena => \u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin\(12));

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

\u0|onchip_flash_0|avmm_data_controller|Selector26~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|Selector26~0_combout\ = (\u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_SETUP~q\ & (((\u0|onchip_flash_0|avmm_data_controller|Add0~24_combout\ & 
-- !\u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin[1]~2_combout\)))) # (!\u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_SETUP~q\ & (reg_fbs(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => reg_fbs(4),
	datab => \u0|onchip_flash_0|avmm_data_controller|Add0~24_combout\,
	datac => \u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_SETUP~q\,
	datad => \u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin[1]~2_combout\,
	combout => \u0|onchip_flash_0|avmm_data_controller|Selector26~0_combout\);

\u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_57~input_o\,
	d => \u0|onchip_flash_0|avmm_data_controller|Selector26~0_combout\,
	ena => \u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin\(13));

\u0|onchip_flash_0|avmm_data_controller|Add0~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|Add0~26_combout\ = (\u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin\(14) & (!\u0|onchip_flash_0|avmm_data_controller|Add0~25\)) # (!\u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin\(14) & 
-- ((\u0|onchip_flash_0|avmm_data_controller|Add0~25\) # (GND)))
-- \u0|onchip_flash_0|avmm_data_controller|Add0~27\ = CARRY((!\u0|onchip_flash_0|avmm_data_controller|Add0~25\) # (!\u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin\(14),
	datad => VCC,
	cin => \u0|onchip_flash_0|avmm_data_controller|Add0~25\,
	combout => \u0|onchip_flash_0|avmm_data_controller|Add0~26_combout\,
	cout => \u0|onchip_flash_0|avmm_data_controller|Add0~27\);

\reg_fbs[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_phi2_early~reg0_q\,
	d => \data[5]~input_o\,
	ena => \reg_fbs[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_fbs(5));

\u0|onchip_flash_0|avmm_data_controller|Selector25~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|Selector25~0_combout\ = (\u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_SETUP~q\ & (((!\u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin[1]~1_combout\) # 
-- (!\u0|onchip_flash_0|avmm_data_controller|Add0~24_combout\)))) # (!\u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_SETUP~q\ & (reg_fbs(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => reg_fbs(5),
	datab => \u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_SETUP~q\,
	datac => \u0|onchip_flash_0|avmm_data_controller|Add0~24_combout\,
	datad => \u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin[1]~1_combout\,
	combout => \u0|onchip_flash_0|avmm_data_controller|Selector25~0_combout\);

\u0|onchip_flash_0|avmm_data_controller|Selector25~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|Selector25~1_combout\ = (\u0|onchip_flash_0|avmm_data_controller|Selector25~0_combout\ & (((\u0|onchip_flash_0|avmm_data_controller|Add0~26_combout\ & !\u0|onchip_flash_0|avmm_data_controller|Add0~28_combout\)) # 
-- (!\u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_SETUP~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|Add0~26_combout\,
	datab => \u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_SETUP~q\,
	datac => \u0|onchip_flash_0|avmm_data_controller|Add0~28_combout\,
	datad => \u0|onchip_flash_0|avmm_data_controller|Selector25~0_combout\,
	combout => \u0|onchip_flash_0|avmm_data_controller|Selector25~1_combout\);

\u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_57~input_o\,
	d => \u0|onchip_flash_0|avmm_data_controller|Selector25~1_combout\,
	ena => \u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin\(14));

\u0|onchip_flash_0|avmm_data_controller|Add0~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|Add0~28_combout\ = !\u0|onchip_flash_0|avmm_data_controller|Add0~27\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \u0|onchip_flash_0|avmm_data_controller|Add0~27\,
	combout => \u0|onchip_flash_0|avmm_data_controller|Add0~28_combout\);

\u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin[1]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin[1]~2_combout\ = (\u0|onchip_flash_0|avmm_data_controller|Add0~28_combout\) # ((\u0|onchip_flash_0|avmm_data_controller|Add0~24_combout\ & 
-- (\u0|onchip_flash_0|avmm_data_controller|Add0~26_combout\ & \u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin[1]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|Add0~28_combout\,
	datab => \u0|onchip_flash_0|avmm_data_controller|Add0~24_combout\,
	datac => \u0|onchip_flash_0|avmm_data_controller|Add0~26_combout\,
	datad => \u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin[1]~1_combout\,
	combout => \u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin[1]~2_combout\);

\u0|onchip_flash_0|avmm_data_controller|Selector38~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|Selector38~0_combout\ = (\u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_SETUP~q\ & (\u0|onchip_flash_0|avmm_data_controller|Add0~0_combout\ & 
-- ((!\u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin[1]~2_combout\)))) # (!\u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_SETUP~q\ & (((!addr_latch(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001110001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|Add0~0_combout\,
	datab => \u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_SETUP~q\,
	datac => addr_latch(3),
	datad => \u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin[1]~2_combout\,
	combout => \u0|onchip_flash_0|avmm_data_controller|Selector38~0_combout\);

\u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_57~input_o\,
	d => \u0|onchip_flash_0|avmm_data_controller|Selector38~0_combout\,
	ena => \u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin\(1));

\u0|onchip_flash_0|avmm_data_controller|flash_page_addr~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|flash_page_addr~1_combout\ = (\u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_IDLE~q\ & (\u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin\(1))) # 
-- (!\u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_IDLE~q\ & ((!addr_latch(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin\(1),
	datab => \u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_IDLE~q\,
	datad => addr_latch(3),
	combout => \u0|onchip_flash_0|avmm_data_controller|flash_page_addr~1_combout\);

\u0|onchip_flash_0|avmm_data_controller|flash_page_addr[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_57~input_o\,
	d => \u0|onchip_flash_0|avmm_data_controller|flash_page_addr~1_combout\,
	sclr => \u0|onchip_flash_0|avmm_data_controller|ALT_INV_reset_n_reg2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|flash_page_addr\(1));

\u0|onchip_flash_0|avmm_data_controller|flash_addr_wire_neg_reg~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|flash_addr_wire_neg_reg~1_combout\ = (\u0|onchip_flash_0|avmm_data_controller|reset_n_reg2~q\ & \u0|onchip_flash_0|avmm_data_controller|flash_page_addr\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|reset_n_reg2~q\,
	datab => \u0|onchip_flash_0|avmm_data_controller|flash_page_addr\(1),
	combout => \u0|onchip_flash_0|avmm_data_controller|flash_addr_wire_neg_reg~1_combout\);

\u0|onchip_flash_0|avmm_data_controller|flash_addr_wire_neg_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk_57~input_o\,
	d => \u0|onchip_flash_0|avmm_data_controller|flash_addr_wire_neg_reg~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|flash_addr_wire_neg_reg\(1));

\u0|onchip_flash_0|avmm_data_controller|flash_page_addr~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|flash_page_addr~2_combout\ = (\u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_IDLE~q\ & (\u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin\(2))) # 
-- (!\u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_IDLE~q\ & ((!addr_latch(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin\(2),
	datab => \u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_IDLE~q\,
	datad => addr_latch(4),
	combout => \u0|onchip_flash_0|avmm_data_controller|flash_page_addr~2_combout\);

\u0|onchip_flash_0|avmm_data_controller|flash_page_addr[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_57~input_o\,
	d => \u0|onchip_flash_0|avmm_data_controller|flash_page_addr~2_combout\,
	sclr => \u0|onchip_flash_0|avmm_data_controller|ALT_INV_reset_n_reg2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|flash_page_addr\(2));

\u0|onchip_flash_0|avmm_data_controller|flash_addr_wire_neg_reg~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|flash_addr_wire_neg_reg~2_combout\ = (\u0|onchip_flash_0|avmm_data_controller|reset_n_reg2~q\ & \u0|onchip_flash_0|avmm_data_controller|flash_page_addr\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|reset_n_reg2~q\,
	datab => \u0|onchip_flash_0|avmm_data_controller|flash_page_addr\(2),
	combout => \u0|onchip_flash_0|avmm_data_controller|flash_addr_wire_neg_reg~2_combout\);

\u0|onchip_flash_0|avmm_data_controller|flash_addr_wire_neg_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk_57~input_o\,
	d => \u0|onchip_flash_0|avmm_data_controller|flash_addr_wire_neg_reg~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|flash_addr_wire_neg_reg\(2));

\u0|onchip_flash_0|avmm_data_controller|flash_page_addr~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|flash_page_addr~3_combout\ = (\u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_IDLE~q\ & (\u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin\(3))) # 
-- (!\u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_IDLE~q\ & ((!addr_latch(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin\(3),
	datab => \u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_IDLE~q\,
	datad => addr_latch(5),
	combout => \u0|onchip_flash_0|avmm_data_controller|flash_page_addr~3_combout\);

\u0|onchip_flash_0|avmm_data_controller|flash_page_addr[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_57~input_o\,
	d => \u0|onchip_flash_0|avmm_data_controller|flash_page_addr~3_combout\,
	sclr => \u0|onchip_flash_0|avmm_data_controller|ALT_INV_reset_n_reg2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|flash_page_addr\(3));

\u0|onchip_flash_0|avmm_data_controller|flash_addr_wire_neg_reg~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|flash_addr_wire_neg_reg~3_combout\ = (\u0|onchip_flash_0|avmm_data_controller|reset_n_reg2~q\ & \u0|onchip_flash_0|avmm_data_controller|flash_page_addr\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|reset_n_reg2~q\,
	datab => \u0|onchip_flash_0|avmm_data_controller|flash_page_addr\(3),
	combout => \u0|onchip_flash_0|avmm_data_controller|flash_addr_wire_neg_reg~3_combout\);

\u0|onchip_flash_0|avmm_data_controller|flash_addr_wire_neg_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk_57~input_o\,
	d => \u0|onchip_flash_0|avmm_data_controller|flash_addr_wire_neg_reg~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|flash_addr_wire_neg_reg\(3));

\u0|onchip_flash_0|avmm_data_controller|flash_page_addr~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|flash_page_addr~4_combout\ = (\u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_IDLE~q\ & (\u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin\(4))) # 
-- (!\u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_IDLE~q\ & ((!addr_latch(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin\(4),
	datab => \u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_IDLE~q\,
	datad => addr_latch(6),
	combout => \u0|onchip_flash_0|avmm_data_controller|flash_page_addr~4_combout\);

\u0|onchip_flash_0|avmm_data_controller|flash_page_addr[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_57~input_o\,
	d => \u0|onchip_flash_0|avmm_data_controller|flash_page_addr~4_combout\,
	sclr => \u0|onchip_flash_0|avmm_data_controller|ALT_INV_reset_n_reg2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|flash_page_addr\(4));

\u0|onchip_flash_0|avmm_data_controller|flash_addr_wire_neg_reg~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|flash_addr_wire_neg_reg~4_combout\ = (\u0|onchip_flash_0|avmm_data_controller|reset_n_reg2~q\ & \u0|onchip_flash_0|avmm_data_controller|flash_page_addr\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|reset_n_reg2~q\,
	datab => \u0|onchip_flash_0|avmm_data_controller|flash_page_addr\(4),
	combout => \u0|onchip_flash_0|avmm_data_controller|flash_addr_wire_neg_reg~4_combout\);

\u0|onchip_flash_0|avmm_data_controller|flash_addr_wire_neg_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk_57~input_o\,
	d => \u0|onchip_flash_0|avmm_data_controller|flash_addr_wire_neg_reg~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|flash_addr_wire_neg_reg\(4));

\u0|onchip_flash_0|avmm_data_controller|flash_page_addr~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|flash_page_addr~5_combout\ = (\u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_IDLE~q\ & (\u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin\(5))) # 
-- (!\u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_IDLE~q\ & ((!addr_latch(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin\(5),
	datab => \u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_IDLE~q\,
	datad => addr_latch(7),
	combout => \u0|onchip_flash_0|avmm_data_controller|flash_page_addr~5_combout\);

\u0|onchip_flash_0|avmm_data_controller|flash_page_addr[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_57~input_o\,
	d => \u0|onchip_flash_0|avmm_data_controller|flash_page_addr~5_combout\,
	sclr => \u0|onchip_flash_0|avmm_data_controller|ALT_INV_reset_n_reg2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|flash_page_addr\(5));

\u0|onchip_flash_0|avmm_data_controller|flash_addr_wire_neg_reg~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|flash_addr_wire_neg_reg~5_combout\ = (\u0|onchip_flash_0|avmm_data_controller|reset_n_reg2~q\ & \u0|onchip_flash_0|avmm_data_controller|flash_page_addr\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|reset_n_reg2~q\,
	datab => \u0|onchip_flash_0|avmm_data_controller|flash_page_addr\(5),
	combout => \u0|onchip_flash_0|avmm_data_controller|flash_addr_wire_neg_reg~5_combout\);

\u0|onchip_flash_0|avmm_data_controller|flash_addr_wire_neg_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk_57~input_o\,
	d => \u0|onchip_flash_0|avmm_data_controller|flash_addr_wire_neg_reg~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|flash_addr_wire_neg_reg\(5));

\u0|onchip_flash_0|avmm_data_controller|flash_page_addr~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|flash_page_addr~6_combout\ = (\u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_IDLE~q\ & (\u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin\(6))) # 
-- (!\u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_IDLE~q\ & ((!addr_latch(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin\(6),
	datab => \u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_IDLE~q\,
	datad => addr_latch(8),
	combout => \u0|onchip_flash_0|avmm_data_controller|flash_page_addr~6_combout\);

\u0|onchip_flash_0|avmm_data_controller|flash_page_addr[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_57~input_o\,
	d => \u0|onchip_flash_0|avmm_data_controller|flash_page_addr~6_combout\,
	sclr => \u0|onchip_flash_0|avmm_data_controller|ALT_INV_reset_n_reg2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|flash_page_addr\(6));

\u0|onchip_flash_0|avmm_data_controller|flash_addr_wire_neg_reg~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|flash_addr_wire_neg_reg~6_combout\ = (\u0|onchip_flash_0|avmm_data_controller|reset_n_reg2~q\ & \u0|onchip_flash_0|avmm_data_controller|flash_page_addr\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|reset_n_reg2~q\,
	datab => \u0|onchip_flash_0|avmm_data_controller|flash_page_addr\(6),
	combout => \u0|onchip_flash_0|avmm_data_controller|flash_addr_wire_neg_reg~6_combout\);

\u0|onchip_flash_0|avmm_data_controller|flash_addr_wire_neg_reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk_57~input_o\,
	d => \u0|onchip_flash_0|avmm_data_controller|flash_addr_wire_neg_reg~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|flash_addr_wire_neg_reg\(6));

\u0|onchip_flash_0|avmm_data_controller|flash_page_addr~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|flash_page_addr~7_combout\ = (\u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_IDLE~q\ & (\u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin\(7))) # 
-- (!\u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_IDLE~q\ & ((!addr_latch(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin\(7),
	datab => \u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_IDLE~q\,
	datad => addr_latch(9),
	combout => \u0|onchip_flash_0|avmm_data_controller|flash_page_addr~7_combout\);

\u0|onchip_flash_0|avmm_data_controller|flash_page_addr[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_57~input_o\,
	d => \u0|onchip_flash_0|avmm_data_controller|flash_page_addr~7_combout\,
	sclr => \u0|onchip_flash_0|avmm_data_controller|ALT_INV_reset_n_reg2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|flash_page_addr\(7));

\u0|onchip_flash_0|avmm_data_controller|flash_addr_wire_neg_reg~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|flash_addr_wire_neg_reg~7_combout\ = (\u0|onchip_flash_0|avmm_data_controller|reset_n_reg2~q\ & \u0|onchip_flash_0|avmm_data_controller|flash_page_addr\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|reset_n_reg2~q\,
	datab => \u0|onchip_flash_0|avmm_data_controller|flash_page_addr\(7),
	combout => \u0|onchip_flash_0|avmm_data_controller|flash_addr_wire_neg_reg~7_combout\);

\u0|onchip_flash_0|avmm_data_controller|flash_addr_wire_neg_reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk_57~input_o\,
	d => \u0|onchip_flash_0|avmm_data_controller|flash_addr_wire_neg_reg~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|flash_addr_wire_neg_reg\(7));

\u0|onchip_flash_0|avmm_data_controller|flash_page_addr~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|flash_page_addr~8_combout\ = (\u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_IDLE~q\ & (\u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin\(8))) # 
-- (!\u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_IDLE~q\ & ((!addr_latch(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin\(8),
	datab => \u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_IDLE~q\,
	datad => addr_latch(10),
	combout => \u0|onchip_flash_0|avmm_data_controller|flash_page_addr~8_combout\);

\u0|onchip_flash_0|avmm_data_controller|flash_page_addr[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_57~input_o\,
	d => \u0|onchip_flash_0|avmm_data_controller|flash_page_addr~8_combout\,
	sclr => \u0|onchip_flash_0|avmm_data_controller|ALT_INV_reset_n_reg2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|flash_page_addr\(8));

\u0|onchip_flash_0|avmm_data_controller|flash_addr_wire_neg_reg~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|flash_addr_wire_neg_reg~8_combout\ = (\u0|onchip_flash_0|avmm_data_controller|reset_n_reg2~q\ & \u0|onchip_flash_0|avmm_data_controller|flash_page_addr\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|reset_n_reg2~q\,
	datab => \u0|onchip_flash_0|avmm_data_controller|flash_page_addr\(8),
	combout => \u0|onchip_flash_0|avmm_data_controller|flash_addr_wire_neg_reg~8_combout\);

\u0|onchip_flash_0|avmm_data_controller|flash_addr_wire_neg_reg[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk_57~input_o\,
	d => \u0|onchip_flash_0|avmm_data_controller|flash_addr_wire_neg_reg~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|flash_addr_wire_neg_reg\(8));

\u0|onchip_flash_0|avmm_data_controller|flash_read_addr[9]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|flash_read_addr[9]~0_combout\ = (\u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_IDLE~q\ & (\u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin\(9))) # 
-- (!\u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_IDLE~q\ & ((reg_fbs(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin\(9),
	datab => reg_fbs(0),
	datad => \u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_IDLE~q\,
	combout => \u0|onchip_flash_0|avmm_data_controller|flash_read_addr[9]~0_combout\);

\u0|onchip_flash_0|avmm_data_controller|flash_read_addr[14]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|flash_read_addr[14]~1_combout\ = (\u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_IDLE~q\ & (\u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin\(14))) # 
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
	combout => \u0|onchip_flash_0|avmm_data_controller|flash_read_addr[14]~1_combout\);

\u0|onchip_flash_0|avmm_data_controller|flash_read_addr[11]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|flash_read_addr[11]~2_combout\ = (\u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_IDLE~q\ & (\u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin\(11))) # 
-- (!\u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_IDLE~q\ & ((reg_fbs(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin\(11),
	datab => reg_fbs(2),
	datad => \u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_IDLE~q\,
	combout => \u0|onchip_flash_0|avmm_data_controller|flash_read_addr[11]~2_combout\);

\u0|onchip_flash_0|avmm_data_controller|flash_read_addr[10]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|flash_read_addr[10]~3_combout\ = (\u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_IDLE~q\ & (\u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin\(10))) # 
-- (!\u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_IDLE~q\ & ((reg_fbs(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin\(10),
	datab => reg_fbs(1),
	datad => \u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_IDLE~q\,
	combout => \u0|onchip_flash_0|avmm_data_controller|flash_read_addr[10]~3_combout\);

\u0|onchip_flash_0|avmm_data_controller|address_convertor|LessThan0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|address_convertor|LessThan0~0_combout\ = (\u0|onchip_flash_0|avmm_data_controller|flash_read_addr[14]~1_combout\ & ((\u0|onchip_flash_0|avmm_data_controller|flash_read_addr[9]~0_combout\) # 
-- ((\u0|onchip_flash_0|avmm_data_controller|flash_read_addr[11]~2_combout\) # (\u0|onchip_flash_0|avmm_data_controller|flash_read_addr[10]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|flash_read_addr[14]~1_combout\,
	datab => \u0|onchip_flash_0|avmm_data_controller|flash_read_addr[9]~0_combout\,
	datac => \u0|onchip_flash_0|avmm_data_controller|flash_read_addr[11]~2_combout\,
	datad => \u0|onchip_flash_0|avmm_data_controller|flash_read_addr[10]~3_combout\,
	combout => \u0|onchip_flash_0|avmm_data_controller|address_convertor|LessThan0~0_combout\);

\u0|onchip_flash_0|avmm_data_controller|flash_read_addr[13]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|flash_read_addr[13]~4_combout\ = (\u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_IDLE~q\ & (\u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin\(13))) # 
-- (!\u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_IDLE~q\ & ((reg_fbs(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin\(13),
	datab => reg_fbs(4),
	datad => \u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_IDLE~q\,
	combout => \u0|onchip_flash_0|avmm_data_controller|flash_read_addr[13]~4_combout\);

\u0|onchip_flash_0|avmm_data_controller|flash_read_addr[12]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|flash_read_addr[12]~5_combout\ = (\u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_IDLE~q\ & (\u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin\(12))) # 
-- (!\u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_IDLE~q\ & ((reg_fbs(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|flash_seq_read_ardin\(12),
	datab => reg_fbs(3),
	datad => \u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_IDLE~q\,
	combout => \u0|onchip_flash_0|avmm_data_controller|flash_read_addr[12]~5_combout\);

\u0|onchip_flash_0|avmm_data_controller|address_convertor|LessThan0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|address_convertor|LessThan0~1_combout\ = (\u0|onchip_flash_0|avmm_data_controller|address_convertor|LessThan0~0_combout\ & (\u0|onchip_flash_0|avmm_data_controller|flash_read_addr[13]~4_combout\ & 
-- \u0|onchip_flash_0|avmm_data_controller|flash_read_addr[12]~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|address_convertor|LessThan0~0_combout\,
	datab => \u0|onchip_flash_0|avmm_data_controller|flash_read_addr[13]~4_combout\,
	datac => \u0|onchip_flash_0|avmm_data_controller|flash_read_addr[12]~5_combout\,
	combout => \u0|onchip_flash_0|avmm_data_controller|address_convertor|LessThan0~1_combout\);

\u0|onchip_flash_0|avmm_data_controller|address_convertor|Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|address_convertor|Add0~0_combout\ = (\u0|onchip_flash_0|avmm_data_controller|flash_read_addr[9]~0_combout\ & (\u0|onchip_flash_0|avmm_data_controller|address_convertor|LessThan0~1_combout\ $ (GND))) # 
-- (!\u0|onchip_flash_0|avmm_data_controller|flash_read_addr[9]~0_combout\ & (!\u0|onchip_flash_0|avmm_data_controller|address_convertor|LessThan0~1_combout\ & VCC))
-- \u0|onchip_flash_0|avmm_data_controller|address_convertor|Add0~1\ = CARRY((\u0|onchip_flash_0|avmm_data_controller|flash_read_addr[9]~0_combout\ & !\u0|onchip_flash_0|avmm_data_controller|address_convertor|LessThan0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|flash_read_addr[9]~0_combout\,
	datab => \u0|onchip_flash_0|avmm_data_controller|address_convertor|LessThan0~1_combout\,
	datad => VCC,
	combout => \u0|onchip_flash_0|avmm_data_controller|address_convertor|Add0~0_combout\,
	cout => \u0|onchip_flash_0|avmm_data_controller|address_convertor|Add0~1\);

\u0|onchip_flash_0|avmm_data_controller|flash_page_addr[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_57~input_o\,
	d => \u0|onchip_flash_0|avmm_data_controller|address_convertor|Add0~0_combout\,
	sclr => \u0|onchip_flash_0|avmm_data_controller|ALT_INV_reset_n_reg2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|flash_page_addr\(9));

\u0|onchip_flash_0|avmm_data_controller|flash_addr_wire_neg_reg~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|flash_addr_wire_neg_reg~9_combout\ = (\u0|onchip_flash_0|avmm_data_controller|reset_n_reg2~q\ & \u0|onchip_flash_0|avmm_data_controller|flash_page_addr\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|reset_n_reg2~q\,
	datab => \u0|onchip_flash_0|avmm_data_controller|flash_page_addr\(9),
	combout => \u0|onchip_flash_0|avmm_data_controller|flash_addr_wire_neg_reg~9_combout\);

\u0|onchip_flash_0|avmm_data_controller|flash_addr_wire_neg_reg[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk_57~input_o\,
	d => \u0|onchip_flash_0|avmm_data_controller|flash_addr_wire_neg_reg~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|flash_addr_wire_neg_reg\(9));

\u0|onchip_flash_0|avmm_data_controller|address_convertor|Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|address_convertor|Add0~2_combout\ = (\u0|onchip_flash_0|avmm_data_controller|flash_read_addr[10]~3_combout\ & (!\u0|onchip_flash_0|avmm_data_controller|address_convertor|Add0~1\)) # 
-- (!\u0|onchip_flash_0|avmm_data_controller|flash_read_addr[10]~3_combout\ & ((\u0|onchip_flash_0|avmm_data_controller|address_convertor|Add0~1\) # (GND)))
-- \u0|onchip_flash_0|avmm_data_controller|address_convertor|Add0~3\ = CARRY((!\u0|onchip_flash_0|avmm_data_controller|address_convertor|Add0~1\) # (!\u0|onchip_flash_0|avmm_data_controller|flash_read_addr[10]~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|flash_read_addr[10]~3_combout\,
	datad => VCC,
	cin => \u0|onchip_flash_0|avmm_data_controller|address_convertor|Add0~1\,
	combout => \u0|onchip_flash_0|avmm_data_controller|address_convertor|Add0~2_combout\,
	cout => \u0|onchip_flash_0|avmm_data_controller|address_convertor|Add0~3\);

\u0|onchip_flash_0|avmm_data_controller|flash_page_addr[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_57~input_o\,
	d => \u0|onchip_flash_0|avmm_data_controller|address_convertor|Add0~2_combout\,
	sclr => \u0|onchip_flash_0|avmm_data_controller|ALT_INV_reset_n_reg2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|flash_page_addr\(10));

\u0|onchip_flash_0|avmm_data_controller|flash_addr_wire_neg_reg~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|flash_addr_wire_neg_reg~10_combout\ = (\u0|onchip_flash_0|avmm_data_controller|reset_n_reg2~q\ & \u0|onchip_flash_0|avmm_data_controller|flash_page_addr\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|reset_n_reg2~q\,
	datab => \u0|onchip_flash_0|avmm_data_controller|flash_page_addr\(10),
	combout => \u0|onchip_flash_0|avmm_data_controller|flash_addr_wire_neg_reg~10_combout\);

\u0|onchip_flash_0|avmm_data_controller|flash_addr_wire_neg_reg[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk_57~input_o\,
	d => \u0|onchip_flash_0|avmm_data_controller|flash_addr_wire_neg_reg~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|flash_addr_wire_neg_reg\(10));

\u0|onchip_flash_0|avmm_data_controller|address_convertor|Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|address_convertor|Add0~4_combout\ = (\u0|onchip_flash_0|avmm_data_controller|flash_read_addr[11]~2_combout\ & (\u0|onchip_flash_0|avmm_data_controller|address_convertor|Add0~3\ $ (GND))) # 
-- (!\u0|onchip_flash_0|avmm_data_controller|flash_read_addr[11]~2_combout\ & (!\u0|onchip_flash_0|avmm_data_controller|address_convertor|Add0~3\ & VCC))
-- \u0|onchip_flash_0|avmm_data_controller|address_convertor|Add0~5\ = CARRY((\u0|onchip_flash_0|avmm_data_controller|flash_read_addr[11]~2_combout\ & !\u0|onchip_flash_0|avmm_data_controller|address_convertor|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|flash_read_addr[11]~2_combout\,
	datad => VCC,
	cin => \u0|onchip_flash_0|avmm_data_controller|address_convertor|Add0~3\,
	combout => \u0|onchip_flash_0|avmm_data_controller|address_convertor|Add0~4_combout\,
	cout => \u0|onchip_flash_0|avmm_data_controller|address_convertor|Add0~5\);

\u0|onchip_flash_0|avmm_data_controller|flash_page_addr[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_57~input_o\,
	d => \u0|onchip_flash_0|avmm_data_controller|address_convertor|Add0~4_combout\,
	sclr => \u0|onchip_flash_0|avmm_data_controller|ALT_INV_reset_n_reg2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|flash_page_addr\(11));

\u0|onchip_flash_0|avmm_data_controller|flash_addr_wire_neg_reg~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|flash_addr_wire_neg_reg~11_combout\ = (\u0|onchip_flash_0|avmm_data_controller|reset_n_reg2~q\ & \u0|onchip_flash_0|avmm_data_controller|flash_page_addr\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|reset_n_reg2~q\,
	datab => \u0|onchip_flash_0|avmm_data_controller|flash_page_addr\(11),
	combout => \u0|onchip_flash_0|avmm_data_controller|flash_addr_wire_neg_reg~11_combout\);

\u0|onchip_flash_0|avmm_data_controller|flash_addr_wire_neg_reg[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk_57~input_o\,
	d => \u0|onchip_flash_0|avmm_data_controller|flash_addr_wire_neg_reg~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|flash_addr_wire_neg_reg\(11));

\u0|onchip_flash_0|avmm_data_controller|address_convertor|Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|address_convertor|Add0~6_combout\ = (\u0|onchip_flash_0|avmm_data_controller|flash_read_addr[12]~5_combout\ & (!\u0|onchip_flash_0|avmm_data_controller|address_convertor|Add0~5\)) # 
-- (!\u0|onchip_flash_0|avmm_data_controller|flash_read_addr[12]~5_combout\ & ((\u0|onchip_flash_0|avmm_data_controller|address_convertor|Add0~5\) # (GND)))
-- \u0|onchip_flash_0|avmm_data_controller|address_convertor|Add0~7\ = CARRY((!\u0|onchip_flash_0|avmm_data_controller|address_convertor|Add0~5\) # (!\u0|onchip_flash_0|avmm_data_controller|flash_read_addr[12]~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|flash_read_addr[12]~5_combout\,
	datad => VCC,
	cin => \u0|onchip_flash_0|avmm_data_controller|address_convertor|Add0~5\,
	combout => \u0|onchip_flash_0|avmm_data_controller|address_convertor|Add0~6_combout\,
	cout => \u0|onchip_flash_0|avmm_data_controller|address_convertor|Add0~7\);

\u0|onchip_flash_0|avmm_data_controller|flash_page_addr[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_57~input_o\,
	d => \u0|onchip_flash_0|avmm_data_controller|address_convertor|Add0~6_combout\,
	sclr => \u0|onchip_flash_0|avmm_data_controller|ALT_INV_reset_n_reg2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|flash_page_addr\(12));

\u0|onchip_flash_0|avmm_data_controller|flash_addr_wire_neg_reg~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|flash_addr_wire_neg_reg~12_combout\ = (\u0|onchip_flash_0|avmm_data_controller|reset_n_reg2~q\ & \u0|onchip_flash_0|avmm_data_controller|flash_page_addr\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|reset_n_reg2~q\,
	datab => \u0|onchip_flash_0|avmm_data_controller|flash_page_addr\(12),
	combout => \u0|onchip_flash_0|avmm_data_controller|flash_addr_wire_neg_reg~12_combout\);

\u0|onchip_flash_0|avmm_data_controller|flash_addr_wire_neg_reg[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk_57~input_o\,
	d => \u0|onchip_flash_0|avmm_data_controller|flash_addr_wire_neg_reg~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|flash_addr_wire_neg_reg\(12));

\u0|onchip_flash_0|avmm_data_controller|address_convertor|Add0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|address_convertor|Add0~8_combout\ = (\u0|onchip_flash_0|avmm_data_controller|flash_read_addr[13]~4_combout\ & (\u0|onchip_flash_0|avmm_data_controller|address_convertor|Add0~7\ $ (GND))) # 
-- (!\u0|onchip_flash_0|avmm_data_controller|flash_read_addr[13]~4_combout\ & (!\u0|onchip_flash_0|avmm_data_controller|address_convertor|Add0~7\ & VCC))
-- \u0|onchip_flash_0|avmm_data_controller|address_convertor|Add0~9\ = CARRY((\u0|onchip_flash_0|avmm_data_controller|flash_read_addr[13]~4_combout\ & !\u0|onchip_flash_0|avmm_data_controller|address_convertor|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|flash_read_addr[13]~4_combout\,
	datad => VCC,
	cin => \u0|onchip_flash_0|avmm_data_controller|address_convertor|Add0~7\,
	combout => \u0|onchip_flash_0|avmm_data_controller|address_convertor|Add0~8_combout\,
	cout => \u0|onchip_flash_0|avmm_data_controller|address_convertor|Add0~9\);

\u0|onchip_flash_0|avmm_data_controller|flash_page_addr[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_57~input_o\,
	d => \u0|onchip_flash_0|avmm_data_controller|address_convertor|Add0~8_combout\,
	sclr => \u0|onchip_flash_0|avmm_data_controller|ALT_INV_reset_n_reg2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|flash_page_addr\(13));

\u0|onchip_flash_0|avmm_data_controller|flash_addr_wire_neg_reg~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|flash_addr_wire_neg_reg~13_combout\ = (\u0|onchip_flash_0|avmm_data_controller|reset_n_reg2~q\ & \u0|onchip_flash_0|avmm_data_controller|flash_page_addr\(13))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|reset_n_reg2~q\,
	datab => \u0|onchip_flash_0|avmm_data_controller|flash_page_addr\(13),
	combout => \u0|onchip_flash_0|avmm_data_controller|flash_addr_wire_neg_reg~13_combout\);

\u0|onchip_flash_0|avmm_data_controller|flash_addr_wire_neg_reg[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk_57~input_o\,
	d => \u0|onchip_flash_0|avmm_data_controller|flash_addr_wire_neg_reg~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|flash_addr_wire_neg_reg\(13));

\u0|onchip_flash_0|avmm_data_controller|address_convertor|Add0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|address_convertor|Add0~10_combout\ = (\u0|onchip_flash_0|avmm_data_controller|flash_read_addr[14]~1_combout\ & (!\u0|onchip_flash_0|avmm_data_controller|address_convertor|Add0~9\)) # 
-- (!\u0|onchip_flash_0|avmm_data_controller|flash_read_addr[14]~1_combout\ & ((\u0|onchip_flash_0|avmm_data_controller|address_convertor|Add0~9\) # (GND)))
-- \u0|onchip_flash_0|avmm_data_controller|address_convertor|Add0~11\ = CARRY((!\u0|onchip_flash_0|avmm_data_controller|address_convertor|Add0~9\) # (!\u0|onchip_flash_0|avmm_data_controller|flash_read_addr[14]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|flash_read_addr[14]~1_combout\,
	datad => VCC,
	cin => \u0|onchip_flash_0|avmm_data_controller|address_convertor|Add0~9\,
	combout => \u0|onchip_flash_0|avmm_data_controller|address_convertor|Add0~10_combout\,
	cout => \u0|onchip_flash_0|avmm_data_controller|address_convertor|Add0~11\);

\u0|onchip_flash_0|avmm_data_controller|flash_page_addr[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_57~input_o\,
	d => \u0|onchip_flash_0|avmm_data_controller|address_convertor|Add0~10_combout\,
	sclr => \u0|onchip_flash_0|avmm_data_controller|ALT_INV_reset_n_reg2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|flash_page_addr\(14));

\u0|onchip_flash_0|avmm_data_controller|flash_addr_wire_neg_reg~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|flash_addr_wire_neg_reg~14_combout\ = (\u0|onchip_flash_0|avmm_data_controller|reset_n_reg2~q\ & \u0|onchip_flash_0|avmm_data_controller|flash_page_addr\(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|reset_n_reg2~q\,
	datab => \u0|onchip_flash_0|avmm_data_controller|flash_page_addr\(14),
	combout => \u0|onchip_flash_0|avmm_data_controller|flash_addr_wire_neg_reg~14_combout\);

\u0|onchip_flash_0|avmm_data_controller|flash_addr_wire_neg_reg[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk_57~input_o\,
	d => \u0|onchip_flash_0|avmm_data_controller|flash_addr_wire_neg_reg~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|flash_addr_wire_neg_reg\(14));

\u0|onchip_flash_0|avmm_data_controller|address_convertor|Add0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|address_convertor|Add0~12_combout\ = !\u0|onchip_flash_0|avmm_data_controller|address_convertor|Add0~11\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \u0|onchip_flash_0|avmm_data_controller|address_convertor|Add0~11\,
	combout => \u0|onchip_flash_0|avmm_data_controller|address_convertor|Add0~12_combout\);

\u0|onchip_flash_0|avmm_data_controller|flash_page_addr[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_57~input_o\,
	d => \u0|onchip_flash_0|avmm_data_controller|address_convertor|Add0~12_combout\,
	sclr => \u0|onchip_flash_0|avmm_data_controller|ALT_INV_reset_n_reg2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|flash_page_addr\(15));

\u0|onchip_flash_0|avmm_data_controller|flash_addr_wire_neg_reg~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|flash_addr_wire_neg_reg~15_combout\ = (\u0|onchip_flash_0|avmm_data_controller|reset_n_reg2~q\ & \u0|onchip_flash_0|avmm_data_controller|flash_page_addr\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|reset_n_reg2~q\,
	datab => \u0|onchip_flash_0|avmm_data_controller|flash_page_addr\(15),
	combout => \u0|onchip_flash_0|avmm_data_controller|flash_addr_wire_neg_reg~15_combout\);

\u0|onchip_flash_0|avmm_data_controller|flash_addr_wire_neg_reg[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk_57~input_o\,
	d => \u0|onchip_flash_0|avmm_data_controller|flash_addr_wire_neg_reg~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|flash_addr_wire_neg_reg\(15));

\u0|onchip_flash_0|altera_onchip_flash_block|ufm_block\ : fiftyfivenm_unvm
-- pragma translate_off
GENERIC MAP (
,
	addr_range1_end_addr => 29183,
	addr_range1_offset => 512,
	addr_range2_offset => 0,
	device_id => "08",
	init_filename => "c:/tmp/testrom.hex",
	init_filename_sim => "c:/tmp/testrom.hex",
	is_compressed_image => "false",
	is_dual_boot => "false",
	is_eram_skip => "true",
	max_ufm_valid_addr => 29183,
	max_valid_addr => 29183,
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

\u0|onchip_flash_0|avmm_data_controller|csr_status_r_pass~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|csr_status_r_pass~0_combout\ = ((!reg_fbs(0) & (!reg_fbs(1) & !reg_fbs(2)))) # (!reg_fbs(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => reg_fbs(0),
	datab => reg_fbs(1),
	datac => reg_fbs(2),
	datad => reg_fbs(5),
	combout => \u0|onchip_flash_0|avmm_data_controller|csr_status_r_pass~0_combout\);

\u0|onchip_flash_0|avmm_data_controller|csr_status_r_pass~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|csr_status_r_pass~1_combout\ = (\u0|onchip_flash_0|avmm_data_controller|csr_status_r_pass~0_combout\) # ((!reg_fbs(4)) # (!reg_fbs(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|csr_status_r_pass~0_combout\,
	datac => reg_fbs(3),
	datad => reg_fbs(4),
	combout => \u0|onchip_flash_0|avmm_data_controller|csr_status_r_pass~1_combout\);

\u0|onchip_flash_0|avmm_data_controller|csr_status_r_pass~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|csr_status_r_pass~2_combout\ = (\u0|onchip_flash_0|avmm_data_controller|reset_n_reg2~q\ & ((\u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_ADDR~q\ & 
-- (\u0|onchip_flash_0|avmm_data_controller|csr_status_r_pass~1_combout\)) # (!\u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_ADDR~q\ & ((\u0|onchip_flash_0|avmm_data_controller|csr_status_r_pass~q\))))) # 
-- (!\u0|onchip_flash_0|avmm_data_controller|reset_n_reg2~q\ & (((\u0|onchip_flash_0|avmm_data_controller|csr_status_r_pass~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|csr_status_r_pass~1_combout\,
	datab => \u0|onchip_flash_0|avmm_data_controller|csr_status_r_pass~q\,
	datac => \u0|onchip_flash_0|avmm_data_controller|reset_n_reg2~q\,
	datad => \u0|onchip_flash_0|avmm_data_controller|read_state.READ_STATE_ADDR~q\,
	combout => \u0|onchip_flash_0|avmm_data_controller|csr_status_r_pass~2_combout\);

\u0|onchip_flash_0|avmm_data_controller|csr_status_r_pass\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_57~input_o\,
	d => \u0|onchip_flash_0|avmm_data_controller|csr_status_r_pass~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|csr_status_r_pass~q\);

\u0|onchip_flash_0|avmm_data_controller|avmm_readdata~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|avmm_readdata~0_combout\ = (\u0|onchip_flash_0|altera_onchip_flash_block|drdout\(16)) # ((!\u0|onchip_flash_0|avmm_data_controller|csr_status_r_pass~q\) # (!\u0|onchip_flash_0|avmm_data_controller|reset_n_reg2~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|altera_onchip_flash_block|drdout\(16),
	datac => \u0|onchip_flash_0|avmm_data_controller|reset_n_reg2~q\,
	datad => \u0|onchip_flash_0|avmm_data_controller|csr_status_r_pass~q\,
	combout => \u0|onchip_flash_0|avmm_data_controller|avmm_readdata~0_combout\);

\u0|onchip_flash_0|avmm_data_controller|avmm_readdata[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk_57~input_o\,
	d => \u0|onchip_flash_0|avmm_data_controller|avmm_readdata~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|avmm_readdata\(16));

\flash_data_latch[16]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \flash_data_latch[16]~0_combout\ = !\u0|onchip_flash_0|avmm_data_controller|avmm_readdata\(16)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|avmm_readdata\(16),
	combout => \flash_data_latch[16]~0_combout\);

\u0|onchip_flash_0|avmm_data_controller|avmm_readdatavalid_reg~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|avmm_readdatavalid_reg~0_combout\ = (\u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_reg~7_combout\) # ((!\u0|onchip_flash_0|avmm_data_controller|avmm_read_valid_state~q\ & 
-- ((\u0|onchip_flash_0|avmm_data_controller|avmm_readdata_ready~q\) # (\u0|onchip_flash_0|avmm_data_controller|avmm_readdatavalid_reg~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|avmm_burstcount_reg~7_combout\,
	datab => \u0|onchip_flash_0|avmm_data_controller|avmm_readdata_ready~q\,
	datac => \u0|onchip_flash_0|avmm_data_controller|avmm_readdatavalid_reg~q\,
	datad => \u0|onchip_flash_0|avmm_data_controller|avmm_read_valid_state~q\,
	combout => \u0|onchip_flash_0|avmm_data_controller|avmm_readdatavalid_reg~0_combout\);

\u0|onchip_flash_0|avmm_data_controller|avmm_readdatavalid_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_57~input_o\,
	d => \u0|onchip_flash_0|avmm_data_controller|avmm_readdatavalid_reg~0_combout\,
	sclr => \u0|onchip_flash_0|avmm_data_controller|ALT_INV_reset_n_reg2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|avmm_readdatavalid_reg~q\);

\flash_data_latch[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk_57~input_o\,
	d => \flash_data_latch[16]~0_combout\,
	ena => \u0|onchip_flash_0|avmm_data_controller|avmm_readdatavalid_reg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => flash_data_latch(16));

\u0|onchip_flash_0|avmm_data_controller|avmm_readdata~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|avmm_readdata~1_combout\ = (\u0|onchip_flash_0|altera_onchip_flash_block|drdout\(8)) # ((!\u0|onchip_flash_0|avmm_data_controller|csr_status_r_pass~q\) # (!\u0|onchip_flash_0|avmm_data_controller|reset_n_reg2~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|altera_onchip_flash_block|drdout\(8),
	datac => \u0|onchip_flash_0|avmm_data_controller|reset_n_reg2~q\,
	datad => \u0|onchip_flash_0|avmm_data_controller|csr_status_r_pass~q\,
	combout => \u0|onchip_flash_0|avmm_data_controller|avmm_readdata~1_combout\);

\u0|onchip_flash_0|avmm_data_controller|avmm_readdata[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk_57~input_o\,
	d => \u0|onchip_flash_0|avmm_data_controller|avmm_readdata~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|avmm_readdata\(8));

\flash_data_latch[8]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \flash_data_latch[8]~1_combout\ = !\u0|onchip_flash_0|avmm_data_controller|avmm_readdata\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|avmm_readdata\(8),
	combout => \flash_data_latch[8]~1_combout\);

\flash_data_latch[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk_57~input_o\,
	d => \flash_data_latch[8]~1_combout\,
	ena => \u0|onchip_flash_0|avmm_data_controller|avmm_readdatavalid_reg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => flash_data_latch(8));

\u0|onchip_flash_0|avmm_data_controller|avmm_readdata~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|avmm_readdata~2_combout\ = (\u0|onchip_flash_0|altera_onchip_flash_block|drdout\(0)) # ((!\u0|onchip_flash_0|avmm_data_controller|csr_status_r_pass~q\) # (!\u0|onchip_flash_0|avmm_data_controller|reset_n_reg2~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|altera_onchip_flash_block|drdout\(0),
	datac => \u0|onchip_flash_0|avmm_data_controller|reset_n_reg2~q\,
	datad => \u0|onchip_flash_0|avmm_data_controller|csr_status_r_pass~q\,
	combout => \u0|onchip_flash_0|avmm_data_controller|avmm_readdata~2_combout\);

\u0|onchip_flash_0|avmm_data_controller|avmm_readdata[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk_57~input_o\,
	d => \u0|onchip_flash_0|avmm_data_controller|avmm_readdata~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|avmm_readdata\(0));

\flash_data_latch[0]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \flash_data_latch[0]~2_combout\ = !\u0|onchip_flash_0|avmm_data_controller|avmm_readdata\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|avmm_readdata\(0),
	combout => \flash_data_latch[0]~2_combout\);

\flash_data_latch[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk_57~input_o\,
	d => \flash_data_latch[0]~2_combout\,
	ena => \u0|onchip_flash_0|avmm_data_controller|avmm_readdatavalid_reg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => flash_data_latch(0));

\data[0]~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data[0]~24_combout\ = (addr_latch(1) & ((addr_latch(0) & ((!flash_data_latch(0)))) # (!addr_latch(0) & (!flash_data_latch(8))))) # (!addr_latch(1) & (((!addr_latch(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011110100111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => addr_latch(1),
	datab => flash_data_latch(8),
	datac => addr_latch(0),
	datad => flash_data_latch(0),
	combout => \data[0]~24_combout\);

\u0|onchip_flash_0|avmm_data_controller|avmm_readdata~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|avmm_readdata~3_combout\ = (\u0|onchip_flash_0|altera_onchip_flash_block|drdout\(24)) # ((!\u0|onchip_flash_0|avmm_data_controller|csr_status_r_pass~q\) # (!\u0|onchip_flash_0|avmm_data_controller|reset_n_reg2~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|altera_onchip_flash_block|drdout\(24),
	datac => \u0|onchip_flash_0|avmm_data_controller|reset_n_reg2~q\,
	datad => \u0|onchip_flash_0|avmm_data_controller|csr_status_r_pass~q\,
	combout => \u0|onchip_flash_0|avmm_data_controller|avmm_readdata~3_combout\);

\u0|onchip_flash_0|avmm_data_controller|avmm_readdata[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk_57~input_o\,
	d => \u0|onchip_flash_0|avmm_data_controller|avmm_readdata~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|avmm_readdata\(24));

\flash_data_latch[24]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \flash_data_latch[24]~3_combout\ = !\u0|onchip_flash_0|avmm_data_controller|avmm_readdata\(24)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|avmm_readdata\(24),
	combout => \flash_data_latch[24]~3_combout\);

\flash_data_latch[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk_57~input_o\,
	d => \flash_data_latch[24]~3_combout\,
	ena => \u0|onchip_flash_0|avmm_data_controller|avmm_readdatavalid_reg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => flash_data_latch(24));

\data[0]~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data[0]~25_combout\ = (addr_latch(1) & (((\data[0]~24_combout\)))) # (!addr_latch(1) & ((\data[0]~24_combout\ & ((!flash_data_latch(24)))) # (!\data[0]~24_combout\ & (!flash_data_latch(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000111110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => flash_data_latch(16),
	datab => addr_latch(1),
	datac => \data[0]~24_combout\,
	datad => flash_data_latch(24),
	combout => \data[0]~25_combout\);

\data[0]~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data[0]~26_combout\ = (\data[2]~23_combout\ & (((\slave_din[0]~2_combout\)))) # (!\data[2]~23_combout\ & ((\slave_din[0]~2_combout\ & (\u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a0~PORTBDATAOUT0\)) # (!\slave_din[0]~2_combout\ & 
-- ((\data[0]~25_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data[2]~23_combout\,
	datab => \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a0~PORTBDATAOUT0\,
	datac => \slave_din[0]~2_combout\,
	datad => \data[0]~25_combout\,
	combout => \data[0]~26_combout\);

\u1|dpram_slave|altsyncram_component|auto_generated|decode3|eq_node[1]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|dpram_slave|altsyncram_component|auto_generated|decode3|eq_node\(1) = (\slave_ram_en~q\ & (reg_srbs(5) & !\rw_latch~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \slave_ram_en~q\,
	datab => reg_srbs(5),
	datad => \rw_latch~q\,
	combout => \u1|dpram_slave|altsyncram_component|auto_generated|decode3|eq_node\(1));

\u1|dpram_slave|altsyncram_component|auto_generated|rden_decode_b|eq_node[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|dpram_slave|altsyncram_component|auto_generated|rden_decode_b|eq_node[1]~1_combout\ = (reg_srbs(5) & ((\slave_ram_en~q\) # ((\u1|dpram_slave|altsyncram_component|auto_generated|rden_b_store~q\) # 
-- (\u1|dpram_slave|altsyncram_component|auto_generated|wren_b_store~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => reg_srbs(5),
	datab => \slave_ram_en~q\,
	datac => \u1|dpram_slave|altsyncram_component|auto_generated|rden_b_store~q\,
	datad => \u1|dpram_slave|altsyncram_component|auto_generated|wren_b_store~q\,
	combout => \u1|dpram_slave|altsyncram_component|auto_generated|rden_decode_b|eq_node[1]~1_combout\);

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
	port_a_first_address => 8192,
	port_a_first_bit_number => 0,
	port_a_last_address => 16383,
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
	port_b_first_address => 8192,
	port_b_first_bit_number => 0,
	port_b_last_address => 16383,
	port_b_logical_ram_depth => 16384,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "old_data",
	port_b_read_enable_clock => "clock1",
	port_b_write_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portare => \u1|slave_rden~q\,
	portbwe => \u1|dpram_slave|altsyncram_component|auto_generated|decode3|eq_node\(1),
	portbre => \u1|comb~1_combout\,
	clk0 => \u1|slave_ram_clk~combout\,
	clk1 => \ALT_INV_phi2_early~reg0_q\,
	ena0 => GND,
	ena1 => \u1|dpram_slave|altsyncram_component|auto_generated|rden_decode_b|eq_node[1]~1_combout\,
	portadatain => \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a8_PORTADATAIN_bus\,
	portbdatain => \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a8_PORTBDATAIN_bus\,
	portaaddr => \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a8_PORTAADDR_bus\,
	portbaddr => \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a8_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a8_PORTADATAOUT_bus\,
	portbdataout => \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a8_PORTBDATAOUT_bus\);

\data[0]~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data[0]~27_combout\ = (\data[2]~23_combout\ & ((\data[0]~26_combout\ & ((\u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a8~PORTBDATAOUT0\))) # (!\data[0]~26_combout\ & 
-- (\u1|dpram_master|altsyncram_component|auto_generated|ram_block1a0~PORTBDATAOUT0\)))) # (!\data[2]~23_combout\ & (((\data[0]~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a0~PORTBDATAOUT0\,
	datab => \data[2]~23_combout\,
	datac => \data[0]~26_combout\,
	datad => \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a8~PORTBDATAOUT0\,
	combout => \data[0]~27_combout\);

\data[0]~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data[0]~28_combout\ = (\data[2]~16_combout\ & (((\data[2]~22_combout\)))) # (!\data[2]~16_combout\ & ((\data[2]~22_combout\ & (\data[0]~21_combout\)) # (!\data[2]~22_combout\ & ((\data[0]~27_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data[2]~16_combout\,
	datab => \data[0]~21_combout\,
	datac => \data[2]~22_combout\,
	datad => \data[0]~27_combout\,
	combout => \data[0]~28_combout\);

\data[0]~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data[0]~29_combout\ = (\data[2]~16_combout\ & ((\data[0]~28_combout\ & ((reg_stbycr(0)))) # (!\data[0]~28_combout\ & (reg_sdcr(0))))) # (!\data[2]~16_combout\ & (((\data[0]~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => reg_sdcr(0),
	datab => \data[2]~16_combout\,
	datac => \data[0]~28_combout\,
	datad => reg_stbycr(0),
	combout => \data[0]~29_combout\);

\u1|dpram_master|altsyncram_component|auto_generated|address_reg_b[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_phi2_early~reg0_q\,
	d => reg_mrbs(5),
	ena => \u1|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|dpram_master|altsyncram_component|auto_generated|address_reg_b\(0));

\u1|dpram_master|altsyncram_component|auto_generated|out_address_reg_b[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_phi2_early~reg0_q\,
	d => \u1|dpram_master|altsyncram_component|auto_generated|address_reg_b\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|dpram_master|altsyncram_component|auto_generated|out_address_reg_b\(0));

\data[2]~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data[2]~30_combout\ = (\master_ram_en~q\ & (\u1|dpram_master|altsyncram_component|auto_generated|out_address_reg_b\(0) & !\dev_reg_act~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \master_ram_en~q\,
	datab => \u1|dpram_master|altsyncram_component|auto_generated|out_address_reg_b\(0),
	datad => \dev_reg_act~q\,
	combout => \data[2]~30_combout\);

\data[0]~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data[0]~31_combout\ = (\data[2]~30_combout\ & (\u1|dpram_master|altsyncram_component|auto_generated|ram_block1a8~PORTBDATAOUT0\)) # (!\data[2]~30_combout\ & ((\data[0]~29_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a8~PORTBDATAOUT0\,
	datab => \data[0]~29_combout\,
	datad => \data[2]~30_combout\,
	combout => \data[0]~31_combout\);

\process_4~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \process_4~2_combout\ = (\Equal10~5_combout\ & (\rw_latch~q\ & \phi2~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal10~5_combout\,
	datab => \rw_latch~q\,
	datac => \phi2~input_o\,
	combout => \process_4~2_combout\);

\n_data_oe~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \n_data_oe~0_combout\ = (!\dev_rom_act~q\ & (!\dev_reg_act~q\ & (!\slave_ram_en~q\ & !\master_ram_en~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dev_rom_act~q\,
	datab => \dev_reg_act~q\,
	datac => \slave_ram_en~q\,
	datad => \master_ram_en~q\,
	combout => \n_data_oe~0_combout\);

\data[7]~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data[7]~32_combout\ = (\n_reset~input_o\ & (\process_4~2_combout\ & !\n_data_oe~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \n_reset~input_o\,
	datab => \process_4~2_combout\,
	datad => \n_data_oe~0_combout\,
	combout => \data[7]~32_combout\);

\u1|rx_buf[1]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|rx_buf[1]~2_combout\ = (\u1|bit_cnt\(0) & (\u1|master_wren~0_combout\ & !\u1|process_1~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|bit_cnt\(0),
	datab => \u1|master_wren~0_combout\,
	datad => \u1|process_1~1_combout\,
	combout => \u1|rx_buf[1]~2_combout\);

\u1|rx_buf[1]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|rx_buf[1]~3_combout\ = (\u1|slave_ram_clk~0_combout\ & ((\u1|rx_buf[1]~2_combout\ & (\spi_mosi~input_o\)) # (!\u1|rx_buf[1]~2_combout\ & ((\u1|rx_buf\(1)))))) # (!\u1|slave_ram_clk~0_combout\ & (((\u1|rx_buf\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi_mosi~input_o\,
	datab => \u1|rx_buf\(1),
	datac => \u1|slave_ram_clk~0_combout\,
	datad => \u1|rx_buf[1]~2_combout\,
	combout => \u1|rx_buf[1]~3_combout\);

\u1|rx_buf[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \spi_clk~input_o\,
	d => \u1|rx_buf[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|rx_buf\(1));

\master_din[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_phi2_early~reg0_q\,
	d => \data[1]~input_o\,
	ena => \master_din[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => master_din(1));

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
	port_a_first_address => 8192,
	port_a_first_bit_number => 1,
	port_a_last_address => 16383,
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
	port_b_first_address => 8192,
	port_b_first_bit_number => 1,
	port_b_last_address => 16383,
	port_b_logical_ram_depth => 16384,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "old_data",
	port_b_read_enable_clock => "clock1",
	port_b_write_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portare => VCC,
	portbwe => \u1|dpram_master|altsyncram_component|auto_generated|decode3|eq_node\(1),
	portbre => \u1|comb~0_combout\,
	clk0 => \u1|master_ram_clk~combout\,
	clk1 => \ALT_INV_phi2_early~reg0_q\,
	ena0 => GND,
	ena1 => \u1|dpram_master|altsyncram_component|auto_generated|rden_decode_b|eq_node[1]~0_combout\,
	portadatain => \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a9_PORTADATAIN_bus\,
	portbdatain => \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a9_PORTBDATAIN_bus\,
	portaaddr => \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a9_PORTAADDR_bus\,
	portbaddr => \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a9_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a9_PORTADATAOUT_bus\,
	portbdataout => \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a9_PORTBDATAOUT_bus\);

\data[1]~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data[1]~33_combout\ = (!\Equal17~0_combout\ & ((\Equal18~0_combout\ & ((reg_mrbs(1)))) # (!\Equal18~0_combout\ & (!\Equal19~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal19~0_combout\,
	datab => \Equal18~0_combout\,
	datac => \Equal17~0_combout\,
	datad => reg_mrbs(1),
	combout => \data[1]~33_combout\);

\data[1]~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data[1]~34_combout\ = (\data[2]~17_combout\ & ((\data[1]~33_combout\ & (reg_fbs(1))) # (!\data[1]~33_combout\ & ((reg_srbs(1)))))) # (!\data[2]~17_combout\ & (((\data[1]~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => reg_fbs(1),
	datab => reg_srbs(1),
	datac => \data[2]~17_combout\,
	datad => \data[1]~33_combout\,
	combout => \data[1]~34_combout\);

\data[1]~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data[1]~35_combout\ = (\data[0]~20_combout\ & ((\data[1]~34_combout\) # ((\Equal14~1_combout\ & reg_stbkcr(1))))) # (!\data[0]~20_combout\ & (\Equal14~1_combout\ & (reg_stbkcr(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data[0]~20_combout\,
	datab => \Equal14~1_combout\,
	datac => reg_stbkcr(1),
	datad => \data[1]~34_combout\,
	combout => \data[1]~35_combout\);

\u1|dpram_master|altsyncram_component|auto_generated|ram_block1a1\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
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
	portawe => \u1|master_wren~q\,
	portare => VCC,
	portbwe => \u1|dpram_master|altsyncram_component|auto_generated|decode3|eq_node\(0),
	portbre => \u1|comb~0_combout\,
	clk0 => \u1|master_ram_clk~combout\,
	clk1 => \ALT_INV_phi2_early~reg0_q\,
	ena1 => \u1|dpram_master|altsyncram_component|auto_generated|rden_decode_b|eq_node[0]~1_combout\,
	portadatain => \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a1_PORTADATAIN_bus\,
	portbdatain => \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a1_PORTBDATAIN_bus\,
	portaaddr => \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a1_PORTAADDR_bus\,
	portbaddr => \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a1_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a1_PORTADATAOUT_bus\,
	portbdataout => \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a1_PORTBDATAOUT_bus\);

\u0|onchip_flash_0|avmm_data_controller|avmm_readdata~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|avmm_readdata~4_combout\ = (\u0|onchip_flash_0|altera_onchip_flash_block|drdout\(9)) # ((!\u0|onchip_flash_0|avmm_data_controller|csr_status_r_pass~q\) # (!\u0|onchip_flash_0|avmm_data_controller|reset_n_reg2~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|altera_onchip_flash_block|drdout\(9),
	datac => \u0|onchip_flash_0|avmm_data_controller|reset_n_reg2~q\,
	datad => \u0|onchip_flash_0|avmm_data_controller|csr_status_r_pass~q\,
	combout => \u0|onchip_flash_0|avmm_data_controller|avmm_readdata~4_combout\);

\u0|onchip_flash_0|avmm_data_controller|avmm_readdata[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk_57~input_o\,
	d => \u0|onchip_flash_0|avmm_data_controller|avmm_readdata~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|avmm_readdata\(9));

\flash_data_latch[9]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \flash_data_latch[9]~4_combout\ = !\u0|onchip_flash_0|avmm_data_controller|avmm_readdata\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|avmm_readdata\(9),
	combout => \flash_data_latch[9]~4_combout\);

\flash_data_latch[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk_57~input_o\,
	d => \flash_data_latch[9]~4_combout\,
	ena => \u0|onchip_flash_0|avmm_data_controller|avmm_readdatavalid_reg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => flash_data_latch(9));

\u0|onchip_flash_0|avmm_data_controller|avmm_readdata~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|avmm_readdata~5_combout\ = (\u0|onchip_flash_0|altera_onchip_flash_block|drdout\(17)) # ((!\u0|onchip_flash_0|avmm_data_controller|csr_status_r_pass~q\) # (!\u0|onchip_flash_0|avmm_data_controller|reset_n_reg2~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|altera_onchip_flash_block|drdout\(17),
	datac => \u0|onchip_flash_0|avmm_data_controller|reset_n_reg2~q\,
	datad => \u0|onchip_flash_0|avmm_data_controller|csr_status_r_pass~q\,
	combout => \u0|onchip_flash_0|avmm_data_controller|avmm_readdata~5_combout\);

\u0|onchip_flash_0|avmm_data_controller|avmm_readdata[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk_57~input_o\,
	d => \u0|onchip_flash_0|avmm_data_controller|avmm_readdata~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|avmm_readdata\(17));

\flash_data_latch[17]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \flash_data_latch[17]~5_combout\ = !\u0|onchip_flash_0|avmm_data_controller|avmm_readdata\(17)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|avmm_readdata\(17),
	combout => \flash_data_latch[17]~5_combout\);

\flash_data_latch[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk_57~input_o\,
	d => \flash_data_latch[17]~5_combout\,
	ena => \u0|onchip_flash_0|avmm_data_controller|avmm_readdatavalid_reg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => flash_data_latch(17));

\u0|onchip_flash_0|avmm_data_controller|avmm_readdata~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|avmm_readdata~6_combout\ = (\u0|onchip_flash_0|altera_onchip_flash_block|drdout\(1)) # ((!\u0|onchip_flash_0|avmm_data_controller|csr_status_r_pass~q\) # (!\u0|onchip_flash_0|avmm_data_controller|reset_n_reg2~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|altera_onchip_flash_block|drdout\(1),
	datac => \u0|onchip_flash_0|avmm_data_controller|reset_n_reg2~q\,
	datad => \u0|onchip_flash_0|avmm_data_controller|csr_status_r_pass~q\,
	combout => \u0|onchip_flash_0|avmm_data_controller|avmm_readdata~6_combout\);

\u0|onchip_flash_0|avmm_data_controller|avmm_readdata[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk_57~input_o\,
	d => \u0|onchip_flash_0|avmm_data_controller|avmm_readdata~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|avmm_readdata\(1));

\flash_data_latch[1]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \flash_data_latch[1]~6_combout\ = !\u0|onchip_flash_0|avmm_data_controller|avmm_readdata\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|avmm_readdata\(1),
	combout => \flash_data_latch[1]~6_combout\);

\flash_data_latch[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk_57~input_o\,
	d => \flash_data_latch[1]~6_combout\,
	ena => \u0|onchip_flash_0|avmm_data_controller|avmm_readdatavalid_reg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => flash_data_latch(1));

\data[1]~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data[1]~36_combout\ = (addr_latch(0) & ((addr_latch(1) & ((!flash_data_latch(1)))) # (!addr_latch(1) & (!flash_data_latch(17))))) # (!addr_latch(0) & (((!addr_latch(1)))))

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
	combout => \data[1]~36_combout\);

\u0|onchip_flash_0|avmm_data_controller|avmm_readdata~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|avmm_readdata~7_combout\ = (\u0|onchip_flash_0|altera_onchip_flash_block|drdout\(25)) # ((!\u0|onchip_flash_0|avmm_data_controller|csr_status_r_pass~q\) # (!\u0|onchip_flash_0|avmm_data_controller|reset_n_reg2~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|altera_onchip_flash_block|drdout\(25),
	datac => \u0|onchip_flash_0|avmm_data_controller|reset_n_reg2~q\,
	datad => \u0|onchip_flash_0|avmm_data_controller|csr_status_r_pass~q\,
	combout => \u0|onchip_flash_0|avmm_data_controller|avmm_readdata~7_combout\);

\u0|onchip_flash_0|avmm_data_controller|avmm_readdata[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk_57~input_o\,
	d => \u0|onchip_flash_0|avmm_data_controller|avmm_readdata~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|avmm_readdata\(25));

\flash_data_latch[25]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \flash_data_latch[25]~7_combout\ = !\u0|onchip_flash_0|avmm_data_controller|avmm_readdata\(25)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|avmm_readdata\(25),
	combout => \flash_data_latch[25]~7_combout\);

\flash_data_latch[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk_57~input_o\,
	d => \flash_data_latch[25]~7_combout\,
	ena => \u0|onchip_flash_0|avmm_data_controller|avmm_readdatavalid_reg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => flash_data_latch(25));

\data[1]~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data[1]~37_combout\ = (addr_latch(0) & (((\data[1]~36_combout\)))) # (!addr_latch(0) & ((\data[1]~36_combout\ & ((!flash_data_latch(25)))) # (!\data[1]~36_combout\ & (!flash_data_latch(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000111110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => flash_data_latch(9),
	datab => addr_latch(0),
	datac => \data[1]~36_combout\,
	datad => flash_data_latch(25),
	combout => \data[1]~37_combout\);

\data[1]~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data[1]~38_combout\ = (\slave_din[0]~2_combout\ & (((\data[2]~23_combout\)))) # (!\slave_din[0]~2_combout\ & ((\data[2]~23_combout\ & (\u1|dpram_master|altsyncram_component|auto_generated|ram_block1a1~PORTBDATAOUT0\)) # (!\data[2]~23_combout\ & 
-- ((\data[1]~37_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \slave_din[0]~2_combout\,
	datab => \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a1~PORTBDATAOUT0\,
	datac => \data[2]~23_combout\,
	datad => \data[1]~37_combout\,
	combout => \data[1]~38_combout\);

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
	port_a_first_address => 8192,
	port_a_first_bit_number => 1,
	port_a_last_address => 16383,
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
	port_b_first_address => 8192,
	port_b_first_bit_number => 1,
	port_b_last_address => 16383,
	port_b_logical_ram_depth => 16384,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "old_data",
	port_b_read_enable_clock => "clock1",
	port_b_write_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portare => \u1|slave_rden~q\,
	portbwe => \u1|dpram_slave|altsyncram_component|auto_generated|decode3|eq_node\(1),
	portbre => \u1|comb~1_combout\,
	clk0 => \u1|slave_ram_clk~combout\,
	clk1 => \ALT_INV_phi2_early~reg0_q\,
	ena0 => GND,
	ena1 => \u1|dpram_slave|altsyncram_component|auto_generated|rden_decode_b|eq_node[1]~1_combout\,
	portadatain => \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a9_PORTADATAIN_bus\,
	portbdatain => \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a9_PORTBDATAIN_bus\,
	portaaddr => \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a9_PORTAADDR_bus\,
	portbaddr => \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a9_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a9_PORTADATAOUT_bus\,
	portbdataout => \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a9_PORTBDATAOUT_bus\);

\data[1]~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data[1]~39_combout\ = (\slave_din[0]~2_combout\ & ((\data[1]~38_combout\ & ((\u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a9~PORTBDATAOUT0\))) # (!\data[1]~38_combout\ & 
-- (\u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a1~PORTBDATAOUT0\)))) # (!\slave_din[0]~2_combout\ & (((\data[1]~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a1~PORTBDATAOUT0\,
	datab => \slave_din[0]~2_combout\,
	datac => \data[1]~38_combout\,
	datad => \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a9~PORTBDATAOUT0\,
	combout => \data[1]~39_combout\);

\data[1]~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data[1]~40_combout\ = (\data[2]~22_combout\ & (((\data[2]~16_combout\)))) # (!\data[2]~22_combout\ & ((\data[2]~16_combout\ & (reg_sdcr(1))) # (!\data[2]~16_combout\ & ((\data[1]~39_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data[2]~22_combout\,
	datab => reg_sdcr(1),
	datac => \data[2]~16_combout\,
	datad => \data[1]~39_combout\,
	combout => \data[1]~40_combout\);

\data[1]~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data[1]~41_combout\ = (\data[2]~22_combout\ & ((\data[1]~40_combout\ & ((reg_stbycr(1)))) # (!\data[1]~40_combout\ & (\data[1]~35_combout\)))) # (!\data[2]~22_combout\ & (((\data[1]~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data[1]~35_combout\,
	datab => \data[2]~22_combout\,
	datac => \data[1]~40_combout\,
	datad => reg_stbycr(1),
	combout => \data[1]~41_combout\);

\data[1]~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data[1]~42_combout\ = (\data[2]~30_combout\ & (\u1|dpram_master|altsyncram_component|auto_generated|ram_block1a9~PORTBDATAOUT0\)) # (!\data[2]~30_combout\ & ((\data[1]~41_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a9~PORTBDATAOUT0\,
	datab => \data[1]~41_combout\,
	datad => \data[2]~30_combout\,
	combout => \data[1]~42_combout\);

\u1|rx_buf[2]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|rx_buf[2]~4_combout\ = (\u1|bit_cnt\(1) & !\u1|bit_cnt\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|bit_cnt\(1),
	datad => \u1|bit_cnt\(2),
	combout => \u1|rx_buf[2]~4_combout\);

\u1|rx_buf[2]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|rx_buf[2]~5_combout\ = (\u1|rx_buf[0]~0_combout\ & ((\u1|rx_buf[2]~4_combout\ & (\spi_mosi~input_o\)) # (!\u1|rx_buf[2]~4_combout\ & ((\u1|rx_buf\(2)))))) # (!\u1|rx_buf[0]~0_combout\ & (((\u1|rx_buf\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi_mosi~input_o\,
	datab => \u1|rx_buf\(2),
	datac => \u1|rx_buf[0]~0_combout\,
	datad => \u1|rx_buf[2]~4_combout\,
	combout => \u1|rx_buf[2]~5_combout\);

\u1|rx_buf[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \spi_clk~input_o\,
	d => \u1|rx_buf[2]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|rx_buf\(2));

\master_din[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_phi2_early~reg0_q\,
	d => \data[2]~input_o\,
	ena => \master_din[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => master_din(2));

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
	port_a_first_address => 8192,
	port_a_first_bit_number => 2,
	port_a_last_address => 16383,
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
	port_b_first_address => 8192,
	port_b_first_bit_number => 2,
	port_b_last_address => 16383,
	port_b_logical_ram_depth => 16384,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "old_data",
	port_b_read_enable_clock => "clock1",
	port_b_write_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portare => VCC,
	portbwe => \u1|dpram_master|altsyncram_component|auto_generated|decode3|eq_node\(1),
	portbre => \u1|comb~0_combout\,
	clk0 => \u1|master_ram_clk~combout\,
	clk1 => \ALT_INV_phi2_early~reg0_q\,
	ena0 => GND,
	ena1 => \u1|dpram_master|altsyncram_component|auto_generated|rden_decode_b|eq_node[1]~0_combout\,
	portadatain => \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a10_PORTADATAIN_bus\,
	portbdatain => \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a10_PORTBDATAIN_bus\,
	portaaddr => \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a10_PORTAADDR_bus\,
	portbaddr => \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a10_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a10_PORTADATAOUT_bus\,
	portbdataout => \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a10_PORTBDATAOUT_bus\);

\data[2]~43\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data[2]~43_combout\ = (!\Equal17~0_combout\ & ((\Equal18~0_combout\ & ((reg_mrbs(2)))) # (!\Equal18~0_combout\ & (!\Equal19~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal19~0_combout\,
	datab => \Equal18~0_combout\,
	datac => \Equal17~0_combout\,
	datad => reg_mrbs(2),
	combout => \data[2]~43_combout\);

\data[2]~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data[2]~44_combout\ = (\data[2]~17_combout\ & ((\data[2]~43_combout\ & (reg_fbs(2))) # (!\data[2]~43_combout\ & ((reg_srbs(2)))))) # (!\data[2]~17_combout\ & (((\data[2]~43_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => reg_fbs(2),
	datab => reg_srbs(2),
	datac => \data[2]~17_combout\,
	datad => \data[2]~43_combout\,
	combout => \data[2]~44_combout\);

\data[2]~45\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data[2]~45_combout\ = (\data[0]~20_combout\ & ((\data[2]~44_combout\) # ((\Equal14~1_combout\ & reg_stbkcr(2))))) # (!\data[0]~20_combout\ & (\Equal14~1_combout\ & (reg_stbkcr(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data[0]~20_combout\,
	datab => \Equal14~1_combout\,
	datac => reg_stbkcr(2),
	datad => \data[2]~44_combout\,
	combout => \data[2]~45_combout\);

\u1|dpram_master|altsyncram_component|auto_generated|ram_block1a2\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
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
	portawe => \u1|master_wren~q\,
	portare => VCC,
	portbwe => \u1|dpram_master|altsyncram_component|auto_generated|decode3|eq_node\(0),
	portbre => \u1|comb~0_combout\,
	clk0 => \u1|master_ram_clk~combout\,
	clk1 => \ALT_INV_phi2_early~reg0_q\,
	ena1 => \u1|dpram_master|altsyncram_component|auto_generated|rden_decode_b|eq_node[0]~1_combout\,
	portadatain => \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a2_PORTADATAIN_bus\,
	portbdatain => \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a2_PORTBDATAIN_bus\,
	portaaddr => \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a2_PORTAADDR_bus\,
	portbaddr => \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a2_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a2_PORTADATAOUT_bus\,
	portbdataout => \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a2_PORTBDATAOUT_bus\);

\u0|onchip_flash_0|avmm_data_controller|avmm_readdata~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|avmm_readdata~8_combout\ = (\u0|onchip_flash_0|altera_onchip_flash_block|drdout\(18)) # ((!\u0|onchip_flash_0|avmm_data_controller|csr_status_r_pass~q\) # (!\u0|onchip_flash_0|avmm_data_controller|reset_n_reg2~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|altera_onchip_flash_block|drdout\(18),
	datac => \u0|onchip_flash_0|avmm_data_controller|reset_n_reg2~q\,
	datad => \u0|onchip_flash_0|avmm_data_controller|csr_status_r_pass~q\,
	combout => \u0|onchip_flash_0|avmm_data_controller|avmm_readdata~8_combout\);

\u0|onchip_flash_0|avmm_data_controller|avmm_readdata[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk_57~input_o\,
	d => \u0|onchip_flash_0|avmm_data_controller|avmm_readdata~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|avmm_readdata\(18));

\flash_data_latch[18]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \flash_data_latch[18]~8_combout\ = !\u0|onchip_flash_0|avmm_data_controller|avmm_readdata\(18)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|avmm_readdata\(18),
	combout => \flash_data_latch[18]~8_combout\);

\flash_data_latch[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk_57~input_o\,
	d => \flash_data_latch[18]~8_combout\,
	ena => \u0|onchip_flash_0|avmm_data_controller|avmm_readdatavalid_reg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => flash_data_latch(18));

\u0|onchip_flash_0|avmm_data_controller|avmm_readdata~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|avmm_readdata~9_combout\ = (\u0|onchip_flash_0|altera_onchip_flash_block|drdout\(10)) # ((!\u0|onchip_flash_0|avmm_data_controller|csr_status_r_pass~q\) # (!\u0|onchip_flash_0|avmm_data_controller|reset_n_reg2~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|altera_onchip_flash_block|drdout\(10),
	datac => \u0|onchip_flash_0|avmm_data_controller|reset_n_reg2~q\,
	datad => \u0|onchip_flash_0|avmm_data_controller|csr_status_r_pass~q\,
	combout => \u0|onchip_flash_0|avmm_data_controller|avmm_readdata~9_combout\);

\u0|onchip_flash_0|avmm_data_controller|avmm_readdata[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk_57~input_o\,
	d => \u0|onchip_flash_0|avmm_data_controller|avmm_readdata~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|avmm_readdata\(10));

\flash_data_latch[10]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \flash_data_latch[10]~9_combout\ = !\u0|onchip_flash_0|avmm_data_controller|avmm_readdata\(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|avmm_readdata\(10),
	combout => \flash_data_latch[10]~9_combout\);

\flash_data_latch[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk_57~input_o\,
	d => \flash_data_latch[10]~9_combout\,
	ena => \u0|onchip_flash_0|avmm_data_controller|avmm_readdatavalid_reg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => flash_data_latch(10));

\u0|onchip_flash_0|avmm_data_controller|avmm_readdata~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|avmm_readdata~10_combout\ = (\u0|onchip_flash_0|altera_onchip_flash_block|drdout\(2)) # ((!\u0|onchip_flash_0|avmm_data_controller|csr_status_r_pass~q\) # (!\u0|onchip_flash_0|avmm_data_controller|reset_n_reg2~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|altera_onchip_flash_block|drdout\(2),
	datac => \u0|onchip_flash_0|avmm_data_controller|reset_n_reg2~q\,
	datad => \u0|onchip_flash_0|avmm_data_controller|csr_status_r_pass~q\,
	combout => \u0|onchip_flash_0|avmm_data_controller|avmm_readdata~10_combout\);

\u0|onchip_flash_0|avmm_data_controller|avmm_readdata[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk_57~input_o\,
	d => \u0|onchip_flash_0|avmm_data_controller|avmm_readdata~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|avmm_readdata\(2));

\flash_data_latch[2]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \flash_data_latch[2]~10_combout\ = !\u0|onchip_flash_0|avmm_data_controller|avmm_readdata\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|avmm_readdata\(2),
	combout => \flash_data_latch[2]~10_combout\);

\flash_data_latch[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk_57~input_o\,
	d => \flash_data_latch[2]~10_combout\,
	ena => \u0|onchip_flash_0|avmm_data_controller|avmm_readdatavalid_reg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => flash_data_latch(2));

\data[2]~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data[2]~46_combout\ = (addr_latch(1) & ((addr_latch(0) & ((!flash_data_latch(2)))) # (!addr_latch(0) & (!flash_data_latch(10))))) # (!addr_latch(1) & (((!addr_latch(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011110100111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => addr_latch(1),
	datab => flash_data_latch(10),
	datac => addr_latch(0),
	datad => flash_data_latch(2),
	combout => \data[2]~46_combout\);

\u0|onchip_flash_0|avmm_data_controller|avmm_readdata~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|avmm_readdata~11_combout\ = (\u0|onchip_flash_0|altera_onchip_flash_block|drdout\(26)) # ((!\u0|onchip_flash_0|avmm_data_controller|csr_status_r_pass~q\) # (!\u0|onchip_flash_0|avmm_data_controller|reset_n_reg2~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|altera_onchip_flash_block|drdout\(26),
	datac => \u0|onchip_flash_0|avmm_data_controller|reset_n_reg2~q\,
	datad => \u0|onchip_flash_0|avmm_data_controller|csr_status_r_pass~q\,
	combout => \u0|onchip_flash_0|avmm_data_controller|avmm_readdata~11_combout\);

\u0|onchip_flash_0|avmm_data_controller|avmm_readdata[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk_57~input_o\,
	d => \u0|onchip_flash_0|avmm_data_controller|avmm_readdata~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|avmm_readdata\(26));

\flash_data_latch[26]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \flash_data_latch[26]~11_combout\ = !\u0|onchip_flash_0|avmm_data_controller|avmm_readdata\(26)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|avmm_readdata\(26),
	combout => \flash_data_latch[26]~11_combout\);

\flash_data_latch[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk_57~input_o\,
	d => \flash_data_latch[26]~11_combout\,
	ena => \u0|onchip_flash_0|avmm_data_controller|avmm_readdatavalid_reg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => flash_data_latch(26));

\data[2]~47\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data[2]~47_combout\ = (addr_latch(1) & (((\data[2]~46_combout\)))) # (!addr_latch(1) & ((\data[2]~46_combout\ & ((!flash_data_latch(26)))) # (!\data[2]~46_combout\ & (!flash_data_latch(18)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000111110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => flash_data_latch(18),
	datab => addr_latch(1),
	datac => \data[2]~46_combout\,
	datad => flash_data_latch(26),
	combout => \data[2]~47_combout\);

\data[2]~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data[2]~48_combout\ = (\data[2]~23_combout\ & (((\slave_din[0]~2_combout\)))) # (!\data[2]~23_combout\ & ((\slave_din[0]~2_combout\ & (\u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a2~PORTBDATAOUT0\)) # (!\slave_din[0]~2_combout\ & 
-- ((\data[2]~47_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data[2]~23_combout\,
	datab => \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a2~PORTBDATAOUT0\,
	datac => \slave_din[0]~2_combout\,
	datad => \data[2]~47_combout\,
	combout => \data[2]~48_combout\);

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
	port_a_first_address => 8192,
	port_a_first_bit_number => 2,
	port_a_last_address => 16383,
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
	port_b_first_address => 8192,
	port_b_first_bit_number => 2,
	port_b_last_address => 16383,
	port_b_logical_ram_depth => 16384,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "old_data",
	port_b_read_enable_clock => "clock1",
	port_b_write_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portare => \u1|slave_rden~q\,
	portbwe => \u1|dpram_slave|altsyncram_component|auto_generated|decode3|eq_node\(1),
	portbre => \u1|comb~1_combout\,
	clk0 => \u1|slave_ram_clk~combout\,
	clk1 => \ALT_INV_phi2_early~reg0_q\,
	ena0 => GND,
	ena1 => \u1|dpram_slave|altsyncram_component|auto_generated|rden_decode_b|eq_node[1]~1_combout\,
	portadatain => \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a10_PORTADATAIN_bus\,
	portbdatain => \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a10_PORTBDATAIN_bus\,
	portaaddr => \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a10_PORTAADDR_bus\,
	portbaddr => \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a10_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a10_PORTADATAOUT_bus\,
	portbdataout => \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a10_PORTBDATAOUT_bus\);

\data[2]~49\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data[2]~49_combout\ = (\data[2]~23_combout\ & ((\data[2]~48_combout\ & ((\u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a10~PORTBDATAOUT0\))) # (!\data[2]~48_combout\ & 
-- (\u1|dpram_master|altsyncram_component|auto_generated|ram_block1a2~PORTBDATAOUT0\)))) # (!\data[2]~23_combout\ & (((\data[2]~48_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a2~PORTBDATAOUT0\,
	datab => \data[2]~23_combout\,
	datac => \data[2]~48_combout\,
	datad => \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a10~PORTBDATAOUT0\,
	combout => \data[2]~49_combout\);

\data[2]~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data[2]~50_combout\ = (\data[2]~16_combout\ & (((\data[2]~22_combout\)))) # (!\data[2]~16_combout\ & ((\data[2]~22_combout\ & (\data[2]~45_combout\)) # (!\data[2]~22_combout\ & ((\data[2]~49_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data[2]~16_combout\,
	datab => \data[2]~45_combout\,
	datac => \data[2]~22_combout\,
	datad => \data[2]~49_combout\,
	combout => \data[2]~50_combout\);

\data[2]~51\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data[2]~51_combout\ = (\data[2]~16_combout\ & ((\data[2]~50_combout\ & ((reg_stbycr(2)))) # (!\data[2]~50_combout\ & (reg_sdcr(2))))) # (!\data[2]~16_combout\ & (((\data[2]~50_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => reg_sdcr(2),
	datab => \data[2]~16_combout\,
	datac => \data[2]~50_combout\,
	datad => reg_stbycr(2),
	combout => \data[2]~51_combout\);

\data[2]~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data[2]~52_combout\ = (\data[2]~30_combout\ & (\u1|dpram_master|altsyncram_component|auto_generated|ram_block1a10~PORTBDATAOUT0\)) # (!\data[2]~30_combout\ & ((\data[2]~51_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a10~PORTBDATAOUT0\,
	datab => \data[2]~51_combout\,
	datad => \data[2]~30_combout\,
	combout => \data[2]~52_combout\);

\u1|rx_buf[3]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|rx_buf[3]~6_combout\ = (\u1|rx_buf[1]~2_combout\ & ((\u1|rx_buf[2]~4_combout\ & (\spi_mosi~input_o\)) # (!\u1|rx_buf[2]~4_combout\ & ((\u1|rx_buf\(3)))))) # (!\u1|rx_buf[1]~2_combout\ & (((\u1|rx_buf\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi_mosi~input_o\,
	datab => \u1|rx_buf\(3),
	datac => \u1|rx_buf[1]~2_combout\,
	datad => \u1|rx_buf[2]~4_combout\,
	combout => \u1|rx_buf[3]~6_combout\);

\u1|rx_buf[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \spi_clk~input_o\,
	d => \u1|rx_buf[3]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|rx_buf\(3));

\master_din[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_phi2_early~reg0_q\,
	d => \data[3]~input_o\,
	ena => \master_din[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => master_din(3));

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
	port_a_first_address => 8192,
	port_a_first_bit_number => 3,
	port_a_last_address => 16383,
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
	port_b_first_address => 8192,
	port_b_first_bit_number => 3,
	port_b_last_address => 16383,
	port_b_logical_ram_depth => 16384,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "old_data",
	port_b_read_enable_clock => "clock1",
	port_b_write_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portare => VCC,
	portbwe => \u1|dpram_master|altsyncram_component|auto_generated|decode3|eq_node\(1),
	portbre => \u1|comb~0_combout\,
	clk0 => \u1|master_ram_clk~combout\,
	clk1 => \ALT_INV_phi2_early~reg0_q\,
	ena0 => GND,
	ena1 => \u1|dpram_master|altsyncram_component|auto_generated|rden_decode_b|eq_node[1]~0_combout\,
	portadatain => \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a11_PORTADATAIN_bus\,
	portbdatain => \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a11_PORTBDATAIN_bus\,
	portaaddr => \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a11_PORTAADDR_bus\,
	portbaddr => \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a11_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a11_PORTADATAOUT_bus\,
	portbdataout => \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a11_PORTBDATAOUT_bus\);

\data[3]~53\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data[3]~53_combout\ = (!\Equal17~0_combout\ & ((\Equal18~0_combout\ & ((reg_mrbs(3)))) # (!\Equal18~0_combout\ & (!\Equal19~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal19~0_combout\,
	datab => \Equal18~0_combout\,
	datac => \Equal17~0_combout\,
	datad => reg_mrbs(3),
	combout => \data[3]~53_combout\);

\data[3]~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data[3]~54_combout\ = (\data[2]~17_combout\ & ((\data[3]~53_combout\ & (reg_fbs(3))) # (!\data[3]~53_combout\ & ((reg_srbs(3)))))) # (!\data[2]~17_combout\ & (((\data[3]~53_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => reg_fbs(3),
	datab => reg_srbs(3),
	datac => \data[2]~17_combout\,
	datad => \data[3]~53_combout\,
	combout => \data[3]~54_combout\);

\data[3]~55\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data[3]~55_combout\ = (\data[0]~20_combout\ & ((\data[3]~54_combout\) # ((\Equal14~1_combout\ & reg_stbkcr(3))))) # (!\data[0]~20_combout\ & (\Equal14~1_combout\ & (reg_stbkcr(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data[0]~20_combout\,
	datab => \Equal14~1_combout\,
	datac => reg_stbkcr(3),
	datad => \data[3]~54_combout\,
	combout => \data[3]~55_combout\);

\u1|dpram_master|altsyncram_component|auto_generated|ram_block1a3\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
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
	portawe => \u1|master_wren~q\,
	portare => VCC,
	portbwe => \u1|dpram_master|altsyncram_component|auto_generated|decode3|eq_node\(0),
	portbre => \u1|comb~0_combout\,
	clk0 => \u1|master_ram_clk~combout\,
	clk1 => \ALT_INV_phi2_early~reg0_q\,
	ena1 => \u1|dpram_master|altsyncram_component|auto_generated|rden_decode_b|eq_node[0]~1_combout\,
	portadatain => \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a3_PORTADATAIN_bus\,
	portbdatain => \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a3_PORTBDATAIN_bus\,
	portaaddr => \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a3_PORTAADDR_bus\,
	portbaddr => \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a3_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a3_PORTADATAOUT_bus\,
	portbdataout => \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a3_PORTBDATAOUT_bus\);

\u0|onchip_flash_0|avmm_data_controller|avmm_readdata~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|avmm_readdata~12_combout\ = (\u0|onchip_flash_0|altera_onchip_flash_block|drdout\(11)) # ((!\u0|onchip_flash_0|avmm_data_controller|csr_status_r_pass~q\) # (!\u0|onchip_flash_0|avmm_data_controller|reset_n_reg2~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|altera_onchip_flash_block|drdout\(11),
	datac => \u0|onchip_flash_0|avmm_data_controller|reset_n_reg2~q\,
	datad => \u0|onchip_flash_0|avmm_data_controller|csr_status_r_pass~q\,
	combout => \u0|onchip_flash_0|avmm_data_controller|avmm_readdata~12_combout\);

\u0|onchip_flash_0|avmm_data_controller|avmm_readdata[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk_57~input_o\,
	d => \u0|onchip_flash_0|avmm_data_controller|avmm_readdata~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|avmm_readdata\(11));

\flash_data_latch[11]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \flash_data_latch[11]~12_combout\ = !\u0|onchip_flash_0|avmm_data_controller|avmm_readdata\(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|avmm_readdata\(11),
	combout => \flash_data_latch[11]~12_combout\);

\flash_data_latch[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk_57~input_o\,
	d => \flash_data_latch[11]~12_combout\,
	ena => \u0|onchip_flash_0|avmm_data_controller|avmm_readdatavalid_reg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => flash_data_latch(11));

\u0|onchip_flash_0|avmm_data_controller|avmm_readdata~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|avmm_readdata~13_combout\ = (\u0|onchip_flash_0|altera_onchip_flash_block|drdout\(19)) # ((!\u0|onchip_flash_0|avmm_data_controller|csr_status_r_pass~q\) # (!\u0|onchip_flash_0|avmm_data_controller|reset_n_reg2~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|altera_onchip_flash_block|drdout\(19),
	datac => \u0|onchip_flash_0|avmm_data_controller|reset_n_reg2~q\,
	datad => \u0|onchip_flash_0|avmm_data_controller|csr_status_r_pass~q\,
	combout => \u0|onchip_flash_0|avmm_data_controller|avmm_readdata~13_combout\);

\u0|onchip_flash_0|avmm_data_controller|avmm_readdata[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk_57~input_o\,
	d => \u0|onchip_flash_0|avmm_data_controller|avmm_readdata~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|avmm_readdata\(19));

\flash_data_latch[19]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \flash_data_latch[19]~13_combout\ = !\u0|onchip_flash_0|avmm_data_controller|avmm_readdata\(19)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|avmm_readdata\(19),
	combout => \flash_data_latch[19]~13_combout\);

\flash_data_latch[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk_57~input_o\,
	d => \flash_data_latch[19]~13_combout\,
	ena => \u0|onchip_flash_0|avmm_data_controller|avmm_readdatavalid_reg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => flash_data_latch(19));

\u0|onchip_flash_0|avmm_data_controller|avmm_readdata~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|avmm_readdata~14_combout\ = (\u0|onchip_flash_0|altera_onchip_flash_block|drdout\(3)) # ((!\u0|onchip_flash_0|avmm_data_controller|csr_status_r_pass~q\) # (!\u0|onchip_flash_0|avmm_data_controller|reset_n_reg2~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|altera_onchip_flash_block|drdout\(3),
	datac => \u0|onchip_flash_0|avmm_data_controller|reset_n_reg2~q\,
	datad => \u0|onchip_flash_0|avmm_data_controller|csr_status_r_pass~q\,
	combout => \u0|onchip_flash_0|avmm_data_controller|avmm_readdata~14_combout\);

\u0|onchip_flash_0|avmm_data_controller|avmm_readdata[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk_57~input_o\,
	d => \u0|onchip_flash_0|avmm_data_controller|avmm_readdata~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|avmm_readdata\(3));

\flash_data_latch[3]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \flash_data_latch[3]~14_combout\ = !\u0|onchip_flash_0|avmm_data_controller|avmm_readdata\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|avmm_readdata\(3),
	combout => \flash_data_latch[3]~14_combout\);

\flash_data_latch[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk_57~input_o\,
	d => \flash_data_latch[3]~14_combout\,
	ena => \u0|onchip_flash_0|avmm_data_controller|avmm_readdatavalid_reg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => flash_data_latch(3));

\data[3]~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data[3]~56_combout\ = (addr_latch(0) & ((addr_latch(1) & ((!flash_data_latch(3)))) # (!addr_latch(1) & (!flash_data_latch(19))))) # (!addr_latch(0) & (((!addr_latch(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011110100111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => addr_latch(0),
	datab => flash_data_latch(19),
	datac => addr_latch(1),
	datad => flash_data_latch(3),
	combout => \data[3]~56_combout\);

\u0|onchip_flash_0|avmm_data_controller|avmm_readdata~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|avmm_readdata~15_combout\ = (\u0|onchip_flash_0|altera_onchip_flash_block|drdout\(27)) # ((!\u0|onchip_flash_0|avmm_data_controller|csr_status_r_pass~q\) # (!\u0|onchip_flash_0|avmm_data_controller|reset_n_reg2~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|altera_onchip_flash_block|drdout\(27),
	datac => \u0|onchip_flash_0|avmm_data_controller|reset_n_reg2~q\,
	datad => \u0|onchip_flash_0|avmm_data_controller|csr_status_r_pass~q\,
	combout => \u0|onchip_flash_0|avmm_data_controller|avmm_readdata~15_combout\);

\u0|onchip_flash_0|avmm_data_controller|avmm_readdata[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk_57~input_o\,
	d => \u0|onchip_flash_0|avmm_data_controller|avmm_readdata~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|avmm_readdata\(27));

\flash_data_latch[27]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \flash_data_latch[27]~15_combout\ = !\u0|onchip_flash_0|avmm_data_controller|avmm_readdata\(27)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|avmm_readdata\(27),
	combout => \flash_data_latch[27]~15_combout\);

\flash_data_latch[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk_57~input_o\,
	d => \flash_data_latch[27]~15_combout\,
	ena => \u0|onchip_flash_0|avmm_data_controller|avmm_readdatavalid_reg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => flash_data_latch(27));

\data[3]~57\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data[3]~57_combout\ = (addr_latch(0) & (((\data[3]~56_combout\)))) # (!addr_latch(0) & ((\data[3]~56_combout\ & ((!flash_data_latch(27)))) # (!\data[3]~56_combout\ & (!flash_data_latch(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000111110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => flash_data_latch(11),
	datab => addr_latch(0),
	datac => \data[3]~56_combout\,
	datad => flash_data_latch(27),
	combout => \data[3]~57_combout\);

\data[3]~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data[3]~58_combout\ = (\slave_din[0]~2_combout\ & (((\data[2]~23_combout\)))) # (!\slave_din[0]~2_combout\ & ((\data[2]~23_combout\ & (\u1|dpram_master|altsyncram_component|auto_generated|ram_block1a3~PORTBDATAOUT0\)) # (!\data[2]~23_combout\ & 
-- ((\data[3]~57_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \slave_din[0]~2_combout\,
	datab => \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a3~PORTBDATAOUT0\,
	datac => \data[2]~23_combout\,
	datad => \data[3]~57_combout\,
	combout => \data[3]~58_combout\);

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
	port_a_first_address => 8192,
	port_a_first_bit_number => 3,
	port_a_last_address => 16383,
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
	port_b_first_address => 8192,
	port_b_first_bit_number => 3,
	port_b_last_address => 16383,
	port_b_logical_ram_depth => 16384,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "old_data",
	port_b_read_enable_clock => "clock1",
	port_b_write_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portare => \u1|slave_rden~q\,
	portbwe => \u1|dpram_slave|altsyncram_component|auto_generated|decode3|eq_node\(1),
	portbre => \u1|comb~1_combout\,
	clk0 => \u1|slave_ram_clk~combout\,
	clk1 => \ALT_INV_phi2_early~reg0_q\,
	ena0 => GND,
	ena1 => \u1|dpram_slave|altsyncram_component|auto_generated|rden_decode_b|eq_node[1]~1_combout\,
	portadatain => \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a11_PORTADATAIN_bus\,
	portbdatain => \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a11_PORTBDATAIN_bus\,
	portaaddr => \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a11_PORTAADDR_bus\,
	portbaddr => \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a11_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a11_PORTADATAOUT_bus\,
	portbdataout => \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a11_PORTBDATAOUT_bus\);

\data[3]~59\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data[3]~59_combout\ = (\slave_din[0]~2_combout\ & ((\data[3]~58_combout\ & ((\u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a11~PORTBDATAOUT0\))) # (!\data[3]~58_combout\ & 
-- (\u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a3~PORTBDATAOUT0\)))) # (!\slave_din[0]~2_combout\ & (((\data[3]~58_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a3~PORTBDATAOUT0\,
	datab => \slave_din[0]~2_combout\,
	datac => \data[3]~58_combout\,
	datad => \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a11~PORTBDATAOUT0\,
	combout => \data[3]~59_combout\);

\data[3]~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data[3]~60_combout\ = (\data[2]~22_combout\ & (((\data[2]~16_combout\)))) # (!\data[2]~22_combout\ & ((\data[2]~16_combout\ & (reg_sdcr(3))) # (!\data[2]~16_combout\ & ((\data[3]~59_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data[2]~22_combout\,
	datab => reg_sdcr(3),
	datac => \data[2]~16_combout\,
	datad => \data[3]~59_combout\,
	combout => \data[3]~60_combout\);

\data[3]~61\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data[3]~61_combout\ = (\data[2]~22_combout\ & ((\data[3]~60_combout\ & ((reg_stbycr(3)))) # (!\data[3]~60_combout\ & (\data[3]~55_combout\)))) # (!\data[2]~22_combout\ & (((\data[3]~60_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data[3]~55_combout\,
	datab => \data[2]~22_combout\,
	datac => \data[3]~60_combout\,
	datad => reg_stbycr(3),
	combout => \data[3]~61_combout\);

\data[3]~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data[3]~62_combout\ = (\data[2]~30_combout\ & (\u1|dpram_master|altsyncram_component|auto_generated|ram_block1a11~PORTBDATAOUT0\)) # (!\data[2]~30_combout\ & ((\data[3]~61_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a11~PORTBDATAOUT0\,
	datab => \data[3]~61_combout\,
	datad => \data[2]~30_combout\,
	combout => \data[3]~62_combout\);

\u1|rx_buf[4]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|rx_buf[4]~7_combout\ = (\u1|bit_cnt\(2) & !\u1|bit_cnt\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|bit_cnt\(2),
	datad => \u1|bit_cnt\(1),
	combout => \u1|rx_buf[4]~7_combout\);

\u1|rx_buf[4]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|rx_buf[4]~8_combout\ = (\u1|rx_buf[0]~0_combout\ & ((\u1|rx_buf[4]~7_combout\ & (\spi_mosi~input_o\)) # (!\u1|rx_buf[4]~7_combout\ & ((\u1|rx_buf\(4)))))) # (!\u1|rx_buf[0]~0_combout\ & (((\u1|rx_buf\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi_mosi~input_o\,
	datab => \u1|rx_buf\(4),
	datac => \u1|rx_buf[0]~0_combout\,
	datad => \u1|rx_buf[4]~7_combout\,
	combout => \u1|rx_buf[4]~8_combout\);

\u1|rx_buf[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \spi_clk~input_o\,
	d => \u1|rx_buf[4]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|rx_buf\(4));

\master_din[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_phi2_early~reg0_q\,
	d => \data[4]~input_o\,
	ena => \master_din[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => master_din(4));

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
	port_a_first_address => 8192,
	port_a_first_bit_number => 4,
	port_a_last_address => 16383,
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
	port_b_first_address => 8192,
	port_b_first_bit_number => 4,
	port_b_last_address => 16383,
	port_b_logical_ram_depth => 16384,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "old_data",
	port_b_read_enable_clock => "clock1",
	port_b_write_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portare => VCC,
	portbwe => \u1|dpram_master|altsyncram_component|auto_generated|decode3|eq_node\(1),
	portbre => \u1|comb~0_combout\,
	clk0 => \u1|master_ram_clk~combout\,
	clk1 => \ALT_INV_phi2_early~reg0_q\,
	ena0 => GND,
	ena1 => \u1|dpram_master|altsyncram_component|auto_generated|rden_decode_b|eq_node[1]~0_combout\,
	portadatain => \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a12_PORTADATAIN_bus\,
	portbdatain => \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a12_PORTBDATAIN_bus\,
	portaaddr => \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a12_PORTAADDR_bus\,
	portbaddr => \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a12_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a12_PORTADATAOUT_bus\,
	portbdataout => \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a12_PORTBDATAOUT_bus\);

\data[4]~63\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data[4]~63_combout\ = (!\Equal17~0_combout\ & ((\Equal18~0_combout\ & ((reg_mrbs(4)))) # (!\Equal18~0_combout\ & (!\Equal19~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal19~0_combout\,
	datab => \Equal18~0_combout\,
	datac => \Equal17~0_combout\,
	datad => reg_mrbs(4),
	combout => \data[4]~63_combout\);

\data[4]~64\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data[4]~64_combout\ = (\data[2]~17_combout\ & ((\data[4]~63_combout\ & (reg_fbs(4))) # (!\data[4]~63_combout\ & ((reg_srbs(4)))))) # (!\data[2]~17_combout\ & (((\data[4]~63_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => reg_fbs(4),
	datab => reg_srbs(4),
	datac => \data[2]~17_combout\,
	datad => \data[4]~63_combout\,
	combout => \data[4]~64_combout\);

\data[4]~65\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data[4]~65_combout\ = (\data[0]~20_combout\ & ((\data[4]~64_combout\) # ((\Equal14~1_combout\ & reg_stbkcr(4))))) # (!\data[0]~20_combout\ & (\Equal14~1_combout\ & (reg_stbkcr(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data[0]~20_combout\,
	datab => \Equal14~1_combout\,
	datac => reg_stbkcr(4),
	datad => \data[4]~64_combout\,
	combout => \data[4]~65_combout\);

\u1|dpram_master|altsyncram_component|auto_generated|ram_block1a4\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
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
	portawe => \u1|master_wren~q\,
	portare => VCC,
	portbwe => \u1|dpram_master|altsyncram_component|auto_generated|decode3|eq_node\(0),
	portbre => \u1|comb~0_combout\,
	clk0 => \u1|master_ram_clk~combout\,
	clk1 => \ALT_INV_phi2_early~reg0_q\,
	ena1 => \u1|dpram_master|altsyncram_component|auto_generated|rden_decode_b|eq_node[0]~1_combout\,
	portadatain => \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a4_PORTADATAIN_bus\,
	portbdatain => \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a4_PORTBDATAIN_bus\,
	portaaddr => \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a4_PORTAADDR_bus\,
	portbaddr => \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a4_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a4_PORTADATAOUT_bus\,
	portbdataout => \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a4_PORTBDATAOUT_bus\);

\u0|onchip_flash_0|avmm_data_controller|avmm_readdata~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|avmm_readdata~16_combout\ = (\u0|onchip_flash_0|altera_onchip_flash_block|drdout\(20)) # ((!\u0|onchip_flash_0|avmm_data_controller|csr_status_r_pass~q\) # (!\u0|onchip_flash_0|avmm_data_controller|reset_n_reg2~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|altera_onchip_flash_block|drdout\(20),
	datac => \u0|onchip_flash_0|avmm_data_controller|reset_n_reg2~q\,
	datad => \u0|onchip_flash_0|avmm_data_controller|csr_status_r_pass~q\,
	combout => \u0|onchip_flash_0|avmm_data_controller|avmm_readdata~16_combout\);

\u0|onchip_flash_0|avmm_data_controller|avmm_readdata[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk_57~input_o\,
	d => \u0|onchip_flash_0|avmm_data_controller|avmm_readdata~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|avmm_readdata\(20));

\flash_data_latch[20]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \flash_data_latch[20]~16_combout\ = !\u0|onchip_flash_0|avmm_data_controller|avmm_readdata\(20)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|avmm_readdata\(20),
	combout => \flash_data_latch[20]~16_combout\);

\flash_data_latch[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk_57~input_o\,
	d => \flash_data_latch[20]~16_combout\,
	ena => \u0|onchip_flash_0|avmm_data_controller|avmm_readdatavalid_reg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => flash_data_latch(20));

\u0|onchip_flash_0|avmm_data_controller|avmm_readdata~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|avmm_readdata~17_combout\ = (\u0|onchip_flash_0|altera_onchip_flash_block|drdout\(12)) # ((!\u0|onchip_flash_0|avmm_data_controller|csr_status_r_pass~q\) # (!\u0|onchip_flash_0|avmm_data_controller|reset_n_reg2~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|altera_onchip_flash_block|drdout\(12),
	datac => \u0|onchip_flash_0|avmm_data_controller|reset_n_reg2~q\,
	datad => \u0|onchip_flash_0|avmm_data_controller|csr_status_r_pass~q\,
	combout => \u0|onchip_flash_0|avmm_data_controller|avmm_readdata~17_combout\);

\u0|onchip_flash_0|avmm_data_controller|avmm_readdata[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk_57~input_o\,
	d => \u0|onchip_flash_0|avmm_data_controller|avmm_readdata~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|avmm_readdata\(12));

\flash_data_latch[12]~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \flash_data_latch[12]~17_combout\ = !\u0|onchip_flash_0|avmm_data_controller|avmm_readdata\(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|avmm_readdata\(12),
	combout => \flash_data_latch[12]~17_combout\);

\flash_data_latch[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk_57~input_o\,
	d => \flash_data_latch[12]~17_combout\,
	ena => \u0|onchip_flash_0|avmm_data_controller|avmm_readdatavalid_reg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => flash_data_latch(12));

\u0|onchip_flash_0|avmm_data_controller|avmm_readdata~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|avmm_readdata~18_combout\ = (\u0|onchip_flash_0|altera_onchip_flash_block|drdout\(4)) # ((!\u0|onchip_flash_0|avmm_data_controller|csr_status_r_pass~q\) # (!\u0|onchip_flash_0|avmm_data_controller|reset_n_reg2~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|altera_onchip_flash_block|drdout\(4),
	datac => \u0|onchip_flash_0|avmm_data_controller|reset_n_reg2~q\,
	datad => \u0|onchip_flash_0|avmm_data_controller|csr_status_r_pass~q\,
	combout => \u0|onchip_flash_0|avmm_data_controller|avmm_readdata~18_combout\);

\u0|onchip_flash_0|avmm_data_controller|avmm_readdata[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk_57~input_o\,
	d => \u0|onchip_flash_0|avmm_data_controller|avmm_readdata~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|avmm_readdata\(4));

\flash_data_latch[4]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \flash_data_latch[4]~18_combout\ = !\u0|onchip_flash_0|avmm_data_controller|avmm_readdata\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|avmm_readdata\(4),
	combout => \flash_data_latch[4]~18_combout\);

\flash_data_latch[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk_57~input_o\,
	d => \flash_data_latch[4]~18_combout\,
	ena => \u0|onchip_flash_0|avmm_data_controller|avmm_readdatavalid_reg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => flash_data_latch(4));

\data[4]~66\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data[4]~66_combout\ = (addr_latch(1) & ((addr_latch(0) & ((!flash_data_latch(4)))) # (!addr_latch(0) & (!flash_data_latch(12))))) # (!addr_latch(1) & (((!addr_latch(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011110100111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => addr_latch(1),
	datab => flash_data_latch(12),
	datac => addr_latch(0),
	datad => flash_data_latch(4),
	combout => \data[4]~66_combout\);

\u0|onchip_flash_0|avmm_data_controller|avmm_readdata~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|avmm_readdata~19_combout\ = (\u0|onchip_flash_0|altera_onchip_flash_block|drdout\(28)) # ((!\u0|onchip_flash_0|avmm_data_controller|csr_status_r_pass~q\) # (!\u0|onchip_flash_0|avmm_data_controller|reset_n_reg2~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|altera_onchip_flash_block|drdout\(28),
	datac => \u0|onchip_flash_0|avmm_data_controller|reset_n_reg2~q\,
	datad => \u0|onchip_flash_0|avmm_data_controller|csr_status_r_pass~q\,
	combout => \u0|onchip_flash_0|avmm_data_controller|avmm_readdata~19_combout\);

\u0|onchip_flash_0|avmm_data_controller|avmm_readdata[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk_57~input_o\,
	d => \u0|onchip_flash_0|avmm_data_controller|avmm_readdata~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|avmm_readdata\(28));

\flash_data_latch[28]~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \flash_data_latch[28]~19_combout\ = !\u0|onchip_flash_0|avmm_data_controller|avmm_readdata\(28)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|avmm_readdata\(28),
	combout => \flash_data_latch[28]~19_combout\);

\flash_data_latch[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk_57~input_o\,
	d => \flash_data_latch[28]~19_combout\,
	ena => \u0|onchip_flash_0|avmm_data_controller|avmm_readdatavalid_reg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => flash_data_latch(28));

\data[4]~67\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data[4]~67_combout\ = (addr_latch(1) & (((\data[4]~66_combout\)))) # (!addr_latch(1) & ((\data[4]~66_combout\ & ((!flash_data_latch(28)))) # (!\data[4]~66_combout\ & (!flash_data_latch(20)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000111110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => flash_data_latch(20),
	datab => addr_latch(1),
	datac => \data[4]~66_combout\,
	datad => flash_data_latch(28),
	combout => \data[4]~67_combout\);

\data[4]~68\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data[4]~68_combout\ = (\data[2]~23_combout\ & (((\slave_din[0]~2_combout\)))) # (!\data[2]~23_combout\ & ((\slave_din[0]~2_combout\ & (\u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a4~PORTBDATAOUT0\)) # (!\slave_din[0]~2_combout\ & 
-- ((\data[4]~67_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data[2]~23_combout\,
	datab => \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a4~PORTBDATAOUT0\,
	datac => \slave_din[0]~2_combout\,
	datad => \data[4]~67_combout\,
	combout => \data[4]~68_combout\);

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
	port_a_first_address => 8192,
	port_a_first_bit_number => 4,
	port_a_last_address => 16383,
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
	port_b_first_address => 8192,
	port_b_first_bit_number => 4,
	port_b_last_address => 16383,
	port_b_logical_ram_depth => 16384,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "old_data",
	port_b_read_enable_clock => "clock1",
	port_b_write_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portare => \u1|slave_rden~q\,
	portbwe => \u1|dpram_slave|altsyncram_component|auto_generated|decode3|eq_node\(1),
	portbre => \u1|comb~1_combout\,
	clk0 => \u1|slave_ram_clk~combout\,
	clk1 => \ALT_INV_phi2_early~reg0_q\,
	ena0 => GND,
	ena1 => \u1|dpram_slave|altsyncram_component|auto_generated|rden_decode_b|eq_node[1]~1_combout\,
	portadatain => \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a12_PORTADATAIN_bus\,
	portbdatain => \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a12_PORTBDATAIN_bus\,
	portaaddr => \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a12_PORTAADDR_bus\,
	portbaddr => \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a12_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a12_PORTADATAOUT_bus\,
	portbdataout => \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a12_PORTBDATAOUT_bus\);

\data[4]~69\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data[4]~69_combout\ = (\data[2]~23_combout\ & ((\data[4]~68_combout\ & ((\u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a12~PORTBDATAOUT0\))) # (!\data[4]~68_combout\ & 
-- (\u1|dpram_master|altsyncram_component|auto_generated|ram_block1a4~PORTBDATAOUT0\)))) # (!\data[2]~23_combout\ & (((\data[4]~68_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a4~PORTBDATAOUT0\,
	datab => \data[2]~23_combout\,
	datac => \data[4]~68_combout\,
	datad => \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a12~PORTBDATAOUT0\,
	combout => \data[4]~69_combout\);

\data[4]~70\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data[4]~70_combout\ = (\data[2]~16_combout\ & (((\data[2]~22_combout\)))) # (!\data[2]~16_combout\ & ((\data[2]~22_combout\ & (\data[4]~65_combout\)) # (!\data[2]~22_combout\ & ((\data[4]~69_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data[2]~16_combout\,
	datab => \data[4]~65_combout\,
	datac => \data[2]~22_combout\,
	datad => \data[4]~69_combout\,
	combout => \data[4]~70_combout\);

\data[4]~71\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data[4]~71_combout\ = (\data[2]~16_combout\ & ((\data[4]~70_combout\ & ((reg_stbycr(4)))) # (!\data[4]~70_combout\ & (reg_sdcr(4))))) # (!\data[2]~16_combout\ & (((\data[4]~70_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => reg_sdcr(4),
	datab => \data[2]~16_combout\,
	datac => \data[4]~70_combout\,
	datad => reg_stbycr(4),
	combout => \data[4]~71_combout\);

\data[4]~72\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data[4]~72_combout\ = (\data[2]~30_combout\ & (\u1|dpram_master|altsyncram_component|auto_generated|ram_block1a12~PORTBDATAOUT0\)) # (!\data[2]~30_combout\ & ((\data[4]~71_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a12~PORTBDATAOUT0\,
	datab => \data[4]~71_combout\,
	datad => \data[2]~30_combout\,
	combout => \data[4]~72_combout\);

\u1|rx_buf[5]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|rx_buf[5]~9_combout\ = (\u1|rx_buf[1]~2_combout\ & ((\u1|rx_buf[4]~7_combout\ & (\spi_mosi~input_o\)) # (!\u1|rx_buf[4]~7_combout\ & ((\u1|rx_buf\(5)))))) # (!\u1|rx_buf[1]~2_combout\ & (((\u1|rx_buf\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi_mosi~input_o\,
	datab => \u1|rx_buf\(5),
	datac => \u1|rx_buf[1]~2_combout\,
	datad => \u1|rx_buf[4]~7_combout\,
	combout => \u1|rx_buf[5]~9_combout\);

\u1|rx_buf[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \spi_clk~input_o\,
	d => \u1|rx_buf[5]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|rx_buf\(5));

\master_din[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_phi2_early~reg0_q\,
	d => \data[5]~input_o\,
	ena => \master_din[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => master_din(5));

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
	port_a_first_address => 8192,
	port_a_first_bit_number => 5,
	port_a_last_address => 16383,
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
	port_b_first_address => 8192,
	port_b_first_bit_number => 5,
	port_b_last_address => 16383,
	port_b_logical_ram_depth => 16384,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "old_data",
	port_b_read_enable_clock => "clock1",
	port_b_write_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portare => VCC,
	portbwe => \u1|dpram_master|altsyncram_component|auto_generated|decode3|eq_node\(1),
	portbre => \u1|comb~0_combout\,
	clk0 => \u1|master_ram_clk~combout\,
	clk1 => \ALT_INV_phi2_early~reg0_q\,
	ena0 => GND,
	ena1 => \u1|dpram_master|altsyncram_component|auto_generated|rden_decode_b|eq_node[1]~0_combout\,
	portadatain => \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a13_PORTADATAIN_bus\,
	portbdatain => \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a13_PORTBDATAIN_bus\,
	portaaddr => \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a13_PORTAADDR_bus\,
	portbaddr => \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a13_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a13_PORTADATAOUT_bus\,
	portbdataout => \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a13_PORTBDATAOUT_bus\);

\data[5]~73\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data[5]~73_combout\ = (!\Equal17~0_combout\ & ((\Equal18~0_combout\ & ((reg_mrbs(5)))) # (!\Equal18~0_combout\ & (!\Equal19~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal19~0_combout\,
	datab => \Equal18~0_combout\,
	datac => \Equal17~0_combout\,
	datad => reg_mrbs(5),
	combout => \data[5]~73_combout\);

\data[5]~74\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data[5]~74_combout\ = (\data[2]~17_combout\ & ((\data[5]~73_combout\ & (reg_fbs(5))) # (!\data[5]~73_combout\ & ((reg_srbs(5)))))) # (!\data[2]~17_combout\ & (((\data[5]~73_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => reg_fbs(5),
	datab => reg_srbs(5),
	datac => \data[2]~17_combout\,
	datad => \data[5]~73_combout\,
	combout => \data[5]~74_combout\);

\data[5]~75\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data[5]~75_combout\ = (\data[0]~20_combout\ & ((\data[5]~74_combout\) # ((\Equal14~1_combout\ & reg_stbkcr(5))))) # (!\data[0]~20_combout\ & (\Equal14~1_combout\ & (reg_stbkcr(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data[0]~20_combout\,
	datab => \Equal14~1_combout\,
	datac => reg_stbkcr(5),
	datad => \data[5]~74_combout\,
	combout => \data[5]~75_combout\);

\u1|dpram_master|altsyncram_component|auto_generated|ram_block1a5\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
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
	portawe => \u1|master_wren~q\,
	portare => VCC,
	portbwe => \u1|dpram_master|altsyncram_component|auto_generated|decode3|eq_node\(0),
	portbre => \u1|comb~0_combout\,
	clk0 => \u1|master_ram_clk~combout\,
	clk1 => \ALT_INV_phi2_early~reg0_q\,
	ena1 => \u1|dpram_master|altsyncram_component|auto_generated|rden_decode_b|eq_node[0]~1_combout\,
	portadatain => \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a5_PORTADATAIN_bus\,
	portbdatain => \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a5_PORTBDATAIN_bus\,
	portaaddr => \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a5_PORTAADDR_bus\,
	portbaddr => \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a5_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a5_PORTADATAOUT_bus\,
	portbdataout => \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a5_PORTBDATAOUT_bus\);

\u0|onchip_flash_0|avmm_data_controller|avmm_readdata~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|avmm_readdata~20_combout\ = (\u0|onchip_flash_0|altera_onchip_flash_block|drdout\(13)) # ((!\u0|onchip_flash_0|avmm_data_controller|csr_status_r_pass~q\) # (!\u0|onchip_flash_0|avmm_data_controller|reset_n_reg2~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|altera_onchip_flash_block|drdout\(13),
	datac => \u0|onchip_flash_0|avmm_data_controller|reset_n_reg2~q\,
	datad => \u0|onchip_flash_0|avmm_data_controller|csr_status_r_pass~q\,
	combout => \u0|onchip_flash_0|avmm_data_controller|avmm_readdata~20_combout\);

\u0|onchip_flash_0|avmm_data_controller|avmm_readdata[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk_57~input_o\,
	d => \u0|onchip_flash_0|avmm_data_controller|avmm_readdata~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|avmm_readdata\(13));

\flash_data_latch[13]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \flash_data_latch[13]~20_combout\ = !\u0|onchip_flash_0|avmm_data_controller|avmm_readdata\(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|avmm_readdata\(13),
	combout => \flash_data_latch[13]~20_combout\);

\flash_data_latch[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk_57~input_o\,
	d => \flash_data_latch[13]~20_combout\,
	ena => \u0|onchip_flash_0|avmm_data_controller|avmm_readdatavalid_reg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => flash_data_latch(13));

\u0|onchip_flash_0|avmm_data_controller|avmm_readdata~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|avmm_readdata~21_combout\ = (\u0|onchip_flash_0|altera_onchip_flash_block|drdout\(21)) # ((!\u0|onchip_flash_0|avmm_data_controller|csr_status_r_pass~q\) # (!\u0|onchip_flash_0|avmm_data_controller|reset_n_reg2~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|altera_onchip_flash_block|drdout\(21),
	datac => \u0|onchip_flash_0|avmm_data_controller|reset_n_reg2~q\,
	datad => \u0|onchip_flash_0|avmm_data_controller|csr_status_r_pass~q\,
	combout => \u0|onchip_flash_0|avmm_data_controller|avmm_readdata~21_combout\);

\u0|onchip_flash_0|avmm_data_controller|avmm_readdata[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk_57~input_o\,
	d => \u0|onchip_flash_0|avmm_data_controller|avmm_readdata~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|avmm_readdata\(21));

\flash_data_latch[21]~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \flash_data_latch[21]~21_combout\ = !\u0|onchip_flash_0|avmm_data_controller|avmm_readdata\(21)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|avmm_readdata\(21),
	combout => \flash_data_latch[21]~21_combout\);

\flash_data_latch[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk_57~input_o\,
	d => \flash_data_latch[21]~21_combout\,
	ena => \u0|onchip_flash_0|avmm_data_controller|avmm_readdatavalid_reg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => flash_data_latch(21));

\u0|onchip_flash_0|avmm_data_controller|avmm_readdata~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|avmm_readdata~22_combout\ = (\u0|onchip_flash_0|altera_onchip_flash_block|drdout\(5)) # ((!\u0|onchip_flash_0|avmm_data_controller|csr_status_r_pass~q\) # (!\u0|onchip_flash_0|avmm_data_controller|reset_n_reg2~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|altera_onchip_flash_block|drdout\(5),
	datac => \u0|onchip_flash_0|avmm_data_controller|reset_n_reg2~q\,
	datad => \u0|onchip_flash_0|avmm_data_controller|csr_status_r_pass~q\,
	combout => \u0|onchip_flash_0|avmm_data_controller|avmm_readdata~22_combout\);

\u0|onchip_flash_0|avmm_data_controller|avmm_readdata[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk_57~input_o\,
	d => \u0|onchip_flash_0|avmm_data_controller|avmm_readdata~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|avmm_readdata\(5));

\flash_data_latch[5]~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \flash_data_latch[5]~22_combout\ = !\u0|onchip_flash_0|avmm_data_controller|avmm_readdata\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|avmm_readdata\(5),
	combout => \flash_data_latch[5]~22_combout\);

\flash_data_latch[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk_57~input_o\,
	d => \flash_data_latch[5]~22_combout\,
	ena => \u0|onchip_flash_0|avmm_data_controller|avmm_readdatavalid_reg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => flash_data_latch(5));

\data[5]~76\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data[5]~76_combout\ = (addr_latch(0) & ((addr_latch(1) & ((!flash_data_latch(5)))) # (!addr_latch(1) & (!flash_data_latch(21))))) # (!addr_latch(0) & (((!addr_latch(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011110100111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => addr_latch(0),
	datab => flash_data_latch(21),
	datac => addr_latch(1),
	datad => flash_data_latch(5),
	combout => \data[5]~76_combout\);

\u0|onchip_flash_0|avmm_data_controller|avmm_readdata~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|avmm_readdata~23_combout\ = (\u0|onchip_flash_0|altera_onchip_flash_block|drdout\(29)) # ((!\u0|onchip_flash_0|avmm_data_controller|csr_status_r_pass~q\) # (!\u0|onchip_flash_0|avmm_data_controller|reset_n_reg2~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|altera_onchip_flash_block|drdout\(29),
	datac => \u0|onchip_flash_0|avmm_data_controller|reset_n_reg2~q\,
	datad => \u0|onchip_flash_0|avmm_data_controller|csr_status_r_pass~q\,
	combout => \u0|onchip_flash_0|avmm_data_controller|avmm_readdata~23_combout\);

\u0|onchip_flash_0|avmm_data_controller|avmm_readdata[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk_57~input_o\,
	d => \u0|onchip_flash_0|avmm_data_controller|avmm_readdata~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|avmm_readdata\(29));

\flash_data_latch[29]~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \flash_data_latch[29]~23_combout\ = !\u0|onchip_flash_0|avmm_data_controller|avmm_readdata\(29)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|avmm_readdata\(29),
	combout => \flash_data_latch[29]~23_combout\);

\flash_data_latch[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk_57~input_o\,
	d => \flash_data_latch[29]~23_combout\,
	ena => \u0|onchip_flash_0|avmm_data_controller|avmm_readdatavalid_reg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => flash_data_latch(29));

\data[5]~77\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data[5]~77_combout\ = (addr_latch(0) & (((\data[5]~76_combout\)))) # (!addr_latch(0) & ((\data[5]~76_combout\ & ((!flash_data_latch(29)))) # (!\data[5]~76_combout\ & (!flash_data_latch(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000111110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => flash_data_latch(13),
	datab => addr_latch(0),
	datac => \data[5]~76_combout\,
	datad => flash_data_latch(29),
	combout => \data[5]~77_combout\);

\data[5]~78\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data[5]~78_combout\ = (\slave_din[0]~2_combout\ & (((\data[2]~23_combout\)))) # (!\slave_din[0]~2_combout\ & ((\data[2]~23_combout\ & (\u1|dpram_master|altsyncram_component|auto_generated|ram_block1a5~PORTBDATAOUT0\)) # (!\data[2]~23_combout\ & 
-- ((\data[5]~77_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \slave_din[0]~2_combout\,
	datab => \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a5~PORTBDATAOUT0\,
	datac => \data[2]~23_combout\,
	datad => \data[5]~77_combout\,
	combout => \data[5]~78_combout\);

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
	port_a_first_address => 8192,
	port_a_first_bit_number => 5,
	port_a_last_address => 16383,
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
	port_b_first_address => 8192,
	port_b_first_bit_number => 5,
	port_b_last_address => 16383,
	port_b_logical_ram_depth => 16384,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "old_data",
	port_b_read_enable_clock => "clock1",
	port_b_write_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portare => \u1|slave_rden~q\,
	portbwe => \u1|dpram_slave|altsyncram_component|auto_generated|decode3|eq_node\(1),
	portbre => \u1|comb~1_combout\,
	clk0 => \u1|slave_ram_clk~combout\,
	clk1 => \ALT_INV_phi2_early~reg0_q\,
	ena0 => GND,
	ena1 => \u1|dpram_slave|altsyncram_component|auto_generated|rden_decode_b|eq_node[1]~1_combout\,
	portadatain => \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a13_PORTADATAIN_bus\,
	portbdatain => \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a13_PORTBDATAIN_bus\,
	portaaddr => \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a13_PORTAADDR_bus\,
	portbaddr => \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a13_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a13_PORTADATAOUT_bus\,
	portbdataout => \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a13_PORTBDATAOUT_bus\);

\data[5]~79\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data[5]~79_combout\ = (\slave_din[0]~2_combout\ & ((\data[5]~78_combout\ & ((\u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a13~PORTBDATAOUT0\))) # (!\data[5]~78_combout\ & 
-- (\u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a5~PORTBDATAOUT0\)))) # (!\slave_din[0]~2_combout\ & (((\data[5]~78_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a5~PORTBDATAOUT0\,
	datab => \slave_din[0]~2_combout\,
	datac => \data[5]~78_combout\,
	datad => \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a13~PORTBDATAOUT0\,
	combout => \data[5]~79_combout\);

\data[5]~80\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data[5]~80_combout\ = (\data[2]~22_combout\ & (((\data[2]~16_combout\)))) # (!\data[2]~22_combout\ & ((\data[2]~16_combout\ & (reg_sdcr(5))) # (!\data[2]~16_combout\ & ((\data[5]~79_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data[2]~22_combout\,
	datab => reg_sdcr(5),
	datac => \data[2]~16_combout\,
	datad => \data[5]~79_combout\,
	combout => \data[5]~80_combout\);

\data[5]~81\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data[5]~81_combout\ = (\data[2]~22_combout\ & ((\data[5]~80_combout\ & ((reg_stbycr(5)))) # (!\data[5]~80_combout\ & (\data[5]~75_combout\)))) # (!\data[2]~22_combout\ & (((\data[5]~80_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data[5]~75_combout\,
	datab => \data[2]~22_combout\,
	datac => \data[5]~80_combout\,
	datad => reg_stbycr(5),
	combout => \data[5]~81_combout\);

\data[5]~82\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data[5]~82_combout\ = (\data[2]~30_combout\ & (\u1|dpram_master|altsyncram_component|auto_generated|ram_block1a13~PORTBDATAOUT0\)) # (!\data[2]~30_combout\ & ((\data[5]~81_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a13~PORTBDATAOUT0\,
	datab => \data[5]~81_combout\,
	datad => \data[2]~30_combout\,
	combout => \data[5]~82_combout\);

\u1|rx_buf[6]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|rx_buf[6]~10_combout\ = (\u1|bit_cnt\(1) & \u1|bit_cnt\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|bit_cnt\(1),
	datab => \u1|bit_cnt\(2),
	combout => \u1|rx_buf[6]~10_combout\);

\u1|rx_buf[6]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|rx_buf[6]~11_combout\ = (\u1|rx_buf[6]~10_combout\ & ((\u1|rx_buf[0]~0_combout\ & (\spi_mosi~input_o\)) # (!\u1|rx_buf[0]~0_combout\ & ((\u1|rx_buf\(6)))))) # (!\u1|rx_buf[6]~10_combout\ & (((\u1|rx_buf\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi_mosi~input_o\,
	datab => \u1|rx_buf\(6),
	datac => \u1|rx_buf[6]~10_combout\,
	datad => \u1|rx_buf[0]~0_combout\,
	combout => \u1|rx_buf[6]~11_combout\);

\u1|rx_buf[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \spi_clk~input_o\,
	d => \u1|rx_buf[6]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|rx_buf\(6));

\master_din[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_phi2_early~reg0_q\,
	d => \data[6]~input_o\,
	ena => \master_din[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => master_din(6));

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
	port_a_first_address => 8192,
	port_a_first_bit_number => 6,
	port_a_last_address => 16383,
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
	port_b_first_address => 8192,
	port_b_first_bit_number => 6,
	port_b_last_address => 16383,
	port_b_logical_ram_depth => 16384,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "old_data",
	port_b_read_enable_clock => "clock1",
	port_b_write_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portare => VCC,
	portbwe => \u1|dpram_master|altsyncram_component|auto_generated|decode3|eq_node\(1),
	portbre => \u1|comb~0_combout\,
	clk0 => \u1|master_ram_clk~combout\,
	clk1 => \ALT_INV_phi2_early~reg0_q\,
	ena0 => GND,
	ena1 => \u1|dpram_master|altsyncram_component|auto_generated|rden_decode_b|eq_node[1]~0_combout\,
	portadatain => \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a14_PORTADATAIN_bus\,
	portbdatain => \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a14_PORTBDATAIN_bus\,
	portaaddr => \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a14_PORTAADDR_bus\,
	portbaddr => \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a14_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a14_PORTADATAOUT_bus\,
	portbdataout => \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a14_PORTBDATAOUT_bus\);

\reg_fbs[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_phi2_early~reg0_q\,
	d => \data[6]~input_o\,
	ena => \reg_fbs[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_fbs(6));

\reg_srbs[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_phi2_early~reg0_q\,
	d => \data[6]~input_o\,
	ena => \reg_srbs[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_srbs(6));

\reg_mrbs[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_phi2_early~reg0_q\,
	d => \data[6]~input_o\,
	ena => \reg_mrbs[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_mrbs(6));

\data[6]~83\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data[6]~83_combout\ = (!\Equal17~0_combout\ & ((\Equal18~0_combout\ & ((reg_mrbs(6)))) # (!\Equal18~0_combout\ & (!\Equal19~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal19~0_combout\,
	datab => \Equal18~0_combout\,
	datac => \Equal17~0_combout\,
	datad => reg_mrbs(6),
	combout => \data[6]~83_combout\);

\data[6]~84\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data[6]~84_combout\ = (\data[2]~17_combout\ & ((\data[6]~83_combout\ & (reg_fbs(6))) # (!\data[6]~83_combout\ & ((reg_srbs(6)))))) # (!\data[2]~17_combout\ & (((\data[6]~83_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => reg_fbs(6),
	datab => reg_srbs(6),
	datac => \data[2]~17_combout\,
	datad => \data[6]~83_combout\,
	combout => \data[6]~84_combout\);

\data[6]~85\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data[6]~85_combout\ = (\data[0]~20_combout\ & ((\data[6]~84_combout\) # ((\Equal14~1_combout\ & reg_stbkcr(6))))) # (!\data[0]~20_combout\ & (\Equal14~1_combout\ & (reg_stbkcr(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data[0]~20_combout\,
	datab => \Equal14~1_combout\,
	datac => reg_stbkcr(6),
	datad => \data[6]~84_combout\,
	combout => \data[6]~85_combout\);

\u1|dpram_master|altsyncram_component|auto_generated|ram_block1a6\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
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
	portawe => \u1|master_wren~q\,
	portare => VCC,
	portbwe => \u1|dpram_master|altsyncram_component|auto_generated|decode3|eq_node\(0),
	portbre => \u1|comb~0_combout\,
	clk0 => \u1|master_ram_clk~combout\,
	clk1 => \ALT_INV_phi2_early~reg0_q\,
	ena1 => \u1|dpram_master|altsyncram_component|auto_generated|rden_decode_b|eq_node[0]~1_combout\,
	portadatain => \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a6_PORTADATAIN_bus\,
	portbdatain => \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a6_PORTBDATAIN_bus\,
	portaaddr => \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a6_PORTAADDR_bus\,
	portbaddr => \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a6_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a6_PORTADATAOUT_bus\,
	portbdataout => \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a6_PORTBDATAOUT_bus\);

\u0|onchip_flash_0|avmm_data_controller|avmm_readdata~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|avmm_readdata~24_combout\ = (\u0|onchip_flash_0|altera_onchip_flash_block|drdout\(22)) # ((!\u0|onchip_flash_0|avmm_data_controller|csr_status_r_pass~q\) # (!\u0|onchip_flash_0|avmm_data_controller|reset_n_reg2~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|altera_onchip_flash_block|drdout\(22),
	datac => \u0|onchip_flash_0|avmm_data_controller|reset_n_reg2~q\,
	datad => \u0|onchip_flash_0|avmm_data_controller|csr_status_r_pass~q\,
	combout => \u0|onchip_flash_0|avmm_data_controller|avmm_readdata~24_combout\);

\u0|onchip_flash_0|avmm_data_controller|avmm_readdata[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk_57~input_o\,
	d => \u0|onchip_flash_0|avmm_data_controller|avmm_readdata~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|avmm_readdata\(22));

\flash_data_latch[22]~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \flash_data_latch[22]~24_combout\ = !\u0|onchip_flash_0|avmm_data_controller|avmm_readdata\(22)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|avmm_readdata\(22),
	combout => \flash_data_latch[22]~24_combout\);

\flash_data_latch[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk_57~input_o\,
	d => \flash_data_latch[22]~24_combout\,
	ena => \u0|onchip_flash_0|avmm_data_controller|avmm_readdatavalid_reg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => flash_data_latch(22));

\u0|onchip_flash_0|avmm_data_controller|avmm_readdata~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|avmm_readdata~25_combout\ = (\u0|onchip_flash_0|altera_onchip_flash_block|drdout\(14)) # ((!\u0|onchip_flash_0|avmm_data_controller|csr_status_r_pass~q\) # (!\u0|onchip_flash_0|avmm_data_controller|reset_n_reg2~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|altera_onchip_flash_block|drdout\(14),
	datac => \u0|onchip_flash_0|avmm_data_controller|reset_n_reg2~q\,
	datad => \u0|onchip_flash_0|avmm_data_controller|csr_status_r_pass~q\,
	combout => \u0|onchip_flash_0|avmm_data_controller|avmm_readdata~25_combout\);

\u0|onchip_flash_0|avmm_data_controller|avmm_readdata[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk_57~input_o\,
	d => \u0|onchip_flash_0|avmm_data_controller|avmm_readdata~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|avmm_readdata\(14));

\flash_data_latch[14]~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \flash_data_latch[14]~25_combout\ = !\u0|onchip_flash_0|avmm_data_controller|avmm_readdata\(14)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|avmm_readdata\(14),
	combout => \flash_data_latch[14]~25_combout\);

\flash_data_latch[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk_57~input_o\,
	d => \flash_data_latch[14]~25_combout\,
	ena => \u0|onchip_flash_0|avmm_data_controller|avmm_readdatavalid_reg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => flash_data_latch(14));

\u0|onchip_flash_0|avmm_data_controller|avmm_readdata~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|avmm_readdata~26_combout\ = (\u0|onchip_flash_0|altera_onchip_flash_block|drdout\(6)) # ((!\u0|onchip_flash_0|avmm_data_controller|csr_status_r_pass~q\) # (!\u0|onchip_flash_0|avmm_data_controller|reset_n_reg2~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|altera_onchip_flash_block|drdout\(6),
	datac => \u0|onchip_flash_0|avmm_data_controller|reset_n_reg2~q\,
	datad => \u0|onchip_flash_0|avmm_data_controller|csr_status_r_pass~q\,
	combout => \u0|onchip_flash_0|avmm_data_controller|avmm_readdata~26_combout\);

\u0|onchip_flash_0|avmm_data_controller|avmm_readdata[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk_57~input_o\,
	d => \u0|onchip_flash_0|avmm_data_controller|avmm_readdata~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|avmm_readdata\(6));

\flash_data_latch[6]~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \flash_data_latch[6]~26_combout\ = !\u0|onchip_flash_0|avmm_data_controller|avmm_readdata\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|avmm_readdata\(6),
	combout => \flash_data_latch[6]~26_combout\);

\flash_data_latch[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk_57~input_o\,
	d => \flash_data_latch[6]~26_combout\,
	ena => \u0|onchip_flash_0|avmm_data_controller|avmm_readdatavalid_reg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => flash_data_latch(6));

\data[6]~86\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data[6]~86_combout\ = (addr_latch(1) & ((addr_latch(0) & ((!flash_data_latch(6)))) # (!addr_latch(0) & (!flash_data_latch(14))))) # (!addr_latch(1) & (((!addr_latch(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011110100111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => addr_latch(1),
	datab => flash_data_latch(14),
	datac => addr_latch(0),
	datad => flash_data_latch(6),
	combout => \data[6]~86_combout\);

\u0|onchip_flash_0|avmm_data_controller|avmm_readdata~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|avmm_readdata~27_combout\ = (\u0|onchip_flash_0|altera_onchip_flash_block|drdout\(30)) # ((!\u0|onchip_flash_0|avmm_data_controller|csr_status_r_pass~q\) # (!\u0|onchip_flash_0|avmm_data_controller|reset_n_reg2~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|altera_onchip_flash_block|drdout\(30),
	datac => \u0|onchip_flash_0|avmm_data_controller|reset_n_reg2~q\,
	datad => \u0|onchip_flash_0|avmm_data_controller|csr_status_r_pass~q\,
	combout => \u0|onchip_flash_0|avmm_data_controller|avmm_readdata~27_combout\);

\u0|onchip_flash_0|avmm_data_controller|avmm_readdata[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk_57~input_o\,
	d => \u0|onchip_flash_0|avmm_data_controller|avmm_readdata~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|avmm_readdata\(30));

\flash_data_latch[30]~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \flash_data_latch[30]~27_combout\ = !\u0|onchip_flash_0|avmm_data_controller|avmm_readdata\(30)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|avmm_readdata\(30),
	combout => \flash_data_latch[30]~27_combout\);

\flash_data_latch[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk_57~input_o\,
	d => \flash_data_latch[30]~27_combout\,
	ena => \u0|onchip_flash_0|avmm_data_controller|avmm_readdatavalid_reg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => flash_data_latch(30));

\data[6]~87\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data[6]~87_combout\ = (addr_latch(1) & (((\data[6]~86_combout\)))) # (!addr_latch(1) & ((\data[6]~86_combout\ & ((!flash_data_latch(30)))) # (!\data[6]~86_combout\ & (!flash_data_latch(22)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000111110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => flash_data_latch(22),
	datab => addr_latch(1),
	datac => \data[6]~86_combout\,
	datad => flash_data_latch(30),
	combout => \data[6]~87_combout\);

\data[6]~88\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data[6]~88_combout\ = (\data[2]~23_combout\ & (((\slave_din[0]~2_combout\)))) # (!\data[2]~23_combout\ & ((\slave_din[0]~2_combout\ & (\u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a6~PORTBDATAOUT0\)) # (!\slave_din[0]~2_combout\ & 
-- ((\data[6]~87_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data[2]~23_combout\,
	datab => \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a6~PORTBDATAOUT0\,
	datac => \slave_din[0]~2_combout\,
	datad => \data[6]~87_combout\,
	combout => \data[6]~88_combout\);

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
	port_a_first_address => 8192,
	port_a_first_bit_number => 6,
	port_a_last_address => 16383,
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
	port_b_first_address => 8192,
	port_b_first_bit_number => 6,
	port_b_last_address => 16383,
	port_b_logical_ram_depth => 16384,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "old_data",
	port_b_read_enable_clock => "clock1",
	port_b_write_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portare => \u1|slave_rden~q\,
	portbwe => \u1|dpram_slave|altsyncram_component|auto_generated|decode3|eq_node\(1),
	portbre => \u1|comb~1_combout\,
	clk0 => \u1|slave_ram_clk~combout\,
	clk1 => \ALT_INV_phi2_early~reg0_q\,
	ena0 => GND,
	ena1 => \u1|dpram_slave|altsyncram_component|auto_generated|rden_decode_b|eq_node[1]~1_combout\,
	portadatain => \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a14_PORTADATAIN_bus\,
	portbdatain => \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a14_PORTBDATAIN_bus\,
	portaaddr => \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a14_PORTAADDR_bus\,
	portbaddr => \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a14_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a14_PORTADATAOUT_bus\,
	portbdataout => \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a14_PORTBDATAOUT_bus\);

\data[6]~89\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data[6]~89_combout\ = (\data[2]~23_combout\ & ((\data[6]~88_combout\ & ((\u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a14~PORTBDATAOUT0\))) # (!\data[6]~88_combout\ & 
-- (\u1|dpram_master|altsyncram_component|auto_generated|ram_block1a6~PORTBDATAOUT0\)))) # (!\data[2]~23_combout\ & (((\data[6]~88_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a6~PORTBDATAOUT0\,
	datab => \data[2]~23_combout\,
	datac => \data[6]~88_combout\,
	datad => \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a14~PORTBDATAOUT0\,
	combout => \data[6]~89_combout\);

\data[6]~90\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data[6]~90_combout\ = (\data[2]~16_combout\ & (((\data[2]~22_combout\)))) # (!\data[2]~16_combout\ & ((\data[2]~22_combout\ & (\data[6]~85_combout\)) # (!\data[2]~22_combout\ & ((\data[6]~89_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data[2]~16_combout\,
	datab => \data[6]~85_combout\,
	datac => \data[2]~22_combout\,
	datad => \data[6]~89_combout\,
	combout => \data[6]~90_combout\);

\data[6]~91\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data[6]~91_combout\ = (\data[2]~16_combout\ & ((\data[6]~90_combout\ & ((reg_stbycr(6)))) # (!\data[6]~90_combout\ & (reg_sdcr(6))))) # (!\data[2]~16_combout\ & (((\data[6]~90_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => reg_sdcr(6),
	datab => \data[2]~16_combout\,
	datac => \data[6]~90_combout\,
	datad => reg_stbycr(6),
	combout => \data[6]~91_combout\);

\data[6]~92\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data[6]~92_combout\ = (\data[2]~30_combout\ & (\u1|dpram_master|altsyncram_component|auto_generated|ram_block1a14~PORTBDATAOUT0\)) # (!\data[2]~30_combout\ & ((\data[6]~91_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a14~PORTBDATAOUT0\,
	datab => \data[6]~91_combout\,
	datad => \data[2]~30_combout\,
	combout => \data[6]~92_combout\);

\u1|rx_buf[7]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|rx_buf[7]~12_combout\ = (\u1|master_ram_clk~1_combout\ & (\u1|master_wren~0_combout\ & !\u1|process_1~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|master_ram_clk~1_combout\,
	datab => \u1|master_wren~0_combout\,
	datad => \u1|process_1~1_combout\,
	combout => \u1|rx_buf[7]~12_combout\);

\u1|rx_buf[7]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|rx_buf[7]~13_combout\ = (\u1|rx_buf[7]~12_combout\ & (\spi_mosi~input_o\)) # (!\u1|rx_buf[7]~12_combout\ & ((\u1|rx_buf\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi_mosi~input_o\,
	datab => \u1|rx_buf\(7),
	datad => \u1|rx_buf[7]~12_combout\,
	combout => \u1|rx_buf[7]~13_combout\);

\u1|rx_buf[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \spi_clk~input_o\,
	d => \u1|rx_buf[7]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|rx_buf\(7));

\master_din[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_phi2_early~reg0_q\,
	d => \data[7]~input_o\,
	ena => \master_din[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => master_din(7));

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
	port_a_first_address => 8192,
	port_a_first_bit_number => 7,
	port_a_last_address => 16383,
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
	port_b_first_address => 8192,
	port_b_first_bit_number => 7,
	port_b_last_address => 16383,
	port_b_logical_ram_depth => 16384,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "old_data",
	port_b_read_enable_clock => "clock1",
	port_b_write_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portare => VCC,
	portbwe => \u1|dpram_master|altsyncram_component|auto_generated|decode3|eq_node\(1),
	portbre => \u1|comb~0_combout\,
	clk0 => \u1|master_ram_clk~combout\,
	clk1 => \ALT_INV_phi2_early~reg0_q\,
	ena0 => GND,
	ena1 => \u1|dpram_master|altsyncram_component|auto_generated|rden_decode_b|eq_node[1]~0_combout\,
	portadatain => \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a15_PORTADATAIN_bus\,
	portbdatain => \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a15_PORTBDATAIN_bus\,
	portaaddr => \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a15_PORTAADDR_bus\,
	portbaddr => \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a15_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a15_PORTADATAOUT_bus\,
	portbdataout => \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a15_PORTBDATAOUT_bus\);

\reg_fbs[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_phi2_early~reg0_q\,
	d => \data[7]~input_o\,
	ena => \reg_fbs[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_fbs(7));

\reg_srbs[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_phi2_early~reg0_q\,
	d => \data[7]~input_o\,
	ena => \reg_srbs[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_srbs(7));

\reg_mrbs[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_phi2_early~reg0_q\,
	d => \data[7]~input_o\,
	ena => \reg_mrbs[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_mrbs(7));

\data[7]~93\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data[7]~93_combout\ = (!\Equal17~0_combout\ & ((\Equal18~0_combout\ & ((reg_mrbs(7)))) # (!\Equal18~0_combout\ & (!\Equal19~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal19~0_combout\,
	datab => \Equal18~0_combout\,
	datac => \Equal17~0_combout\,
	datad => reg_mrbs(7),
	combout => \data[7]~93_combout\);

\data[7]~94\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data[7]~94_combout\ = (\data[2]~17_combout\ & ((\data[7]~93_combout\ & (reg_fbs(7))) # (!\data[7]~93_combout\ & ((reg_srbs(7)))))) # (!\data[2]~17_combout\ & (((\data[7]~93_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => reg_fbs(7),
	datab => reg_srbs(7),
	datac => \data[2]~17_combout\,
	datad => \data[7]~93_combout\,
	combout => \data[7]~94_combout\);

\data[7]~95\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data[7]~95_combout\ = (\data[0]~20_combout\ & ((\data[7]~94_combout\) # ((\Equal14~1_combout\ & reg_stbkcr(7))))) # (!\data[0]~20_combout\ & (\Equal14~1_combout\ & (reg_stbkcr(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data[0]~20_combout\,
	datab => \Equal14~1_combout\,
	datac => reg_stbkcr(7),
	datad => \data[7]~94_combout\,
	combout => \data[7]~95_combout\);

\u1|dpram_master|altsyncram_component|auto_generated|ram_block1a7\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
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
	portawe => \u1|master_wren~q\,
	portare => VCC,
	portbwe => \u1|dpram_master|altsyncram_component|auto_generated|decode3|eq_node\(0),
	portbre => \u1|comb~0_combout\,
	clk0 => \u1|master_ram_clk~combout\,
	clk1 => \ALT_INV_phi2_early~reg0_q\,
	ena1 => \u1|dpram_master|altsyncram_component|auto_generated|rden_decode_b|eq_node[0]~1_combout\,
	portadatain => \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a7_PORTADATAIN_bus\,
	portbdatain => \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a7_PORTBDATAIN_bus\,
	portaaddr => \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a7_PORTAADDR_bus\,
	portbaddr => \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a7_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a7_PORTADATAOUT_bus\,
	portbdataout => \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a7_PORTBDATAOUT_bus\);

\u0|onchip_flash_0|avmm_data_controller|avmm_readdata~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|avmm_readdata~28_combout\ = (\u0|onchip_flash_0|altera_onchip_flash_block|drdout\(15)) # ((!\u0|onchip_flash_0|avmm_data_controller|csr_status_r_pass~q\) # (!\u0|onchip_flash_0|avmm_data_controller|reset_n_reg2~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|altera_onchip_flash_block|drdout\(15),
	datac => \u0|onchip_flash_0|avmm_data_controller|reset_n_reg2~q\,
	datad => \u0|onchip_flash_0|avmm_data_controller|csr_status_r_pass~q\,
	combout => \u0|onchip_flash_0|avmm_data_controller|avmm_readdata~28_combout\);

\u0|onchip_flash_0|avmm_data_controller|avmm_readdata[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk_57~input_o\,
	d => \u0|onchip_flash_0|avmm_data_controller|avmm_readdata~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|avmm_readdata\(15));

\flash_data_latch[15]~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \flash_data_latch[15]~28_combout\ = !\u0|onchip_flash_0|avmm_data_controller|avmm_readdata\(15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|avmm_readdata\(15),
	combout => \flash_data_latch[15]~28_combout\);

\flash_data_latch[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk_57~input_o\,
	d => \flash_data_latch[15]~28_combout\,
	ena => \u0|onchip_flash_0|avmm_data_controller|avmm_readdatavalid_reg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => flash_data_latch(15));

\u0|onchip_flash_0|avmm_data_controller|avmm_readdata~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|avmm_readdata~29_combout\ = (\u0|onchip_flash_0|altera_onchip_flash_block|drdout\(23)) # ((!\u0|onchip_flash_0|avmm_data_controller|csr_status_r_pass~q\) # (!\u0|onchip_flash_0|avmm_data_controller|reset_n_reg2~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|altera_onchip_flash_block|drdout\(23),
	datac => \u0|onchip_flash_0|avmm_data_controller|reset_n_reg2~q\,
	datad => \u0|onchip_flash_0|avmm_data_controller|csr_status_r_pass~q\,
	combout => \u0|onchip_flash_0|avmm_data_controller|avmm_readdata~29_combout\);

\u0|onchip_flash_0|avmm_data_controller|avmm_readdata[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk_57~input_o\,
	d => \u0|onchip_flash_0|avmm_data_controller|avmm_readdata~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|avmm_readdata\(23));

\flash_data_latch[23]~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \flash_data_latch[23]~29_combout\ = !\u0|onchip_flash_0|avmm_data_controller|avmm_readdata\(23)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|avmm_readdata\(23),
	combout => \flash_data_latch[23]~29_combout\);

\flash_data_latch[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk_57~input_o\,
	d => \flash_data_latch[23]~29_combout\,
	ena => \u0|onchip_flash_0|avmm_data_controller|avmm_readdatavalid_reg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => flash_data_latch(23));

\u0|onchip_flash_0|avmm_data_controller|avmm_readdata~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|avmm_readdata~30_combout\ = (\u0|onchip_flash_0|altera_onchip_flash_block|drdout\(7)) # ((!\u0|onchip_flash_0|avmm_data_controller|csr_status_r_pass~q\) # (!\u0|onchip_flash_0|avmm_data_controller|reset_n_reg2~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|altera_onchip_flash_block|drdout\(7),
	datac => \u0|onchip_flash_0|avmm_data_controller|reset_n_reg2~q\,
	datad => \u0|onchip_flash_0|avmm_data_controller|csr_status_r_pass~q\,
	combout => \u0|onchip_flash_0|avmm_data_controller|avmm_readdata~30_combout\);

\u0|onchip_flash_0|avmm_data_controller|avmm_readdata[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk_57~input_o\,
	d => \u0|onchip_flash_0|avmm_data_controller|avmm_readdata~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|avmm_readdata\(7));

\flash_data_latch[7]~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \flash_data_latch[7]~30_combout\ = !\u0|onchip_flash_0|avmm_data_controller|avmm_readdata\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|avmm_readdata\(7),
	combout => \flash_data_latch[7]~30_combout\);

\flash_data_latch[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk_57~input_o\,
	d => \flash_data_latch[7]~30_combout\,
	ena => \u0|onchip_flash_0|avmm_data_controller|avmm_readdatavalid_reg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => flash_data_latch(7));

\data[7]~96\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data[7]~96_combout\ = (addr_latch(0) & ((addr_latch(1) & ((!flash_data_latch(7)))) # (!addr_latch(1) & (!flash_data_latch(23))))) # (!addr_latch(0) & (((!addr_latch(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011110100111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => addr_latch(0),
	datab => flash_data_latch(23),
	datac => addr_latch(1),
	datad => flash_data_latch(7),
	combout => \data[7]~96_combout\);

\u0|onchip_flash_0|avmm_data_controller|avmm_readdata~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|onchip_flash_0|avmm_data_controller|avmm_readdata~31_combout\ = (\u0|onchip_flash_0|altera_onchip_flash_block|drdout\(31)) # ((!\u0|onchip_flash_0|avmm_data_controller|csr_status_r_pass~q\) # (!\u0|onchip_flash_0|avmm_data_controller|reset_n_reg2~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|altera_onchip_flash_block|drdout\(31),
	datac => \u0|onchip_flash_0|avmm_data_controller|reset_n_reg2~q\,
	datad => \u0|onchip_flash_0|avmm_data_controller|csr_status_r_pass~q\,
	combout => \u0|onchip_flash_0|avmm_data_controller|avmm_readdata~31_combout\);

\u0|onchip_flash_0|avmm_data_controller|avmm_readdata[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk_57~input_o\,
	d => \u0|onchip_flash_0|avmm_data_controller|avmm_readdata~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|onchip_flash_0|avmm_data_controller|avmm_readdata\(31));

\flash_data_latch[31]~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \flash_data_latch[31]~31_combout\ = !\u0|onchip_flash_0|avmm_data_controller|avmm_readdata\(31)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|onchip_flash_0|avmm_data_controller|avmm_readdata\(31),
	combout => \flash_data_latch[31]~31_combout\);

\flash_data_latch[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk_57~input_o\,
	d => \flash_data_latch[31]~31_combout\,
	ena => \u0|onchip_flash_0|avmm_data_controller|avmm_readdatavalid_reg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => flash_data_latch(31));

\data[7]~97\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data[7]~97_combout\ = (addr_latch(0) & (((\data[7]~96_combout\)))) # (!addr_latch(0) & ((\data[7]~96_combout\ & ((!flash_data_latch(31)))) # (!\data[7]~96_combout\ & (!flash_data_latch(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000111110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => flash_data_latch(15),
	datab => addr_latch(0),
	datac => \data[7]~96_combout\,
	datad => flash_data_latch(31),
	combout => \data[7]~97_combout\);

\data[7]~98\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data[7]~98_combout\ = (\slave_din[0]~2_combout\ & (((\data[2]~23_combout\)))) # (!\slave_din[0]~2_combout\ & ((\data[2]~23_combout\ & (\u1|dpram_master|altsyncram_component|auto_generated|ram_block1a7~PORTBDATAOUT0\)) # (!\data[2]~23_combout\ & 
-- ((\data[7]~97_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \slave_din[0]~2_combout\,
	datab => \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a7~PORTBDATAOUT0\,
	datac => \data[2]~23_combout\,
	datad => \data[7]~97_combout\,
	combout => \data[7]~98_combout\);

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
	port_a_first_address => 8192,
	port_a_first_bit_number => 7,
	port_a_last_address => 16383,
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
	port_b_first_address => 8192,
	port_b_first_bit_number => 7,
	port_b_last_address => 16383,
	port_b_logical_ram_depth => 16384,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "old_data",
	port_b_read_enable_clock => "clock1",
	port_b_write_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portare => \u1|slave_rden~q\,
	portbwe => \u1|dpram_slave|altsyncram_component|auto_generated|decode3|eq_node\(1),
	portbre => \u1|comb~1_combout\,
	clk0 => \u1|slave_ram_clk~combout\,
	clk1 => \ALT_INV_phi2_early~reg0_q\,
	ena0 => GND,
	ena1 => \u1|dpram_slave|altsyncram_component|auto_generated|rden_decode_b|eq_node[1]~1_combout\,
	portadatain => \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a15_PORTADATAIN_bus\,
	portbdatain => \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a15_PORTBDATAIN_bus\,
	portaaddr => \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a15_PORTAADDR_bus\,
	portbaddr => \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a15_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a15_PORTADATAOUT_bus\,
	portbdataout => \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a15_PORTBDATAOUT_bus\);

\data[7]~99\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data[7]~99_combout\ = (\slave_din[0]~2_combout\ & ((\data[7]~98_combout\ & ((\u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a15~PORTBDATAOUT0\))) # (!\data[7]~98_combout\ & 
-- (\u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a7~PORTBDATAOUT0\)))) # (!\slave_din[0]~2_combout\ & (((\data[7]~98_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a7~PORTBDATAOUT0\,
	datab => \slave_din[0]~2_combout\,
	datac => \data[7]~98_combout\,
	datad => \u1|dpram_slave|altsyncram_component|auto_generated|ram_block1a15~PORTBDATAOUT0\,
	combout => \data[7]~99_combout\);

\data[7]~100\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data[7]~100_combout\ = (\data[2]~22_combout\ & (((\data[2]~16_combout\)))) # (!\data[2]~22_combout\ & ((\data[2]~16_combout\ & (reg_sdcr(7))) # (!\data[2]~16_combout\ & ((\data[7]~99_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data[2]~22_combout\,
	datab => reg_sdcr(7),
	datac => \data[2]~16_combout\,
	datad => \data[7]~99_combout\,
	combout => \data[7]~100_combout\);

\data[7]~101\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data[7]~101_combout\ = (\data[2]~22_combout\ & ((\data[7]~100_combout\ & ((reg_stbycr(7)))) # (!\data[7]~100_combout\ & (\data[7]~95_combout\)))) # (!\data[2]~22_combout\ & (((\data[7]~100_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data[7]~95_combout\,
	datab => \data[2]~22_combout\,
	datac => \data[7]~100_combout\,
	datad => reg_stbycr(7),
	combout => \data[7]~101_combout\);

\data[7]~102\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data[7]~102_combout\ = (\data[2]~30_combout\ & (\u1|dpram_master|altsyncram_component|auto_generated|ram_block1a15~PORTBDATAOUT0\)) # (!\data[2]~30_combout\ & ((\data[7]~101_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|dpram_master|altsyncram_component|auto_generated|ram_block1a15~PORTBDATAOUT0\,
	datab => \data[7]~101_combout\,
	datad => \data[2]~30_combout\,
	combout => \data[7]~102_combout\);

\led_latch[0]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \led_latch[0]~4_combout\ = (addr_latch(0) & (!\rw_latch~q\ & !addr_latch(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => addr_latch(0),
	datac => \rw_latch~q\,
	datad => addr_latch(5),
	combout => \led_latch[0]~4_combout\);

\led_latch[0]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \led_latch[0]~5_combout\ = (\led_latch[0]~2_combout\ & (\led_latch[0]~3_combout\ & (\led_latch[0]~4_combout\ & !addr_latch(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \led_latch[0]~2_combout\,
	datab => \led_latch[0]~3_combout\,
	datac => \led_latch[0]~4_combout\,
	datad => addr_latch(4),
	combout => \led_latch[0]~5_combout\);

\led_latch[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_phi2_early~reg0_q\,
	d => \data[0]~input_o\,
	clrn => \n_reset~input_o\,
	ena => \led_latch[0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => led_latch(0));

\led_latch[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_phi2_early~reg0_q\,
	d => \data[1]~input_o\,
	clrn => \n_reset~input_o\,
	ena => \led_latch[0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => led_latch(1));

\led_latch[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_phi2_early~reg0_q\,
	d => \data[2]~input_o\,
	clrn => \n_reset~input_o\,
	ena => \led_latch[0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => led_latch(2));

\led_latch[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_phi2_early~reg0_q\,
	d => \data[3]~input_o\,
	clrn => \n_reset~input_o\,
	ena => \led_latch[0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => led_latch(3));

\led_latch[4]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \led_latch[4]~0_combout\ = (\n_reset~input_o\ & \Equal10~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \n_reset~input_o\,
	datab => \Equal10~5_combout\,
	combout => \led_latch[4]~0_combout\);

\data_dir~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data_dir~0_combout\ = (\addr[9]~input_o\) # ((\addr[10]~input_o\) # ((\Equal11~2_combout\) # (!\addr[8]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr[9]~input_o\,
	datab => \addr[10]~input_o\,
	datac => \Equal11~2_combout\,
	datad => \addr[8]~input_o\,
	combout => \data_dir~0_combout\);

\data_dir~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data_dir~1_combout\ = ((\data_dir~0_combout\ & (\LessThan4~0_combout\ & !\addr[11]~input_o\))) # (!\Equal11~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_dir~0_combout\,
	datab => \LessThan4~0_combout\,
	datac => \addr[11]~input_o\,
	datad => \Equal11~3_combout\,
	combout => \data_dir~1_combout\);

\data_dir~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data_dir~2_combout\ = (\rw~input_o\ & ((\Equal11~5_combout\) # ((!\data_dir~1_combout\ & \Equal10~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_dir~1_combout\,
	datab => \Equal10~5_combout\,
	datac => \Equal11~5_combout\,
	datad => \rw~input_o\,
	combout => \data_dir~2_combout\);

\data_dir~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \phi2~input_o\,
	d => \data_dir~2_combout\,
	clrn => \n_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_dir~reg0_q\);

\n_data_oe~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \n_data_oe~1_combout\ = ((\process_4~2_combout\ & (\n_data_oe~0_combout\)) # (!\process_4~2_combout\ & ((\rw_latch~q\)))) # (!\n_reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \n_data_oe~0_combout\,
	datab => \rw_latch~q\,
	datac => \process_4~2_combout\,
	datad => \n_reset~input_o\,
	combout => \n_data_oe~1_combout\);

\n_extsel~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \n_extsel~0_combout\ = (\dev_reg_act~q\) # ((\slave_ram_en~q\) # ((\master_ram_en~q\) # (!\dev_rom_act~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dev_reg_act~q\,
	datab => \slave_ram_en~q\,
	datac => \master_ram_en~q\,
	datad => \dev_rom_act~q\,
	combout => \n_extsel~0_combout\);

\n_extsel~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \n_extsel~1_combout\ = (\n_extsel~0_combout\) # ((!\process_4~2_combout\) # (!\n_reset~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \n_extsel~0_combout\,
	datac => \n_reset~input_o\,
	datad => \process_4~2_combout\,
	combout => \n_extsel~1_combout\);

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
END structure;


