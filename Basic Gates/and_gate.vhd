Library IEEE;
use IEEE.std_logic_1164.all;
entity and_gate is
	port(A : in std_logic;
	     B : in std_logic;
	     Y : out std_logic);
end and_gate;
architecture andLogic of and_gate is
begin
	Y <= A and B;
end andLogic;