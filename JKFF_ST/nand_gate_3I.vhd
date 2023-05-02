----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:19:50 03/20/2023 
-- Design Name: 
-- Module Name:    nand_gate_3I - Behavioral 
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

entity nand_gate_3I is
    Port ( A, B, C : in  STD_LOGIC;
           D : inout  STD_LOGIC);
end nand_gate_3I;

architecture Behavioral of nand_gate_3I is

begin
	D <= not ((A and B) and C) after 1 ps;
end Behavioral;