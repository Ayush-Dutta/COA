library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity buffer_gate is
    Port ( input : in  STD_LOGIC;
           output : out  STD_LOGIC);
end buffer_gate;

architecture Behavioral of buffer_gate is

begin
    output <= input;

end Behavioral;
