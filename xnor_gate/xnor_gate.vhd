library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity xnor_gate is
    Port ( A, B : in  STD_LOGIC;
           C : out  STD_LOGIC);
end xnor_gate;

architecture Behavioral of xnor_gate is

begin
        C<=A xnor B;
end Behavioral;