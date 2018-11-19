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

-- DATE "11/19/2018 20:13:38"

-- 
-- Device: Altera 5CGXFC7C7F23C8 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Decoder IS
    PORT (
	y : IN std_logic_vector(14 DOWNTO 0);
	e : OUT std_logic_vector(3 DOWNTO 0)
	);
END Decoder;

-- Design Ports Information
-- e[0]	=>  Location: PIN_T17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- e[1]	=>  Location: PIN_U20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- e[2]	=>  Location: PIN_U17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- e[3]	=>  Location: PIN_P16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[2]	=>  Location: PIN_P17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[5]	=>  Location: PIN_T19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[6]	=>  Location: PIN_T18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[11]	=>  Location: PIN_R15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[0]	=>  Location: PIN_R16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[1]	=>  Location: PIN_R21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[4]	=>  Location: PIN_T22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[10]	=>  Location: PIN_P22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[3]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[7]	=>  Location: PIN_P19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[8]	=>  Location: PIN_T15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[12]	=>  Location: PIN_T20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[13]	=>  Location: PIN_P18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[9]	=>  Location: PIN_R17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[14]	=>  Location: PIN_R22,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Decoder IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_y : std_logic_vector(14 DOWNTO 0);
SIGNAL ww_e : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \y[11]~input_o\ : std_logic;
SIGNAL \y[10]~input_o\ : std_logic;
SIGNAL \y[4]~input_o\ : std_logic;
SIGNAL \y[0]~input_o\ : std_logic;
SIGNAL \y[1]~input_o\ : std_logic;
SIGNAL \yA~combout\ : std_logic;
SIGNAL \y[6]~input_o\ : std_logic;
SIGNAL \y[5]~input_o\ : std_logic;
SIGNAL \y[2]~input_o\ : std_logic;
SIGNAL \e~0_combout\ : std_logic;
SIGNAL \y[12]~input_o\ : std_logic;
SIGNAL \y[3]~input_o\ : std_logic;
SIGNAL \y[8]~input_o\ : std_logic;
SIGNAL \y[7]~input_o\ : std_logic;
SIGNAL \e~1_combout\ : std_logic;
SIGNAL \y[9]~input_o\ : std_logic;
SIGNAL \yB~combout\ : std_logic;
SIGNAL \y[13]~input_o\ : std_logic;
SIGNAL \e~2_combout\ : std_logic;
SIGNAL \y[14]~input_o\ : std_logic;
SIGNAL \e~3_combout\ : std_logic;
SIGNAL \ALT_INV_y[14]~input_o\ : std_logic;
SIGNAL \ALT_INV_y[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_y[13]~input_o\ : std_logic;
SIGNAL \ALT_INV_y[12]~input_o\ : std_logic;
SIGNAL \ALT_INV_y[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_y[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_y[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_y[10]~input_o\ : std_logic;
SIGNAL \ALT_INV_y[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_y[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_y[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_y[11]~input_o\ : std_logic;
SIGNAL \ALT_INV_y[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_y[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_y[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_yB~combout\ : std_logic;
SIGNAL \ALT_INV_yA~combout\ : std_logic;

BEGIN

ww_y <= y;
e <= ww_e;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_y[14]~input_o\ <= NOT \y[14]~input_o\;
\ALT_INV_y[9]~input_o\ <= NOT \y[9]~input_o\;
\ALT_INV_y[13]~input_o\ <= NOT \y[13]~input_o\;
\ALT_INV_y[12]~input_o\ <= NOT \y[12]~input_o\;
\ALT_INV_y[8]~input_o\ <= NOT \y[8]~input_o\;
\ALT_INV_y[7]~input_o\ <= NOT \y[7]~input_o\;
\ALT_INV_y[3]~input_o\ <= NOT \y[3]~input_o\;
\ALT_INV_y[10]~input_o\ <= NOT \y[10]~input_o\;
\ALT_INV_y[4]~input_o\ <= NOT \y[4]~input_o\;
\ALT_INV_y[1]~input_o\ <= NOT \y[1]~input_o\;
\ALT_INV_y[0]~input_o\ <= NOT \y[0]~input_o\;
\ALT_INV_y[11]~input_o\ <= NOT \y[11]~input_o\;
\ALT_INV_y[6]~input_o\ <= NOT \y[6]~input_o\;
\ALT_INV_y[5]~input_o\ <= NOT \y[5]~input_o\;
\ALT_INV_y[2]~input_o\ <= NOT \y[2]~input_o\;
\ALT_INV_yB~combout\ <= NOT \yB~combout\;
\ALT_INV_yA~combout\ <= NOT \yA~combout\;

-- Location: IOOBUF_X89_Y4_N62
\e[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \e~0_combout\,
	devoe => ww_devoe,
	o => ww_e(0));

-- Location: IOOBUF_X72_Y0_N36
\e[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \e~1_combout\,
	devoe => ww_devoe,
	o => ww_e(1));

-- Location: IOOBUF_X72_Y0_N2
\e[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \e~2_combout\,
	devoe => ww_devoe,
	o => ww_e(2));

-- Location: IOOBUF_X89_Y9_N5
\e[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \e~3_combout\,
	devoe => ww_devoe,
	o => ww_e(3));

-- Location: IOIBUF_X89_Y6_N21
\y[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y(11),
	o => \y[11]~input_o\);

-- Location: IOIBUF_X89_Y8_N55
\y[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y(10),
	o => \y[10]~input_o\);

-- Location: IOIBUF_X89_Y6_N38
\y[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y(4),
	o => \y[4]~input_o\);

-- Location: IOIBUF_X89_Y8_N4
\y[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y(0),
	o => \y[0]~input_o\);

-- Location: IOIBUF_X89_Y8_N38
\y[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y(1),
	o => \y[1]~input_o\);

-- Location: LABCELL_X88_Y6_N30
yA : cyclonev_lcell_comb
-- Equation(s):
-- \yA~combout\ = ( \y[1]~input_o\ & ( !\y[10]~input_o\ $ (!\y[4]~input_o\ $ (!\y[0]~input_o\)) ) ) # ( !\y[1]~input_o\ & ( !\y[10]~input_o\ $ (!\y[4]~input_o\ $ (\y[0]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100101101001100101101001011001101001011010011001011010010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_y[10]~input_o\,
	datab => \ALT_INV_y[4]~input_o\,
	datac => \ALT_INV_y[0]~input_o\,
	datae => \ALT_INV_y[1]~input_o\,
	combout => \yA~combout\);

-- Location: IOIBUF_X89_Y4_N44
\y[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y(6),
	o => \y[6]~input_o\);

-- Location: IOIBUF_X89_Y4_N78
\y[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y(5),
	o => \y[5]~input_o\);

-- Location: IOIBUF_X89_Y9_N21
\y[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y(2),
	o => \y[2]~input_o\);

-- Location: LABCELL_X88_Y6_N6
\e~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \e~0_combout\ = ( \y[5]~input_o\ & ( \y[2]~input_o\ & ( !\y[11]~input_o\ $ (!\yA~combout\ $ (\y[6]~input_o\)) ) ) ) # ( !\y[5]~input_o\ & ( \y[2]~input_o\ & ( !\y[11]~input_o\ $ (!\yA~combout\ $ (!\y[6]~input_o\)) ) ) ) # ( \y[5]~input_o\ & ( 
-- !\y[2]~input_o\ & ( !\y[11]~input_o\ $ (!\yA~combout\ $ (!\y[6]~input_o\)) ) ) ) # ( !\y[5]~input_o\ & ( !\y[2]~input_o\ & ( !\y[11]~input_o\ $ (!\yA~combout\ $ (\y[6]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100101101001100101101001011010010110100101100110100101101001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_y[11]~input_o\,
	datab => \ALT_INV_yA~combout\,
	datac => \ALT_INV_y[6]~input_o\,
	datae => \ALT_INV_y[5]~input_o\,
	dataf => \ALT_INV_y[2]~input_o\,
	combout => \e~0_combout\);

-- Location: IOIBUF_X89_Y4_N95
\y[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y(12),
	o => \y[12]~input_o\);

-- Location: IOIBUF_X72_Y0_N52
\y[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y(3),
	o => \y[3]~input_o\);

-- Location: IOIBUF_X89_Y6_N4
\y[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y(8),
	o => \y[8]~input_o\);

-- Location: IOIBUF_X89_Y9_N38
\y[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y(7),
	o => \y[7]~input_o\);

-- Location: LABCELL_X88_Y6_N12
\e~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \e~1_combout\ = ( \y[7]~input_o\ & ( !\yA~combout\ $ (!\y[12]~input_o\ $ (!\y[3]~input_o\ $ (\y[8]~input_o\))) ) ) # ( !\y[7]~input_o\ & ( !\yA~combout\ $ (!\y[12]~input_o\ $ (!\y[3]~input_o\ $ (!\y[8]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100110010110011010011001011010010110011010011001011001101001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_yA~combout\,
	datab => \ALT_INV_y[12]~input_o\,
	datac => \ALT_INV_y[3]~input_o\,
	datad => \ALT_INV_y[8]~input_o\,
	dataf => \ALT_INV_y[7]~input_o\,
	combout => \e~1_combout\);

-- Location: IOIBUF_X89_Y8_N21
\y[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y(9),
	o => \y[9]~input_o\);

-- Location: LABCELL_X88_Y6_N51
yB : cyclonev_lcell_comb
-- Equation(s):
-- \yB~combout\ = ( \y[9]~input_o\ & ( \y[2]~input_o\ & ( !\y[3]~input_o\ $ (!\y[10]~input_o\) ) ) ) # ( !\y[9]~input_o\ & ( \y[2]~input_o\ & ( !\y[3]~input_o\ $ (\y[10]~input_o\) ) ) ) # ( \y[9]~input_o\ & ( !\y[2]~input_o\ & ( !\y[3]~input_o\ $ 
-- (\y[10]~input_o\) ) ) ) # ( !\y[9]~input_o\ & ( !\y[2]~input_o\ & ( !\y[3]~input_o\ $ (!\y[10]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010110101010101010100101010110101010010101010101010110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_y[3]~input_o\,
	datad => \ALT_INV_y[10]~input_o\,
	datae => \ALT_INV_y[9]~input_o\,
	dataf => \ALT_INV_y[2]~input_o\,
	combout => \yB~combout\);

-- Location: IOIBUF_X89_Y9_N55
\y[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y(13),
	o => \y[13]~input_o\);

-- Location: LABCELL_X88_Y6_N24
\e~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \e~2_combout\ = ( \y[5]~input_o\ & ( \y[13]~input_o\ & ( !\y[0]~input_o\ $ (!\y[7]~input_o\ $ (\yB~combout\)) ) ) ) # ( !\y[5]~input_o\ & ( \y[13]~input_o\ & ( !\y[0]~input_o\ $ (!\y[7]~input_o\ $ (!\yB~combout\)) ) ) ) # ( \y[5]~input_o\ & ( 
-- !\y[13]~input_o\ & ( !\y[0]~input_o\ $ (!\y[7]~input_o\ $ (!\yB~combout\)) ) ) ) # ( !\y[5]~input_o\ & ( !\y[13]~input_o\ & ( !\y[0]~input_o\ $ (!\y[7]~input_o\ $ (\yB~combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100101101001100101101001011010010110100101100110100101101001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_y[0]~input_o\,
	datab => \ALT_INV_y[7]~input_o\,
	datac => \ALT_INV_yB~combout\,
	datae => \ALT_INV_y[5]~input_o\,
	dataf => \ALT_INV_y[13]~input_o\,
	combout => \e~2_combout\);

-- Location: IOIBUF_X89_Y6_N55
\y[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y(14),
	o => \y[14]~input_o\);

-- Location: LABCELL_X88_Y6_N0
\e~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \e~3_combout\ = ( \y[14]~input_o\ & ( \yB~combout\ & ( !\y[6]~input_o\ $ (!\y[8]~input_o\ $ (\y[1]~input_o\)) ) ) ) # ( !\y[14]~input_o\ & ( \yB~combout\ & ( !\y[6]~input_o\ $ (!\y[8]~input_o\ $ (!\y[1]~input_o\)) ) ) ) # ( \y[14]~input_o\ & ( 
-- !\yB~combout\ & ( !\y[6]~input_o\ $ (!\y[8]~input_o\ $ (!\y[1]~input_o\)) ) ) ) # ( !\y[14]~input_o\ & ( !\yB~combout\ & ( !\y[6]~input_o\ $ (!\y[8]~input_o\ $ (\y[1]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100101101001100101101001011010010110100101100110100101101001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_y[6]~input_o\,
	datab => \ALT_INV_y[8]~input_o\,
	datac => \ALT_INV_y[1]~input_o\,
	datae => \ALT_INV_y[14]~input_o\,
	dataf => \ALT_INV_yB~combout\,
	combout => \e~3_combout\);

-- Location: LABCELL_X66_Y58_N0
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;
END structure;


