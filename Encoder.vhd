library MyEncoder;

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_textio.all;
use ieee.numeric_std.all;
use IEEE.std_logic_unsigned.all;

entity Encoder is 
	port (m10, m9, m8, m7, m6, m5, m4, m3, m2, m1, m0 : in std_logic;
			x14, x13, x12, x11, x10, x9, x8, x7, x6, x5, x4, x3, x2, x1, x0 : out std_logic);
end Encoder;

architecture LogicFunction of Encoder is
begin
	x0 <= m0;
	x1 <= m1;
	x2 <= m2;
	x3 <= m3;
	x4 <= m4;
	x5 <= m5;
	x6 <= m6;
	x7 <= m7;
	x8 <= m8;
	x9 <= m9;
	x10 <= m10;
	x11 <= m0 xor m1 xor m2 xor m4 xor m5 xor m6 xor m10;
	x12 <= m0 xor m1 xor m3 xor m4 xor m7 xor m8 xor m10;
	x13 <= m0 xor m2 xor m3 xor m5 xor m7 xor m9 xor m10;
	x14 <= m1 xor m2 xor m3 xor m6 xor m8 xor m9 xor m10;
end LogicFunction;