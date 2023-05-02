--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   09:03:35 04/07/2023
-- Design Name:   
-- Module Name:   C:/COA/Decoder3_8_using_2_4/TBW_Decoder3_8_using_2_4.vhd
-- Project Name:  Decoder3_8_using_2_4
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Decoder3_8
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
USE ieee.std_logic_unsigned.ALL;

ENTITY TBW_Decoder3_8_using_2_4 IS
END TBW_Decoder3_8_using_2_4;
 
ARCHITECTURE behavior OF TBW_Decoder3_8_using_2_4 IS 

    COMPONENT Decoder3_8
    PORT(A : IN  std_logic_vector(2 downto 0);
         D : OUT  std_logic_vector(7 downto 0));
    END COMPONENT;

   signal A : std_logic_vector(2 downto 0) := (others => '0');
   signal D : std_logic_vector(7 downto 0);
  
BEGIN
   uut: Decoder3_8 PORT MAP (
          A => A,
          D => D);

   stim_proc: process
   begin		
      A<="000";
		wait for 100 ns;
		for i in 1 to 7 loop
			A<=A+"001";
			wait for 100 ns;
		end loop;
   end process;
END;