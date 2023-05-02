--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   12:15:27 02/09/2023
-- Design Name:   
-- Module Name:   C:/COA/Bin_to_Gray/TBW_Bin2Gray.vhd
-- Project Name:  Bin_to_Gray
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Bin2Gray
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

ENTITY TBW_Bin2Gray IS
END TBW_Bin2Gray;
 
ARCHITECTURE behavior OF TBW_Bin2Gray IS 
 
    COMPONENT Bin2Gray
    PORT(
         B : IN  std_logic_vector(3 downto 0);
         G : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;

   signal B : std_logic_vector(3 downto 0) := (others => '0');
   signal G : std_logic_vector(3 downto 0);

BEGIN
   uut: Bin2Gray PORT MAP (
          B => B,
          G => G
        );

   stim_proc: process
   begin		
	B<="0000";
	for i in 1 to 16 loop
		wait for 50 ns;
		B<=B+"0001";
	end loop;
   end process;

END;