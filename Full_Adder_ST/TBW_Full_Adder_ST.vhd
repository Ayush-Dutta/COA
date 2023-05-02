--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   22:53:51 02/02/2023
-- Design Name:   
-- Module Name:   C:/COA/Fulll_Adder_ST/TBW_Full_Adder_ST.vhd
-- Project Name:  Fulll_Adder_ST
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Full_Adder
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY TBW_Full_Adder_ST IS
END TBW_Full_Adder_ST;
 
ARCHITECTURE behavior OF TBW_Full_Adder_ST IS 

    COMPONENT Full_Adder
    PORT(
         A , B, Cin : IN  std_logic;
         Cout, Sum : OUT  std_logic
        );
    END COMPONENT;

   signal A, B, Cin : std_logic := '0';
   signal Cout, Sum : std_logic;

BEGIN
   uut: Full_Adder PORT MAP (
          A => A,
          B => B,
          Cin => Cin,
          Cout => Cout,
          Sum => Sum
        ); 

   stim_proc: process
   begin	
		A<='0'; B<='0'; Cin<='0'; wait for 100 ns;
		A<='0'; B<='0'; Cin<='1'; wait for 100 ns;
		A<='0'; B<='1'; Cin<='0'; wait for 100 ns;
		A<='0'; B<='1'; Cin<='1'; wait for 100 ns;
		A<='1'; B<='0'; Cin<='0'; wait for 100 ns;
		A<='1'; B<='0'; Cin<='1'; wait for 100 ns;
		A<='1'; B<='1'; Cin<='0'; wait for 100 ns;
		A<='1'; B<='1'; Cin<='1'; wait for 100 ns;
      wait;
   end process;
END;