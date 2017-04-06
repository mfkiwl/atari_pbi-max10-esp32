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

-- DATE "04/05/2017 19:50:32"

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
	clk_50 : IN std_logic;
	phi2_early : BUFFER std_logic;
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
-- phi2_early	=>  Location: PIN_92,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
-- clk_50	=>  Location: PIN_27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- phi2	=>  Location: PIN_90,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr[9]	=>  Location: PIN_52,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr[10]	=>  Location: PIN_55,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr[12]	=>  Location: PIN_57,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr[14]	=>  Location: PIN_59,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr[15]	=>  Location: PIN_60,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr[13]	=>  Location: PIN_58,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr[0]	=>  Location: PIN_38,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr[2]	=>  Location: PIN_41,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr[3]	=>  Location: PIN_43,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr[4]	=>  Location: PIN_44,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr[8]	=>  Location: PIN_50,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr[1]	=>  Location: PIN_39,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr[5]	=>  Location: PIN_45,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr[6]	=>  Location: PIN_46,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr[7]	=>  Location: PIN_47,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr[11]	=>  Location: PIN_56,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rw	=>  Location: PIN_114,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_clk_50 : std_logic;
SIGNAL ww_phi2_early : std_logic;
SIGNAL ww_phi2 : std_logic;
SIGNAL ww_rw : std_logic;
SIGNAL ww_addr : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_data_dir : std_logic;
SIGNAL ww_n_data_oe : std_logic;
SIGNAL ww_n_reset : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \phi2_early~reg0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \data[2]~17clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
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
SIGNAL \phi2_early~output_o\ : std_logic;
SIGNAL \data_dir~output_o\ : std_logic;
SIGNAL \n_data_oe~output_o\ : std_logic;
SIGNAL \phi2~input_o\ : std_logic;
SIGNAL \addr[13]~input_o\ : std_logic;
SIGNAL \addr[15]~input_o\ : std_logic;
SIGNAL \addr[14]~input_o\ : std_logic;
SIGNAL \addr[12]~input_o\ : std_logic;
SIGNAL \Equal2~0_combout\ : std_logic;
SIGNAL \addr[8]~input_o\ : std_logic;
SIGNAL \addr[10]~input_o\ : std_logic;
SIGNAL \addr[9]~input_o\ : std_logic;
SIGNAL \LessThan4~0_combout\ : std_logic;
SIGNAL \addr[11]~input_o\ : std_logic;
SIGNAL \addr[0]~input_o\ : std_logic;
SIGNAL \addr[3]~input_o\ : std_logic;
SIGNAL \addr[2]~input_o\ : std_logic;
SIGNAL \addr[4]~input_o\ : std_logic;
SIGNAL \LessThan1~0_combout\ : std_logic;
SIGNAL \addr[1]~input_o\ : std_logic;
SIGNAL \addr[6]~input_o\ : std_logic;
SIGNAL \addr[7]~input_o\ : std_logic;
SIGNAL \addr[5]~input_o\ : std_logic;
SIGNAL \Equal2~1_combout\ : std_logic;
SIGNAL \Equal2~2_combout\ : std_logic;
SIGNAL \process_1~1_combout\ : std_logic;
SIGNAL \dev_reg_act~0_combout\ : std_logic;
SIGNAL \dev_reg_act~feeder_combout\ : std_logic;
SIGNAL \dev_reg_act~q\ : std_logic;
SIGNAL \clk_50~input_o\ : std_logic;
SIGNAL \clk_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \clk_counter[1]~2_combout\ : std_logic;
SIGNAL \phi2~inputclkctrl_outclk\ : std_logic;
SIGNAL \clk_counter[2]~1_combout\ : std_logic;
SIGNAL \clk_counter[0]~3_combout\ : std_logic;
SIGNAL \clk_counter[3]~0_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \phi2_early~reg0_q\ : std_logic;
SIGNAL \phi2_early~reg0clkctrl_outclk\ : std_logic;
SIGNAL \data[7]~input_o\ : std_logic;
SIGNAL \hw_sel[7]~feeder_combout\ : std_logic;
SIGNAL \Equal2~3_combout\ : std_logic;
SIGNAL \hw_sel_act~q\ : std_logic;
SIGNAL \rw~input_o\ : std_logic;
SIGNAL \rw_latch~q\ : std_logic;
SIGNAL \hw_sel[3]~0_combout\ : std_logic;
SIGNAL \data[5]~input_o\ : std_logic;
SIGNAL \hw_sel[5]~feeder_combout\ : std_logic;
SIGNAL \data[6]~input_o\ : std_logic;
SIGNAL \data[4]~input_o\ : std_logic;
SIGNAL \hw_sel[4]~feeder_combout\ : std_logic;
SIGNAL \Equal1~1_combout\ : std_logic;
SIGNAL \data[2]~input_o\ : std_logic;
SIGNAL \hw_sel[2]~feeder_combout\ : std_logic;
SIGNAL \data[1]~input_o\ : std_logic;
SIGNAL \hw_sel[1]~feeder_combout\ : std_logic;
SIGNAL \data[0]~input_o\ : std_logic;
SIGNAL \data[3]~input_o\ : std_logic;
SIGNAL \hw_sel[3]~feeder_combout\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \process_1~8_combout\ : std_logic;
SIGNAL \data[2]~18_combout\ : std_logic;
SIGNAL \process_1~0_combout\ : std_logic;
SIGNAL \dev_ram_act~feeder_combout\ : std_logic;
SIGNAL \dev_ram_act~q\ : std_logic;
SIGNAL \addr_latch[8]~feeder_combout\ : std_logic;
SIGNAL \data[0]~16_combout\ : std_logic;
SIGNAL \process_1~2_combout\ : std_logic;
SIGNAL \process_1~3_combout\ : std_logic;
SIGNAL \process_1~4_combout\ : std_logic;
SIGNAL \dev_rom_act~0_combout\ : std_logic;
SIGNAL \dev_rom_act~q\ : std_logic;
SIGNAL \data[2]~17_combout\ : std_logic;
SIGNAL \data[2]~17clkctrl_outclk\ : std_logic;
SIGNAL \data[0]$latch~combout\ : std_logic;
SIGNAL \data[7]_424~combout\ : std_logic;
SIGNAL \data[1]~19_combout\ : std_logic;
SIGNAL \data[1]$latch~combout\ : std_logic;
SIGNAL \addr_latch[10]~feeder_combout\ : std_logic;
SIGNAL \data[2]~20_combout\ : std_logic;
SIGNAL \data[2]$latch~combout\ : std_logic;
SIGNAL \addr_latch[11]~feeder_combout\ : std_logic;
SIGNAL \data[3]~21_combout\ : std_logic;
SIGNAL \data[3]$latch~combout\ : std_logic;
SIGNAL \addr_latch[12]~feeder_combout\ : std_logic;
SIGNAL \data[4]~22_combout\ : std_logic;
SIGNAL \data[4]$latch~combout\ : std_logic;
SIGNAL \addr_latch[13]~feeder_combout\ : std_logic;
SIGNAL \data[5]~23_combout\ : std_logic;
SIGNAL \data[5]$latch~combout\ : std_logic;
SIGNAL \data[6]~24_combout\ : std_logic;
SIGNAL \data[6]$latch~combout\ : std_logic;
SIGNAL \addr_latch[15]~feeder_combout\ : std_logic;
SIGNAL \data[7]~25_combout\ : std_logic;
SIGNAL \data[7]$latch~combout\ : std_logic;
SIGNAL \process_1~5_combout\ : std_logic;
SIGNAL \process_1~6_combout\ : std_logic;
SIGNAL \data_dir~0_combout\ : std_logic;
SIGNAL \data_dir~reg0_q\ : std_logic;
SIGNAL \process_1~7_combout\ : std_logic;
SIGNAL \n_data_oe~reg0_q\ : std_logic;
SIGNAL clk_counter : std_logic_vector(3 DOWNTO 0);
SIGNAL hw_sel : std_logic_vector(7 DOWNTO 0);
SIGNAL addr_latch : std_logic_vector(15 DOWNTO 0);
SIGNAL \ALT_INV_phi2_early~reg0clkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_n_data_oe~reg0_q\ : std_logic;
SIGNAL \ALT_INV_data_dir~reg0_q\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clk_50 <= clk_50;
phi2_early <= ww_phi2_early;
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

\phi2_early~reg0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \phi2_early~reg0_q\);

\clk_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk_50~input_o\);

\data[2]~17clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \data[2]~17_combout\);

\phi2~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \phi2~input_o\);
\ALT_INV_phi2_early~reg0clkctrl_outclk\ <= NOT \phi2_early~reg0clkctrl_outclk\;
\ALT_INV_n_data_oe~reg0_q\ <= NOT \n_data_oe~reg0_q\;
\ALT_INV_data_dir~reg0_q\ <= NOT \data_dir~reg0_q\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X11_Y13_N16
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
	i => \data[0]$latch~combout\,
	oe => \data[7]_424~combout\,
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
	i => \data[1]$latch~combout\,
	oe => \data[7]_424~combout\,
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
	i => \data[2]$latch~combout\,
	oe => \data[7]_424~combout\,
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
	i => \data[3]$latch~combout\,
	oe => \data[7]_424~combout\,
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
	oe => \data[7]_424~combout\,
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
	oe => \data[7]_424~combout\,
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
	oe => \data[7]_424~combout\,
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
	oe => \data[7]_424~combout\,
	devoe => ww_devoe,
	o => \data[7]~output_o\);

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

-- Location: LCCOMB_X23_Y7_N16
\Equal2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal2~0_combout\ = (!\addr[13]~input_o\ & (\addr[15]~input_o\ & (\addr[14]~input_o\ & \addr[12]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr[13]~input_o\,
	datab => \addr[15]~input_o\,
	datac => \addr[14]~input_o\,
	datad => \addr[12]~input_o\,
	combout => \Equal2~0_combout\);

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

-- Location: LCCOMB_X30_Y10_N24
\LessThan4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan4~0_combout\ = (!\addr[10]~input_o\ & !\addr[9]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \addr[10]~input_o\,
	datad => \addr[9]~input_o\,
	combout => \LessThan4~0_combout\);

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

-- Location: LCCOMB_X24_Y9_N16
\LessThan1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan1~0_combout\ = (\addr[3]~input_o\ & (\addr[2]~input_o\ & \addr[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr[3]~input_o\,
	datac => \addr[2]~input_o\,
	datad => \addr[4]~input_o\,
	combout => \LessThan1~0_combout\);

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

-- Location: LCCOMB_X30_Y10_N30
\Equal2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal2~1_combout\ = (\addr[1]~input_o\ & (\addr[6]~input_o\ & (\addr[7]~input_o\ & \addr[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr[1]~input_o\,
	datab => \addr[6]~input_o\,
	datac => \addr[7]~input_o\,
	datad => \addr[5]~input_o\,
	combout => \Equal2~1_combout\);

-- Location: LCCOMB_X30_Y10_N12
\Equal2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal2~2_combout\ = (\addr[0]~input_o\ & (\LessThan1~0_combout\ & (\Equal2~1_combout\ & \addr[8]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr[0]~input_o\,
	datab => \LessThan1~0_combout\,
	datac => \Equal2~1_combout\,
	datad => \addr[8]~input_o\,
	combout => \Equal2~2_combout\);

-- Location: LCCOMB_X30_Y10_N18
\process_1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \process_1~1_combout\ = (\addr[8]~input_o\ & (\LessThan4~0_combout\ & (!\addr[11]~input_o\ & !\Equal2~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr[8]~input_o\,
	datab => \LessThan4~0_combout\,
	datac => \addr[11]~input_o\,
	datad => \Equal2~2_combout\,
	combout => \process_1~1_combout\);

-- Location: LCCOMB_X30_Y10_N10
\dev_reg_act~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dev_reg_act~0_combout\ = (\Equal2~0_combout\ & \process_1~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal2~0_combout\,
	datad => \process_1~1_combout\,
	combout => \dev_reg_act~0_combout\);

-- Location: LCCOMB_X30_Y11_N18
\dev_reg_act~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dev_reg_act~feeder_combout\ = \dev_reg_act~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dev_reg_act~0_combout\,
	combout => \dev_reg_act~feeder_combout\);

-- Location: FF_X30_Y11_N19
dev_reg_act : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \phi2~input_o\,
	d => \dev_reg_act~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dev_reg_act~q\);

-- Location: IOIBUF_X0_Y7_N22
\clk_50~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk_50,
	o => \clk_50~input_o\);

-- Location: CLKCTRL_G4
\clk_50~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk_50~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk_50~inputclkctrl_outclk\);

-- Location: LCCOMB_X1_Y7_N2
\clk_counter[1]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_counter[1]~2_combout\ = clk_counter(0) $ (clk_counter(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clk_counter(0),
	datac => clk_counter(1),
	combout => \clk_counter[1]~2_combout\);

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

-- Location: FF_X1_Y7_N3
\clk_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \clk_counter[1]~2_combout\,
	clrn => \phi2~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_counter(1));

-- Location: LCCOMB_X1_Y7_N18
\clk_counter[2]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_counter[2]~1_combout\ = clk_counter(2) $ (((clk_counter(0) & clk_counter(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clk_counter(0),
	datab => clk_counter(1),
	datac => clk_counter(2),
	combout => \clk_counter[2]~1_combout\);

-- Location: FF_X1_Y7_N19
\clk_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \clk_counter[2]~1_combout\,
	clrn => \phi2~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_counter(2));

-- Location: LCCOMB_X1_Y7_N22
\clk_counter[0]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_counter[0]~3_combout\ = (!clk_counter(0) & (((clk_counter(1)) # (!clk_counter(2))) # (!clk_counter(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clk_counter(3),
	datab => clk_counter(1),
	datac => clk_counter(0),
	datad => clk_counter(2),
	combout => \clk_counter[0]~3_combout\);

-- Location: FF_X1_Y7_N23
\clk_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \clk_counter[0]~3_combout\,
	clrn => \phi2~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_counter(0));

-- Location: LCCOMB_X1_Y7_N12
\clk_counter[3]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_counter[3]~0_combout\ = clk_counter(3) $ (((clk_counter(0) & (clk_counter(1) & clk_counter(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clk_counter(0),
	datab => clk_counter(1),
	datac => clk_counter(3),
	datad => clk_counter(2),
	combout => \clk_counter[3]~0_combout\);

-- Location: FF_X1_Y7_N13
\clk_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \clk_counter[3]~0_combout\,
	clrn => \phi2~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_counter(3));

-- Location: LCCOMB_X1_Y7_N0
\Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = ((clk_counter(1)) # ((clk_counter(0)) # (!clk_counter(2)))) # (!clk_counter(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clk_counter(3),
	datab => clk_counter(1),
	datac => clk_counter(0),
	datad => clk_counter(2),
	combout => \Equal0~0_combout\);

-- Location: FF_X1_Y7_N1
\phi2_early~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~input_o\,
	d => \Equal0~0_combout\,
	clrn => \phi2~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phi2_early~reg0_q\);

-- Location: CLKCTRL_G1
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

-- Location: LCCOMB_X30_Y15_N12
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

-- Location: LCCOMB_X30_Y10_N26
\Equal2~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal2~3_combout\ = (\Equal2~2_combout\ & (\Equal2~0_combout\ & (!\addr[11]~input_o\ & \LessThan4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~2_combout\,
	datab => \Equal2~0_combout\,
	datac => \addr[11]~input_o\,
	datad => \LessThan4~0_combout\,
	combout => \Equal2~3_combout\);

-- Location: FF_X30_Y13_N23
hw_sel_act : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \phi2~inputclkctrl_outclk\,
	asdata => \Equal2~3_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hw_sel_act~q\);

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

-- Location: FF_X30_Y13_N13
rw_latch : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \phi2~inputclkctrl_outclk\,
	asdata => \rw~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rw_latch~q\);

-- Location: LCCOMB_X30_Y13_N22
\hw_sel[3]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hw_sel[3]~0_combout\ = (\hw_sel_act~q\ & !\rw_latch~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \hw_sel_act~q\,
	datad => \rw_latch~q\,
	combout => \hw_sel[3]~0_combout\);

-- Location: FF_X30_Y15_N13
\hw_sel[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_phi2_early~reg0clkctrl_outclk\,
	d => \hw_sel[7]~feeder_combout\,
	ena => \hw_sel[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hw_sel(7));

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

-- Location: LCCOMB_X30_Y15_N20
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

-- Location: FF_X30_Y15_N21
\hw_sel[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_phi2_early~reg0clkctrl_outclk\,
	d => \hw_sel[5]~feeder_combout\,
	ena => \hw_sel[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hw_sel(5));

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

-- Location: FF_X30_Y15_N27
\hw_sel[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_phi2_early~reg0clkctrl_outclk\,
	asdata => \data[6]~input_o\,
	sload => VCC,
	ena => \hw_sel[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hw_sel(6));

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

-- Location: LCCOMB_X30_Y15_N10
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

-- Location: FF_X30_Y15_N11
\hw_sel[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_phi2_early~reg0clkctrl_outclk\,
	d => \hw_sel[4]~feeder_combout\,
	ena => \hw_sel[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hw_sel(4));

-- Location: LCCOMB_X30_Y15_N26
\Equal1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal1~1_combout\ = (hw_sel(7) & (!hw_sel(5) & (!hw_sel(6) & !hw_sel(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => hw_sel(7),
	datab => hw_sel(5),
	datac => hw_sel(6),
	datad => hw_sel(4),
	combout => \Equal1~1_combout\);

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

-- Location: LCCOMB_X30_Y15_N22
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

-- Location: FF_X30_Y15_N23
\hw_sel[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_phi2_early~reg0clkctrl_outclk\,
	d => \hw_sel[2]~feeder_combout\,
	ena => \hw_sel[3]~0_combout\,
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

-- Location: LCCOMB_X30_Y15_N4
\hw_sel[1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hw_sel[1]~feeder_combout\ = \data[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data[1]~input_o\,
	combout => \hw_sel[1]~feeder_combout\);

-- Location: FF_X30_Y15_N5
\hw_sel[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_phi2_early~reg0clkctrl_outclk\,
	d => \hw_sel[1]~feeder_combout\,
	ena => \hw_sel[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hw_sel(1));

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

-- Location: FF_X30_Y15_N19
\hw_sel[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_phi2_early~reg0clkctrl_outclk\,
	asdata => \data[0]~input_o\,
	sload => VCC,
	ena => \hw_sel[3]~0_combout\,
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

-- Location: LCCOMB_X30_Y15_N28
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

-- Location: FF_X30_Y15_N29
\hw_sel[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_phi2_early~reg0clkctrl_outclk\,
	d => \hw_sel[3]~feeder_combout\,
	ena => \hw_sel[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hw_sel(3));

-- Location: LCCOMB_X30_Y15_N18
\Equal1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = (!hw_sel(2) & (!hw_sel(1) & (!hw_sel(0) & !hw_sel(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => hw_sel(2),
	datab => hw_sel(1),
	datac => hw_sel(0),
	datad => hw_sel(3),
	combout => \Equal1~0_combout\);

-- Location: LCCOMB_X30_Y13_N12
\process_1~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \process_1~8_combout\ = (\phi2~input_o\ & (\Equal1~1_combout\ & (\rw_latch~q\ & \Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \phi2~input_o\,
	datab => \Equal1~1_combout\,
	datac => \rw_latch~q\,
	datad => \Equal1~0_combout\,
	combout => \process_1~8_combout\);

-- Location: LCCOMB_X30_Y11_N20
\data[2]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data[2]~18_combout\ = (\dev_reg_act~q\) # (!\process_1~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dev_reg_act~q\,
	datac => \process_1~8_combout\,
	combout => \data[2]~18_combout\);

-- Location: LCCOMB_X30_Y10_N4
\process_1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \process_1~0_combout\ = (\addr[10]~input_o\ & (!\addr[11]~input_o\ & (\Equal2~0_combout\ & \addr[9]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr[10]~input_o\,
	datab => \addr[11]~input_o\,
	datac => \Equal2~0_combout\,
	datad => \addr[9]~input_o\,
	combout => \process_1~0_combout\);

-- Location: LCCOMB_X30_Y11_N24
\dev_ram_act~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dev_ram_act~feeder_combout\ = \process_1~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \process_1~0_combout\,
	combout => \dev_ram_act~feeder_combout\);

-- Location: FF_X30_Y11_N25
dev_ram_act : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \phi2~input_o\,
	d => \dev_ram_act~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dev_ram_act~q\);

-- Location: FF_X24_Y9_N29
\addr_latch[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \phi2~inputclkctrl_outclk\,
	asdata => \addr[0]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => addr_latch(0));

-- Location: LCCOMB_X24_Y9_N18
\addr_latch[8]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \addr_latch[8]~feeder_combout\ = \addr[8]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \addr[8]~input_o\,
	combout => \addr_latch[8]~feeder_combout\);

-- Location: FF_X24_Y9_N19
\addr_latch[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \phi2~inputclkctrl_outclk\,
	d => \addr_latch[8]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => addr_latch(8));

-- Location: LCCOMB_X24_Y9_N28
\data[0]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data[0]~16_combout\ = (\dev_ram_act~q\ & ((addr_latch(8)))) # (!\dev_ram_act~q\ & (addr_latch(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dev_ram_act~q\,
	datac => addr_latch(0),
	datad => addr_latch(8),
	combout => \data[0]~16_combout\);

-- Location: LCCOMB_X30_Y10_N16
\process_1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \process_1~2_combout\ = (!\addr[8]~input_o\ & (!\addr[9]~input_o\ & (!\addr[10]~input_o\ & !\addr[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr[8]~input_o\,
	datab => \addr[9]~input_o\,
	datac => \addr[10]~input_o\,
	datad => \addr[5]~input_o\,
	combout => \process_1~2_combout\);

-- Location: LCCOMB_X30_Y10_N2
\process_1~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \process_1~3_combout\ = (!\addr[6]~input_o\ & (!\addr[7]~input_o\ & (\addr[11]~input_o\ & \process_1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr[6]~input_o\,
	datab => \addr[7]~input_o\,
	datac => \addr[11]~input_o\,
	datad => \process_1~2_combout\,
	combout => \process_1~3_combout\);

-- Location: LCCOMB_X30_Y10_N20
\process_1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \process_1~4_combout\ = (\process_1~3_combout\ & (((!\addr[0]~input_o\ & !\addr[1]~input_o\)) # (!\LessThan1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr[0]~input_o\,
	datab => \LessThan1~0_combout\,
	datac => \addr[1]~input_o\,
	datad => \process_1~3_combout\,
	combout => \process_1~4_combout\);

-- Location: LCCOMB_X30_Y10_N0
\dev_rom_act~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dev_rom_act~0_combout\ = (\Equal2~0_combout\ & \process_1~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal2~0_combout\,
	datad => \process_1~4_combout\,
	combout => \dev_rom_act~0_combout\);

-- Location: FF_X30_Y11_N5
dev_rom_act : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \phi2~input_o\,
	asdata => \dev_rom_act~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dev_rom_act~q\);

-- Location: LCCOMB_X30_Y11_N30
\data[2]~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data[2]~17_combout\ = (\dev_rom_act~q\) # (\dev_ram_act~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dev_rom_act~q\,
	datad => \dev_ram_act~q\,
	combout => \data[2]~17_combout\);

-- Location: CLKCTRL_G7
\data[2]~17clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \data[2]~17clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \data[2]~17clkctrl_outclk\);

-- Location: LCCOMB_X24_Y9_N26
\data[0]$latch\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data[0]$latch~combout\ = (!\data[2]~18_combout\ & ((GLOBAL(\data[2]~17clkctrl_outclk\) & (\data[0]~16_combout\)) # (!GLOBAL(\data[2]~17clkctrl_outclk\) & ((\data[0]$latch~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data[2]~18_combout\,
	datab => \data[0]~16_combout\,
	datac => \data[0]$latch~combout\,
	datad => \data[2]~17clkctrl_outclk\,
	combout => \data[0]$latch~combout\);

-- Location: LCCOMB_X30_Y11_N22
\data[7]_424\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data[7]_424~combout\ = (\process_1~8_combout\ & ((\data[2]~17_combout\) # ((\data[7]_424~combout\) # (\dev_reg_act~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_1~8_combout\,
	datab => \data[2]~17_combout\,
	datac => \data[7]_424~combout\,
	datad => \dev_reg_act~q\,
	combout => \data[7]_424~combout\);

-- Location: FF_X24_Y9_N23
\addr_latch[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \phi2~inputclkctrl_outclk\,
	asdata => \addr[9]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => addr_latch(9));

-- Location: FF_X24_Y9_N25
\addr_latch[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \phi2~inputclkctrl_outclk\,
	asdata => \addr[1]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => addr_latch(1));

-- Location: LCCOMB_X24_Y9_N24
\data[1]~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data[1]~19_combout\ = (\dev_ram_act~q\ & (addr_latch(9))) # (!\dev_ram_act~q\ & ((addr_latch(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => addr_latch(9),
	datac => addr_latch(1),
	datad => \dev_ram_act~q\,
	combout => \data[1]~19_combout\);

-- Location: LCCOMB_X24_Y9_N4
\data[1]$latch\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data[1]$latch~combout\ = (\data[2]~18_combout\) # ((GLOBAL(\data[2]~17clkctrl_outclk\) & (\data[1]~19_combout\)) # (!GLOBAL(\data[2]~17clkctrl_outclk\) & ((\data[1]$latch~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data[2]~18_combout\,
	datab => \data[1]~19_combout\,
	datac => \data[1]$latch~combout\,
	datad => \data[2]~17clkctrl_outclk\,
	combout => \data[1]$latch~combout\);

-- Location: FF_X24_Y9_N13
\addr_latch[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \phi2~inputclkctrl_outclk\,
	asdata => \addr[2]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => addr_latch(2));

-- Location: LCCOMB_X24_Y9_N10
\addr_latch[10]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \addr_latch[10]~feeder_combout\ = \addr[10]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \addr[10]~input_o\,
	combout => \addr_latch[10]~feeder_combout\);

-- Location: FF_X24_Y9_N11
\addr_latch[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \phi2~inputclkctrl_outclk\,
	d => \addr_latch[10]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => addr_latch(10));

-- Location: LCCOMB_X24_Y9_N12
\data[2]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data[2]~20_combout\ = (\dev_ram_act~q\ & ((addr_latch(10)))) # (!\dev_ram_act~q\ & (addr_latch(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dev_ram_act~q\,
	datac => addr_latch(2),
	datad => addr_latch(10),
	combout => \data[2]~20_combout\);

-- Location: LCCOMB_X24_Y9_N30
\data[2]$latch\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data[2]$latch~combout\ = (!\data[2]~18_combout\ & ((GLOBAL(\data[2]~17clkctrl_outclk\) & (\data[2]~20_combout\)) # (!GLOBAL(\data[2]~17clkctrl_outclk\) & ((\data[2]$latch~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data[2]~18_combout\,
	datab => \data[2]~20_combout\,
	datac => \data[2]$latch~combout\,
	datad => \data[2]~17clkctrl_outclk\,
	combout => \data[2]$latch~combout\);

-- Location: LCCOMB_X24_Y9_N14
\addr_latch[11]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \addr_latch[11]~feeder_combout\ = \addr[11]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \addr[11]~input_o\,
	combout => \addr_latch[11]~feeder_combout\);

-- Location: FF_X24_Y9_N15
\addr_latch[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \phi2~inputclkctrl_outclk\,
	d => \addr_latch[11]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => addr_latch(11));

-- Location: FF_X24_Y9_N21
\addr_latch[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \phi2~inputclkctrl_outclk\,
	asdata => \addr[3]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => addr_latch(3));

-- Location: LCCOMB_X24_Y9_N20
\data[3]~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data[3]~21_combout\ = (\dev_ram_act~q\ & (addr_latch(11))) # (!\dev_ram_act~q\ & ((addr_latch(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dev_ram_act~q\,
	datab => addr_latch(11),
	datac => addr_latch(3),
	combout => \data[3]~21_combout\);

-- Location: LCCOMB_X24_Y9_N8
\data[3]$latch\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data[3]$latch~combout\ = (!\data[2]~18_combout\ & ((GLOBAL(\data[2]~17clkctrl_outclk\) & (\data[3]~21_combout\)) # (!GLOBAL(\data[2]~17clkctrl_outclk\) & ((\data[3]$latch~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data[2]~18_combout\,
	datab => \data[3]~21_combout\,
	datac => \data[3]$latch~combout\,
	datad => \data[2]~17clkctrl_outclk\,
	combout => \data[3]$latch~combout\);

-- Location: FF_X23_Y7_N29
\addr_latch[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \phi2~inputclkctrl_outclk\,
	asdata => \addr[4]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => addr_latch(4));

-- Location: LCCOMB_X23_Y7_N18
\addr_latch[12]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \addr_latch[12]~feeder_combout\ = \addr[12]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \addr[12]~input_o\,
	combout => \addr_latch[12]~feeder_combout\);

-- Location: FF_X23_Y7_N19
\addr_latch[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \phi2~inputclkctrl_outclk\,
	d => \addr_latch[12]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => addr_latch(12));

-- Location: LCCOMB_X23_Y7_N28
\data[4]~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data[4]~22_combout\ = (\dev_ram_act~q\ & ((addr_latch(12)))) # (!\dev_ram_act~q\ & (addr_latch(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dev_ram_act~q\,
	datac => addr_latch(4),
	datad => addr_latch(12),
	combout => \data[4]~22_combout\);

-- Location: LCCOMB_X23_Y7_N30
\data[4]$latch\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data[4]$latch~combout\ = (!\data[2]~18_combout\ & ((GLOBAL(\data[2]~17clkctrl_outclk\) & (\data[4]~22_combout\)) # (!GLOBAL(\data[2]~17clkctrl_outclk\) & ((\data[4]$latch~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data[2]~18_combout\,
	datab => \data[4]~22_combout\,
	datac => \data[4]$latch~combout\,
	datad => \data[2]~17clkctrl_outclk\,
	combout => \data[4]$latch~combout\);

-- Location: LCCOMB_X23_Y7_N26
\addr_latch[13]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \addr_latch[13]~feeder_combout\ = \addr[13]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \addr[13]~input_o\,
	combout => \addr_latch[13]~feeder_combout\);

-- Location: FF_X23_Y7_N27
\addr_latch[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \phi2~inputclkctrl_outclk\,
	d => \addr_latch[13]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => addr_latch(13));

-- Location: FF_X23_Y7_N25
\addr_latch[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \phi2~inputclkctrl_outclk\,
	asdata => \addr[5]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => addr_latch(5));

-- Location: LCCOMB_X23_Y7_N24
\data[5]~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data[5]~23_combout\ = (\dev_ram_act~q\ & (addr_latch(13))) # (!\dev_ram_act~q\ & ((addr_latch(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => addr_latch(13),
	datac => addr_latch(5),
	datad => \dev_ram_act~q\,
	combout => \data[5]~23_combout\);

-- Location: LCCOMB_X23_Y7_N8
\data[5]$latch\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data[5]$latch~combout\ = (\data[2]~18_combout\) # ((GLOBAL(\data[2]~17clkctrl_outclk\) & (\data[5]~23_combout\)) # (!GLOBAL(\data[2]~17clkctrl_outclk\) & ((\data[5]$latch~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data[2]~18_combout\,
	datab => \data[5]~23_combout\,
	datac => \data[5]$latch~combout\,
	datad => \data[2]~17clkctrl_outclk\,
	combout => \data[5]$latch~combout\);

-- Location: FF_X23_Y7_N23
\addr_latch[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \phi2~inputclkctrl_outclk\,
	asdata => \addr[14]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => addr_latch(14));

-- Location: FF_X23_Y7_N13
\addr_latch[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \phi2~inputclkctrl_outclk\,
	asdata => \addr[6]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => addr_latch(6));

-- Location: LCCOMB_X23_Y7_N12
\data[6]~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data[6]~24_combout\ = (\dev_ram_act~q\ & (addr_latch(14))) # (!\dev_ram_act~q\ & ((addr_latch(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => addr_latch(14),
	datac => addr_latch(6),
	datad => \dev_ram_act~q\,
	combout => \data[6]~24_combout\);

-- Location: LCCOMB_X23_Y7_N14
\data[6]$latch\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data[6]$latch~combout\ = (!\data[2]~18_combout\ & ((GLOBAL(\data[2]~17clkctrl_outclk\) & (\data[6]~24_combout\)) # (!GLOBAL(\data[2]~17clkctrl_outclk\) & ((\data[6]$latch~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data[2]~18_combout\,
	datab => \data[6]~24_combout\,
	datac => \data[6]$latch~combout\,
	datad => \data[2]~17clkctrl_outclk\,
	combout => \data[6]$latch~combout\);

-- Location: FF_X23_Y7_N21
\addr_latch[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \phi2~inputclkctrl_outclk\,
	asdata => \addr[7]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => addr_latch(7));

-- Location: LCCOMB_X23_Y7_N6
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

-- Location: FF_X23_Y7_N7
\addr_latch[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \phi2~inputclkctrl_outclk\,
	d => \addr_latch[15]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => addr_latch(15));

-- Location: LCCOMB_X23_Y7_N20
\data[7]~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data[7]~25_combout\ = (\dev_ram_act~q\ & ((addr_latch(15)))) # (!\dev_ram_act~q\ & (addr_latch(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dev_ram_act~q\,
	datac => addr_latch(7),
	datad => addr_latch(15),
	combout => \data[7]~25_combout\);

-- Location: LCCOMB_X23_Y7_N4
\data[7]$latch\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data[7]$latch~combout\ = (!\data[2]~18_combout\ & ((GLOBAL(\data[2]~17clkctrl_outclk\) & (\data[7]~25_combout\)) # (!GLOBAL(\data[2]~17clkctrl_outclk\) & ((\data[7]$latch~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data[2]~18_combout\,
	datab => \data[7]~25_combout\,
	datac => \data[7]$latch~combout\,
	datad => \data[2]~17clkctrl_outclk\,
	combout => \data[7]$latch~combout\);

-- Location: LCCOMB_X30_Y10_N22
\process_1~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \process_1~5_combout\ = (\Equal2~0_combout\ & ((\process_1~4_combout\) # (\process_1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \process_1~4_combout\,
	datac => \Equal2~0_combout\,
	datad => \process_1~1_combout\,
	combout => \process_1~5_combout\);

-- Location: LCCOMB_X30_Y13_N28
\process_1~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \process_1~6_combout\ = (\Equal1~1_combout\ & (\Equal1~0_combout\ & ((\process_1~0_combout\) # (\process_1~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_1~0_combout\,
	datab => \Equal1~1_combout\,
	datac => \process_1~5_combout\,
	datad => \Equal1~0_combout\,
	combout => \process_1~6_combout\);

-- Location: LCCOMB_X30_Y13_N4
\data_dir~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data_dir~0_combout\ = (\rw~input_o\ & ((\Equal2~3_combout\) # (\process_1~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~3_combout\,
	datac => \rw~input_o\,
	datad => \process_1~6_combout\,
	combout => \data_dir~0_combout\);

-- Location: FF_X30_Y13_N5
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

-- Location: LCCOMB_X30_Y13_N2
\process_1~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \process_1~7_combout\ = (\Equal2~3_combout\) # (\process_1~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal2~3_combout\,
	datad => \process_1~6_combout\,
	combout => \process_1~7_combout\);

-- Location: FF_X30_Y13_N3
\n_data_oe~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \phi2~inputclkctrl_outclk\,
	d => \process_1~7_combout\,
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

ww_phi2_early <= \phi2_early~output_o\;

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


