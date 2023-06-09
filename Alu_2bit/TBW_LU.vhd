--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   11:11:55 03/05/2023
-- Design Name:   
-- Module Name:   C:/COA/ALU_2bit/TBW_LU.vhd
-- Project Name:  ALU_2bit
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: LU
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
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY TBW_LU IS
END TBW_LU;
 
ARCHITECTURE behavior OF TBW_LU IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT LU
    PORT(
         A : IN  std_logic_vector(1 downto 0);
         B : IN  std_logic_vector(1 downto 0);
         S : IN  std_logic;
         Op : OUT  std_logic_vector(2 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic_vector(1 downto 0) := (others => '0');
   signal B : std_logic_vector(1 downto 0) := (others => '0');
   signal S : std_logic := '0';

 	--Outputs
   signal Op : std_logic_vector(2 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: LU PORT MAP (
          A => A,
          B => B,
          S => S,
          Op => Op
        );


   -- Stimulus process
   stim_proc: process
   begin		
     A<="01";
	  B<="11";
	  S<='0'; wait for 500 ns;
	  S<='1'; wait for 500 ns;
   end process;

END;
