Library IEEE;
use IEEE.std_logic_1164.all;
entity or_gate is
	port(A : in std_logic;
	     B : in std_logic;
	     Y : out std_logic);
end or_gate;
architecture orLogic of or_gate is
begin
	Y <= A or B;
end orLogic;