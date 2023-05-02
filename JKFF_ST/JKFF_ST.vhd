----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:27:41 03/20/2023 
-- Design Name: 
-- Module Name:    JKFF_ST - Behavioral 
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

entity JKFF_ST is
    Port ( J, K, Clk, reset : in  STD_LOGIC;
           Q, Qnot : out  STD_LOGIC);
end JKFF_ST;

architecture Behavioral of JKFF_ST is

component nand_gate_3I is
    Port ( A, B, C : in  STD_LOGIC;
           D : out  STD_LOGIC);
end component;

Signal S1, S2 : STD_LOGIC;

begin
	process (J, K, Clk, reset)
	begin
		if (reset='1')
		then
			Q<='0';
			Qnot<='1';
		end if;
	end process;
	 nand1: nand_gate_3I port map(J, Clk, Qnot, S1);
    nand2: nand_gate_3I port map(K, Clk, Q, S2);
    nand3: nand_gate_3I port map(S1, Qnot, '1', Q);
    nand4: nand_gate_3I port map(S2, Q, '1', Qnot);
end Behavioral;

