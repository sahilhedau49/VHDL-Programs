Library IEEE;
use IEEE.std_logic_1164.all;

entity full_subtractor is
    port(A, B, Bin: in std_logic;
        diff, Bout: out std_logic);
end full_subtractor;

architecture fullSubLogic of full_subtractor is
    component half_subtractor
    port(A, B: in std_logic;
        diff, bor: out std_logic);
    end component;

    component or_gate
    port(A, B: in std_logic;
        Y: out std_logic);
    end component;

    signal s1, s2, s3: std_logic;

    begin
        v1: half_subtractor port map(A, B, s1, s2);
        v2: half_subtractor port map(s1, Bin, diff, s3);
        v3: or_gate port map(s2, s3, Bout);
end fullSubLogic;

