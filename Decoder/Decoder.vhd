library myDecoder;
use myDecoder.all;

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
	signal e3, e2, e1, e0: std_logic;
	signal sel : std_logic_vector(10 downto 0);
	
	component xor2to1
		port (a, b : in std_logic;
				o : out std_logic);
	end component;

	component and4to1
		port (a, b, c, d : in std_logic;
				o : out std_logic);
	end component;
	
begin
	xor4_10 : xor2to1 port map(y(4), y(10), y4_10);
	xor13_14 : xor2to1 port map(y(13), y(14), y13_14);
	xorA : xor2to1 port map(y4_10, y13_14, yA);
	
	xor3_8 : xor2to1 port map(y(3), y(8), y3_8);
	xor9_12 : xor2to1 port map(y(9), y(12), y9_12);
	xor3_8_9_12 : xor2to1 port map(y3_8, y9_12, y3_8_9_12);
	
	xor2_6 : xor2to1 port map(y(2), y(6), y2_6);
	xor7_11 : xor2to1 port map(y(7), y(11), y7_11);
	xor2_6_7_11 : xor2to1 port map(y2_6, y7_11, y2_6_7_11);
	
	xor4_5 : xor2to1 port map(y(4), y(5), y4_5);
	xor11_12 : xor2to1 port map(y(11), y(12), y11_12);
	xorB : xor2to1 port map(y4_5, y11_12, yB);
	
	xor1_7 : xor2to1 port map(y(1), y(7), y1_7);
	xor9_14 : xor2to1 port map(y(9), y(14), y9_14);
	xor1_7_9_14 : xor2to1 port map(y1_7, y9_14, y1_7_9_14);
	
	xor0_6 : xor2to1 port map(y(0), y(6), y0_6);
	xor8_13 : xor2to1 port map(y(8), y(13), y8_13);
	xor0_6_8_13 : xor2to1 port map(y0_6, y8_13, y0_6_8_13);
	
	xor3 : xor2to1 port map(yA, y3_8_9_12, e3);
	xor2 : xor2to1 port map(yA, y2_6_7_11, e2);
	xor1 : xor2to1 port map(yB, y1_7_9_14, e1);
	xor0 : xor2to1 port map(yB, y0_6_8_13, e0);
	
	
	and10 : and4to1 port map (e3, e2, e1, not e0, sel(10));
	and9 : and4to1 port map (e3, e2, not e1, e0, sel(9));
	and8 : and4to1 port map (e3, not e2, e1, e0, sel(8));
	and7 : and4to1 port map (not e3, e2, e1, e0, sel(7));
	and6 : and4to1 port map (e3, e2, not e1, not e0, sel(6));
	and5 : and4to1 port map (e3, not e2, e1, not e0, sel(5));
	and4 : and4to1 port map (e3, not e2, not e1, e0, sel(4));
	and3 : and4to1 port map (not e3, e2, e1, not e0, sel(3));
	and2 : and4to1 port map (not e3, e2, not e1, e0, sel(2));
	and1 : and4to1 port map (not e3, not e2, e1, e0, sel(1));
	and0 : and4to1 port map (e3, e2, e1, e0, sel(0));
end LogicFunction;
