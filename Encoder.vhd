library MyEncoder;

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_textio.all;
use ieee.numeric_std.all;
use IEEE.std_logic_unsigned.all;

entity Encoder is 
	port (clk : in std_logic;
			m : in std_logic_vector(10 downto 0);
			x : out std_logic_vector(14 downto 0));
end Encoder;

architecture LogicFunction of Encoder is
signal
	x_signal : std_logic_vector(14 downto 0);
begin
	process(clk)
	begin
		if(rising_edge(clk)) then
			x_signal(14) <= m(10);
			x_signal(13) <= m(9);
			x_signal(12) <= m(8);
			x_signal(11) <= m(7);
			x_signal(10) <= m(6);
			x_signal(9) <= m(5);
			x_signal(8) <= m(4);
			x_signal(7) <= m(3);
			x_signal(6) <= m(2);
			x_signal(5) <= m(1);
			x_signal(4) <= m(0);
			x_signal(3) <= (m(0) and '1') xor (m(1) and '1') xor (m(2) and '1') xor (m(4) and '1') xor (m(6) and '1') xor (m(7) and '1') xor (m(10) and '1');
			x_signal(2) <= (m(0) and '1') xor (m(3) and '1') xor (m(4) and '1') xor (m(5) and '1') xor (m(9) and '1') xor (m(10) and '1');
			x_signal(1) <= (m(0) and '1') xor (m(1) and '1') xor (m(2) and '1') xor (m(3) and '1') xor (m(4) and '1') xor (m(7) and '1') xor (m(8) and '1') xor (m(9) and '1');
			x_signal(0) <= (m(0) and '1') xor (m(1) and '1') xor (m(2) and '1') xor (m(3) and '1') xor (m(5) and '1') xor (m(6) and '1') xor (m(8) and '1');
		end if;
		x <= x_signal;
	end process;
end LogicFunction;