----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:30:57 05/02/2023 
-- Design Name: 
-- Module Name:    FullAdder - Behavioral 
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

entity FullAdder is
    Port ( FA : in  STD_LOGIC;
           FB : in  STD_LOGIC;
           FCin : in  STD_LOGIC;
           Sum : out  STD_LOGIC;
           Go : out  STD_LOGIC;
           PO : out  STD_LOGIC);
end FullAdder;

architecture Behavioral of FullAdder is

begin
Sum <= FA xor FB xor FCin;
PO <= FA xor FB;
Go <= FA and FB;

end Behavioral;

