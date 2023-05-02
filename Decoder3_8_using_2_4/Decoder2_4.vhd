----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    08:43:56 04/07/2023 
-- Design Name: 
-- Module Name:    Decoder2_4 - Behavioral 
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

entity Decoder2_4 is
    Port ( A : in  STD_LOGIC_VECTOR (1 downto 0);
           E : in  STD_LOGIC;
           D : out  STD_LOGIC_VECTOR (3 downto 0));
end Decoder2_4;

architecture Behavioral of Decoder2_4 is

begin
	process (A, E)
	begin
		if (E ='1')
		then
			case A is
				when "00" => D <= "0001";
				when "01" => D <= "0010";
				when "10" => D <= "0100";
				when "11" => D <= "1000";
				when others => D <= "0000";
			end case;
		else
			D<="0000";
		end if;
	end process;
end Behavioral;