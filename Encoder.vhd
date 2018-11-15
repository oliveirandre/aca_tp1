library MyEncoder;

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_textio.all;
use ieee.numeric_std.all;
use IEEE.std_logic_unsigned.all;

entity Encoder is 
	port (m10, m9, m8, m7, m6, m5, m4, m3, m2, m1, m0 : in std_logic;
			m : in std_logic_vector(10 downto 0);
			x : out std_logic_vector(14 downto 0);
			x14, x13, x12, x11, x10, x9, x8, x7, x6, x5, x4, x3, x2, x1, x0 : out std_logic);
end Encoder;

architecture LogicFunction of Encoder is
begin
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
	x11 <= m0 xor m1 xor m2 xor m4 xor m5 xor m6 xor m10;
	x12 <= m0 xor m1 xor m3 xor m4 xor m7 xor m8 xor m10;
	x13 <= m0 xor m2 xor m3 xor m5 xor m7 xor m9 xor m10;
	x14 <= m1 xor m2 xor m3 xor m6 xor m8 xor m9 xor m10;
end LogicFunction;