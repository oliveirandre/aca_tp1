library MyEncoder;

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_textio.all;
use ieee.numeric_std.all;
use IEEE.std_logic_unsigned.all;

entity Verify is 
	port (e14, e13, e12, e11, e10, e9, e8, e7, e6, e5, e4, e3, e2, e1, e0: in std_logic;
			y3, y2, y1, y0 : out std_logic);
end Verify;

architecture LogicFunction of Verify is
begin
	y0 <= e0 xor e1 xor e2 xor e4 xor e5 xor e6 xor e10 xor e11;
	y1 <= e0 xor e1 xor e3 xor e4 xor e7 xor e8 xor e10 xor e12;
	y2 <= e0 xor e2 xor e3 xor e5 xor e7 xor e9 xor e10 xor e13;
	y3 <= e1 xor e2 xor e3 xor e6 xor e8 xor e9 xor e10 xor e14;
end LogicFunction;
