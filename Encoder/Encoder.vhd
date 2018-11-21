library myEncoder;
use myEncoder.all;

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_textio.all;
use ieee.numeric_std.all;
use IEEE.std_logic_unsigned.all;

entity Encoder is
	port (m : in std_logic_vector(10 downto 0);
			x : out std_logic_vector(14 downto 0));
end Encoder;

architecture Structural of Encoder is
	signal m0_6, m9_10, mA, m4_5, m4_5_8, m2_3, m2_3_7 : std_logic;
	signal m0_1, m7_8, mB, m3_5, m3_5_10, m2_4, m2_4_9 : std_logic;
	
component xor2to1
port (a, b : in std_logic;
		o : out std_logic);
end component;

begin
	x(14 downto 4) <= m(10 downto 0);
	
	xor0_6 : xor2to1 port map(m(0), m(6), m0_6);
	xor9_10 : xor2to1 port map(m(9), m(10), m9_10);
	xorA : xor2to1 port map(m0_6, m9_10, mA);
	
	xor4_5 : xor2to1 port map(m(4), m(5), m4_5);
	xor4_5_8 : xor2to1 port map(m4_5, m(8), m4_5_8);
	
	xor2_3 : xor2to1 port map(m(2), m(3), m2_3);
	xor2_3_7 : xor2to1 port map(m2_3, m(7), m2_3_7);
	
	xor0_1 : xor2to1 port map(m(0), m(1), m0_1);
	xor7_8 : xor2to1 port map(m(7), m(8), m7_8);
	xorB : xor2to1 port map(m0_1, m7_8, mB);
	
	xor3_5 : xor2to1 port map(m(3), m(5), m3_5);
	xor3_5_10 : xor2to1 port map(m3_5, m(10), m3_5_10);
	
	xor2_4 : xor2to1 port map(m(2), m(4), m2_4);
	xor2_4_9 : xor2to1 port map(m2_4, m(9), m2_4_9);
	
	xor3 : xor2to1 port map(mA, m4_5_8, x(3));
	xor2 : xor2to1 port map(mA, m2_3_7, x(2));
	xor1 : xor2to1 port map(mB, m3_5_10, x(1));
	xor0 : xor2to1 port map(mB, m2_4_9, x(0));
end Structural;