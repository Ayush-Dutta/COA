----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:32:38 05/02/2023 
-- Design Name: 
-- Module Name:    CarryGen - Behavioral 
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

entity CarryGen is
    Port ( Pin : in  STD_LOGIC;
           Gin : in  STD_LOGIC;
           Cin : in  STD_LOGIC;
           CO : out  STD_LOGIC);
end CarryGen;

architecture Behavioral of CarryGen is

begin
CO <= Gin or (Pin and Cin);

end Behavioral;

