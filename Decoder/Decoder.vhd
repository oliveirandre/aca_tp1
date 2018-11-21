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
			error : out std_logic_vector(3 downto 0);
			selector : out std_logic_vector(10 downto 0);
			f : out std_logic_vector(14 downto 0));
end Decoder;

architecture LogicFunction of Decoder is
	signal y4_10, y13_14, yA, y3_8, y9_12, y3_8_9_12, y2_6, y7_11, y2_6_7_11 : std_logic;
	signal y4_5, y11_12, yB, y1_7, y9_14, y1_7_9_14, y0_6, y8_13, y0_6_8_13 : std_logic;
	signal sel : std_logic_vector(10 downto 0);
	signal e : std_logic_vector(3 downto 0);
	
	component xor2to1
		port (a, b : in std_logic;
				o : out std_logic);
	end component;

	component and4to1
		port (a, b, c, d : in std_logic;
				o : out std_logic);
	end component;
	
	component mux2to1
		port (a, b, sel : in std_logic;
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
	
	xor3 : xor2to1 port map(yA, y3_8_9_12, e(3));
	xor2 : xor2to1 port map(yA, y2_6_7_11, e(2));
	xor1 : xor2to1 port map(yB, y1_7_9_14, e(1));
	xor0 : xor2to1 port map(yB, y0_6_8_13, e(0));
	
	error <= e;
	
	and10 : and4to1 port map (e(3), e(2), e(1), not e(0), sel(10));
	and9 : and4to1 port map (e(3), e(2), not e(1), e(0), sel(9));
	and8 : and4to1 port map (e(3), not e(2), e(1), e(0), sel(8));
	and7 : and4to1 port map (not e(3), e(2), e(1), e(0), sel(7));
	and6 : and4to1 port map (e(3), e(2), not e(1), not e(0), sel(6));
	and5 : and4to1 port map (e(3), not e(2), e(1), not e(0), sel(5));
	and4 : and4to1 port map (e(3), not e(2), not e(1), e(0), sel(4));
	and3 : and4to1 port map (not e(3), e(2), e(1), not e(0), sel(3));
	and2 : and4to1 port map (not e(3), e(2), not e(1), e(0), sel(2));
	and1 : and4to1 port map (not e(3), not e(2), e(1), e(0), sel(1));
	and0 : and4to1 port map (e(3), e(2), e(1), e(0), sel(0));
	
	selector <= sel;
	
	mux14 : mux2to1 port map(not y(14), y(14), sel(10), f(14));
	mux13 : mux2to1 port map(not y(13), y(13), sel(9), f(13));
	mux12 : mux2to1 port map(not y(12), y(12), sel(8), f(12));
	mux11 : mux2to1 port map(not y(11), y(11), sel(7), f(11));
	mux10 : mux2to1 port map(not y(10), y(10), sel(6), f(10));
	mux9 : mux2to1 port map(not y(9), y(9), sel(5), f(9));
	mux8 : mux2to1 port map(not y(8), y(8), sel(4), f(8));
	mux7 : mux2to1 port map(not y(7), y(7), sel(3), f(7));
	mux6 : mux2to1 port map(not y(6), y(6), sel(2), f(6));
	mux5 : mux2to1 port map(not y(5), y(5), sel(1), f(5));
	mux4 : mux2to1 port map(not y(4), y(4), sel(0), f(4));
	
	f(3 downto 0) <= y(3 downto 0);
	
	
end LogicFunction;
