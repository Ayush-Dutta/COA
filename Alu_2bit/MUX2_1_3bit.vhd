----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:22:59 03/04/2023 
-- Design Name: 
-- Module Name:    MUX2_1_3bit - Behavioral 
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

entity MUX2_1_3bit is
    Port ( I0, I1 : in  STD_LOGIC_VECTOR (2 downto 0);
           S : in  STD_LOGIC;
           Y : out  STD_LOGIC_VECTOR (2 downto 0));
end MUX2_1_3bit;

architecture Behavioral of MUX2_1_3bit is

begin
	process (I0, I1, S)
	begin
		if (S='0')
		then
			Y<=I0;
		elsif (S='1')
		then
			Y<=I1;
		else
			Y<="000";
		end if;
	end process;
end Behavioral;