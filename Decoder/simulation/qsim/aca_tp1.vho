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

-- DATE "11/21/2018 15:34:54"

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


LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Decoder IS
    PORT (
	y : IN std_logic_vector(14 DOWNTO 0);
	error : OUT std_logic_vector(3 DOWNTO 0);
	selector : OUT std_logic_vector(10 DOWNTO 0);
	f : OUT std_logic_vector(14 DOWNTO 0)
	);
END Decoder;

-- Design Ports Information
-- error[0]	=>  Location: PIN_83,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- error[1]	=>  Location: PIN_75,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- error[2]	=>  Location: PIN_65,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- error[3]	=>  Location: PIN_99,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- selector[0]	=>  Location: PIN_68,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- selector[1]	=>  Location: PIN_77,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- selector[2]	=>  Location: PIN_128,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- selector[3]	=>  Location: PIN_98,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- selector[4]	=>  Location: PIN_125,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- selector[5]	=>  Location: PIN_121,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- selector[6]	=>  Location: PIN_110,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- selector[7]	=>  Location: PIN_87,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- selector[8]	=>  Location: PIN_100,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- selector[9]	=>  Location: PIN_114,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- selector[10]	=>  Location: PIN_115,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- f[0]	=>  Location: PIN_74,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- f[1]	=>  Location: PIN_60,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- f[2]	=>  Location: PIN_127,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- f[3]	=>  Location: PIN_58,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- f[4]	=>  Location: PIN_76,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- f[5]	=>  Location: PIN_85,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- f[6]	=>  Location: PIN_112,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- f[7]	=>  Location: PIN_105,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- f[8]	=>  Location: PIN_126,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- f[9]	=>  Location: PIN_111,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- f[10]	=>  Location: PIN_103,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- f[11]	=>  Location: PIN_80,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- f[12]	=>  Location: PIN_129,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- f[13]	=>  Location: PIN_119,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- f[14]	=>  Location: PIN_113,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[4]	=>  Location: PIN_71,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[5]	=>  Location: PIN_86,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[11]	=>  Location: PIN_84,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[12]	=>  Location: PIN_66,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[0]	=>  Location: PIN_70,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[6]	=>  Location: PIN_104,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[8]	=>  Location: PIN_69,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[13]	=>  Location: PIN_106,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[1]	=>  Location: PIN_59,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[7]	=>  Location: PIN_67,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[9]	=>  Location: PIN_88,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[14]	=>  Location: PIN_89,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[10]	=>  Location: PIN_124,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[2]	=>  Location: PIN_120,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[3]	=>  Location: PIN_64,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_error : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_selector : std_logic_vector(10 DOWNTO 0);
SIGNAL ww_f : std_logic_vector(14 DOWNTO 0);
SIGNAL \error[0]~output_o\ : std_logic;
SIGNAL \error[1]~output_o\ : std_logic;
SIGNAL \error[2]~output_o\ : std_logic;
SIGNAL \error[3]~output_o\ : std_logic;
SIGNAL \selector[0]~output_o\ : std_logic;
SIGNAL \selector[1]~output_o\ : std_logic;
SIGNAL \selector[2]~output_o\ : std_logic;
SIGNAL \selector[3]~output_o\ : std_logic;
SIGNAL \selector[4]~output_o\ : std_logic;
SIGNAL \selector[5]~output_o\ : std_logic;
SIGNAL \selector[6]~output_o\ : std_logic;
SIGNAL \selector[7]~output_o\ : std_logic;
SIGNAL \selector[8]~output_o\ : std_logic;
SIGNAL \selector[9]~output_o\ : std_logic;
SIGNAL \selector[10]~output_o\ : std_logic;
SIGNAL \f[0]~output_o\ : std_logic;
SIGNAL \f[1]~output_o\ : std_logic;
SIGNAL \f[2]~output_o\ : std_logic;
SIGNAL \f[3]~output_o\ : std_logic;
SIGNAL \f[4]~output_o\ : std_logic;
SIGNAL \f[5]~output_o\ : std_logic;
SIGNAL \f[6]~output_o\ : std_logic;
SIGNAL \f[7]~output_o\ : std_logic;
SIGNAL \f[8]~output_o\ : std_logic;
SIGNAL \f[9]~output_o\ : std_logic;
SIGNAL \f[10]~output_o\ : std_logic;
SIGNAL \f[11]~output_o\ : std_logic;
SIGNAL \f[12]~output_o\ : std_logic;
SIGNAL \f[13]~output_o\ : std_logic;
SIGNAL \f[14]~output_o\ : std_logic;
SIGNAL \y[12]~input_o\ : std_logic;
SIGNAL \y[4]~input_o\ : std_logic;
SIGNAL \y[11]~input_o\ : std_logic;
SIGNAL \y[5]~input_o\ : std_logic;
SIGNAL \xor0|o~0_combout\ : std_logic;
SIGNAL \y[8]~input_o\ : std_logic;
SIGNAL \y[0]~input_o\ : std_logic;
SIGNAL \y[13]~input_o\ : std_logic;
SIGNAL \y[6]~input_o\ : std_logic;
SIGNAL \xor0|o~1_combout\ : std_logic;
SIGNAL \xor0|o~2_combout\ : std_logic;
SIGNAL \y[1]~input_o\ : std_logic;
SIGNAL \y[7]~input_o\ : std_logic;
SIGNAL \y[9]~input_o\ : std_logic;
SIGNAL \y[14]~input_o\ : std_logic;
SIGNAL \xor1|o~0_combout\ : std_logic;
SIGNAL \xor1|o~1_combout\ : std_logic;
SIGNAL \y[2]~input_o\ : std_logic;
SIGNAL \xor2|o~1_combout\ : std_logic;
SIGNAL \y[10]~input_o\ : std_logic;
SIGNAL \xor2|o~0_combout\ : std_logic;
SIGNAL \xor2|o~2_combout\ : std_logic;
SIGNAL \y[3]~input_o\ : std_logic;
SIGNAL \xor3|o~0_combout\ : std_logic;
SIGNAL \xor3|o~1_combout\ : std_logic;
SIGNAL \and0|andfinal|o~0_combout\ : std_logic;
SIGNAL \and1|andfinal|o~0_combout\ : std_logic;
SIGNAL \and2|andfinal|o~0_combout\ : std_logic;
SIGNAL \and3|andfinal|o~0_combout\ : std_logic;
SIGNAL \and4|andfinal|o~0_combout\ : std_logic;
SIGNAL \and5|andfinal|o~0_combout\ : std_logic;
SIGNAL \and6|andfinal|o~0_combout\ : std_logic;
SIGNAL \and7|andfinal|o~0_combout\ : std_logic;
SIGNAL \and8|andfinal|o~0_combout\ : std_logic;
SIGNAL \and9|andfinal|o~0_combout\ : std_logic;
SIGNAL \and10|andfinal|o~0_combout\ : std_logic;
SIGNAL \mux4|o~0_combout\ : std_logic;
SIGNAL \mux5|o~0_combout\ : std_logic;
SIGNAL \mux6|o~0_combout\ : std_logic;
SIGNAL \mux7|o~0_combout\ : std_logic;
SIGNAL \mux8|o~0_combout\ : std_logic;
SIGNAL \mux9|o~0_combout\ : std_logic;
SIGNAL \mux10|o~0_combout\ : std_logic;
SIGNAL \mux11|o~0_combout\ : std_logic;
SIGNAL \mux12|o~0_combout\ : std_logic;
SIGNAL \mux13|o~0_combout\ : std_logic;
SIGNAL \mux14|o~0_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_y <= y;
error <= ww_error;
selector <= ww_selector;
f <= ww_f;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X34_Y9_N23
\error[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \xor0|o~2_combout\,
	devoe => ww_devoe,
	o => \error[0]~output_o\);

-- Location: IOOBUF_X34_Y3_N23
\error[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \xor1|o~1_combout\,
	devoe => ww_devoe,
	o => \error[1]~output_o\);

-- Location: IOOBUF_X28_Y0_N23
\error[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \xor2|o~2_combout\,
	devoe => ww_devoe,
	o => \error[2]~output_o\);

-- Location: IOOBUF_X34_Y17_N16
\error[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \xor3|o~1_combout\,
	devoe => ww_devoe,
	o => \error[3]~output_o\);

-- Location: IOOBUF_X30_Y0_N9
\selector[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \and0|andfinal|o~0_combout\,
	devoe => ww_devoe,
	o => \selector[0]~output_o\);

-- Location: IOOBUF_X34_Y4_N16
\selector[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \and1|andfinal|o~0_combout\,
	devoe => ww_devoe,
	o => \selector[1]~output_o\);

-- Location: IOOBUF_X16_Y24_N16
\selector[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \and2|andfinal|o~0_combout\,
	devoe => ww_devoe,
	o => \selector[2]~output_o\);

-- Location: IOOBUF_X34_Y17_N23
\selector[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \and3|andfinal|o~0_combout\,
	devoe => ww_devoe,
	o => \selector[3]~output_o\);

-- Location: IOOBUF_X18_Y24_N23
\selector[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \and4|andfinal|o~0_combout\,
	devoe => ww_devoe,
	o => \selector[4]~output_o\);

-- Location: IOOBUF_X23_Y24_N16
\selector[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \and5|andfinal|o~0_combout\,
	devoe => ww_devoe,
	o => \selector[5]~output_o\);

-- Location: IOOBUF_X30_Y24_N2
\selector[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \and6|andfinal|o~0_combout\,
	devoe => ww_devoe,
	o => \selector[6]~output_o\);

-- Location: IOOBUF_X34_Y10_N9
\selector[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \and7|andfinal|o~0_combout\,
	devoe => ww_devoe,
	o => \selector[7]~output_o\);

-- Location: IOOBUF_X34_Y17_N2
\selector[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \and8|andfinal|o~0_combout\,
	devoe => ww_devoe,
	o => \selector[8]~output_o\);

-- Location: IOOBUF_X28_Y24_N16
\selector[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \and9|andfinal|o~0_combout\,
	devoe => ww_devoe,
	o => \selector[9]~output_o\);

-- Location: IOOBUF_X28_Y24_N23
\selector[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \and10|andfinal|o~0_combout\,
	devoe => ww_devoe,
	o => \selector[10]~output_o\);

-- Location: IOOBUF_X34_Y2_N16
\f[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \y[0]~input_o\,
	devoe => ww_devoe,
	o => \f[0]~output_o\);

-- Location: IOOBUF_X23_Y0_N9
\f[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \y[1]~input_o\,
	devoe => ww_devoe,
	o => \f[1]~output_o\);

-- Location: IOOBUF_X16_Y24_N9
\f[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \y[2]~input_o\,
	devoe => ww_devoe,
	o => \f[2]~output_o\);

-- Location: IOOBUF_X21_Y0_N9
\f[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \y[3]~input_o\,
	devoe => ww_devoe,
	o => \f[3]~output_o\);

-- Location: IOOBUF_X34_Y4_N23
\f[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux4|o~0_combout\,
	devoe => ww_devoe,
	o => \f[4]~output_o\);

-- Location: IOOBUF_X34_Y9_N9
\f[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux5|o~0_combout\,
	devoe => ww_devoe,
	o => \f[5]~output_o\);

-- Location: IOOBUF_X28_Y24_N2
\f[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux6|o~0_combout\,
	devoe => ww_devoe,
	o => \f[6]~output_o\);

-- Location: IOOBUF_X34_Y19_N16
\f[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux7|o~0_combout\,
	devoe => ww_devoe,
	o => \f[7]~output_o\);

-- Location: IOOBUF_X16_Y24_N2
\f[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux8|o~0_combout\,
	devoe => ww_devoe,
	o => \f[8]~output_o\);

-- Location: IOOBUF_X30_Y24_N23
\f[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux9|o~0_combout\,
	devoe => ww_devoe,
	o => \f[9]~output_o\);

-- Location: IOOBUF_X34_Y18_N16
\f[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux10|o~0_combout\,
	devoe => ww_devoe,
	o => \f[10]~output_o\);

-- Location: IOOBUF_X34_Y7_N9
\f[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux11|o~0_combout\,
	devoe => ww_devoe,
	o => \f[11]~output_o\);

-- Location: IOOBUF_X16_Y24_N23
\f[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux12|o~0_combout\,
	devoe => ww_devoe,
	o => \f[12]~output_o\);

-- Location: IOOBUF_X23_Y24_N2
\f[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux13|o~0_combout\,
	devoe => ww_devoe,
	o => \f[13]~output_o\);

-- Location: IOOBUF_X28_Y24_N9
\f[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux14|o~0_combout\,
	devoe => ww_devoe,
	o => \f[14]~output_o\);

-- Location: IOIBUF_X28_Y0_N1
\y[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y(12),
	o => \y[12]~input_o\);

-- Location: IOIBUF_X32_Y0_N15
\y[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y(4),
	o => \y[4]~input_o\);

-- Location: IOIBUF_X34_Y9_N15
\y[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y(11),
	o => \y[11]~input_o\);

-- Location: IOIBUF_X34_Y9_N1
\y[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y(5),
	o => \y[5]~input_o\);

-- Location: LCCOMB_X28_Y12_N16
\xor0|o~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \xor0|o~0_combout\ = \y[12]~input_o\ $ (\y[4]~input_o\ $ (\y[11]~input_o\ $ (\y[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y[12]~input_o\,
	datab => \y[4]~input_o\,
	datac => \y[11]~input_o\,
	datad => \y[5]~input_o\,
	combout => \xor0|o~0_combout\);

-- Location: IOIBUF_X30_Y0_N1
\y[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y(8),
	o => \y[8]~input_o\);

-- Location: IOIBUF_X32_Y0_N22
\y[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y(0),
	o => \y[0]~input_o\);

-- Location: IOIBUF_X34_Y20_N8
\y[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y(13),
	o => \y[13]~input_o\);

-- Location: IOIBUF_X34_Y18_N1
\y[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y(6),
	o => \y[6]~input_o\);

-- Location: LCCOMB_X28_Y12_N18
\xor0|o~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \xor0|o~1_combout\ = \y[8]~input_o\ $ (\y[0]~input_o\ $ (\y[13]~input_o\ $ (\y[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y[8]~input_o\,
	datab => \y[0]~input_o\,
	datac => \y[13]~input_o\,
	datad => \y[6]~input_o\,
	combout => \xor0|o~1_combout\);

-- Location: LCCOMB_X28_Y12_N12
\xor0|o~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \xor0|o~2_combout\ = \xor0|o~0_combout\ $ (\xor0|o~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \xor0|o~0_combout\,
	datad => \xor0|o~1_combout\,
	combout => \xor0|o~2_combout\);

-- Location: IOIBUF_X23_Y0_N15
\y[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y(1),
	o => \y[1]~input_o\);

-- Location: IOIBUF_X30_Y0_N22
\y[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y(7),
	o => \y[7]~input_o\);

-- Location: IOIBUF_X34_Y12_N22
\y[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y(9),
	o => \y[9]~input_o\);

-- Location: IOIBUF_X34_Y12_N15
\y[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y(14),
	o => \y[14]~input_o\);

-- Location: LCCOMB_X28_Y12_N22
\xor1|o~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \xor1|o~0_combout\ = \y[1]~input_o\ $ (\y[7]~input_o\ $ (\y[9]~input_o\ $ (\y[14]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y[1]~input_o\,
	datab => \y[7]~input_o\,
	datac => \y[9]~input_o\,
	datad => \y[14]~input_o\,
	combout => \xor1|o~0_combout\);

-- Location: LCCOMB_X28_Y12_N8
\xor1|o~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \xor1|o~1_combout\ = \xor0|o~0_combout\ $ (\xor1|o~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \xor0|o~0_combout\,
	datac => \xor1|o~0_combout\,
	combout => \xor1|o~1_combout\);

-- Location: IOIBUF_X23_Y24_N8
\y[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y(2),
	o => \y[2]~input_o\);

-- Location: LCCOMB_X28_Y12_N28
\xor2|o~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \xor2|o~1_combout\ = \y[2]~input_o\ $ (\y[7]~input_o\ $ (\y[11]~input_o\ $ (\y[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y[2]~input_o\,
	datab => \y[7]~input_o\,
	datac => \y[11]~input_o\,
	datad => \y[6]~input_o\,
	combout => \xor2|o~1_combout\);

-- Location: IOIBUF_X18_Y24_N15
\y[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y(10),
	o => \y[10]~input_o\);

-- Location: LCCOMB_X28_Y12_N10
\xor2|o~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \xor2|o~0_combout\ = \y[10]~input_o\ $ (\y[4]~input_o\ $ (\y[13]~input_o\ $ (\y[14]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y[10]~input_o\,
	datab => \y[4]~input_o\,
	datac => \y[13]~input_o\,
	datad => \y[14]~input_o\,
	combout => \xor2|o~0_combout\);

-- Location: LCCOMB_X28_Y12_N6
\xor2|o~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \xor2|o~2_combout\ = \xor2|o~1_combout\ $ (\xor2|o~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \xor2|o~1_combout\,
	datad => \xor2|o~0_combout\,
	combout => \xor2|o~2_combout\);

-- Location: IOIBUF_X25_Y0_N1
\y[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y(3),
	o => \y[3]~input_o\);

-- Location: LCCOMB_X28_Y12_N0
\xor3|o~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \xor3|o~0_combout\ = \y[12]~input_o\ $ (\y[9]~input_o\ $ (\y[8]~input_o\ $ (\y[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y[12]~input_o\,
	datab => \y[9]~input_o\,
	datac => \y[8]~input_o\,
	datad => \y[3]~input_o\,
	combout => \xor3|o~0_combout\);

-- Location: LCCOMB_X28_Y12_N2
\xor3|o~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \xor3|o~1_combout\ = \xor3|o~0_combout\ $ (\xor2|o~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \xor3|o~0_combout\,
	datad => \xor2|o~0_combout\,
	combout => \xor3|o~1_combout\);

-- Location: LCCOMB_X28_Y12_N20
\and0|andfinal|o~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \and0|andfinal|o~0_combout\ = (\xor0|o~2_combout\ & (\xor3|o~1_combout\ & (\xor1|o~1_combout\ & \xor2|o~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \xor0|o~2_combout\,
	datab => \xor3|o~1_combout\,
	datac => \xor1|o~1_combout\,
	datad => \xor2|o~2_combout\,
	combout => \and0|andfinal|o~0_combout\);

-- Location: LCCOMB_X28_Y12_N14
\and1|andfinal|o~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \and1|andfinal|o~0_combout\ = (\xor0|o~2_combout\ & (!\xor3|o~1_combout\ & (\xor1|o~1_combout\ & !\xor2|o~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \xor0|o~2_combout\,
	datab => \xor3|o~1_combout\,
	datac => \xor1|o~1_combout\,
	datad => \xor2|o~2_combout\,
	combout => \and1|andfinal|o~0_combout\);

-- Location: LCCOMB_X28_Y20_N8
\and2|andfinal|o~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \and2|andfinal|o~0_combout\ = (!\xor3|o~1_combout\ & (!\xor1|o~1_combout\ & (\xor0|o~2_combout\ & \xor2|o~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \xor3|o~1_combout\,
	datab => \xor1|o~1_combout\,
	datac => \xor0|o~2_combout\,
	datad => \xor2|o~2_combout\,
	combout => \and2|andfinal|o~0_combout\);

-- Location: LCCOMB_X28_Y20_N10
\and3|andfinal|o~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \and3|andfinal|o~0_combout\ = (!\xor3|o~1_combout\ & (\xor1|o~1_combout\ & (!\xor0|o~2_combout\ & \xor2|o~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \xor3|o~1_combout\,
	datab => \xor1|o~1_combout\,
	datac => \xor0|o~2_combout\,
	datad => \xor2|o~2_combout\,
	combout => \and3|andfinal|o~0_combout\);

-- Location: LCCOMB_X28_Y20_N28
\and4|andfinal|o~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \and4|andfinal|o~0_combout\ = (\xor3|o~1_combout\ & (!\xor1|o~1_combout\ & (\xor0|o~2_combout\ & !\xor2|o~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \xor3|o~1_combout\,
	datab => \xor1|o~1_combout\,
	datac => \xor0|o~2_combout\,
	datad => \xor2|o~2_combout\,
	combout => \and4|andfinal|o~0_combout\);

-- Location: LCCOMB_X28_Y20_N6
\and5|andfinal|o~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \and5|andfinal|o~0_combout\ = (\xor3|o~1_combout\ & (\xor1|o~1_combout\ & (!\xor0|o~2_combout\ & !\xor2|o~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \xor3|o~1_combout\,
	datab => \xor1|o~1_combout\,
	datac => \xor0|o~2_combout\,
	datad => \xor2|o~2_combout\,
	combout => \and5|andfinal|o~0_combout\);

-- Location: LCCOMB_X28_Y20_N24
\and6|andfinal|o~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \and6|andfinal|o~0_combout\ = (\xor3|o~1_combout\ & (!\xor1|o~1_combout\ & (!\xor0|o~2_combout\ & \xor2|o~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \xor3|o~1_combout\,
	datab => \xor1|o~1_combout\,
	datac => \xor0|o~2_combout\,
	datad => \xor2|o~2_combout\,
	combout => \and6|andfinal|o~0_combout\);

-- Location: LCCOMB_X28_Y12_N24
\and7|andfinal|o~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \and7|andfinal|o~0_combout\ = (\xor0|o~2_combout\ & (!\xor3|o~1_combout\ & (\xor1|o~1_combout\ & \xor2|o~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \xor0|o~2_combout\,
	datab => \xor3|o~1_combout\,
	datac => \xor1|o~1_combout\,
	datad => \xor2|o~2_combout\,
	combout => \and7|andfinal|o~0_combout\);

-- Location: LCCOMB_X28_Y20_N26
\and8|andfinal|o~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \and8|andfinal|o~0_combout\ = (\xor3|o~1_combout\ & (\xor1|o~1_combout\ & (\xor0|o~2_combout\ & !\xor2|o~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \xor3|o~1_combout\,
	datab => \xor1|o~1_combout\,
	datac => \xor0|o~2_combout\,
	datad => \xor2|o~2_combout\,
	combout => \and8|andfinal|o~0_combout\);

-- Location: LCCOMB_X28_Y20_N4
\and9|andfinal|o~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \and9|andfinal|o~0_combout\ = (\xor3|o~1_combout\ & (!\xor1|o~1_combout\ & (\xor0|o~2_combout\ & \xor2|o~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \xor3|o~1_combout\,
	datab => \xor1|o~1_combout\,
	datac => \xor0|o~2_combout\,
	datad => \xor2|o~2_combout\,
	combout => \and9|andfinal|o~0_combout\);

-- Location: LCCOMB_X28_Y20_N14
\and10|andfinal|o~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \and10|andfinal|o~0_combout\ = (\xor3|o~1_combout\ & (\xor1|o~1_combout\ & (!\xor0|o~2_combout\ & \xor2|o~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \xor3|o~1_combout\,
	datab => \xor1|o~1_combout\,
	datac => \xor0|o~2_combout\,
	datad => \xor2|o~2_combout\,
	combout => \and10|andfinal|o~0_combout\);

-- Location: LCCOMB_X30_Y3_N0
\mux4|o~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux4|o~0_combout\ = \y[4]~input_o\ $ (\and0|andfinal|o~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \y[4]~input_o\,
	datad => \and0|andfinal|o~0_combout\,
	combout => \mux4|o~0_combout\);

-- Location: LCCOMB_X33_Y9_N8
\mux5|o~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux5|o~0_combout\ = \and1|andfinal|o~0_combout\ $ (\y[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \and1|andfinal|o~0_combout\,
	datad => \y[5]~input_o\,
	combout => \mux5|o~0_combout\);

-- Location: LCCOMB_X28_Y20_N0
\mux6|o~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux6|o~0_combout\ = \and2|andfinal|o~0_combout\ $ (\y[6]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \and2|andfinal|o~0_combout\,
	datad => \y[6]~input_o\,
	combout => \mux6|o~0_combout\);

-- Location: LCCOMB_X28_Y20_N2
\mux7|o~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux7|o~0_combout\ = \and3|andfinal|o~0_combout\ $ (\y[7]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \and3|andfinal|o~0_combout\,
	datad => \y[7]~input_o\,
	combout => \mux7|o~0_combout\);

-- Location: LCCOMB_X28_Y20_N12
\mux8|o~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux8|o~0_combout\ = \and4|andfinal|o~0_combout\ $ (\y[8]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \and4|andfinal|o~0_combout\,
	datac => \y[8]~input_o\,
	combout => \mux8|o~0_combout\);

-- Location: LCCOMB_X28_Y20_N30
\mux9|o~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux9|o~0_combout\ = \and5|andfinal|o~0_combout\ $ (\y[9]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \and5|andfinal|o~0_combout\,
	datad => \y[9]~input_o\,
	combout => \mux9|o~0_combout\);

-- Location: LCCOMB_X28_Y20_N16
\mux10|o~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux10|o~0_combout\ = \y[10]~input_o\ $ (\and6|andfinal|o~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y[10]~input_o\,
	datad => \and6|andfinal|o~0_combout\,
	combout => \mux10|o~0_combout\);

-- Location: LCCOMB_X33_Y10_N8
\mux11|o~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux11|o~0_combout\ = \and7|andfinal|o~0_combout\ $ (\y[11]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \and7|andfinal|o~0_combout\,
	datad => \y[11]~input_o\,
	combout => \mux11|o~0_combout\);

-- Location: LCCOMB_X28_Y20_N18
\mux12|o~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux12|o~0_combout\ = \y[12]~input_o\ $ (\and8|andfinal|o~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \y[12]~input_o\,
	datac => \and8|andfinal|o~0_combout\,
	combout => \mux12|o~0_combout\);

-- Location: LCCOMB_X28_Y20_N20
\mux13|o~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux13|o~0_combout\ = \y[13]~input_o\ $ (\and9|andfinal|o~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y[13]~input_o\,
	datac => \and9|andfinal|o~0_combout\,
	combout => \mux13|o~0_combout\);

-- Location: LCCOMB_X28_Y20_N22
\mux14|o~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux14|o~0_combout\ = \and10|andfinal|o~0_combout\ $ (\y[14]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \and10|andfinal|o~0_combout\,
	datad => \y[14]~input_o\,
	combout => \mux14|o~0_combout\);

ww_error(0) <= \error[0]~output_o\;

ww_error(1) <= \error[1]~output_o\;

ww_error(2) <= \error[2]~output_o\;

ww_error(3) <= \error[3]~output_o\;

ww_selector(0) <= \selector[0]~output_o\;

ww_selector(1) <= \selector[1]~output_o\;

ww_selector(2) <= \selector[2]~output_o\;

ww_selector(3) <= \selector[3]~output_o\;

ww_selector(4) <= \selector[4]~output_o\;

ww_selector(5) <= \selector[5]~output_o\;

ww_selector(6) <= \selector[6]~output_o\;

ww_selector(7) <= \selector[7]~output_o\;

ww_selector(8) <= \selector[8]~output_o\;

ww_selector(9) <= \selector[9]~output_o\;

ww_selector(10) <= \selector[10]~output_o\;

ww_f(0) <= \f[0]~output_o\;

ww_f(1) <= \f[1]~output_o\;

ww_f(2) <= \f[2]~output_o\;

ww_f(3) <= \f[3]~output_o\;

ww_f(4) <= \f[4]~output_o\;

ww_f(5) <= \f[5]~output_o\;

ww_f(6) <= \f[6]~output_o\;

ww_f(7) <= \f[7]~output_o\;

ww_f(8) <= \f[8]~output_o\;

ww_f(9) <= \f[9]~output_o\;

ww_f(10) <= \f[10]~output_o\;

ww_f(11) <= \f[11]~output_o\;

ww_f(12) <= \f[12]~output_o\;

ww_f(13) <= \f[13]~output_o\;

ww_f(14) <= \f[14]~output_o\;
END structure;


