----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:22:16 02/16/2023 
-- Design Name: 
-- Module Name:    fourInput_AND - Behavioral 
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

entity threeInput_AND is
    Port ( A_an : in  STD_LOGIC;
           B_an : in  STD_LOGIC;
			  C_an : in  STD_LOGIC;
           D_an : out  STD_LOGIC);
end threeInput_AND;

architecture Behavioral of threeInput_AND is

begin
	D_an<= (A_an and B_an) and C_an;

end Behavioral;

