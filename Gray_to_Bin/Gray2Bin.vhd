----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:34:08 02/09/2023 
-- Design Name: 
-- Module Name:    Gray2Bin - Behavioral 
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

entity Gray2Bin is
    Port ( G : in  STD_LOGIC_VECTOR (3 downto 0);
           B : out  STD_LOGIC_VECTOR (3 downto 0));
end Gray2Bin;

architecture Behavioral of Gray2Bin is

begin
	B(3)<=G(3);
	B(2)<=G(3) xor G(2);
	B(1)<=G(3) xor G(2) xor G(1);
	B(0)<=G(3) xor G(2) xor G(1) xor G(0);
end Behavioral;