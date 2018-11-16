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

-- DATE "11/16/2018 01:28:57"

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

ENTITY 	Encoder IS
    PORT (
	clk : IN std_logic;
	m : IN std_logic_vector(10 DOWNTO 0);
	x : OUT std_logic_vector(14 DOWNTO 0)
	);
END Encoder;

-- Design Ports Information
-- x[0]	=>  Location: PIN_43,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[1]	=>  Location: PIN_53,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[2]	=>  Location: PIN_31,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[3]	=>  Location: PIN_44,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[4]	=>  Location: PIN_30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[5]	=>  Location: PIN_39,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[6]	=>  Location: PIN_42,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[7]	=>  Location: PIN_68,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[8]	=>  Location: PIN_59,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[9]	=>  Location: PIN_51,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[10]	=>  Location: PIN_32,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[11]	=>  Location: PIN_135,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[12]	=>  Location: PIN_58,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[13]	=>  Location: PIN_28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[14]	=>  Location: PIN_136,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m[8]	=>  Location: PIN_60,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m[3]	=>  Location: PIN_69,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m[0]	=>  Location: PIN_46,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m[1]	=>  Location: PIN_33,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m[2]	=>  Location: PIN_34,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m[5]	=>  Location: PIN_55,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m[6]	=>  Location: PIN_38,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m[4]	=>  Location: PIN_54,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m[7]	=>  Location: PIN_49,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m[9]	=>  Location: PIN_52,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m[10]	=>  Location: PIN_50,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Encoder IS
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
SIGNAL ww_m : std_logic_vector(10 DOWNTO 0);
SIGNAL ww_x : std_logic_vector(14 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \x[0]~output_o\ : std_logic;
SIGNAL \x[1]~output_o\ : std_logic;
SIGNAL \x[2]~output_o\ : std_logic;
SIGNAL \x[3]~output_o\ : std_logic;
SIGNAL \x[4]~output_o\ : std_logic;
SIGNAL \x[5]~output_o\ : std_logic;
SIGNAL \x[6]~output_o\ : std_logic;
SIGNAL \x[7]~output_o\ : std_logic;
SIGNAL \x[8]~output_o\ : std_logic;
SIGNAL \x[9]~output_o\ : std_logic;
SIGNAL \x[10]~output_o\ : std_logic;
SIGNAL \x[11]~output_o\ : std_logic;
SIGNAL \x[12]~output_o\ : std_logic;
SIGNAL \x[13]~output_o\ : std_logic;
SIGNAL \x[14]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \m[6]~input_o\ : std_logic;
SIGNAL \m[1]~input_o\ : std_logic;
SIGNAL \m[2]~input_o\ : std_logic;
SIGNAL \m[3]~input_o\ : std_logic;
SIGNAL \m[0]~input_o\ : std_logic;
SIGNAL \x_signal~0_combout\ : std_logic;
SIGNAL \m[8]~input_o\ : std_logic;
SIGNAL \m[5]~input_o\ : std_logic;
SIGNAL \x_signal~1_combout\ : std_logic;
SIGNAL \m[7]~input_o\ : std_logic;
SIGNAL \m[4]~input_o\ : std_logic;
SIGNAL \m[9]~input_o\ : std_logic;
SIGNAL \x_signal~2_combout\ : std_logic;
SIGNAL \x_signal~3_combout\ : std_logic;
SIGNAL \m[10]~input_o\ : std_logic;
SIGNAL \x_signal~4_combout\ : std_logic;
SIGNAL \x_signal~5_combout\ : std_logic;
SIGNAL \x_signal~6_combout\ : std_logic;
SIGNAL \x_signal~7_combout\ : std_logic;
SIGNAL \x_signal[4]~feeder_combout\ : std_logic;
SIGNAL \x_signal[8]~feeder_combout\ : std_logic;
SIGNAL \x_signal[9]~feeder_combout\ : std_logic;
SIGNAL \x_signal[12]~feeder_combout\ : std_logic;
SIGNAL \x_signal[13]~feeder_combout\ : std_logic;
SIGNAL x_signal : std_logic_vector(14 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clk <= clk;
ww_m <= m;
x <= ww_x;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X5_Y0_N23
\x[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => x_signal(0),
	devoe => ww_devoe,
	o => \x[0]~output_o\);

-- Location: IOOBUF_X16_Y0_N2
\x[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => x_signal(1),
	devoe => ww_devoe,
	o => \x[1]~output_o\);

-- Location: IOOBUF_X0_Y7_N2
\x[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => x_signal(2),
	devoe => ww_devoe,
	o => \x[2]~output_o\);

-- Location: IOOBUF_X5_Y0_N16
\x[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => x_signal(3),
	devoe => ww_devoe,
	o => \x[3]~output_o\);

-- Location: IOOBUF_X0_Y8_N16
\x[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => x_signal(4),
	devoe => ww_devoe,
	o => \x[4]~output_o\);

-- Location: IOOBUF_X1_Y0_N16
\x[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => x_signal(5),
	devoe => ww_devoe,
	o => \x[5]~output_o\);

-- Location: IOOBUF_X3_Y0_N2
\x[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => x_signal(6),
	devoe => ww_devoe,
	o => \x[6]~output_o\);

-- Location: IOOBUF_X30_Y0_N9
\x[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => x_signal(7),
	devoe => ww_devoe,
	o => \x[7]~output_o\);

-- Location: IOOBUF_X23_Y0_N16
\x[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => x_signal(8),
	devoe => ww_devoe,
	o => \x[8]~output_o\);

-- Location: IOOBUF_X16_Y0_N23
\x[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => x_signal(9),
	devoe => ww_devoe,
	o => \x[9]~output_o\);

-- Location: IOOBUF_X0_Y6_N16
\x[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => x_signal(10),
	devoe => ww_devoe,
	o => \x[10]~output_o\);

-- Location: IOOBUF_X11_Y24_N16
\x[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => x_signal(11),
	devoe => ww_devoe,
	o => \x[11]~output_o\);

-- Location: IOOBUF_X21_Y0_N9
\x[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => x_signal(12),
	devoe => ww_devoe,
	o => \x[12]~output_o\);

-- Location: IOOBUF_X0_Y9_N9
\x[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => x_signal(13),
	devoe => ww_devoe,
	o => \x[13]~output_o\);

-- Location: IOOBUF_X9_Y24_N9
\x[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => x_signal(14),
	devoe => ww_devoe,
	o => \x[14]~output_o\);

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

-- Location: IOIBUF_X1_Y0_N22
\m[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m(6),
	o => \m[6]~input_o\);

-- Location: IOIBUF_X0_Y6_N22
\m[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m(1),
	o => \m[1]~input_o\);

-- Location: IOIBUF_X0_Y5_N15
\m[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m(2),
	o => \m[2]~input_o\);

-- Location: IOIBUF_X30_Y0_N1
\m[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m(3),
	o => \m[3]~input_o\);

-- Location: IOIBUF_X7_Y0_N1
\m[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m(0),
	o => \m[0]~input_o\);

-- Location: LCCOMB_X10_Y4_N24
\x_signal~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_signal~0_combout\ = \m[1]~input_o\ $ (\m[2]~input_o\ $ (\m[3]~input_o\ $ (\m[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m[1]~input_o\,
	datab => \m[2]~input_o\,
	datac => \m[3]~input_o\,
	datad => \m[0]~input_o\,
	combout => \x_signal~0_combout\);

-- Location: IOIBUF_X23_Y0_N8
\m[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m(8),
	o => \m[8]~input_o\);

-- Location: IOIBUF_X18_Y0_N15
\m[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m(5),
	o => \m[5]~input_o\);

-- Location: LCCOMB_X10_Y4_N16
\x_signal~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_signal~1_combout\ = \m[6]~input_o\ $ (\x_signal~0_combout\ $ (\m[8]~input_o\ $ (\m[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m[6]~input_o\,
	datab => \x_signal~0_combout\,
	datac => \m[8]~input_o\,
	datad => \m[5]~input_o\,
	combout => \x_signal~1_combout\);

-- Location: FF_X10_Y4_N17
\x_signal[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \x_signal~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => x_signal(0));

-- Location: IOIBUF_X13_Y0_N15
\m[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m(7),
	o => \m[7]~input_o\);

-- Location: IOIBUF_X18_Y0_N22
\m[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m(4),
	o => \m[4]~input_o\);

-- Location: IOIBUF_X16_Y0_N8
\m[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m(9),
	o => \m[9]~input_o\);

-- Location: LCCOMB_X10_Y4_N10
\x_signal~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_signal~2_combout\ = \m[7]~input_o\ $ (\m[4]~input_o\ $ (\m[9]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m[7]~input_o\,
	datab => \m[4]~input_o\,
	datad => \m[9]~input_o\,
	combout => \x_signal~2_combout\);

-- Location: LCCOMB_X10_Y4_N2
\x_signal~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_signal~3_combout\ = \x_signal~2_combout\ $ (\x_signal~0_combout\ $ (\m[8]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x_signal~2_combout\,
	datab => \x_signal~0_combout\,
	datac => \m[8]~input_o\,
	combout => \x_signal~3_combout\);

-- Location: FF_X10_Y4_N3
\x_signal[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \x_signal~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => x_signal(1));

-- Location: IOIBUF_X13_Y0_N1
\m[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m(10),
	o => \m[10]~input_o\);

-- Location: LCCOMB_X10_Y4_N12
\x_signal~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_signal~4_combout\ = \m[10]~input_o\ $ (\m[0]~input_o\ $ (\m[3]~input_o\ $ (\m[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m[10]~input_o\,
	datab => \m[0]~input_o\,
	datac => \m[3]~input_o\,
	datad => \m[4]~input_o\,
	combout => \x_signal~4_combout\);

-- Location: LCCOMB_X10_Y4_N4
\x_signal~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_signal~5_combout\ = \x_signal~4_combout\ $ (\m[9]~input_o\ $ (\m[5]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x_signal~4_combout\,
	datab => \m[9]~input_o\,
	datad => \m[5]~input_o\,
	combout => \x_signal~5_combout\);

-- Location: FF_X10_Y4_N5
\x_signal[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \x_signal~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => x_signal(2));

-- Location: LCCOMB_X10_Y4_N30
\x_signal~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_signal~6_combout\ = \m[1]~input_o\ $ (\m[2]~input_o\ $ (\m[6]~input_o\ $ (\m[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m[1]~input_o\,
	datab => \m[2]~input_o\,
	datac => \m[6]~input_o\,
	datad => \m[0]~input_o\,
	combout => \x_signal~6_combout\);

-- Location: LCCOMB_X10_Y4_N6
\x_signal~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_signal~7_combout\ = \m[7]~input_o\ $ (\x_signal~6_combout\ $ (\m[10]~input_o\ $ (\m[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m[7]~input_o\,
	datab => \x_signal~6_combout\,
	datac => \m[10]~input_o\,
	datad => \m[4]~input_o\,
	combout => \x_signal~7_combout\);

-- Location: FF_X10_Y4_N7
\x_signal[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \x_signal~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => x_signal(3));

-- Location: LCCOMB_X10_Y4_N0
\x_signal[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_signal[4]~feeder_combout\ = \m[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \m[0]~input_o\,
	combout => \x_signal[4]~feeder_combout\);

-- Location: FF_X10_Y4_N1
\x_signal[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \x_signal[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => x_signal(4));

-- Location: FF_X1_Y2_N9
\x_signal[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \m[1]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => x_signal(5));

-- Location: FF_X10_Y4_N27
\x_signal[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \m[2]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => x_signal(6));

-- Location: FF_X30_Y1_N17
\x_signal[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \m[3]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => x_signal(7));

-- Location: LCCOMB_X10_Y4_N20
\x_signal[8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_signal[8]~feeder_combout\ = \m[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \m[4]~input_o\,
	combout => \x_signal[8]~feeder_combout\);

-- Location: FF_X10_Y4_N21
\x_signal[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \x_signal[8]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => x_signal(8));

-- Location: LCCOMB_X10_Y4_N14
\x_signal[9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_signal[9]~feeder_combout\ = \m[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \m[5]~input_o\,
	combout => \x_signal[9]~feeder_combout\);

-- Location: FF_X10_Y4_N15
\x_signal[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \x_signal[9]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => x_signal(9));

-- Location: FF_X10_Y4_N9
\x_signal[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \m[6]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => x_signal(10));

-- Location: FF_X10_Y4_N19
\x_signal[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \m[7]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => x_signal(11));

-- Location: LCCOMB_X18_Y1_N16
\x_signal[12]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_signal[12]~feeder_combout\ = \m[8]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \m[8]~input_o\,
	combout => \x_signal[12]~feeder_combout\);

-- Location: FF_X18_Y1_N17
\x_signal[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \x_signal[12]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => x_signal(12));

-- Location: LCCOMB_X10_Y4_N28
\x_signal[13]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_signal[13]~feeder_combout\ = \m[9]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \m[9]~input_o\,
	combout => \x_signal[13]~feeder_combout\);

-- Location: FF_X10_Y4_N29
\x_signal[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \x_signal[13]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => x_signal(13));

-- Location: FF_X10_Y4_N23
\x_signal[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \m[10]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => x_signal(14));

ww_x(0) <= \x[0]~output_o\;

ww_x(1) <= \x[1]~output_o\;

ww_x(2) <= \x[2]~output_o\;

ww_x(3) <= \x[3]~output_o\;

ww_x(4) <= \x[4]~output_o\;

ww_x(5) <= \x[5]~output_o\;

ww_x(6) <= \x[6]~output_o\;

ww_x(7) <= \x[7]~output_o\;

ww_x(8) <= \x[8]~output_o\;

ww_x(9) <= \x[9]~output_o\;

ww_x(10) <= \x[10]~output_o\;

ww_x(11) <= \x[11]~output_o\;

ww_x(12) <= \x[12]~output_o\;

ww_x(13) <= \x[13]~output_o\;

ww_x(14) <= \x[14]~output_o\;
END structure;


