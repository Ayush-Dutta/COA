----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    01:36:03 01/28/2023 
-- Design Name: 
-- Module Name:    VII_Seg_Disp - Behavioral 
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

entity VII_Seg_Disp is
    Port ( a : in  STD_LOGIC_VECTOR (3 downto 0);
	   b : out  STD_LOGIC_VECTOR (6 downto 0));
end VII_Seg_Disp;

architecture Behavioral of VII_Seg_Disp is

begin
	process (a)
	begin
		case a is
			when "0000" => b <= "1111110";
			when "0001" => b <= "0000110";
			when "0010" => b <= "1011011";
			when "0011" => b <= "1001111";
			when "0100" => b <= "0100111";
			when "0101" => b <= "1101101";
			when "0110" => b <= "1111101";
			when "0111" => b <= "1000110";
			when "1000" => b <= "1111111";
			when "1001" => b <= "1101111";
			when others => b <= "0000000";
		end case;
	end process;
end Behavioral;