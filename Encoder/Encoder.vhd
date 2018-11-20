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
	signal m0_6, m9_10, mA, m4_5, m4_5_8, m2_3, m2_3_7 : std_logic;
	signal m0_1, m7_8, mB, m3_5, m3_5_10, m2_4, m2_4_9 : std_logic;
begin
	
	m0_6 <= m(0) xor m(6);
	m9_10 <= m(9) xor m(10);
	mA <= m0_6 xor m9_10;
	
	m4_5 <= m(4) xor m(5);
	m4_5_8 <= m4_5 xor m(8);
	
	m2_3 <= m(2) xor m(3);
	m2_3_7 <= m2_3 xor m(7);
	
	m0_1 <= m(0) xor m(1);
	m7_8 <= m(7) xor m(8);
	mB <= m0_1 xor m7_8;
	
	m3_5 <= m(3) xor m(5);
	m3_5_10 <= m3_5 xor m(10);
	
	m2_4 <= m(2) xor m(4);
	m2_4_9 <= m2_4 xor m(9);
		
	x(14) <= m(10);
	x(13) <= m(9);
	x(12) <= m(8);
	x(11) <= m(7);
	x(10) <= m(6);
	x(9) <= m(5);
	x(8) <= m(4);
	x(7) <= m(3);
	x(6) <= m(2);
	x(5) <= m(1);
	x(4) <= m(0);
	x(3) <= mA xor m4_5_8;
	x(2) <= mA xor m2_3_7;
	x(1) <= mB xor m3_5_10;
	x(0) <= mB xor m2_4_9;
end LogicFunction;