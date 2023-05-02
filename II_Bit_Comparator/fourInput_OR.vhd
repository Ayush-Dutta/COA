----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:32:28 02/16/2023 
-- Design Name: 
-- Module Name:    fourInput_OR - Behavioral 
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

entity threeInput_OR is
    Port ( A_o : in  STD_LOGIC;
           B_o : in  STD_LOGIC;
           C_o : in  STD_LOGIC;
           D_o : out  STD_LOGIC);
end threeInput_OR;

architecture Behavioral of threeInput_OR is

begin
	D_o<= (A_o or B_o) or C_o;
end Behavioral;