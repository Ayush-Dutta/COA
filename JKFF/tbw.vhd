LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY tbw IS
END tbw;
 
ARCHITECTURE behavior OF tbw IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT JK
    PORT(
         j : IN  std_logic;
         k : IN  std_logic;
         clk : IN  std_logic;
         a : INOUT  std_logic;
         b : INOUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal j : std_logic := '0';
   signal k : std_logic := '0';
   signal clk : std_logic := '0';

    --BiDirs
   signal a : std_logic;
   signal b : std_logic;

   -- Clock period definitions
   --constant clk_period : time := 10 ns;
 
BEGIN
 
    -- Instantiate the Unit Under Test (UUT)
   uut: JK PORT MAP (
          j => j,
          k => k,
          clk => clk,
          a => a,
          b => b
        );

   -- Clock process definitions
   --clk_process :process
   --begin
    --    clk <= '0';
    --    wait for clk_period/2;
    --    clk <= '1';
    --    wait for clk_period/2;
   --end process;
 

   -- Stimulus process
   stim_proc: process
   begin        
      clk<='1';
      j<='0'; k<='0'; wait for 100 ns;
      j<='0'; k<='1'; wait for 100 ns;
      j<='1'; k<='0'; wait for 100 ns;
      j<='1'; k<='1'; wait for 100 ns;
   end process;

END;