--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: X_translate.vhd
-- /___/   /\     Timestamp: Thu Mar 23 15:41:12 2023
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -rpw 100 -tpw 0 -ar Structure -tm X -w -dir netgen/translate -ofmt vhdl -sim X.ngd X_translate.vhd 
-- Device	: 7a100tcsg324-3
-- Input file	: X.ngd
-- Output file	: D:\Study\AUT\Term6\Computer Architecture\VHDL2\Root_Computer\netgen\translate\X_translate.vhd
-- # of Entities	: 1
-- Design Name	: X
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
library SIMPRIM;
use SIMPRIM.VCOMPONENTS.ALL;
use SIMPRIM.VPACKAGE.ALL;

entity X is
  port (
    DI1 : in STD_LOGIC := 'X'; 
    A0 : in STD_LOGIC := 'X'; 
    A1 : in STD_LOGIC := 'X'; 
    A2 : in STD_LOGIC := 'X'; 
    A3 : in STD_LOGIC := 'X'; 
    A4 : in STD_LOGIC := 'X'; 
    PI1 : in STD_LOGIC := 'X'; 
    PI2 : in STD_LOGIC := 'X'; 
    R0 : out STD_LOGIC; 
    R1 : out STD_LOGIC; 
    R2 : out STD_LOGIC; 
    R3 : out STD_LOGIC; 
    R4 : out STD_LOGIC; 
    DO1 : out STD_LOGIC; 
    DO2 : out STD_LOGIC; 
    CO1 : out STD_LOGIC; 
    CO2 : out STD_LOGIC 
  );
end X;

architecture Structure of X is
  signal DO1_OBUF_0 : STD_LOGIC; 
  signal A0_IBUF_1 : STD_LOGIC; 
  signal A1_IBUF_2 : STD_LOGIC; 
  signal A2_IBUF_3 : STD_LOGIC; 
  signal A3_IBUF_4 : STD_LOGIC; 
  signal A4_IBUF_5 : STD_LOGIC; 
  signal PI2_IBUF_6 : STD_LOGIC; 
  signal R1_OBUF_7 : STD_LOGIC; 
  signal CO2_OBUF_8 : STD_LOGIC; 
  signal R0_OBUF_9 : STD_LOGIC; 
  signal CO1_OBUF_10 : STD_LOGIC; 
  signal R3_OBUF_11 : STD_LOGIC; 
  signal R4_OBUF_12 : STD_LOGIC; 
  signal R2_OBUF_13 : STD_LOGIC; 
begin
  CAS_f_fa1_ha2_Mxor_s_xo_0_1 : X_LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      ADR0 => A3_IBUF_4,
      ADR1 => A4_IBUF_5,
      O => R3_OBUF_11
    );
  R01 : X_LUT3
    generic map(
      INIT => X"56"
    )
    port map (
      ADR0 => A0_IBUF_1,
      ADR1 => A1_IBUF_2,
      ADR2 => A2_IBUF_3,
      O => R0_OBUF_9
    );
  CO11 : X_LUT3
    generic map(
      INIT => X"A8"
    )
    port map (
      ADR0 => A0_IBUF_1,
      ADR1 => A1_IBUF_2,
      ADR2 => A2_IBUF_3,
      O => CO1_OBUF_10
    );
  R11 : X_LUT6
    generic map(
      INIT => X"C33CC33CC33C9669"
    )
    port map (
      ADR0 => A2_IBUF_3,
      ADR1 => A1_IBUF_2,
      ADR2 => DO1_OBUF_0,
      ADR3 => PI2_IBUF_6,
      ADR4 => A3_IBUF_4,
      ADR5 => A4_IBUF_5,
      O => R1_OBUF_7
    );
  CO21 : X_LUT6
    generic map(
      INIT => X"1DD11DD11DD10990"
    )
    port map (
      ADR0 => A2_IBUF_3,
      ADR1 => A1_IBUF_2,
      ADR2 => DO1_OBUF_0,
      ADR3 => PI2_IBUF_6,
      ADR4 => A3_IBUF_4,
      ADR5 => A4_IBUF_5,
      O => CO2_OBUF_8
    );
  R21 : X_LUT3
    generic map(
      INIT => X"A9"
    )
    port map (
      ADR0 => A2_IBUF_3,
      ADR1 => A3_IBUF_4,
      ADR2 => A4_IBUF_5,
      O => R2_OBUF_13
    );
  DI1_IBUF : X_BUF
    port map (
      I => DI1,
      O => DO1_OBUF_0
    );
  A0_IBUF : X_BUF
    port map (
      I => A0,
      O => A0_IBUF_1
    );
  A1_IBUF : X_BUF
    port map (
      I => A1,
      O => A1_IBUF_2
    );
  A2_IBUF : X_BUF
    port map (
      I => A2,
      O => A2_IBUF_3
    );
  A3_IBUF : X_BUF
    port map (
      I => A3,
      O => A3_IBUF_4
    );
  A4_IBUF : X_BUF
    port map (
      I => A4,
      O => A4_IBUF_5
    );
  PI2_IBUF : X_BUF
    port map (
      I => PI2,
      O => PI2_IBUF_6
    );
  CAS_g_fa1_ha2_Mxor_s_xo_0_1_INV_0 : X_INV
    port map (
      I => A4_IBUF_5,
      O => R4_OBUF_12
    );
  R0_OBUF : X_OBUF
    port map (
      I => R0_OBUF_9,
      O => R0
    );
  R1_OBUF : X_OBUF
    port map (
      I => R1_OBUF_7,
      O => R1
    );
  R2_OBUF : X_OBUF
    port map (
      I => R2_OBUF_13,
      O => R2
    );
  R3_OBUF : X_OBUF
    port map (
      I => R3_OBUF_11,
      O => R3
    );
  R4_OBUF : X_OBUF
    port map (
      I => R4_OBUF_12,
      O => R4
    );
  DO1_OBUF : X_OBUF
    port map (
      I => DO1_OBUF_0,
      O => DO1
    );
  DO2_OBUF : X_OBUF
    port map (
      I => PI2_IBUF_6,
      O => DO2
    );
  CO1_OBUF : X_OBUF
    port map (
      I => CO1_OBUF_10,
      O => CO1
    );
  CO2_OBUF : X_OBUF
    port map (
      I => CO2_OBUF_8,
      O => CO2
    );
  NlwBlockROC : X_ROC
    generic map (ROC_WIDTH => 100 ns)
    port map (O => GSR);
  NlwBlockTOC : X_TOC
    port map (O => GTS);

end Structure;

