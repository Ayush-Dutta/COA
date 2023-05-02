----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:41:42 03/16/2023 
-- Design Name: 
-- Module Name:    JKFF - Behavioral 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity JKFF is
    Port ( Clk , J, K, reset : in  STD_LOGIC;
           Q, Qnot : out  STD_LOGIC);
end JKFF;

architecture Behavioral of JKFF is

begin
	process (J, K, Clk, reset)
	variable temp1:  STD_LOGIC;
	begin
		if (reset='1')
		then
			temp1:='0';
		end if;
		if (Clk ='1')
		then
			if (J='0' and K='1')
			then
				temp1:='0';
			elsif (J='1' and K='0')
			then
				temp1:='1';
			elsif (J='1' and K='1')
			then
				temp1:=not temp1;
			end if;
		end if;
		Q<=temp1;
		Qnot<=not temp1;
	end process;
end Behavioral;