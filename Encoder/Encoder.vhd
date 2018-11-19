library myEncoder;

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

architecture LogicFunction of Encoder is
	signal m0_1, m4_10, mA, m5_6, m2_5_6, m7_8, m3_7_8 : std_logic;
	signal m2_3, m9_10, mB, m5_7, m0_5_7, m6_8, m1_6_8 : std_logic;
begin
	
	m0_1 <= m(0) xor m(1);
	m4_10 <= m(4) xor m(10);
	mA <= m0_1 xor m4_10;
	
	m5_6 <= m(5) xor m(6);
	m2_5_6 <= m(2) xor m5_6;
	
	m7_8 <= m(7) xor m(8);
	m3_7_8 <= m(3) xor m7_8;
	
	m2_3 <= m(2) xor m(3);
	m9_10 <= m(9) xor m(10);
	mB <= m2_3 xor m9_10;
	
	m5_7 <= m(5) xor m(7);
	m0_5_7 <= m(0) xor m5_7;
	
	m6_8 <= m(6) xor m(8);
	m1_6_8 <= m(1) xor m6_8;
		
	x(0) <= m(0);
	x(1) <= m(1);
	x(2) <= m(2);
	x(3) <= m(3);
	x(4) <= m(4);
	x(5) <= m(5);
	x(6) <= m(6);
	x(7) <= m(7);
	x(8) <= m(8);
	x(9) <= m(9);
	x(10) <= m(10);
	x(11) <= mA xor m2_5_6;
	x(12) <= mA xor m3_7_8;
	x(13) <= mB xor m0_5_7;
	x(14) <= mB xor m1_6_8;
end LogicFunction;