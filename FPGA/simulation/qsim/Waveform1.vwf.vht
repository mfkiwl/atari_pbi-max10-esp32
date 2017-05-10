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
-- Generated on "05/10/2017 10:53:29"
                                                             
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

-- n_reset
t_prcs_n_reset: PROCESS
BEGIN
	n_reset <= '1';
	WAIT FOR 80000 ps;
	n_reset <= '0';
	WAIT FOR 880000 ps;
	n_reset <= '1';
	WAIT FOR 9039000 ps;
	n_reset <= '0';
WAIT;
END PROCESS t_prcs_n_reset;

-- phi2
t_prcs_phi2: PROCESS
BEGIN
	FOR i IN 1 TO 17
	LOOP
		phi2 <= '0';
		WAIT FOR 279000 ps;
		phi2 <= '1';
		WAIT FOR 279000 ps;
	END LOOP;
	phi2 <= '0';
	WAIT FOR 279000 ps;
	phi2 <= '1';
WAIT;
END PROCESS t_prcs_phi2;
-- addr[15]
t_prcs_addr_15: PROCESS
BEGIN
	addr(15) <= '0';
	WAIT FOR 1160000 ps;
	addr(15) <= '1';
	WAIT FOR 4040000 ps;
	addr(15) <= '0';
WAIT;
END PROCESS t_prcs_addr_15;
-- addr[14]
t_prcs_addr_14: PROCESS
BEGIN
	addr(14) <= '0';
	WAIT FOR 1160000 ps;
	addr(14) <= '1';
	WAIT FOR 4040000 ps;
	addr(14) <= '0';
WAIT;
END PROCESS t_prcs_addr_14;
-- addr[13]
t_prcs_addr_13: PROCESS
BEGIN
	addr(13) <= '0';
WAIT;
END PROCESS t_prcs_addr_13;
-- addr[12]
t_prcs_addr_12: PROCESS
BEGIN
	addr(12) <= '0';
	WAIT FOR 1160000 ps;
	addr(12) <= '1';
	WAIT FOR 4040000 ps;
	addr(12) <= '0';
WAIT;
END PROCESS t_prcs_addr_12;
-- addr[11]
t_prcs_addr_11: PROCESS
BEGIN
	addr(11) <= '0';
	WAIT FOR 4080000 ps;
	addr(11) <= '1';
	WAIT FOR 560000 ps;
	addr(11) <= '0';
WAIT;
END PROCESS t_prcs_addr_11;
-- addr[10]
t_prcs_addr_10: PROCESS
BEGIN
	addr(10) <= '0';
	WAIT FOR 4640000 ps;
	addr(10) <= '1';
	WAIT FOR 560000 ps;
	addr(10) <= '0';
WAIT;
END PROCESS t_prcs_addr_10;
-- addr[9]
t_prcs_addr_9: PROCESS
BEGIN
	addr(9) <= '0';
	WAIT FOR 4640000 ps;
	addr(9) <= '1';
	WAIT FOR 560000 ps;
	addr(9) <= '0';
WAIT;
END PROCESS t_prcs_addr_9;
-- addr[8]
t_prcs_addr_8: PROCESS
BEGIN
	addr(8) <= '0';
	WAIT FOR 1160000 ps;
	addr(8) <= '1';
	WAIT FOR 2920000 ps;
	addr(8) <= '0';
WAIT;
END PROCESS t_prcs_addr_8;
-- addr[7]
t_prcs_addr_7: PROCESS
BEGIN
	addr(7) <= '0';
	WAIT FOR 1160000 ps;
	addr(7) <= '1';
	WAIT FOR 680000 ps;
	addr(7) <= '0';
	WAIT FOR 560000 ps;
	addr(7) <= '1';
	WAIT FOR 560000 ps;
	addr(7) <= '0';
	WAIT FOR 560000 ps;
	addr(7) <= '1';
	WAIT FOR 560000 ps;
	addr(7) <= '0';
WAIT;
END PROCESS t_prcs_addr_7;
-- addr[6]
t_prcs_addr_6: PROCESS
BEGIN
	addr(6) <= '0';
	WAIT FOR 1160000 ps;
	addr(6) <= '1';
	WAIT FOR 680000 ps;
	addr(6) <= '0';
	WAIT FOR 560000 ps;
	addr(6) <= '1';
	WAIT FOR 560000 ps;
	addr(6) <= '0';
	WAIT FOR 560000 ps;
	addr(6) <= '1';
	WAIT FOR 560000 ps;
	addr(6) <= '0';
WAIT;
END PROCESS t_prcs_addr_6;
-- addr[5]
t_prcs_addr_5: PROCESS
BEGIN
	addr(5) <= '0';
	WAIT FOR 1160000 ps;
	addr(5) <= '1';
	WAIT FOR 680000 ps;
	addr(5) <= '0';
	WAIT FOR 560000 ps;
	addr(5) <= '1';
	WAIT FOR 560000 ps;
	addr(5) <= '0';
	WAIT FOR 560000 ps;
	addr(5) <= '1';
	WAIT FOR 560000 ps;
	addr(5) <= '0';
WAIT;
END PROCESS t_prcs_addr_5;
-- addr[4]
t_prcs_addr_4: PROCESS
BEGIN
	addr(4) <= '0';
	WAIT FOR 1160000 ps;
	addr(4) <= '1';
	WAIT FOR 680000 ps;
	addr(4) <= '0';
	WAIT FOR 560000 ps;
	addr(4) <= '1';
	WAIT FOR 560000 ps;
	addr(4) <= '0';
	WAIT FOR 560000 ps;
	addr(4) <= '1';
	WAIT FOR 1120000 ps;
	addr(4) <= '0';
WAIT;
END PROCESS t_prcs_addr_4;
-- addr[3]
t_prcs_addr_3: PROCESS
BEGIN
	addr(3) <= '0';
	WAIT FOR 1160000 ps;
	addr(3) <= '1';
	WAIT FOR 680000 ps;
	addr(3) <= '0';
	WAIT FOR 560000 ps;
	addr(3) <= '1';
	WAIT FOR 560000 ps;
	addr(3) <= '0';
	WAIT FOR 560000 ps;
	addr(3) <= '1';
	WAIT FOR 1120000 ps;
	addr(3) <= '0';
WAIT;
END PROCESS t_prcs_addr_3;
-- addr[2]
t_prcs_addr_2: PROCESS
BEGIN
	addr(2) <= '0';
	WAIT FOR 1160000 ps;
	addr(2) <= '1';
	WAIT FOR 680000 ps;
	addr(2) <= '0';
	WAIT FOR 560000 ps;
	addr(2) <= '1';
	WAIT FOR 560000 ps;
	addr(2) <= '0';
	WAIT FOR 560000 ps;
	addr(2) <= '1';
	WAIT FOR 1120000 ps;
	addr(2) <= '0';
WAIT;
END PROCESS t_prcs_addr_2;
-- addr[1]
t_prcs_addr_1: PROCESS
BEGIN
	addr(1) <= '0';
	WAIT FOR 1160000 ps;
	addr(1) <= '1';
	WAIT FOR 680000 ps;
	addr(1) <= '0';
	WAIT FOR 560000 ps;
	addr(1) <= '1';
	WAIT FOR 560000 ps;
	addr(1) <= '0';
	WAIT FOR 560000 ps;
	addr(1) <= '1';
	WAIT FOR 560000 ps;
	addr(1) <= '0';
WAIT;
END PROCESS t_prcs_addr_1;
-- addr[0]
t_prcs_addr_0: PROCESS
BEGIN
	addr(0) <= '0';
	WAIT FOR 1160000 ps;
	addr(0) <= '1';
	WAIT FOR 2920000 ps;
	addr(0) <= '0';
WAIT;
END PROCESS t_prcs_addr_0;
-- data[7]
t_prcs_data_7: PROCESS
BEGIN
	data(7) <= 'Z';
	WAIT FOR 1600000 ps;
	data(7) <= '1';
	WAIT FOR 160000 ps;
	data(7) <= 'Z';
	WAIT FOR 960000 ps;
	data(7) <= '0';
	WAIT FOR 160000 ps;
	data(7) <= 'Z';
	WAIT FOR 960000 ps;
	data(7) <= '1';
	WAIT FOR 200000 ps;
	data(7) <= 'Z';
	WAIT FOR 1160000 ps;
	data(7) <= 'X';
WAIT;
END PROCESS t_prcs_data_7;
-- data[6]
t_prcs_data_6: PROCESS
BEGIN
	data(6) <= 'Z';
	WAIT FOR 1600000 ps;
	data(6) <= '0';
	WAIT FOR 160000 ps;
	data(6) <= 'Z';
	WAIT FOR 960000 ps;
	data(6) <= '0';
	WAIT FOR 160000 ps;
	data(6) <= 'Z';
	WAIT FOR 960000 ps;
	data(6) <= '0';
	WAIT FOR 200000 ps;
	data(6) <= 'Z';
	WAIT FOR 1160000 ps;
	data(6) <= 'X';
WAIT;
END PROCESS t_prcs_data_6;
-- data[5]
t_prcs_data_5: PROCESS
BEGIN
	data(5) <= 'Z';
	WAIT FOR 1600000 ps;
	data(5) <= '0';
	WAIT FOR 160000 ps;
	data(5) <= 'Z';
	WAIT FOR 960000 ps;
	data(5) <= '0';
	WAIT FOR 160000 ps;
	data(5) <= 'Z';
	WAIT FOR 960000 ps;
	data(5) <= '0';
	WAIT FOR 200000 ps;
	data(5) <= 'Z';
	WAIT FOR 1160000 ps;
	data(5) <= 'X';
WAIT;
END PROCESS t_prcs_data_5;
-- data[4]
t_prcs_data_4: PROCESS
BEGIN
	data(4) <= 'Z';
	WAIT FOR 1600000 ps;
	data(4) <= '0';
	WAIT FOR 160000 ps;
	data(4) <= 'Z';
	WAIT FOR 960000 ps;
	data(4) <= '0';
	WAIT FOR 160000 ps;
	data(4) <= 'Z';
	WAIT FOR 960000 ps;
	data(4) <= '0';
	WAIT FOR 200000 ps;
	data(4) <= 'Z';
	WAIT FOR 1160000 ps;
	data(4) <= 'X';
WAIT;
END PROCESS t_prcs_data_4;
-- data[3]
t_prcs_data_3: PROCESS
BEGIN
	data(3) <= 'Z';
	WAIT FOR 1600000 ps;
	data(3) <= '0';
	WAIT FOR 160000 ps;
	data(3) <= 'Z';
	WAIT FOR 960000 ps;
	data(3) <= '0';
	WAIT FOR 160000 ps;
	data(3) <= 'Z';
	WAIT FOR 960000 ps;
	data(3) <= '0';
	WAIT FOR 200000 ps;
	data(3) <= 'Z';
	WAIT FOR 1160000 ps;
	data(3) <= 'X';
WAIT;
END PROCESS t_prcs_data_3;
-- data[2]
t_prcs_data_2: PROCESS
BEGIN
	data(2) <= 'Z';
	WAIT FOR 1600000 ps;
	data(2) <= '0';
	WAIT FOR 160000 ps;
	data(2) <= 'Z';
	WAIT FOR 960000 ps;
	data(2) <= '0';
	WAIT FOR 160000 ps;
	data(2) <= 'Z';
	WAIT FOR 960000 ps;
	data(2) <= '0';
	WAIT FOR 200000 ps;
	data(2) <= 'Z';
	WAIT FOR 1160000 ps;
	data(2) <= 'X';
WAIT;
END PROCESS t_prcs_data_2;
-- data[1]
t_prcs_data_1: PROCESS
BEGIN
	data(1) <= 'Z';
	WAIT FOR 1600000 ps;
	data(1) <= '0';
	WAIT FOR 160000 ps;
	data(1) <= 'Z';
	WAIT FOR 960000 ps;
	data(1) <= '0';
	WAIT FOR 160000 ps;
	data(1) <= 'Z';
	WAIT FOR 960000 ps;
	data(1) <= '0';
	WAIT FOR 200000 ps;
	data(1) <= 'Z';
	WAIT FOR 1160000 ps;
	data(1) <= 'X';
WAIT;
END PROCESS t_prcs_data_1;
-- data[0]
t_prcs_data_0: PROCESS
BEGIN
	data(0) <= 'Z';
	WAIT FOR 1600000 ps;
	data(0) <= '0';
	WAIT FOR 160000 ps;
	data(0) <= 'Z';
	WAIT FOR 960000 ps;
	data(0) <= '1';
	WAIT FOR 160000 ps;
	data(0) <= 'Z';
	WAIT FOR 960000 ps;
	data(0) <= '0';
	WAIT FOR 200000 ps;
	data(0) <= 'Z';
	WAIT FOR 1160000 ps;
	data(0) <= 'X';
WAIT;
END PROCESS t_prcs_data_0;

-- rw
t_prcs_rw: PROCESS
BEGIN
	rw <= '0';
	WAIT FOR 1920000 ps;
	rw <= '1';
	WAIT FOR 400000 ps;
	rw <= '0';
	WAIT FOR 720000 ps;
	rw <= '1';
	WAIT FOR 360000 ps;
	rw <= '0';
	WAIT FOR 720000 ps;
	rw <= '1';
	WAIT FOR 1080000 ps;
	rw <= '0';
WAIT;
END PROCESS t_prcs_rw;
END pbi_bridge_arch;
