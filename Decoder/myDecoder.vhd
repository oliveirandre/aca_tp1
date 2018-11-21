library myDecoder;

library ieee;
use ieee.std_logic_1164.all;

entity xor2to1 is
	port (a, b : in std_logic;
			o : out std_logic);
end xor2to1;

architecture LogicFunction of xor2to1 is
begin
	o <= (a and not b) or (not a and b);
end LogicFunction;

library ieee;
use ieee.std_logic_1164.all;

entity and2to1 is
	port (a, b : in std_logic;
			o : out std_logic);
end and2to1;

architecture LogicFunction of and2to1 is
begin
	o <= a and b;
end LogicFunction;

library ieee;
use ieee.std_logic_1164.all;

entity and4to1 is
	port (a, b, c, d : in std_logic;
			o : out std_logic);
end and4to1;

architecture LogicFunction of and4to1 is
	signal o1, o2 : std_logic;
	component and2to1 is
		port (a, b : in std_logic;
				o : out std_logic);
	end component;
begin
	and1_2 : and2to1 port map (a, b, o1);
	and3_4 : and2to1 port map (c, d, o2);
	andfinal : and2to1 port map (o1, o2, o);
end LogicFunction;