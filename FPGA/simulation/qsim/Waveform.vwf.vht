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

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "05/10/2017 11:33:46"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          pbi_bridge
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY pbi_bridge_vhd_vec_tst IS
END pbi_bridge_vhd_vec_tst;
ARCHITECTURE pbi_bridge_arch OF pbi_bridge_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL addr : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL clk_57 : STD_LOGIC;
SIGNAL data : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL data_dir : STD_LOGIC;
SIGNAL dip_sw : STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL extenb : STD_LOGIC;
SIGNAL n_data_oe : STD_LOGIC;
SIGNAL n_extsel : STD_LOGIC;
SIGNAL n_irq : STD_LOGIC;
SIGNAL n_led1 : STD_LOGIC;
SIGNAL n_led2 : STD_LOGIC;
SIGNAL n_led3 : STD_LOGIC;
SIGNAL n_led4 : STD_LOGIC;
SIGNAL n_led5 : STD_LOGIC;
SIGNAL n_mpd : STD_LOGIC;
SIGNAL n_rdy : STD_LOGIC;
SIGNAL n_reset : STD_LOGIC;
SIGNAL phi2 : STD_LOGIC;
SIGNAL phi2_early : STD_LOGIC;
SIGNAL rw : STD_LOGIC;
SIGNAL spi_clk : STD_LOGIC;
SIGNAL spi_miso : STD_LOGIC;
SIGNAL spi_mosi : STD_LOGIC;
SIGNAL spi_ss_n : STD_LOGIC;
COMPONENT pbi_bridge
	PORT (
	addr : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
	clk_57 : IN STD_LOGIC;
	data : BUFFER STD_LOGIC_VECTOR(7 DOWNTO 0);
	data_dir : BUFFER STD_LOGIC;
	dip_sw : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
	extenb : IN STD_LOGIC;
	n_data_oe : BUFFER STD_LOGIC;
	n_extsel : BUFFER STD_LOGIC;
	n_irq : BUFFER STD_LOGIC;
	n_led1 : BUFFER STD_LOGIC;
	n_led2 : BUFFER STD_LOGIC;
	n_led3 : BUFFER STD_LOGIC;
	n_led4 : BUFFER STD_LOGIC;
	n_led5 : BUFFER STD_LOGIC;
	n_mpd : BUFFER STD_LOGIC;
	n_rdy : BUFFER STD_LOGIC;
	n_reset : IN STD_LOGIC;
	phi2 : IN STD_LOGIC;
	phi2_early : BUFFER STD_LOGIC;
	rw : IN STD_LOGIC;
	spi_clk : IN STD_LOGIC;
	spi_miso : BUFFER STD_LOGIC;
	spi_mosi : IN STD_LOGIC;
	spi_ss_n : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : pbi_bridge
	PORT MAP (
-- list connections between master ports and signals
	addr => addr,
	clk_57 => clk_57,
	data => data,
	data_dir => data_dir,
	dip_sw => dip_sw,
	extenb => extenb,
	n_data_oe => n_data_oe,
	n_extsel => n_extsel,
	n_irq => n_irq,
	n_led1 => n_led1,
	n_led2 => n_led2,
	n_led3 => n_led3,
	n_led4 => n_led4,
	n_led5 => n_led5,
	n_mpd => n_mpd,
	n_rdy => n_rdy,
	n_reset => n_reset,
	phi2 => phi2,
	phi2_early => phi2_early,
	rw => rw,
	spi_clk => spi_clk,
	spi_miso => spi_miso,
	spi_mosi => spi_mosi,
	spi_ss_n => spi_ss_n
	);

-- phi2
t_prcs_phi2: PROCESS
BEGIN
	phi2 <= '0';
	WAIT FOR 279330 ps;
	phi2 <= '1';
	WAIT FOR 279329 ps;
	phi2 <= '0';
	WAIT FOR 279330 ps;
	phi2 <= '1';
WAIT;
END PROCESS t_prcs_phi2;

-- clk_57
t_prcs_clk_57: PROCESS
BEGIN
	FOR i IN 1 TO 57
	LOOP
		clk_57 <= '0';
		WAIT FOR 8729 ps;
		clk_57 <= '1';
		WAIT FOR 8729 ps;
	END LOOP;
	clk_57 <= '0';
WAIT;
END PROCESS t_prcs_clk_57;
END pbi_bridge_arch;
