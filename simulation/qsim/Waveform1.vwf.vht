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

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "11/16/2018 03:09:02"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          HammingCodes
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY HammingCodes_vhd_vec_tst IS
END HammingCodes_vhd_vec_tst;
ARCHITECTURE HammingCodes_arch OF HammingCodes_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk : STD_LOGIC;
SIGNAL encodedValue : STD_LOGIC_VECTOR(14 DOWNTO 0);
SIGNAL outValue : STD_LOGIC_VECTOR(10 DOWNTO 0);
SIGNAL plainValue : STD_LOGIC_VECTOR(10 DOWNTO 0);
COMPONENT HammingCodes
	PORT (
	clk : IN STD_LOGIC;
	encodedValue : OUT STD_LOGIC_VECTOR(14 DOWNTO 0);
	outValue : OUT STD_LOGIC_VECTOR(10 DOWNTO 0);
	plainValue : IN STD_LOGIC_VECTOR(10 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : HammingCodes
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	encodedValue => encodedValue,
	outValue => outValue,
	plainValue => plainValue
	);
-- plainValue[10]
t_prcs_plainValue_10: PROCESS
BEGIN
	plainValue(10) <= '1';
WAIT;
END PROCESS t_prcs_plainValue_10;
-- plainValue[9]
t_prcs_plainValue_9: PROCESS
BEGIN
	plainValue(9) <= '0';
WAIT;
END PROCESS t_prcs_plainValue_9;
-- plainValue[8]
t_prcs_plainValue_8: PROCESS
BEGIN
	plainValue(8) <= '1';
WAIT;
END PROCESS t_prcs_plainValue_8;
-- plainValue[7]
t_prcs_plainValue_7: PROCESS
BEGIN
	plainValue(7) <= '1';
WAIT;
END PROCESS t_prcs_plainValue_7;
-- plainValue[6]
t_prcs_plainValue_6: PROCESS
BEGIN
	plainValue(6) <= '1';
WAIT;
END PROCESS t_prcs_plainValue_6;
-- plainValue[5]
t_prcs_plainValue_5: PROCESS
BEGIN
	plainValue(5) <= '1';
WAIT;
END PROCESS t_prcs_plainValue_5;
-- plainValue[4]
t_prcs_plainValue_4: PROCESS
BEGIN
	plainValue(4) <= '0';
WAIT;
END PROCESS t_prcs_plainValue_4;
-- plainValue[3]
t_prcs_plainValue_3: PROCESS
BEGIN
	plainValue(3) <= '1';
WAIT;
END PROCESS t_prcs_plainValue_3;
-- plainValue[2]
t_prcs_plainValue_2: PROCESS
BEGIN
	plainValue(2) <= '0';
WAIT;
END PROCESS t_prcs_plainValue_2;
-- plainValue[1]
t_prcs_plainValue_1: PROCESS
BEGIN
	plainValue(1) <= '1';
WAIT;
END PROCESS t_prcs_plainValue_1;
-- plainValue[0]
t_prcs_plainValue_0: PROCESS
BEGIN
	plainValue(0) <= '1';
WAIT;
END PROCESS t_prcs_plainValue_0;

-- clk
t_prcs_clk: PROCESS
BEGIN
	clk <= '0';
	WAIT FOR 230000 ps;
	clk <= '1';
	WAIT FOR 190000 ps;
	clk <= '0';
WAIT;
END PROCESS t_prcs_clk;
END HammingCodes_arch;
