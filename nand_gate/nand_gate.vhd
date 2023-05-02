library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity nor_gate is
    Port ( A, B : in  STD_LOGIC;
           C : out  STD_LOGIC);
end nor_gate;

architecture Behavioral of nor_gate is

begin
        C<=A nor B;
end Behavioral;