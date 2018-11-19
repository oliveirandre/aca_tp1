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
	signal y0_1, y4_10, yA, y2_5, y6_11, y2_5_6_11, y3_7, y8_12, y3_7_8_12 : std_logic;
	signal y2_3, y9_10, yB, y0_5, y7_13, y0_5_7_13, y1_6, y8_14, y1_6_8_14 : std_logic;
begin

	y0_1 <= y(0) xor y(1);
	y4_10 <= y(4) xor y(10);
	yA <= y0_1 xor y4_10;
	
	y2_5 <= y(2) xor y(5);
	y6_11 <= y(6) xor y(11);
	y2_5_6_11 <= y2_5 xor y6_11;
	
	y3_7 <= y(3) xor y(7);
	y8_12 <= y(8) xor y(12);
	y3_7_8_12 <= y3_7 xor y8_12;
	
	y2_3 <= y(2) xor y(3);
	y9_10 <= y(9) xor y(10);
	yB <= y2_3 xor y9_10;
	
	y0_5 <= y(0) xor y(5);
	y7_13 <= y(7) xor y(13);
	y0_5_7_13 <= y0_5 xor y7_13;
	
	y1_6 <= y(1) xor y(6);
	y8_14 <= y(8) xor y(14);
	y1_6_8_14 <= y1_6 xor y8_14;
	
	e(0) <= yA xor y2_5_6_11;
	e(1) <= yA xor y3_7_8_12;
	e(2) <= yB xor y0_5_7_13;
	e(3) <= yB xor y1_6_8_14;
end LogicFunction;
