--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   13:10:17 04/01/2023
-- Design Name:   
-- Module Name:   C:/COA/SRFF_ST/TBW_SRFF_ST.vhd
-- Project Name:  SRFF_ST
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: SRFF_ST
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

ENTITY TBW_SRFF_ST IS
END TBW_SRFF_ST;
 
ARCHITECTURE behavior OF TBW_SRFF_ST IS 

    COMPONENT SRFF_ST
    PORT(S, R, Clk : IN  std_logic;
         Q, Qnot : INOUT  std_logic);
    END COMPONENT;

   signal S, R, Clk : std_logic := '0';
   signal Q, Qnot : std_logic;

BEGIN
   uut: SRFF_ST PORT MAP (
          S => S,
          R => R,
          Clk => Clk,
          Q => Q,
          Qnot => Qnot);

   stim_proc: process
   begin	
	Clk<='1';
	S<='0'; R<='0'; wait for 100 ns;
	S<='0'; R<='1'; wait for 100 ns;
	S<='1'; R<='0'; wait for 100 ns;
	S<='1'; R<='1'; wait for 100 ns;
   end process;
END;