----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    23:02:27 02/16/2023 
-- Design Name: 
-- Module Name:    xnor_gate - Behavioral 
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

entity xnor_gate is
    Port ( A_xn : in  STD_LOGIC;
           B_xn : in  STD_LOGIC;
           C_xn : out  STD_LOGIC);
end xnor_gate;

architecture Behavioral of xnor_gate is

begin
	C_xn <= A_xn xnor B_xn;
end Behavioral;

