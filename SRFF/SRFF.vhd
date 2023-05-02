----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:25:53 03/17/2023 
-- Design Name: 
-- Module Name:    SRFF - Behavioral 
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

entity SRFF is
    Port ( Clk, S, R, reset : in  STD_LOGIC;
           Q, Qnot : out  STD_LOGIC);
end SRFF;

architecture Behavioral of SRFF is

begin
	process (S, R, reset, Clk)
	variable temp1, temp2 :  STD_LOGIC;
	begin
		if (reset ='1')
		then
			temp1:='0';
			temp2:='1';
		end if;
		if (S='0' and R='1')
		then
			temp1:='0';
			temp2:='1';
		elsif (S='1' and R='0')
		then
			temp1:='1';
			temp2:='0';
		elsif (S='1' and R='1')
		then
			temp1:='X';
			temp2:='X';
		end if;
		Q<=temp1;
		Qnot<=temp2;
	end process;
end Behavioral;