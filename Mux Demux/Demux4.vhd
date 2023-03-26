library IEEE;
use IEEE.std_logic_1164.all;

entity Demux4 is
	port(X,S0,S1 : in std_logic;
		D0,D1,D2,D3 : out std_logic);
end Demux4;

architecture logic of Demux4 is

begin
	D0 <= X and (not S0) and (not S1);
	D1 <= X and (not S0) and S1;
	D2 <= X and S0 and (not S1);
	D3 <= X and S0 and S1;
end logic;