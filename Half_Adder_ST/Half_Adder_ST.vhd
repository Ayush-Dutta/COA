----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:06:23 02/02/2023 
-- Design Name: 
-- Module Name:    Half_Adder_ST - Behavioral 
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

entity Half_Adder_ST is
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           Sum : out  STD_LOGIC;
           Carry : out  STD_LOGIC);
end Half_Adder_ST;

architecture Behavioral of Half_Adder_ST is

component and_gate is
	Port (A_an : in STD_LOGIC;
			B_an : in STD_LOGIC;
			C_an : out STD_LOGIC);
end component;

component xor_gate is
	Port (A_xo : in STD_LOGIC;
			B_xo : in STD_LOGIC;
			C_xo : out STD_LOGIC);
end component;

begin
	HF_xo : xor_gate Port map (A, B, Sum);
	HF_an : and_gate Port map (A, B, Carry);

end Behavioral;