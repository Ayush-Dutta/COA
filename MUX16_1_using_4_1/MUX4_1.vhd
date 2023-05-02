----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:44:51 02/08/2023 
-- Design Name: 
-- Module Name:    MUX4_1 - Behavioral 
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

entity MUX4_1 is
    Port ( I0_41, I1_41, I2_41, I3_41 : in  STD_LOGIC_VECTOR (3 downto 0);
           S1_41, S0_41 : in  STD_LOGIC;
           Y_41 : out  STD_LOGIC_VECTOR (3 downto 0));
end MUX4_1;

architecture Behavioral of MUX4_1 is

begin
	process (I0_41, I1_41, I2_41, I3_41, S0_41, S1_41)
	begin
		if (S1_41='0' and S0_41='0')
		then
			Y_41<=I0_41;
		elsif (S1_41='0' and S0_41='1')
		then
			Y_41<=I1_41;
		elsif (S1_41='1' and S0_41='0')
		then
			Y_41<=I2_41;
		elsif (S1_41='1' and S0_41='1')
		then
			Y_41<=I3_41;
		else
			Y_41<="0000";
		end if;
	end process;
end Behavioral;

