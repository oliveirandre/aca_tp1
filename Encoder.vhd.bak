library MyEncoder;

library ieee;
use ieee.numeric_std.all;
use ieee.std_logic_1164.all;

entity Encoder is 
	port (plainValue : in std_logic_vector(10 downto 0);
			clk : in std_logic;
			encodedValue : out std_logic_vector(14 downto 0));
end Encoder;

architecture LogicFunction of Encoder is
	type matrix is array (0 to 14) of std_logic_vector(10 downto 0);
	signal encodingMatrix: matrix := ("10000000000","01000000000","00100000000","00010000000","00001000000","00000100000","00000010000",
												 "00000001000","00000000100","00000000010","00000000001","11101011001","10011100011","11111001110",
												 "11110110100");
begin
	
end LogicFunction;