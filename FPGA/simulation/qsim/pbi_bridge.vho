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

-- DATE "04/02/2017 22:28:07"

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
-- ~ALTERA_TMS~	=>  Location: PIN_16,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TCK~	=>  Location: PIN_18,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDI~	=>  Location: PIN_19,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDO~	=>  Location: PIN_20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_CONFIG_SEL~	=>  Location: PIN_126,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCONFIG~	=>  Location: PIN_129,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_nSTATUS~	=>  Location: PIN_136,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_CONF_DONE~	=>  Location: PIN_138,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default


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
SIGNAL \~ALTERA_CONFIG_SEL~~padout\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~padout\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~padout\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~padout\ : std_logic;
SIGNAL \~ALTERA_TMS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TCK~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TDI~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~ibuf_o\ : std_logic;

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
	phi2 : IN std_logic;
	rw : IN std_logic;
	addr : IN std_logic_vector(15 DOWNTO 0);
	data : INOUT std_logic_vector(7 DOWNTO 0);
	data_dir : OUT std_logic;
	n_data_oe : OUT std_logic;
	n_reset : IN std_logic
	);
END pbi_bridge;

-- Design Ports Information
-- data_dir	=>  Location: PIN_110,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- n_data_oe	=>  Location: PIN_111,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- n_reset	=>  Location: PIN_113,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[0]	=>  Location: PIN_96,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[1]	=>  Location: PIN_98,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[2]	=>  Location: PIN_99,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[3]	=>  Location: PIN_100,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[4]	=>  Location: PIN_101,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[5]	=>  Location: PIN_102,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[6]	=>  Location: PIN_105,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[7]	=>  Location: PIN_106,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rw	=>  Location: PIN_114,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr[12]	=>  Location: PIN_57,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr[14]	=>  Location: PIN_59,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr[15]	=>  Location: PIN_60,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr[13]	=>  Location: PIN_58,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr[8]	=>  Location: PIN_50,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr[9]	=>  Location: PIN_52,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr[10]	=>  Location: PIN_55,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr[11]	=>  Location: PIN_56,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr[0]	=>  Location: PIN_38,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr[2]	=>  Location: PIN_41,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr[3]	=>  Location: PIN_43,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr[4]	=>  Location: PIN_44,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr[1]	=>  Location: PIN_39,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr[5]	=>  Location: PIN_45,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr[6]	=>  Location: PIN_46,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr[7]	=>  Location: PIN_47,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- phi2	=>  Location: PIN_90,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_phi2 : std_logic;
SIGNAL ww_rw : std_logic;
SIGNAL ww_addr : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_data_dir : std_logic;
SIGNAL ww_n_data_oe : std_logic;
SIGNAL ww_n_reset : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \data[7]~23clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \phi2~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \n_reset~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \data[0]~output_o\ : std_logic;
SIGNAL \data[1]~output_o\ : std_logic;
SIGNAL \data[2]~output_o\ : std_logic;
SIGNAL \data[3]~output_o\ : std_logic;
SIGNAL \data[4]~output_o\ : std_logic;
SIGNAL \data[5]~output_o\ : std_logic;
SIGNAL \data[6]~output_o\ : std_logic;
SIGNAL \data[7]~output_o\ : std_logic;
SIGNAL \data_dir~output_o\ : std_logic;
SIGNAL \n_data_oe~output_o\ : std_logic;
SIGNAL \phi2~input_o\ : std_logic;
SIGNAL \addr[11]~input_o\ : std_logic;
SIGNAL \addr[15]~input_o\ : std_logic;
SIGNAL \addr_latch[15]~feeder_combout\ : std_logic;
SIGNAL \addr[12]~input_o\ : std_logic;
SIGNAL \addr[13]~input_o\ : std_logic;
SIGNAL \addr[14]~input_o\ : std_logic;
SIGNAL \addr_latch[14]~feeder_combout\ : std_logic;
SIGNAL \dev_ram_act~0_combout\ : std_logic;
SIGNAL \addr[10]~input_o\ : std_logic;
SIGNAL \addr[9]~input_o\ : std_logic;
SIGNAL \dev_ram_act~1_combout\ : std_logic;
SIGNAL \phi2~inputclkctrl_outclk\ : std_logic;
SIGNAL \rw~input_o\ : std_logic;
SIGNAL \rw_latch~feeder_combout\ : std_logic;
SIGNAL \rw_latch~q\ : std_logic;
SIGNAL \data[5]~input_o\ : std_logic;
SIGNAL \hw_sel[5]~feeder_combout\ : std_logic;
SIGNAL \addr[8]~input_o\ : std_logic;
SIGNAL \hw_sel[2]~1_combout\ : std_logic;
SIGNAL \hw_sel[2]~0_combout\ : std_logic;
SIGNAL \addr[2]~input_o\ : std_logic;
SIGNAL \addr_latch[2]~feeder_combout\ : std_logic;
SIGNAL \addr[4]~input_o\ : std_logic;
SIGNAL \addr[3]~input_o\ : std_logic;
SIGNAL \addr_latch[3]~feeder_combout\ : std_logic;
SIGNAL \data[7]~18_combout\ : std_logic;
SIGNAL \addr[0]~input_o\ : std_logic;
SIGNAL \addr[1]~input_o\ : std_logic;
SIGNAL \addr[5]~input_o\ : std_logic;
SIGNAL \addr[6]~input_o\ : std_logic;
SIGNAL \addr[7]~input_o\ : std_logic;
SIGNAL \dev_reg_act~0_combout\ : std_logic;
SIGNAL \dev_reg_act~1_combout\ : std_logic;
SIGNAL \hw_sel[2]~2_combout\ : std_logic;
SIGNAL \data[4]~input_o\ : std_logic;
SIGNAL \hw_sel[4]~feeder_combout\ : std_logic;
SIGNAL \data[6]~input_o\ : std_logic;
SIGNAL \data[7]~input_o\ : std_logic;
SIGNAL \hw_sel[7]~feeder_combout\ : std_logic;
SIGNAL \Equal1~1_combout\ : std_logic;
SIGNAL \data[7]~20_combout\ : std_logic;
SIGNAL \data[7]~19_combout\ : std_logic;
SIGNAL \dev_reg_act~2_combout\ : std_logic;
SIGNAL \data[7]~21_combout\ : std_logic;
SIGNAL \data[0]~input_o\ : std_logic;
SIGNAL \data[3]~input_o\ : std_logic;
SIGNAL \hw_sel[3]~feeder_combout\ : std_logic;
SIGNAL \data[2]~input_o\ : std_logic;
SIGNAL \hw_sel[2]~feeder_combout\ : std_logic;
SIGNAL \data[1]~input_o\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \data[7]~23_combout\ : std_logic;
SIGNAL \data[7]~23clkctrl_outclk\ : std_logic;
SIGNAL \data[4]$latch~combout\ : std_logic;
SIGNAL \data[0]_298~combout\ : std_logic;
SIGNAL \data[5]$latch~combout\ : std_logic;
SIGNAL \data[6]~22_combout\ : std_logic;
SIGNAL \data[6]$latch~combout\ : std_logic;
SIGNAL \data[7]$latch~combout\ : std_logic;
SIGNAL \process_0~3_combout\ : std_logic;
SIGNAL \process_0~2_combout\ : std_logic;
SIGNAL \Equal1~2_combout\ : std_logic;
SIGNAL \process_0~1_combout\ : std_logic;
SIGNAL \process_0~4_combout\ : std_logic;
SIGNAL \process_0~6_combout\ : std_logic;
SIGNAL \process_0~5_combout\ : std_logic;
SIGNAL \process_0~7_combout\ : std_logic;
SIGNAL \process_0~8_combout\ : std_logic;
SIGNAL \process_0~0_combout\ : std_logic;
SIGNAL \process_0~9_combout\ : std_logic;
SIGNAL \data_dir~0_combout\ : std_logic;
SIGNAL \data_dir~reg0_q\ : std_logic;
SIGNAL \n_data_oe~reg0_q\ : std_logic;
SIGNAL hw_sel : std_logic_vector(7 DOWNTO 0);
SIGNAL addr_latch : std_logic_vector(15 DOWNTO 0);
SIGNAL \ALT_INV_phi2~input_o\ : std_logic;
SIGNAL \ALT_INV_n_data_oe~reg0_q\ : std_logic;
SIGNAL \ALT_INV_data_dir~reg0_q\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_phi2 <= phi2;
ww_rw <= rw;
ww_addr <= addr;
data_dir <= ww_data_dir;
n_data_oe <= ww_n_data_oe;
ww_n_reset <= n_reset;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\data[7]~23clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \data[7]~23_combout\);

\phi2~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \phi2~input_o\);
\ALT_INV_phi2~input_o\ <= NOT \phi2~input_o\;
\ALT_INV_n_data_oe~reg0_q\ <= NOT \n_data_oe~reg0_q\;
\ALT_INV_data_dir~reg0_q\ <= NOT \data_dir~reg0_q\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X11_Y12_N16
\~QUARTUS_CREATED_GND~I\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \~QUARTUS_CREATED_GND~I_combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~QUARTUS_CREATED_GND~I_combout\);

-- Location: IOOBUF_X31_Y17_N23
\data[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data[4]$latch~combout\,
	oe => \data[0]_298~combout\,
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
	i => \data[5]$latch~combout\,
	oe => \data[0]_298~combout\,
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
	i => \data[6]$latch~combout\,
	oe => \data[0]_298~combout\,
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
	i => \data[7]$latch~combout\,
	oe => \data[0]_298~combout\,
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
	i => \data[4]$latch~combout\,
	oe => \data[0]_298~combout\,
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
	i => \data[5]$latch~combout\,
	oe => \data[0]_298~combout\,
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
	i => \data[6]$latch~combout\,
	oe => \data[0]_298~combout\,
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
	i => \data[7]$latch~combout\,
	oe => \data[0]_298~combout\,
	devoe => ww_devoe,
	o => \data[7]~output_o\);

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
	i => \ALT_INV_n_data_oe~reg0_q\,
	devoe => ww_devoe,
	o => \n_data_oe~output_o\);

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

-- Location: FF_X17_Y4_N29
\addr_latch[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \phi2~input_o\,
	asdata => \addr[11]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => addr_latch(11));

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

-- Location: LCCOMB_X17_Y4_N26
\addr_latch[15]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \addr_latch[15]~feeder_combout\ = \addr[15]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \addr[15]~input_o\,
	combout => \addr_latch[15]~feeder_combout\);

-- Location: FF_X17_Y4_N27
\addr_latch[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \phi2~input_o\,
	d => \addr_latch[15]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => addr_latch(15));

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

-- Location: FF_X17_Y4_N15
\addr_latch[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \phi2~input_o\,
	asdata => \addr[12]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => addr_latch(12));

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

-- Location: FF_X17_Y4_N19
\addr_latch[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \phi2~input_o\,
	asdata => \addr[13]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => addr_latch(13));

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

-- Location: LCCOMB_X17_Y4_N16
\addr_latch[14]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \addr_latch[14]~feeder_combout\ = \addr[14]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \addr[14]~input_o\,
	combout => \addr_latch[14]~feeder_combout\);

-- Location: FF_X17_Y4_N17
\addr_latch[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \phi2~input_o\,
	d => \addr_latch[14]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => addr_latch(14));

-- Location: LCCOMB_X17_Y4_N18
\dev_ram_act~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dev_ram_act~0_combout\ = (addr_latch(15) & (addr_latch(12) & (!addr_latch(13) & addr_latch(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => addr_latch(15),
	datab => addr_latch(12),
	datac => addr_latch(13),
	datad => addr_latch(14),
	combout => \dev_ram_act~0_combout\);

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

-- Location: FF_X17_Y4_N3
\addr_latch[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \phi2~input_o\,
	asdata => \addr[10]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => addr_latch(10));

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

-- Location: FF_X17_Y4_N1
\addr_latch[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \phi2~input_o\,
	asdata => \addr[9]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => addr_latch(9));

-- Location: LCCOMB_X17_Y4_N2
\dev_ram_act~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dev_ram_act~1_combout\ = (addr_latch(11)) # (((!addr_latch(9)) # (!addr_latch(10))) # (!\dev_ram_act~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => addr_latch(11),
	datab => \dev_ram_act~0_combout\,
	datac => addr_latch(10),
	datad => addr_latch(9),
	combout => \dev_ram_act~1_combout\);

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

-- Location: LCCOMB_X24_Y14_N8
\rw_latch~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rw_latch~feeder_combout\ = \rw~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rw~input_o\,
	combout => \rw_latch~feeder_combout\);

-- Location: FF_X24_Y14_N9
rw_latch : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \phi2~inputclkctrl_outclk\,
	d => \rw_latch~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rw_latch~q\);

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

-- Location: LCCOMB_X30_Y11_N6
\hw_sel[5]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hw_sel[5]~feeder_combout\ = \data[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data[5]~input_o\,
	combout => \hw_sel[5]~feeder_combout\);

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

-- Location: FF_X17_Y4_N21
\addr_latch[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \phi2~input_o\,
	asdata => \addr[8]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => addr_latch(8));

-- Location: LCCOMB_X17_Y4_N10
\hw_sel[2]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hw_sel[2]~1_combout\ = (!addr_latch(11) & addr_latch(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => addr_latch(11),
	datad => addr_latch(8),
	combout => \hw_sel[2]~1_combout\);

-- Location: LCCOMB_X17_Y4_N0
\hw_sel[2]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hw_sel[2]~0_combout\ = (!addr_latch(10) & (!addr_latch(9) & \dev_ram_act~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => addr_latch(10),
	datac => addr_latch(9),
	datad => \dev_ram_act~0_combout\,
	combout => \hw_sel[2]~0_combout\);

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

-- Location: LCCOMB_X17_Y4_N4
\addr_latch[2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \addr_latch[2]~feeder_combout\ = \addr[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \addr[2]~input_o\,
	combout => \addr_latch[2]~feeder_combout\);

-- Location: FF_X17_Y4_N5
\addr_latch[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \phi2~input_o\,
	d => \addr_latch[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => addr_latch(2));

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

-- Location: FF_X17_Y4_N13
\addr_latch[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \phi2~input_o\,
	asdata => \addr[4]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => addr_latch(4));

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

-- Location: LCCOMB_X17_Y4_N8
\addr_latch[3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \addr_latch[3]~feeder_combout\ = \addr[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \addr[3]~input_o\,
	combout => \addr_latch[3]~feeder_combout\);

-- Location: FF_X17_Y4_N9
\addr_latch[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \phi2~input_o\,
	d => \addr_latch[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => addr_latch(3));

-- Location: LCCOMB_X17_Y4_N12
\data[7]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data[7]~18_combout\ = (addr_latch(2) & (addr_latch(4) & addr_latch(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => addr_latch(2),
	datac => addr_latch(4),
	datad => addr_latch(3),
	combout => \data[7]~18_combout\);

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

-- Location: FF_X17_Y4_N31
\addr_latch[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \phi2~input_o\,
	asdata => \addr[0]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => addr_latch(0));

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

-- Location: FF_X17_Y4_N7
\addr_latch[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \phi2~input_o\,
	asdata => \addr[1]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => addr_latch(1));

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

-- Location: FF_X17_Y4_N11
\addr_latch[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \phi2~input_o\,
	asdata => \addr[5]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => addr_latch(5));

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

-- Location: FF_X17_Y4_N23
\addr_latch[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \phi2~input_o\,
	asdata => \addr[6]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => addr_latch(6));

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

-- Location: FF_X17_Y4_N25
\addr_latch[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \phi2~input_o\,
	asdata => \addr[7]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => addr_latch(7));

-- Location: LCCOMB_X17_Y4_N22
\dev_reg_act~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dev_reg_act~0_combout\ = (addr_latch(1) & (addr_latch(5) & (addr_latch(6) & addr_latch(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => addr_latch(1),
	datab => addr_latch(5),
	datac => addr_latch(6),
	datad => addr_latch(7),
	combout => \dev_reg_act~0_combout\);

-- Location: LCCOMB_X17_Y4_N30
\dev_reg_act~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dev_reg_act~1_combout\ = (\data[7]~18_combout\ & (addr_latch(0) & \dev_reg_act~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data[7]~18_combout\,
	datac => addr_latch(0),
	datad => \dev_reg_act~0_combout\,
	combout => \dev_reg_act~1_combout\);

-- Location: LCCOMB_X25_Y15_N24
\hw_sel[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hw_sel[2]~2_combout\ = (!\rw_latch~q\ & (\hw_sel[2]~1_combout\ & (\hw_sel[2]~0_combout\ & \dev_reg_act~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rw_latch~q\,
	datab => \hw_sel[2]~1_combout\,
	datac => \hw_sel[2]~0_combout\,
	datad => \dev_reg_act~1_combout\,
	combout => \hw_sel[2]~2_combout\);

-- Location: FF_X30_Y11_N7
\hw_sel[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_phi2~input_o\,
	d => \hw_sel[5]~feeder_combout\,
	ena => \hw_sel[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hw_sel(5));

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

-- Location: LCCOMB_X30_Y11_N8
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

-- Location: FF_X30_Y11_N9
\hw_sel[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_phi2~input_o\,
	d => \hw_sel[4]~feeder_combout\,
	ena => \hw_sel[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hw_sel(4));

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

-- Location: FF_X30_Y11_N15
\hw_sel[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_phi2~input_o\,
	asdata => \data[6]~input_o\,
	sload => VCC,
	ena => \hw_sel[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hw_sel(6));

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

-- Location: LCCOMB_X30_Y11_N28
\hw_sel[7]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hw_sel[7]~feeder_combout\ = \data[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data[7]~input_o\,
	combout => \hw_sel[7]~feeder_combout\);

-- Location: FF_X30_Y11_N29
\hw_sel[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_phi2~input_o\,
	d => \hw_sel[7]~feeder_combout\,
	ena => \hw_sel[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hw_sel(7));

-- Location: LCCOMB_X30_Y11_N12
\Equal1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal1~1_combout\ = (!hw_sel(5) & (!hw_sel(4) & (!hw_sel(6) & hw_sel(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => hw_sel(5),
	datab => hw_sel(4),
	datac => hw_sel(6),
	datad => hw_sel(7),
	combout => \Equal1~1_combout\);

-- Location: LCCOMB_X17_Y4_N24
\data[7]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data[7]~20_combout\ = (!addr_latch(6) & (!addr_latch(5) & (!addr_latch(7) & !addr_latch(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => addr_latch(6),
	datab => addr_latch(5),
	datac => addr_latch(7),
	datad => addr_latch(8),
	combout => \data[7]~20_combout\);

-- Location: LCCOMB_X17_Y4_N6
\data[7]~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data[7]~19_combout\ = (\hw_sel[2]~0_combout\ & (((!addr_latch(0) & !addr_latch(1))) # (!\data[7]~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hw_sel[2]~0_combout\,
	datab => addr_latch(0),
	datac => addr_latch(1),
	datad => \data[7]~18_combout\,
	combout => \data[7]~19_combout\);

-- Location: LCCOMB_X17_Y4_N20
\dev_reg_act~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dev_reg_act~2_combout\ = (\dev_reg_act~1_combout\) # (((addr_latch(11)) # (!addr_latch(8))) # (!\hw_sel[2]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dev_reg_act~1_combout\,
	datab => \hw_sel[2]~0_combout\,
	datac => addr_latch(8),
	datad => addr_latch(11),
	combout => \dev_reg_act~2_combout\);

-- Location: LCCOMB_X17_Y4_N28
\data[7]~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data[7]~21_combout\ = ((\data[7]~20_combout\ & (\data[7]~19_combout\ & addr_latch(11)))) # (!\dev_reg_act~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data[7]~20_combout\,
	datab => \data[7]~19_combout\,
	datac => addr_latch(11),
	datad => \dev_reg_act~2_combout\,
	combout => \data[7]~21_combout\);

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

-- Location: FF_X30_Y11_N11
\hw_sel[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_phi2~input_o\,
	asdata => \data[0]~input_o\,
	sload => VCC,
	ena => \hw_sel[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hw_sel(0));

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

-- Location: LCCOMB_X29_Y11_N6
\hw_sel[3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hw_sel[3]~feeder_combout\ = \data[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data[3]~input_o\,
	combout => \hw_sel[3]~feeder_combout\);

-- Location: FF_X29_Y11_N7
\hw_sel[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_phi2~input_o\,
	d => \hw_sel[3]~feeder_combout\,
	ena => \hw_sel[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hw_sel(3));

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

-- Location: LCCOMB_X30_Y11_N22
\hw_sel[2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hw_sel[2]~feeder_combout\ = \data[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data[2]~input_o\,
	combout => \hw_sel[2]~feeder_combout\);

-- Location: FF_X30_Y11_N23
\hw_sel[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_phi2~input_o\,
	d => \hw_sel[2]~feeder_combout\,
	ena => \hw_sel[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hw_sel(2));

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

-- Location: FF_X30_Y11_N25
\hw_sel[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_phi2~input_o\,
	asdata => \data[1]~input_o\,
	sload => VCC,
	ena => \hw_sel[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hw_sel(1));

-- Location: LCCOMB_X30_Y11_N26
\Equal1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = (!hw_sel(0) & (!hw_sel(3) & (!hw_sel(2) & !hw_sel(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => hw_sel(0),
	datab => hw_sel(3),
	datac => hw_sel(2),
	datad => hw_sel(1),
	combout => \Equal1~0_combout\);

-- Location: LCCOMB_X30_Y11_N30
\data[7]~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data[7]~23_combout\ = (\Equal1~1_combout\ & (\Equal1~0_combout\ & ((\data[7]~21_combout\) # (!\dev_ram_act~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~1_combout\,
	datab => \data[7]~21_combout\,
	datac => \Equal1~0_combout\,
	datad => \dev_ram_act~1_combout\,
	combout => \data[7]~23_combout\);

-- Location: CLKCTRL_G7
\data[7]~23clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \data[7]~23clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \data[7]~23clkctrl_outclk\);

-- Location: LCCOMB_X25_Y15_N12
\data[4]$latch\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data[4]$latch~combout\ = (\rw_latch~q\ & ((GLOBAL(\data[7]~23clkctrl_outclk\) & ((!\dev_ram_act~1_combout\))) # (!GLOBAL(\data[7]~23clkctrl_outclk\) & (\data[4]$latch~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data[4]$latch~combout\,
	datab => \dev_ram_act~1_combout\,
	datac => \rw_latch~q\,
	datad => \data[7]~23clkctrl_outclk\,
	combout => \data[4]$latch~combout\);

-- Location: LCCOMB_X30_Y14_N16
\data[0]_298\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data[0]_298~combout\ = (\rw_latch~q\ & ((\data[7]~23_combout\) # (\data[0]_298~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rw_latch~q\,
	datab => \data[7]~23_combout\,
	datad => \data[0]_298~combout\,
	combout => \data[0]_298~combout\);

-- Location: LCCOMB_X25_Y15_N22
\data[5]$latch\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data[5]$latch~combout\ = (\rw_latch~q\ & ((GLOBAL(\data[7]~23clkctrl_outclk\) & (!\dev_reg_act~2_combout\)) # (!GLOBAL(\data[7]~23clkctrl_outclk\) & ((\data[5]$latch~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rw_latch~q\,
	datab => \dev_reg_act~2_combout\,
	datac => \data[5]$latch~combout\,
	datad => \data[7]~23clkctrl_outclk\,
	combout => \data[5]$latch~combout\);

-- Location: LCCOMB_X25_Y15_N10
\data[6]~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data[6]~22_combout\ = \dev_ram_act~1_combout\ $ (((\dev_reg_act~1_combout\) # ((!\hw_sel[2]~1_combout\) # (!\hw_sel[2]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dev_reg_act~1_combout\,
	datab => \hw_sel[2]~0_combout\,
	datac => \dev_ram_act~1_combout\,
	datad => \hw_sel[2]~1_combout\,
	combout => \data[6]~22_combout\);

-- Location: LCCOMB_X25_Y15_N8
\data[6]$latch\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data[6]$latch~combout\ = (\rw_latch~q\ & ((GLOBAL(\data[7]~23clkctrl_outclk\) & (!\data[6]~22_combout\)) # (!GLOBAL(\data[7]~23clkctrl_outclk\) & ((\data[6]$latch~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rw_latch~q\,
	datab => \data[6]~22_combout\,
	datac => \data[6]$latch~combout\,
	datad => \data[7]~23clkctrl_outclk\,
	combout => \data[6]$latch~combout\);

-- Location: LCCOMB_X25_Y15_N26
\data[7]$latch\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data[7]$latch~combout\ = (\rw_latch~q\ & ((GLOBAL(\data[7]~23clkctrl_outclk\) & (\dev_reg_act~2_combout\)) # (!GLOBAL(\data[7]~23clkctrl_outclk\) & ((\data[7]$latch~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rw_latch~q\,
	datab => \dev_reg_act~2_combout\,
	datac => \data[7]$latch~combout\,
	datad => \data[7]~23clkctrl_outclk\,
	combout => \data[7]$latch~combout\);

-- Location: LCCOMB_X18_Y4_N12
\process_0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \process_0~3_combout\ = (\addr[5]~input_o\ & (\addr[6]~input_o\ & (\addr[1]~input_o\ & \addr[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr[5]~input_o\,
	datab => \addr[6]~input_o\,
	datac => \addr[1]~input_o\,
	datad => \addr[7]~input_o\,
	combout => \process_0~3_combout\);

-- Location: LCCOMB_X18_Y4_N18
\process_0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \process_0~2_combout\ = (\addr[3]~input_o\ & (\addr[0]~input_o\ & (\addr[4]~input_o\ & \addr[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr[3]~input_o\,
	datab => \addr[0]~input_o\,
	datac => \addr[4]~input_o\,
	datad => \addr[2]~input_o\,
	combout => \process_0~2_combout\);

-- Location: LCCOMB_X30_Y11_N14
\Equal1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal1~2_combout\ = (\Equal1~0_combout\ & \Equal1~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~0_combout\,
	datad => \Equal1~1_combout\,
	combout => \Equal1~2_combout\);

-- Location: LCCOMB_X18_Y4_N24
\process_0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \process_0~1_combout\ = (!\addr[11]~input_o\ & (\addr[8]~input_o\ & (!\addr[10]~input_o\ & !\addr[9]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr[11]~input_o\,
	datab => \addr[8]~input_o\,
	datac => \addr[10]~input_o\,
	datad => \addr[9]~input_o\,
	combout => \process_0~1_combout\);

-- Location: LCCOMB_X18_Y4_N6
\process_0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \process_0~4_combout\ = (\process_0~1_combout\ & ((\Equal1~2_combout\) # ((\process_0~3_combout\ & \process_0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~3_combout\,
	datab => \process_0~2_combout\,
	datac => \Equal1~2_combout\,
	datad => \process_0~1_combout\,
	combout => \process_0~4_combout\);

-- Location: LCCOMB_X18_Y4_N26
\process_0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \process_0~6_combout\ = (\addr[5]~input_o\) # ((\addr[6]~input_o\) # ((\addr[8]~input_o\) # (\addr[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr[5]~input_o\,
	datab => \addr[6]~input_o\,
	datac => \addr[8]~input_o\,
	datad => \addr[7]~input_o\,
	combout => \process_0~6_combout\);

-- Location: LCCOMB_X18_Y4_N0
\process_0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \process_0~5_combout\ = (\addr[3]~input_o\ & (\addr[2]~input_o\ & \addr[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr[3]~input_o\,
	datab => \addr[2]~input_o\,
	datac => \addr[4]~input_o\,
	combout => \process_0~5_combout\);

-- Location: LCCOMB_X18_Y4_N20
\process_0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \process_0~7_combout\ = (\process_0~6_combout\) # ((\process_0~5_combout\ & ((\addr[0]~input_o\) # (\addr[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~6_combout\,
	datab => \addr[0]~input_o\,
	datac => \addr[1]~input_o\,
	datad => \process_0~5_combout\,
	combout => \process_0~7_combout\);

-- Location: LCCOMB_X18_Y4_N22
\process_0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \process_0~8_combout\ = (\addr[11]~input_o\ & (!\addr[9]~input_o\ & (!\addr[10]~input_o\ & !\process_0~7_combout\))) # (!\addr[11]~input_o\ & (\addr[9]~input_o\ & (\addr[10]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr[11]~input_o\,
	datab => \addr[9]~input_o\,
	datac => \addr[10]~input_o\,
	datad => \process_0~7_combout\,
	combout => \process_0~8_combout\);

-- Location: LCCOMB_X17_Y4_N14
\process_0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \process_0~0_combout\ = (\addr[15]~input_o\ & (!\addr[13]~input_o\ & (\addr[12]~input_o\ & \addr[14]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr[15]~input_o\,
	datab => \addr[13]~input_o\,
	datac => \addr[12]~input_o\,
	datad => \addr[14]~input_o\,
	combout => \process_0~0_combout\);

-- Location: LCCOMB_X25_Y14_N10
\process_0~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \process_0~9_combout\ = (\process_0~0_combout\ & ((\process_0~4_combout\) # ((\process_0~8_combout\ & \Equal1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~4_combout\,
	datab => \process_0~8_combout\,
	datac => \Equal1~2_combout\,
	datad => \process_0~0_combout\,
	combout => \process_0~9_combout\);

-- Location: LCCOMB_X25_Y14_N24
\data_dir~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data_dir~0_combout\ = (\rw~input_o\ & \process_0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rw~input_o\,
	datad => \process_0~9_combout\,
	combout => \data_dir~0_combout\);

-- Location: FF_X25_Y14_N25
\data_dir~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \phi2~inputclkctrl_outclk\,
	d => \data_dir~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_dir~reg0_q\);

-- Location: FF_X25_Y14_N11
\n_data_oe~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \phi2~inputclkctrl_outclk\,
	d => \process_0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \n_data_oe~reg0_q\);

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

-- Location: UNVM_X0_Y11_N40
\~QUARTUS_CREATED_UNVM~\ : fiftyfivenm_unvm
-- pragma translate_off
GENERIC MAP (
	addr_range1_end_addr => -1,
	addr_range1_offset => -1,
	addr_range2_offset => -1,
	is_compressed_image => "false",
	is_dual_boot => "false",
	is_eram_skip => "false",
	max_ufm_valid_addr => -1,
	max_valid_addr => -1,
	min_ufm_valid_addr => -1,
	min_valid_addr => -1,
	part_name => "quartus_created_unvm",
	reserve_block => "true")
-- pragma translate_on
PORT MAP (
	nosc_ena => \~QUARTUS_CREATED_GND~I_combout\,
	xe_ye => \~QUARTUS_CREATED_GND~I_combout\,
	se => \~QUARTUS_CREATED_GND~I_combout\,
	busy => \~QUARTUS_CREATED_UNVM~~busy\);

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
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC1~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC1~~eoc\);

ww_data_dir <= \data_dir~output_o\;

ww_n_data_oe <= \n_data_oe~output_o\;

data(0) <= \data[0]~output_o\;

data(1) <= \data[1]~output_o\;

data(2) <= \data[2]~output_o\;

data(3) <= \data[3]~output_o\;

data(4) <= \data[4]~output_o\;

data(5) <= \data[5]~output_o\;

data(6) <= \data[6]~output_o\;

data(7) <= \data[7]~output_o\;
END structure;


