library IEEE;
use IEEE.std_logic_1164.all;
entity Mux2 is
	port(A,B : in std_logic;
		S : in std_logic;
		Z : out std_logic);
end Mux2;

architecture Behavioural of Mux2 is
begin
	Z <= (A and (not S)) or (B and S);
end Behavioural;

architecture Behavioural of Mux2 is
begin
	process(A,B,S)
		begin
			if(S = '0') then
				Z <= A;
			else
				Z <= B;
			end if;
	end process;
end  Behavioural;