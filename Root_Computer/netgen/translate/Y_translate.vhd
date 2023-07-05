--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: Y_translate.vhd
-- /___/   /\     Timestamp: Thu Mar 23 15:42:47 2023
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -rpw 100 -tpw 0 -ar Structure -tm Y -w -dir netgen/translate -ofmt vhdl -sim Y.ngd Y_translate.vhd 
-- Device	: 7a100tcsg324-3
-- Input file	: Y.ngd
-- Output file	: D:\Study\AUT\Term6\Computer Architecture\VHDL2\Root_Computer\netgen\translate\Y_translate.vhd
-- # of Entities	: 1
-- Design Name	: Y
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

entity Y is
  port (
    DI1 : in STD_LOGIC := 'X'; 
    DI2 : in STD_LOGIC := 'X'; 
    A11 : in STD_LOGIC := 'X'; 
    A12 : in STD_LOGIC := 'X'; 
    A22 : in STD_LOGIC := 'X'; 
    PI1 : in STD_LOGIC := 'X'; 
    PI2 : in STD_LOGIC := 'X'; 
    CI1 : in STD_LOGIC := 'X'; 
    CI2 : in STD_LOGIC := 'X'; 
    CO1 : out STD_LOGIC; 
    CO2 : out STD_LOGIC; 
    PO1 : out STD_LOGIC; 
    PO2 : out STD_LOGIC; 
    DO1 : out STD_LOGIC; 
    DO2 : out STD_LOGIC; 
    S11 : out STD_LOGIC; 
    S21 : out STD_LOGIC; 
    S22 : out STD_LOGIC 
  );
end Y;

architecture Structure of Y is
  signal DO1_OBUF_0 : STD_LOGIC; 
  signal DO2_OBUF_1 : STD_LOGIC; 
  signal A11_IBUF_2 : STD_LOGIC; 
  signal A12_IBUF_3 : STD_LOGIC; 
  signal A22_IBUF_4 : STD_LOGIC; 
  signal PI1_IBUF_5 : STD_LOGIC; 
  signal PI2_IBUF_6 : STD_LOGIC; 
  signal CI1_IBUF_7 : STD_LOGIC; 
  signal CI2_IBUF_8 : STD_LOGIC; 
  signal S11_OBUF_9 : STD_LOGIC; 
  signal CO1_OBUF_10 : STD_LOGIC; 
  signal S21_OBUF_11 : STD_LOGIC; 
  signal CO2_OBUF_12 : STD_LOGIC; 
  signal R_i : STD_LOGIC; 
  signal S22_OBUF_14 : STD_LOGIC; 
begin
  CAS_i_fa1_ha2_Mxor_s_xo_0_1 : X_LUT4
    generic map(
      INIT => X"6996"
    )
    port map (
      ADR0 => A12_IBUF_3,
      ADR1 => CI1_IBUF_7,
      ADR2 => DO2_OBUF_1,
      ADR3 => PI1_IBUF_5,
      O => R_i
    );
  CAS_k_fa1_ha2_Mxor_s_xo_0_1 : X_LUT4
    generic map(
      INIT => X"6996"
    )
    port map (
      ADR0 => A22_IBUF_4,
      ADR1 => CI2_IBUF_8,
      ADR2 => DO2_OBUF_1,
      ADR3 => PI2_IBUF_6,
      O => S22_OBUF_14
    );
  DI1_IBUF : X_BUF
    port map (
      I => DI1,
      O => DO1_OBUF_0
    );
  DI2_IBUF : X_BUF
    port map (
      I => DI2,
      O => DO2_OBUF_1
    );
  A11_IBUF : X_BUF
    port map (
      I => A11,
      O => A11_IBUF_2
    );
  A12_IBUF : X_BUF
    port map (
      I => A12,
      O => A12_IBUF_3
    );
  A22_IBUF : X_BUF
    port map (
      I => A22,
      O => A22_IBUF_4
    );
  PI1_IBUF : X_BUF
    port map (
      I => PI1,
      O => PI1_IBUF_5
    );
  PI2_IBUF : X_BUF
    port map (
      I => PI2,
      O => PI2_IBUF_6
    );
  CI1_IBUF : X_BUF
    port map (
      I => CI1,
      O => CI1_IBUF_7
    );
  CI2_IBUF : X_BUF
    port map (
      I => CI2,
      O => CI2_IBUF_8
    );
  CAS_j_fa1_carrout1 : X_LUT6
    generic map(
      INIT => X"8EFF00E8FFE88E00"
    )
    port map (
      ADR0 => A22_IBUF_4,
      ADR1 => CI2_IBUF_8,
      ADR2 => DO2_OBUF_1,
      ADR3 => PI2_IBUF_6,
      ADR4 => R_i,
      ADR5 => DO1_OBUF_0,
      O => CO2_OBUF_12
    );
  CAS_j_fa1_ha2_Mxor_s_xo_0_1 : X_LUT6
    generic map(
      INIT => X"71E88E178E1771E8"
    )
    port map (
      ADR0 => A22_IBUF_4,
      ADR1 => CI2_IBUF_8,
      ADR2 => DO2_OBUF_1,
      ADR3 => PI2_IBUF_6,
      ADR4 => DO1_OBUF_0,
      ADR5 => R_i,
      O => S21_OBUF_11
    );
  CAS_h_fa1_carrout1 : X_LUT6
    generic map(
      INIT => X"8EFF00E8FFE88E00"
    )
    port map (
      ADR0 => A12_IBUF_3,
      ADR1 => CI1_IBUF_7,
      ADR2 => DO2_OBUF_1,
      ADR3 => PI1_IBUF_5,
      ADR4 => A11_IBUF_2,
      ADR5 => DO1_OBUF_0,
      O => CO1_OBUF_10
    );
  CAS_h_fa1_ha2_Mxor_s_xo_0_1 : X_LUT6
    generic map(
      INIT => X"71E88E178E1771E8"
    )
    port map (
      ADR0 => A12_IBUF_3,
      ADR1 => CI1_IBUF_7,
      ADR2 => DO2_OBUF_1,
      ADR3 => PI1_IBUF_5,
      ADR4 => A11_IBUF_2,
      ADR5 => DO1_OBUF_0,
      O => S11_OBUF_9
    );
  CO1_OBUF : X_OBUF
    port map (
      I => CO1_OBUF_10,
      O => CO1
    );
  CO2_OBUF : X_OBUF
    port map (
      I => CO2_OBUF_12,
      O => CO2
    );
  PO1_OBUF : X_OBUF
    port map (
      I => PI1_IBUF_5,
      O => PO1
    );
  PO2_OBUF : X_OBUF
    port map (
      I => PI2_IBUF_6,
      O => PO2
    );
  DO1_OBUF : X_OBUF
    port map (
      I => DO1_OBUF_0,
      O => DO1
    );
  DO2_OBUF : X_OBUF
    port map (
      I => DO2_OBUF_1,
      O => DO2
    );
  S11_OBUF : X_OBUF
    port map (
      I => S11_OBUF_9,
      O => S11
    );
  S21_OBUF : X_OBUF
    port map (
      I => S21_OBUF_11,
      O => S21
    );
  S22_OBUF : X_OBUF
    port map (
      I => S22_OBUF_14,
      O => S22
    );
  NlwBlockROC : X_ROC
    generic map (ROC_WIDTH => 100 ns)
    port map (O => GSR);
  NlwBlockTOC : X_TOC
    port map (O => GTS);

end Structure;

