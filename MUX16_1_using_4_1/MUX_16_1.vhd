----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:54:05 02/08/2023 
-- Design Name: 
-- Module Name:    MUX_16_1 - Behavioral 
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

entity MUX_16_1 is
    Port ( I0,I1,I2,I3,I4,I5,I6,I7,I8,I9,I10,I11,I12,I13,I14,I15 : in  STD_LOGIC_VECTOR (3 downto 0);
           S : in  STD_LOGIC_VECTOR (3 downto 0);
           Y : out  STD_LOGIC_VECTOR (3 downto 0));
end MUX_16_1;

architecture Behavioral of MUX_16_1 is

component MUX4_1 is
    Port ( I0_41, I1_41, I2_41, I3_41 : in  STD_LOGIC_VECTOR (3 downto 0);
           S1_41, S0_41 : in  STD_LOGIC;
           Y_41 : out  STD_LOGIC_VECTOR (3 downto 0));
end component;

Signal Y0, Y4, Y8, Y12 : STD_LOGIC_VECTOR (3 downto 0);

begin
	M1 : MUX4_1 Port map (I0, I1, I2, I3, S(1), S(0), Y0);
	M2 : MUX4_1 Port map (I4, I5, I6, I7, S(1), S(0), Y4);
	M3 : MUX4_1 Port map (I8, I9, I10, I11, S(1), S(0), Y8);
	M4 : MUX4_1 Port map (I12, I13, I14, I15, S(1), S(0), Y12);
	M5 : MUX4_1 Port map (Y0, Y4, Y8, Y12, S(3), S(2), Y);

end Behavioral;

