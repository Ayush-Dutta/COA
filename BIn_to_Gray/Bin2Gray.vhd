----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:10:16 02/09/2023 
-- Design Name: 
-- Module Name:    Bin2Gray - Behavioral 
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

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Bin2Gray is
    Port ( B : in  STD_LOGIC_VECTOR (3 downto 0);
           G : out  STD_LOGIC_VECTOR (3 downto 0));
end Bin2Gray;

architecture Behavioral of Bin2Gray is

begin
	G(3)<=B(3);
	G(2)<=B(3) xor B(2);
	G(1)<=B(2) xor B(1);
	G(0)<=B(1) xor B(0);
end Behavioral;