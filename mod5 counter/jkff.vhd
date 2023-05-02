----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:23:12 05/02/2023 
-- Design Name: 
-- Module Name:    jkff - Behavioral 
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

entity jkff is
    Port ( j,k,clk,rst : in  STD_LOGIC;
           q0 : inout  STD_LOGIC;
           qn : out  STD_LOGIC);
end jkff;

architecture Behavioral of jkff is

begin
	process (j, k, clk, rst)
	variable temp:  STD_LOGIC;
	begin
		if (rst='1')
		then
			temp:='0';
		end if;
		if (clk ='1')
		then
			if (j='0' and k='1')
			then
				temp:='0';
			elsif (j='1' and k='0')
			then
				temp:='1';
			elsif (j='1' and k='1')
			then
				temp:=not temp;
			end if;
		end if;
		q0<=temp;
		qn<=not temp;
	end process;

end Behavioral;

