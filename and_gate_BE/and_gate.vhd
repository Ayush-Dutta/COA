----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:57:34 04/07/2023 
-- Design Name: 
-- Module Name:    and_gate - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity and_gate is
    Port ( A, B : in  STD_LOGIC;
           C : out  STD_LOGIC);
end and_gate;

architecture Behavioral of and_gate is

begin
	process (A, B)
	begin
		if (A='1' and B='1')
		then
			C<='1';
		else
			C<='0';
		end if;
	end process;
end Behavioral;