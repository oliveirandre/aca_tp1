library MyEncoder;
library ieee;
use ieee.std_logic_1164.all;

entity HammingCodes is
	port (clk : in std_logic;
			plainValue : in std_logic_vector(10 downto 0);
			encodedValue : out std_logic_vector(14 downto 0);
			outValue : out std_logic_vector(10 downto 0));
end HammingCodes;

architecture Structural of HammingCodes is
signal
	s_valueEncoded : std_logic_vector(14 downto 0);
begin
	enc : entity work.Encoder(LogicFunction)
			port map(clk => clk,
						m => plainValue,
						x => s_valueEncoded);
	encodedValue <= s_valueEncoded;
end Structural;