--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   17:40:30 03/19/2023
-- Design Name:   
-- Module Name:   C:/COA/DFF/TBE_DFF.vhd
-- Project Name:  DFF
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: DFF
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

ENTITY TBW_DFF IS
END TBW_DFF;
 
ARCHITECTURE behavior OF TBW_DFF IS 

    COMPONENT DFF
    PORT(Clk, D : IN  std_logic;
         Q, Qnot : INOUT  std_logic);
    END COMPONENT;
    
   signal Clk, D : std_logic := '0';
   signal Q, Qnot : std_logic;

BEGIN
   uut: DFF PORT MAP (
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