--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: VII_Seg_Disp_synthesis.vhd
-- /___/   /\     Timestamp: Sun Jan 29 00:47:13 2023
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -ar Structure -tm VII_Seg_Disp -w -dir netgen/synthesis -ofmt vhdl -sim VII_Seg_Disp.ngc VII_Seg_Disp_synthesis.vhd 
-- Device	: xc3s100e-5-vq100
-- Input file	: VII_Seg_Disp.ngc
-- Output file	: C:\COA\VII_Seg_Diap\netgen\synthesis\VII_Seg_Disp_synthesis.vhd
-- # of Entities	: 1
-- Design Name	: VII_Seg_Disp
-- Xilinx	: C:\Xilinx\14.7\ISE_DS\ISE\
--             
-- Purpose:    
--     This VHDL netlist is a verification model and uses simulation 
--     primitives which may not represent the true implementation of the 
--     device, however the netlist is functionally correct and should not 
--     be modified. This file cannot be synthesized and should only be used 
--     with supported simulation tools.
--             
-- Reference:  
--     Command Line Tools User Guide, Chapter 23
--     Synthesis and Simulation Design Guide, Chapter 6
--             
--------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
use UNISIM.VPKG.ALL;

entity VII_Seg_Disp is
  port (
    b : out STD_LOGIC_VECTOR ( 6 downto 0 ); 
    a : in STD_LOGIC_VECTOR ( 3 downto 0 ) 
  );
end VII_Seg_Disp;

architecture Structure of VII_Seg_Disp is
  signal a_0_IBUF_4 : STD_LOGIC; 
  signal a_1_IBUF_5 : STD_LOGIC; 
  signal a_2_IBUF_6 : STD_LOGIC; 
  signal a_3_IBUF_7 : STD_LOGIC; 
  signal b_0_OBUF_15 : STD_LOGIC; 
  signal b_1_OBUF_16 : STD_LOGIC; 
  signal b_2_OBUF_17 : STD_LOGIC; 
  signal b_3_OBUF_18 : STD_LOGIC; 
  signal b_4_OBUF_19 : STD_LOGIC; 
  signal b_5_OBUF_20 : STD_LOGIC; 
  signal b_6_OBUF_21 : STD_LOGIC; 
begin
  Mrom_b41 : LUT4
    generic map(
      INIT => X"0145"
    )
    port map (
      I0 => a_0_IBUF_4,
      I1 => a_1_IBUF_5,
      I2 => a_2_IBUF_6,
      I3 => a_3_IBUF_7,
      O => b_4_OBUF_19
    );
  Mrom_b21 : LUT4
    generic map(
      INIT => X"545F"
    )
    port map (
      I0 => a_3_IBUF_7,
      I1 => a_0_IBUF_4,
      I2 => a_2_IBUF_6,
      I3 => a_1_IBUF_5,
      O => b_2_OBUF_17
    );
  Mrom_b111 : LUT4
    generic map(
      INIT => X"2177"
    )
    port map (
      I0 => a_1_IBUF_5,
      I1 => a_3_IBUF_7,
      I2 => a_0_IBUF_4,
      I3 => a_2_IBUF_6,
      O => b_1_OBUF_16
    );
  Mrom_b61 : LUT4
    generic map(
      INIT => X"3627"
    )
    port map (
      I0 => a_1_IBUF_5,
      I1 => a_3_IBUF_7,
      I2 => a_2_IBUF_6,
      I3 => a_0_IBUF_4,
      O => b_6_OBUF_21
    );
  Mrom_b51 : LUT4
    generic map(
      INIT => X"130D"
    )
    port map (
      I0 => a_0_IBUF_4,
      I1 => a_3_IBUF_7,
      I2 => a_1_IBUF_5,
      I3 => a_2_IBUF_6,
      O => b_5_OBUF_20
    );
  Mrom_b11 : LUT4
    generic map(
      INIT => X"1636"
    )
    port map (
      I0 => a_2_IBUF_6,
      I1 => a_3_IBUF_7,
      I2 => a_1_IBUF_5,
      I3 => a_0_IBUF_4,
      O => b_0_OBUF_15
    );
  Mrom_b31 : LUT4
    generic map(
      INIT => X"161B"
    )
    port map (
      I0 => a_1_IBUF_5,
      I1 => a_2_IBUF_6,
      I2 => a_3_IBUF_7,
      I3 => a_0_IBUF_4,
      O => b_3_OBUF_18
    );
  a_3_IBUF : IBUF
    port map (
      I => a(3),
      O => a_3_IBUF_7
    );
  a_2_IBUF : IBUF
    port map (
      I => a(2),
      O => a_2_IBUF_6
    );
  a_1_IBUF : IBUF
    port map (
      I => a(1),
      O => a_1_IBUF_5
    );
  a_0_IBUF : IBUF
    port map (
      I => a(0),
      O => a_0_IBUF_4
    );
  b_6_OBUF : OBUF
    port map (
      I => b_6_OBUF_21,
      O => b(6)
    );
  b_5_OBUF : OBUF
    port map (
      I => b_5_OBUF_20,
      O => b(5)
    );
  b_4_OBUF : OBUF
    port map (
      I => b_4_OBUF_19,
      O => b(4)
    );
  b_3_OBUF : OBUF
    port map (
      I => b_3_OBUF_18,
      O => b(3)
    );
  b_2_OBUF : OBUF
    port map (
      I => b_2_OBUF_17,
      O => b(2)
    );
  b_1_OBUF : OBUF
    port map (
      I => b_1_OBUF_16,
      O => b(1)
    );
  b_0_OBUF : OBUF
    port map (
      I => b_0_OBUF_15,
      O => b(0)
    );

end Structure;

