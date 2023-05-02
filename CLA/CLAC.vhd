----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:19:59 05/02/2023 
-- Design Name: 
-- Module Name:    CLAC - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity CLAC is
    Port ( A : in  STD_LOGIC_VECTOR (2 downto 0);
           B : in  STD_LOGIC_VECTOR (2 downto 0);
           S : out  STD_LOGIC_VECTOR (2 downto 0);
           C : out  STD_LOGIC);
end CLAC;

architecture Behavioral of CLAC is
component FullAdder is
	Port ( FA:in STD_LOGIC;
			 FB:in STD_LOGIC;
			 FCin:in STD_LOGIC;
			 Sum:out STD_LOGIC;
			 Go:out STD_LOGIC;
			 PO:out STD_LOGIC);
end component;
component CarryGen is
	Port ( Pin:in STD_LOGIC;
			 Gin:in STD_LOGIC;
			 Cin:in STD_LOGIC;
			 CO:out STD_LOGIC);
end component;
signal P,G:STD_LOGIC_VECTOR(2 downto 0);
signal S0,S1:STD_LOGIC;
begin
FAB1 : FullAdder Port map(A(0),B(0),'0',S(0),P(0),G(0));
CG1  : CarryGen port map(P(0),G(0),'0',S0);
FAB2 : FullAdder Port map(A(1),B(1),S0,S(1),P(1),G(1));
CG2  : CarryGen port map(P(1),G(1),S0,S1);
FAB3 : FullAdder Port map(A(2),B(2),S1,S(2),P(2),G(2));
CG3  : CarryGen port map(P(2),G(2),S1,C);
end Behavioral;

