--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   20:49:29 02/16/2023
-- Design Name:   
-- Module Name:   C:/COA/Gray2Bin_ST/TBW_Gray2Bin.vhd
-- Project Name:  Gray2Bin_ST
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Gray2Bin
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

ENTITY TBW_Gray2Bin IS
END TBW_Gray2Bin;
 
ARCHITECTURE behavior OF TBW_Gray2Bin IS 

    COMPONENT Gray2Bin
    PORT(G : IN  std_logic_vector(3 downto 0);
         B : INOUT  std_logic_vector(3 downto 0));
    END COMPONENT;

   signal G : std_logic_vector(3 downto 0) := (others => '0');
   signal B : std_logic_vector(3 downto 0);

BEGIN
   uut: Gray2Bin PORT MAP (
          G => G,
          B => B
        );

   stim_proc: process
  begin		
	G<="0000";
	for i in 1 to 15 loop
		wait for 50 ns;	G<=G+"0001";
	end loop;
	wait;
   end process;
END;