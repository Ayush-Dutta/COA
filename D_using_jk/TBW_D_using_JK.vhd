--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   09:47:33 03/24/2023
-- Design Name:   
-- Module Name:   C:/COA/D_using_JK/TBW_D_using_JK.vhd
-- Project Name:  D_using_JK
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: D_using_JK
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

ENTITY TBW_D_using_JK IS
END TBW_D_using_JK;
 
ARCHITECTURE behavior OF TBW_D_using_JK IS 

    COMPONENT D_using_JK
    PORT(Clk, D : IN  std_logic;
         Q, Qnot : OUT  std_logic);
    END COMPONENT;

   signal Clk, D : std_logic := '0';
   signal Q, Qnot : std_logic;

BEGIN
   uut: D_using_JK PORT MAP (
          Clk => Clk,
          D => D,
          Q => Q,
          Qnot => Qnot);

   stim_proc: process
   begin		
	Clk<='1';
	D<='0'; wait for 100 ns;
	D<='1'; wait for 100 ns;
   end process;
END;