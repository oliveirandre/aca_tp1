library myEncoder;

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