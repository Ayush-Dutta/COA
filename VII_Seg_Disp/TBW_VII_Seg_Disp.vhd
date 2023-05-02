--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   23:53:25 01/28/2023
-- Design Name:   
-- Module Name:   C:/COA/VII_Seg_Diap/TBW_VII_Seg_Disp.vhd
-- Project Name:  VII_Seg_Diap
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: VII_Seg_Disp
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
USE ieee.std_logic_UNSIGNED.ALL;

ENTITY TBW_VII_Seg_Disp IS
END TBW_VII_Seg_Disp;
 
ARCHITECTURE behavior OF TBW_VII_Seg_Disp IS 

    COMPONENT VII_Seg_Disp
    PORT(a : IN  std_logic_vector(3 downto 0);
         b : OUT  std_logic_vector(6 downto 0));
    END COMPONENT;

   signal a : std_logic_vector(3 downto 0) := (others => '0');
   signal b : std_logic_vector(6 downto 0);

BEGIN
   uut: VII_Seg_Disp PORT MAP (
          a => a,
          b => b);

   stim_proc: process
   begin		
	a<="0000";
	for i in 1 to 9 loop
		a<=a+"0001";	wait for 100 ns;
	end loop;
   end process;
END;