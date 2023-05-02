--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   01:42:50 02/06/2023
-- Design Name:   
-- Module Name:   C:/COA/Half_Subtractor_ST/TBW_Half_Subtractor_ST.vhd
-- Project Name:  Half_Subtractor_ST
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Half_Subtractor
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

ENTITY TBW_Half_Subtractor_ST IS
END TBW_Half_Subtractor_ST;
 
ARCHITECTURE behavior OF TBW_Half_Subtractor_ST IS 

    COMPONENT Half_Subtractor
    PORT(A : IN  std_logic;
         B : IN  std_logic;
         Difference : OUT  std_logic;
         Borrow : OUT  std_logic);
    END COMPONENT;

   signal A, B : std_logic := '0';
   signal Difference, Borrow : std_logic;
 
BEGIN
   uut: Half_Subtractor PORT MAP (
          A => A,
          B => B,
          Difference => Difference,
          Borrow => Borrow);

   stim_proc: process
   begin		
	A<='0'; B<='0'; wait for 200 ns;
	A<='0'; B<='1'; wait for 200 ns;
	A<='1'; B<='0'; wait for 200 ns;
	A<='1'; B<='1'; wait for 200 ns;
      wait;
   end process;
END;