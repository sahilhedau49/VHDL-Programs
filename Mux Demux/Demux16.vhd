library IEEE;
use IEEE.std_logic_1164.all;

entity Demux16 is
	port(X: in std_logic;
		S : in std_logic_vector(3 downto 0);
		D : out std_logic_vector(15 downto 0));
end Demux16;
architecture Behavioural of Demux16 is

component Demux4
port(X,S0,S1 : in std_logic;
	D0,D1,D2,D3 : out std_logic);
end component;

signal temp : std_logic_vector(3 downto 0);

begin
	dm1 : Demux4 port map(X, S(3),S(2),temp(0),temp(1),temp(2),temp(3));
	dm2 : Demux4 port map(temp(0),S(1),S(0),D(0),D(1),D(2),D(3));
	dm3 : Demux4 port map(temp(1),S(1),S(0),D(4),D(5),D(6),D(7));
	dm4 : Demux4 port map(temp(2),S(1),S(0),D(8),D(9),D(10),D(11));
	dm5 : Demux4 port map(temp(3),S(1),S(0),D(12),D(13),D(14),D(15));
end Behavioural;