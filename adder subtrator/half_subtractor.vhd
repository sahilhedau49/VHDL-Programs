Library IEEE;
use IEEE.std_logic_1164.all;

entity half_subtractor is
    port(A, B: in std_logic;
        diff, bor: out std_logic);
end half_subtractor;

architecture halfSubLogic of half_subtractor is
    component xor_gate
    port(A, B: in std_logic;
         Y: out std_logic);
    end component;
        
    component not_gate
    port(A: in std_logic;
         Y: out std_logic);
    end component;

    component and_gate
    port(A, B: in std_logic;
         Y: out std_logic);
    end component;

    signal s1: std_logic;

    begin
        v1: not_gate port map(A, s1);
        v2: xor_gate port map(A, B, diff);
        v3: and_gate port map(s1, B, bor);
end halfSubLogic;
