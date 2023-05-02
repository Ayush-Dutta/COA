library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity SRFF_ST is
    Port ( S, R, Clk : in  STD_LOGIC;
           Q, Qnot : inout  STD_LOGIC);
end SRFF_ST;

architecture Behavioral of SRFF_ST is

component nand_gate is
    Port ( A, B : in  STD_LOGIC;
            C : out  STD_LOGIC);
end component;

signal S1, S2: STD_LOGIC;

begin
        nand1: nand_gate Port map(S, Clk, S1);
        nand2: nand_gate Port map(R, Clk, S2);
        nand3: nand_gate Port map(S1, Qnot, Q);
        nand4: nand_gate Port map(S2, Q, Qnot);
end Behavioral;