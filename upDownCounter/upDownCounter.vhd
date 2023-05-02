library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity upDownCounter is
    Port ( Clk, reset, up_down : in  STD_LOGIC;
           OP : out  STD_LOGIC_VECTOR (3 downto 0));
end upDownCounter;

architecture Behavioral of upDownCounter is

component JKFF is
    Port ( Clk , J, K, reset : in  STD_LOGIC;
           Q, Qnot : out  STD_LOGIC);
end component;

Signal S1, S2: STD_LOGIC;
Signal Q, Qnot : STD_LOGIC_VECTOR (3 downto 0);

begin
   JKFF0: JKFF Port map (Clk, '1', '1', reset, Q(0), Qnot(0));
	JKFF1: JKFF Port map (Clk, Q(0), Q(0), reset, Q(1), Qnot(1));
	S1<=Q(1) and Q(0);
	JKFF2: JKFF Port map (Clk, S1, S1, reset, Q(2), Qnot(2));
	S2<=Q(2) and S1;
	JKFF3: JKFF Port map (Clk, S2, S2, reset, Q(3), Qnot(3));
	
	 process (Clk, up_down)
    begin
        if rising_edge(Clk)
		  then
            if (up_down = '0')
				then
                OP <= Q;
            else
                OP <= Qnot;
            end if;
        end if;
    end process;
end Behavioral;