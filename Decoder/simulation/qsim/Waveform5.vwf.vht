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
-- Generated on "11/21/2018 15:21:41"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          Decoder
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY Decoder_vhd_vec_tst IS
END Decoder_vhd_vec_tst;
ARCHITECTURE Decoder_arch OF Decoder_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL e_before : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL f : STD_LOGIC_VECTOR(14 DOWNTO 0);
SIGNAL selector : STD_LOGIC_VECTOR(10 DOWNTO 0);
SIGNAL y : STD_LOGIC_VECTOR(14 DOWNTO 0);
COMPONENT Decoder
	PORT (
	e_before : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	f : OUT STD_LOGIC_VECTOR(14 DOWNTO 0);
	selector : OUT STD_LOGIC_VECTOR(10 DOWNTO 0);
	y : IN STD_LOGIC_VECTOR(14 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : Decoder
	PORT MAP (
-- list connections between master ports and signals
	e_before => e_before,
	f => f,
	selector => selector,
	y => y
	);
-- y[14]
t_prcs_y_14: PROCESS
BEGIN
	y(14) <= '1';
WAIT;
END PROCESS t_prcs_y_14;
-- y[13]
t_prcs_y_13: PROCESS
BEGIN
	y(13) <= '1';
WAIT;
END PROCESS t_prcs_y_13;
-- y[12]
t_prcs_y_12: PROCESS
BEGIN
	y(12) <= '1';
WAIT;
END PROCESS t_prcs_y_12;
-- y[11]
t_prcs_y_11: PROCESS
BEGIN
	y(11) <= '0';
WAIT;
END PROCESS t_prcs_y_11;
-- y[10]
t_prcs_y_10: PROCESS
BEGIN
	y(10) <= '0';
WAIT;
END PROCESS t_prcs_y_10;
-- y[9]
t_prcs_y_9: PROCESS
BEGIN
	y(9) <= '0';
WAIT;
END PROCESS t_prcs_y_9;
-- y[8]
t_prcs_y_8: PROCESS
BEGIN
	y(8) <= '0';
WAIT;
END PROCESS t_prcs_y_8;
-- y[7]
t_prcs_y_7: PROCESS
BEGIN
	y(7) <= '0';
WAIT;
END PROCESS t_prcs_y_7;
-- y[6]
t_prcs_y_6: PROCESS
BEGIN
	y(6) <= '0';
WAIT;
END PROCESS t_prcs_y_6;
-- y[5]
t_prcs_y_5: PROCESS
BEGIN
	y(5) <= '1';
WAIT;
END PROCESS t_prcs_y_5;
-- y[4]
t_prcs_y_4: PROCESS
BEGIN
	y(4) <= '1';
WAIT;
END PROCESS t_prcs_y_4;
-- y[3]
t_prcs_y_3: PROCESS
BEGIN
	y(3) <= '1';
WAIT;
END PROCESS t_prcs_y_3;
-- y[2]
t_prcs_y_2: PROCESS
BEGIN
	y(2) <= '1';
WAIT;
END PROCESS t_prcs_y_2;
-- y[1]
t_prcs_y_1: PROCESS
BEGIN
	y(1) <= '1';
WAIT;
END PROCESS t_prcs_y_1;
-- y[0]
t_prcs_y_0: PROCESS
BEGIN
	y(0) <= '1';
WAIT;
END PROCESS t_prcs_y_0;
END Decoder_arch;
