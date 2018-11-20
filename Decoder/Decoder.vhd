library MyEncoder;

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_textio.all;
use ieee.numeric_std.all;
use IEEE.std_logic_unsigned.all;

entity Decoder is 
	port (y : in std_logic_vector(14 downto 0);
			e : out std_logic_vector(3 downto 0));
end Decoder;

architecture LogicFunction of Decoder is
	signal y4_10, y13_14, yA, y3_8, y9_12, y3_8_9_12, y2_6, y7_11, y2_6_7_11 : std_logic;
	signal y4_5, y11_12, yB, y1_7, y9_14, y1_7_9_14, y0_6, y8_13, y0_6_8_13 : std_logic;
begin

	y4_10 <= y(4) xor y(10);
	y13_14 <= y(13) xor y(14);
	yA <= y4_10 xor y13_14;
	
	y3_8 <= y(3) xor y(8);
	y9_12 <= y(9) xor y(12);
	y3_8_9_12 <= y3_8 xor y9_12;
	
	y2_6 <= y(2) xor y(6);
	y7_11 <= y(7) xor y(11);
	y2_6_7_11 <= y2_6 xor y7_11;
	
	y4_5 <= y(4) xor y(5);
	y11_12 <= y(11) xor y(12);
	yB <= y4_5 xor y11_12;
	
	y1_7 <= y(1) xor y(7);
	y9_14 <= y(9) xor y(14);
	y1_7_9_14 <= y1_7 xor y9_14;
	
	y0_6 <= y(0) xor y(6);
	y8_13 <= y(8) xor y(13);
	y0_6_8_13 <= y0_6 xor y8_13;
	
	e(3) <= yA xor y3_8_9_12;
	e(2) <= yA xor y2_6_7_11;
	e(1) <= yB xor y1_7_9_14;
	e(0) <= yB xor y0_6_8_13;
end LogicFunction;
