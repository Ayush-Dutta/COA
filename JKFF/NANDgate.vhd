library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity NANDgate is
    Port ( an : in  STD_LOGIC;
           bn : in  STD_LOGIC;
           cn : in  STD_LOGIC;
           dn : out  STD_LOGIC);
end NANDgate;

architecture Behavioral of NANDgate is

Signal sg1n : STD_LOGIC;

begin

sg1n <= an nand bn;
dn <= sg1n nand cn;

end Behavioral;