--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   10:27:42 04/27/2023
-- Design Name:   
-- Module Name:   C:/COA/upDownCounter/TBW_upDownCounter.vhd
-- Project Name:  upDownCounter
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: upDownCounter
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

ENTITY TBW_upDownCounter IS
END TBW_upDownCounter;
 
ARCHITECTURE behavior OF TBW_upDownCounter IS 

    COMPONENT upDownCounter
    PORT(Clk, reset, up_down : IN  std_logic;
         OP : OUT  std_logic_vector(3 downto 0));
    END COMPONENT;
  
   signal Clk, reset, up_down : std_logic := '0';
   signal OP : std_logic_vector(3 downto 0);

BEGIN
   uut: upDownCounter PORT MAP (
          Clk => Clk,
          reset => reset,
          up_down => up_down,
			 OP => OP);

	Clk_process :process
   begin
		Clk <= '0';	wait for 10 ns;
		Clk <= '1';	wait for 10 ns;
   end process;
 
	updown_proc : process
	begin
		up_down <= '0';	wait for 329 ns;
		up_down <= '1';	wait for 302 ns;
		up_down <= '0';	wait for 320 ns;
		up_down <= '1';	wait for 300 ns;
	end process;

	reset_proc :process
	begin
		reset<='1';	wait for 20 ns;
		reset<='0';	wait;
	end process;
END;