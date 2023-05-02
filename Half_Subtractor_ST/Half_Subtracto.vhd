----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    00:53:43 02/06/2023 
-- Design Name: 
-- Module Name:    Half_Subtracto - Behavioral 
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

entity Half_Subtractor is
    Port ( A, B : in  STD_LOGIC;
           Difference, Borrow : out  STD_LOGIC);
end Half_Subtractor;

architecture Behavioral of Half_Subtractor is

component and_gate is
    Port ( A_an : in  STD_LOGIC;
           B_an : in  STD_LOGIC;
           C_an : out  STD_LOGIC);
end component;

component xor_gate is
    Port ( A_xo : in  STD_LOGIC;
           B_xo : in  STD_LOGIC;
           C_xo : out  STD_LOGIC);
end component;

component not_gate is
    Port ( A_no : in  STD_LOGIC;
           B_no : out  STD_LOGIC);
end component;

Signal not_out;

begin
	not1 : not_gate Port map (A, not_out);
	HA_
end Behavioral;

