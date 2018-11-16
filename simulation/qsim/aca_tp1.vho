-- Copyright (C) 2018  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 18.1.0 Build 625 09/12/2018 SJ Lite Edition"

-- DATE "11/16/2018 03:09:03"

-- 
-- Device: Altera EP4CE6E22C6 Package TQFP144
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_101,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	HammingCodes IS
    PORT (
	clk : IN std_logic;
	plainValue : IN std_logic_vector(10 DOWNTO 0);
	encodedValue : OUT std_logic_vector(14 DOWNTO 0);
	outValue : OUT std_logic_vector(10 DOWNTO 0)
	);
END HammingCodes;

-- Design Ports Information
-- encodedValue[0]	=>  Location: PIN_65,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- encodedValue[1]	=>  Location: PIN_69,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- encodedValue[2]	=>  Location: PIN_53,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- encodedValue[3]	=>  Location: PIN_71,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- encodedValue[4]	=>  Location: PIN_75,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- encodedValue[5]	=>  Location: PIN_74,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- encodedValue[6]	=>  Location: PIN_64,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- encodedValue[7]	=>  Location: PIN_59,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- encodedValue[8]	=>  Location: PIN_49,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- encodedValue[9]	=>  Location: PIN_52,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- encodedValue[10]	=>  Location: PIN_112,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- encodedValue[11]	=>  Location: PIN_50,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- encodedValue[12]	=>  Location: PIN_46,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- encodedValue[13]	=>  Location: PIN_60,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- encodedValue[14]	=>  Location: PIN_67,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outValue[0]	=>  Location: PIN_43,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outValue[1]	=>  Location: PIN_124,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outValue[2]	=>  Location: PIN_38,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outValue[3]	=>  Location: PIN_110,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outValue[4]	=>  Location: PIN_115,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outValue[5]	=>  Location: PIN_127,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outValue[6]	=>  Location: PIN_86,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outValue[7]	=>  Location: PIN_111,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outValue[8]	=>  Location: PIN_144,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outValue[9]	=>  Location: PIN_121,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outValue[10]	=>  Location: PIN_83,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- plainValue[8]	=>  Location: PIN_44,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- plainValue[3]	=>  Location: PIN_58,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- plainValue[0]	=>  Location: PIN_73,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- plainValue[1]	=>  Location: PIN_54,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- plainValue[2]	=>  Location: PIN_66,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- plainValue[5]	=>  Location: PIN_55,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- plainValue[6]	=>  Location: PIN_68,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- plainValue[4]	=>  Location: PIN_70,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- plainValue[7]	=>  Location: PIN_42,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- plainValue[9]	=>  Location: PIN_72,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- plainValue[10]	=>  Location: PIN_77,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF HammingCodes IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_plainValue : std_logic_vector(10 DOWNTO 0);
SIGNAL ww_encodedValue : std_logic_vector(14 DOWNTO 0);
SIGNAL ww_outValue : std_logic_vector(10 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \encodedValue[0]~output_o\ : std_logic;
SIGNAL \encodedValue[1]~output_o\ : std_logic;
SIGNAL \encodedValue[2]~output_o\ : std_logic;
SIGNAL \encodedValue[3]~output_o\ : std_logic;
SIGNAL \encodedValue[4]~output_o\ : std_logic;
SIGNAL \encodedValue[5]~output_o\ : std_logic;
SIGNAL \encodedValue[6]~output_o\ : std_logic;
SIGNAL \encodedValue[7]~output_o\ : std_logic;
SIGNAL \encodedValue[8]~output_o\ : std_logic;
SIGNAL \encodedValue[9]~output_o\ : std_logic;
SIGNAL \encodedValue[10]~output_o\ : std_logic;
SIGNAL \encodedValue[11]~output_o\ : std_logic;
SIGNAL \encodedValue[12]~output_o\ : std_logic;
SIGNAL \encodedValue[13]~output_o\ : std_logic;
SIGNAL \encodedValue[14]~output_o\ : std_logic;
SIGNAL \outValue[0]~output_o\ : std_logic;
SIGNAL \outValue[1]~output_o\ : std_logic;
SIGNAL \outValue[2]~output_o\ : std_logic;
SIGNAL \outValue[3]~output_o\ : std_logic;
SIGNAL \outValue[4]~output_o\ : std_logic;
SIGNAL \outValue[5]~output_o\ : std_logic;
SIGNAL \outValue[6]~output_o\ : std_logic;
SIGNAL \outValue[7]~output_o\ : std_logic;
SIGNAL \outValue[8]~output_o\ : std_logic;
SIGNAL \outValue[9]~output_o\ : std_logic;
SIGNAL \outValue[10]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \plainValue[8]~input_o\ : std_logic;
SIGNAL \plainValue[0]~input_o\ : std_logic;
SIGNAL \plainValue[3]~input_o\ : std_logic;
SIGNAL \plainValue[1]~input_o\ : std_logic;
SIGNAL \plainValue[2]~input_o\ : std_logic;
SIGNAL \enc|x_signal~0_combout\ : std_logic;
SIGNAL \plainValue[5]~input_o\ : std_logic;
SIGNAL \plainValue[6]~input_o\ : std_logic;
SIGNAL \enc|x_signal~1_combout\ : std_logic;
SIGNAL \plainValue[7]~input_o\ : std_logic;
SIGNAL \plainValue[9]~input_o\ : std_logic;
SIGNAL \plainValue[4]~input_o\ : std_logic;
SIGNAL \enc|x_signal~2_combout\ : std_logic;
SIGNAL \enc|x_signal~3_combout\ : std_logic;
SIGNAL \plainValue[10]~input_o\ : std_logic;
SIGNAL \enc|x_signal~4_combout\ : std_logic;
SIGNAL \enc|x_signal~5_combout\ : std_logic;
SIGNAL \enc|x_signal~6_combout\ : std_logic;
SIGNAL \enc|x_signal~7_combout\ : std_logic;
SIGNAL \enc|x_signal[4]~feeder_combout\ : std_logic;
SIGNAL \enc|x_signal[6]~feeder_combout\ : std_logic;
SIGNAL \enc|x_signal[7]~feeder_combout\ : std_logic;
SIGNAL \enc|x_signal[10]~feeder_combout\ : std_logic;
SIGNAL \enc|x_signal[12]~feeder_combout\ : std_logic;
SIGNAL \enc|x_signal[14]~feeder_combout\ : std_logic;
SIGNAL \enc|x_signal\ : std_logic_vector(14 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clk <= clk;
ww_plainValue <= plainValue;
encodedValue <= ww_encodedValue;
outValue <= ww_outValue;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X28_Y0_N23
\encodedValue[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \enc|x_signal\(0),
	devoe => ww_devoe,
	o => \encodedValue[0]~output_o\);

-- Location: IOOBUF_X30_Y0_N2
\encodedValue[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \enc|x_signal\(1),
	devoe => ww_devoe,
	o => \encodedValue[1]~output_o\);

-- Location: IOOBUF_X16_Y0_N2
\encodedValue[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \enc|x_signal\(2),
	devoe => ww_devoe,
	o => \encodedValue[2]~output_o\);

-- Location: IOOBUF_X32_Y0_N16
\encodedValue[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \enc|x_signal\(3),
	devoe => ww_devoe,
	o => \encodedValue[3]~output_o\);

-- Location: IOOBUF_X34_Y3_N23
\encodedValue[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \enc|x_signal\(4),
	devoe => ww_devoe,
	o => \encodedValue[4]~output_o\);

-- Location: IOOBUF_X34_Y2_N16
\encodedValue[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \enc|x_signal\(5),
	devoe => ww_devoe,
	o => \encodedValue[5]~output_o\);

-- Location: IOOBUF_X25_Y0_N2
\encodedValue[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \enc|x_signal\(6),
	devoe => ww_devoe,
	o => \encodedValue[6]~output_o\);

-- Location: IOOBUF_X23_Y0_N16
\encodedValue[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \enc|x_signal\(7),
	devoe => ww_devoe,
	o => \encodedValue[7]~output_o\);

-- Location: IOOBUF_X13_Y0_N16
\encodedValue[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \enc|x_signal\(8),
	devoe => ww_devoe,
	o => \encodedValue[8]~output_o\);

-- Location: IOOBUF_X16_Y0_N9
\encodedValue[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \enc|x_signal\(9),
	devoe => ww_devoe,
	o => \encodedValue[9]~output_o\);

-- Location: IOOBUF_X28_Y24_N2
\encodedValue[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \enc|x_signal\(10),
	devoe => ww_devoe,
	o => \encodedValue[10]~output_o\);

-- Location: IOOBUF_X13_Y0_N2
\encodedValue[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \enc|x_signal\(11),
	devoe => ww_devoe,
	o => \encodedValue[11]~output_o\);

-- Location: IOOBUF_X7_Y0_N2
\encodedValue[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \enc|x_signal\(12),
	devoe => ww_devoe,
	o => \encodedValue[12]~output_o\);

-- Location: IOOBUF_X23_Y0_N9
\encodedValue[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \enc|x_signal\(13),
	devoe => ww_devoe,
	o => \encodedValue[13]~output_o\);

-- Location: IOOBUF_X30_Y0_N23
\encodedValue[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \enc|x_signal\(14),
	devoe => ww_devoe,
	o => \encodedValue[14]~output_o\);

-- Location: IOOBUF_X5_Y0_N23
\outValue[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \outValue[0]~output_o\);

-- Location: IOOBUF_X18_Y24_N16
\outValue[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \outValue[1]~output_o\);

-- Location: IOOBUF_X1_Y0_N23
\outValue[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \outValue[2]~output_o\);

-- Location: IOOBUF_X30_Y24_N2
\outValue[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \outValue[3]~output_o\);

-- Location: IOOBUF_X28_Y24_N23
\outValue[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \outValue[4]~output_o\);

-- Location: IOOBUF_X16_Y24_N9
\outValue[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \outValue[5]~output_o\);

-- Location: IOOBUF_X34_Y9_N2
\outValue[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \outValue[6]~output_o\);

-- Location: IOOBUF_X30_Y24_N23
\outValue[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \outValue[7]~output_o\);

-- Location: IOOBUF_X1_Y24_N9
\outValue[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \outValue[8]~output_o\);

-- Location: IOOBUF_X23_Y24_N16
\outValue[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \outValue[9]~output_o\);

-- Location: IOOBUF_X34_Y9_N23
\outValue[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \outValue[10]~output_o\);

-- Location: IOIBUF_X0_Y11_N8
\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G2
\clk~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: IOIBUF_X5_Y0_N15
\plainValue[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_plainValue(8),
	o => \plainValue[8]~input_o\);

-- Location: IOIBUF_X34_Y2_N22
\plainValue[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_plainValue(0),
	o => \plainValue[0]~input_o\);

-- Location: IOIBUF_X21_Y0_N8
\plainValue[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_plainValue(3),
	o => \plainValue[3]~input_o\);

-- Location: IOIBUF_X18_Y0_N22
\plainValue[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_plainValue(1),
	o => \plainValue[1]~input_o\);

-- Location: IOIBUF_X28_Y0_N1
\plainValue[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_plainValue(2),
	o => \plainValue[2]~input_o\);

-- Location: LCCOMB_X28_Y1_N24
\enc|x_signal~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \enc|x_signal~0_combout\ = \plainValue[0]~input_o\ $ (\plainValue[3]~input_o\ $ (\plainValue[1]~input_o\ $ (\plainValue[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \plainValue[0]~input_o\,
	datab => \plainValue[3]~input_o\,
	datac => \plainValue[1]~input_o\,
	datad => \plainValue[2]~input_o\,
	combout => \enc|x_signal~0_combout\);

-- Location: IOIBUF_X18_Y0_N15
\plainValue[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_plainValue(5),
	o => \plainValue[5]~input_o\);

-- Location: IOIBUF_X30_Y0_N8
\plainValue[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_plainValue(6),
	o => \plainValue[6]~input_o\);

-- Location: LCCOMB_X28_Y1_N16
\enc|x_signal~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \enc|x_signal~1_combout\ = \plainValue[8]~input_o\ $ (\enc|x_signal~0_combout\ $ (\plainValue[5]~input_o\ $ (\plainValue[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \plainValue[8]~input_o\,
	datab => \enc|x_signal~0_combout\,
	datac => \plainValue[5]~input_o\,
	datad => \plainValue[6]~input_o\,
	combout => \enc|x_signal~1_combout\);

-- Location: FF_X28_Y1_N17
\enc|x_signal[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \enc|x_signal~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \enc|x_signal\(0));

-- Location: IOIBUF_X3_Y0_N1
\plainValue[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_plainValue(7),
	o => \plainValue[7]~input_o\);

-- Location: IOIBUF_X32_Y0_N8
\plainValue[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_plainValue(9),
	o => \plainValue[9]~input_o\);

-- Location: IOIBUF_X32_Y0_N22
\plainValue[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_plainValue(4),
	o => \plainValue[4]~input_o\);

-- Location: LCCOMB_X28_Y1_N18
\enc|x_signal~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \enc|x_signal~2_combout\ = \plainValue[7]~input_o\ $ (\plainValue[9]~input_o\ $ (\plainValue[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \plainValue[7]~input_o\,
	datab => \plainValue[9]~input_o\,
	datac => \plainValue[4]~input_o\,
	combout => \enc|x_signal~2_combout\);

-- Location: LCCOMB_X28_Y1_N2
\enc|x_signal~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \enc|x_signal~3_combout\ = \plainValue[8]~input_o\ $ (\enc|x_signal~2_combout\ $ (\enc|x_signal~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \plainValue[8]~input_o\,
	datab => \enc|x_signal~2_combout\,
	datad => \enc|x_signal~0_combout\,
	combout => \enc|x_signal~3_combout\);

-- Location: FF_X28_Y1_N3
\enc|x_signal[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \enc|x_signal~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \enc|x_signal\(1));

-- Location: IOIBUF_X34_Y4_N15
\plainValue[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_plainValue(10),
	o => \plainValue[10]~input_o\);

-- Location: LCCOMB_X28_Y1_N28
\enc|x_signal~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \enc|x_signal~4_combout\ = \plainValue[0]~input_o\ $ (\plainValue[3]~input_o\ $ (\plainValue[4]~input_o\ $ (\plainValue[10]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \plainValue[0]~input_o\,
	datab => \plainValue[3]~input_o\,
	datac => \plainValue[4]~input_o\,
	datad => \plainValue[10]~input_o\,
	combout => \enc|x_signal~4_combout\);

-- Location: LCCOMB_X28_Y1_N20
\enc|x_signal~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \enc|x_signal~5_combout\ = \plainValue[5]~input_o\ $ (\enc|x_signal~4_combout\ $ (\plainValue[9]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \plainValue[5]~input_o\,
	datab => \enc|x_signal~4_combout\,
	datac => \plainValue[9]~input_o\,
	combout => \enc|x_signal~5_combout\);

-- Location: FF_X28_Y1_N21
\enc|x_signal[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \enc|x_signal~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \enc|x_signal\(2));

-- Location: LCCOMB_X28_Y1_N22
\enc|x_signal~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \enc|x_signal~6_combout\ = \plainValue[0]~input_o\ $ (\plainValue[2]~input_o\ $ (\plainValue[1]~input_o\ $ (\plainValue[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \plainValue[0]~input_o\,
	datab => \plainValue[2]~input_o\,
	datac => \plainValue[1]~input_o\,
	datad => \plainValue[6]~input_o\,
	combout => \enc|x_signal~6_combout\);

-- Location: LCCOMB_X28_Y1_N30
\enc|x_signal~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \enc|x_signal~7_combout\ = \enc|x_signal~6_combout\ $ (\plainValue[10]~input_o\ $ (\plainValue[4]~input_o\ $ (\plainValue[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \enc|x_signal~6_combout\,
	datab => \plainValue[10]~input_o\,
	datac => \plainValue[4]~input_o\,
	datad => \plainValue[7]~input_o\,
	combout => \enc|x_signal~7_combout\);

-- Location: FF_X28_Y1_N31
\enc|x_signal[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \enc|x_signal~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \enc|x_signal\(3));

-- Location: LCCOMB_X28_Y1_N0
\enc|x_signal[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \enc|x_signal[4]~feeder_combout\ = \plainValue[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \plainValue[0]~input_o\,
	combout => \enc|x_signal[4]~feeder_combout\);

-- Location: FF_X28_Y1_N1
\enc|x_signal[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \enc|x_signal[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \enc|x_signal\(4));

-- Location: FF_X28_Y1_N11
\enc|x_signal[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \plainValue[1]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \enc|x_signal\(5));

-- Location: LCCOMB_X28_Y1_N12
\enc|x_signal[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \enc|x_signal[6]~feeder_combout\ = \plainValue[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \plainValue[2]~input_o\,
	combout => \enc|x_signal[6]~feeder_combout\);

-- Location: FF_X28_Y1_N13
\enc|x_signal[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \enc|x_signal[6]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \enc|x_signal\(6));

-- Location: LCCOMB_X28_Y1_N14
\enc|x_signal[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \enc|x_signal[7]~feeder_combout\ = \plainValue[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \plainValue[3]~input_o\,
	combout => \enc|x_signal[7]~feeder_combout\);

-- Location: FF_X28_Y1_N15
\enc|x_signal[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \enc|x_signal[7]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \enc|x_signal\(7));

-- Location: FF_X28_Y1_N9
\enc|x_signal[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \plainValue[4]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \enc|x_signal\(8));

-- Location: FF_X18_Y1_N17
\enc|x_signal[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \plainValue[5]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \enc|x_signal\(9));

-- Location: LCCOMB_X28_Y1_N26
\enc|x_signal[10]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \enc|x_signal[10]~feeder_combout\ = \plainValue[6]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \plainValue[6]~input_o\,
	combout => \enc|x_signal[10]~feeder_combout\);

-- Location: FF_X28_Y1_N27
\enc|x_signal[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \enc|x_signal[10]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \enc|x_signal\(10));

-- Location: FF_X14_Y1_N17
\enc|x_signal[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \plainValue[7]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \enc|x_signal\(11));

-- Location: LCCOMB_X8_Y1_N16
\enc|x_signal[12]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \enc|x_signal[12]~feeder_combout\ = \plainValue[8]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \plainValue[8]~input_o\,
	combout => \enc|x_signal[12]~feeder_combout\);

-- Location: FF_X8_Y1_N17
\enc|x_signal[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \enc|x_signal[12]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \enc|x_signal\(12));

-- Location: FF_X28_Y1_N5
\enc|x_signal[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \plainValue[9]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \enc|x_signal\(13));

-- Location: LCCOMB_X28_Y1_N6
\enc|x_signal[14]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \enc|x_signal[14]~feeder_combout\ = \plainValue[10]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \plainValue[10]~input_o\,
	combout => \enc|x_signal[14]~feeder_combout\);

-- Location: FF_X28_Y1_N7
\enc|x_signal[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \enc|x_signal[14]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \enc|x_signal\(14));

ww_encodedValue(0) <= \encodedValue[0]~output_o\;

ww_encodedValue(1) <= \encodedValue[1]~output_o\;

ww_encodedValue(2) <= \encodedValue[2]~output_o\;

ww_encodedValue(3) <= \encodedValue[3]~output_o\;

ww_encodedValue(4) <= \encodedValue[4]~output_o\;

ww_encodedValue(5) <= \encodedValue[5]~output_o\;

ww_encodedValue(6) <= \encodedValue[6]~output_o\;

ww_encodedValue(7) <= \encodedValue[7]~output_o\;

ww_encodedValue(8) <= \encodedValue[8]~output_o\;

ww_encodedValue(9) <= \encodedValue[9]~output_o\;

ww_encodedValue(10) <= \encodedValue[10]~output_o\;

ww_encodedValue(11) <= \encodedValue[11]~output_o\;

ww_encodedValue(12) <= \encodedValue[12]~output_o\;

ww_encodedValue(13) <= \encodedValue[13]~output_o\;

ww_encodedValue(14) <= \encodedValue[14]~output_o\;

ww_outValue(0) <= \outValue[0]~output_o\;

ww_outValue(1) <= \outValue[1]~output_o\;

ww_outValue(2) <= \outValue[2]~output_o\;

ww_outValue(3) <= \outValue[3]~output_o\;

ww_outValue(4) <= \outValue[4]~output_o\;

ww_outValue(5) <= \outValue[5]~output_o\;

ww_outValue(6) <= \outValue[6]~output_o\;

ww_outValue(7) <= \outValue[7]~output_o\;

ww_outValue(8) <= \outValue[8]~output_o\;

ww_outValue(9) <= \outValue[9]~output_o\;

ww_outValue(10) <= \outValue[10]~output_o\;
END structure;


