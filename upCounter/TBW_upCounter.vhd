--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   19:42:36 04/02/2023
-- Design Name:   
-- Module Name:   C:/COA/upCounter/TBW_upCounter.vhd
-- Project Name:  upCounter
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: upCounter
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

ENTITY TBW_upCounter IS
END TBW_upCounter;
 
ARCHITECTURE behavior OF TBW_upCounter IS 

    COMPONENT upCounter
    PORT(Clk, reset : IN  std_logic;
         Q : INOUT  std_logic_vector(3 downto 0));
    END COMPONENT;

   signal Clk, reset : std_logic := '0';
   signal Q : std_logic_vector(3 downto 0);

BEGIN
   uut: upCounter PORT MAP (
          Clk => Clk,
          reset => reset,
          Q => Q
        );

   Clk_process :process
   begin
		Clk <= '0';	wait for 25 ns;
		Clk <= '1';	wait for 25 ns;
   end process;
 
	reset_proc :process
	begin
		reset<='1';	wait for 50 ns;
		reset<='0';	wait;
	end process;
END;