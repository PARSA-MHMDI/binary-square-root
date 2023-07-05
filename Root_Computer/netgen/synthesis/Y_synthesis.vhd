--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: Y_synthesis.vhd
-- /___/   /\     Timestamp: Tue Mar 21 16:31:45 2023
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -ar Structure -tm Y -w -dir netgen/synthesis -ofmt vhdl -sim Y.ngc Y_synthesis.vhd 
-- Device	: xc7a100t-3-csg324
-- Input file	: Y.ngc
-- Output file	: D:\Study\AUT\Term6\Computer Architecture\VHDL2\Root_Computer\netgen\synthesis\Y_synthesis.vhd
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
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
use UNISIM.VPKG.ALL;

entity Y is
  port (
    DI1 : in STD_LOGIC := 'X'; 
    DI2 : in STD_LOGIC := 'X'; 
    A11 : in STD_LOGIC := 'X'; 
    A12 : in STD_LOGIC := 'X'; 
    PI1 : in STD_LOGIC := 'X'; 
    PI2 : in STD_LOGIC := 'X'; 
    CI1 : in STD_LOGIC := 'X'; 
    CI2 : in STD_LOGIC := 'X'; 
    A22 : in STD_LOGIC := 'X'; 
    CO1 : out STD_LOGIC; 
    CO2 : out STD_LOGIC; 
    S11 : out STD_LOGIC; 
    PO1 : out STD_LOGIC; 
    PO2 : out STD_LOGIC; 
    DO1 : out STD_LOGIC; 
    S21 : out STD_LOGIC; 
    DO2 : out STD_LOGIC; 
    S22 : out STD_LOGIC 
  );
end Y;

architecture Structure of Y is
  signal DO1_OBUF_0 : STD_LOGIC; 
  signal DO2_OBUF_1 : STD_LOGIC; 
  signal A11_IBUF_2 : STD_LOGIC; 
  signal A12_IBUF_3 : STD_LOGIC; 
  signal PI1_IBUF_4 : STD_LOGIC; 
  signal PI2_IBUF_5 : STD_LOGIC; 
  signal CI1_IBUF_6 : STD_LOGIC; 
  signal CI2_IBUF_7 : STD_LOGIC; 
  signal A22_IBUF_8 : STD_LOGIC; 
  signal S11_OBUF_9 : STD_LOGIC; 
  signal CO1_OBUF_10 : STD_LOGIC; 
  signal S21_OBUF_11 : STD_LOGIC; 
  signal CO2_OBUF_12 : STD_LOGIC; 
  signal R_i : STD_LOGIC; 
  signal S22_OBUF_14 : STD_LOGIC; 
begin
  CAS_i_fa1_ha2_Mxor_s_xo_0_1 : LUT4
    generic map(
      INIT => X"6996"
    )
    port map (
      I0 => A12_IBUF_3,
      I1 => CI1_IBUF_6,
      I2 => DO2_OBUF_1,
      I3 => PI1_IBUF_4,
      O => R_i
    );
  CAS_k_fa1_ha2_Mxor_s_xo_0_1 : LUT4
    generic map(
      INIT => X"6996"
    )
    port map (
      I0 => A22_IBUF_8,
      I1 => CI2_IBUF_7,
      I2 => DO2_OBUF_1,
      I3 => PI2_IBUF_5,
      O => S22_OBUF_14
    );
  DI1_IBUF : IBUF
    port map (
      I => DI1,
      O => DO1_OBUF_0
    );
  DI2_IBUF : IBUF
    port map (
      I => DI2,
      O => DO2_OBUF_1
    );
  A11_IBUF : IBUF
    port map (
      I => A11,
      O => A11_IBUF_2
    );
  A12_IBUF : IBUF
    port map (
      I => A12,
      O => A12_IBUF_3
    );
  PI1_IBUF : IBUF
    port map (
      I => PI1,
      O => PI1_IBUF_4
    );
  PI2_IBUF : IBUF
    port map (
      I => PI2,
      O => PI2_IBUF_5
    );
  CI1_IBUF : IBUF
    port map (
      I => CI1,
      O => CI1_IBUF_6
    );
  CI2_IBUF : IBUF
    port map (
      I => CI2,
      O => CI2_IBUF_7
    );
  A22_IBUF : IBUF
    port map (
      I => A22,
      O => A22_IBUF_8
    );
  CO1_OBUF : OBUF
    port map (
      I => CO1_OBUF_10,
      O => CO1
    );
  CO2_OBUF : OBUF
    port map (
      I => CO2_OBUF_12,
      O => CO2
    );
  S11_OBUF : OBUF
    port map (
      I => S11_OBUF_9,
      O => S11
    );
  PO1_OBUF : OBUF
    port map (
      I => PI1_IBUF_4,
      O => PO1
    );
  PO2_OBUF : OBUF
    port map (
      I => PI2_IBUF_5,
      O => PO2
    );
  DO1_OBUF : OBUF
    port map (
      I => DO1_OBUF_0,
      O => DO1
    );
  S21_OBUF : OBUF
    port map (
      I => S21_OBUF_11,
      O => S21
    );
  DO2_OBUF : OBUF
    port map (
      I => DO2_OBUF_1,
      O => DO2
    );
  S22_OBUF : OBUF
    port map (
      I => S22_OBUF_14,
      O => S22
    );
  CAS_j_fa1_carrout1 : LUT6
    generic map(
      INIT => X"8EFF00E8FFE88E00"
    )
    port map (
      I0 => A22_IBUF_8,
      I1 => CI2_IBUF_7,
      I2 => DO2_OBUF_1,
      I3 => PI2_IBUF_5,
      I4 => R_i,
      I5 => DO1_OBUF_0,
      O => CO2_OBUF_12
    );
  CAS_j_fa1_ha2_Mxor_s_xo_0_1 : LUT6
    generic map(
      INIT => X"71E88E178E1771E8"
    )
    port map (
      I0 => A22_IBUF_8,
      I1 => CI2_IBUF_7,
      I2 => DO2_OBUF_1,
      I3 => PI2_IBUF_5,
      I4 => DO1_OBUF_0,
      I5 => R_i,
      O => S21_OBUF_11
    );
  CAS_h_fa1_carrout1 : LUT6
    generic map(
      INIT => X"8EFF00E8FFE88E00"
    )
    port map (
      I0 => A12_IBUF_3,
      I1 => CI1_IBUF_6,
      I2 => DO2_OBUF_1,
      I3 => PI1_IBUF_4,
      I4 => A11_IBUF_2,
      I5 => DO1_OBUF_0,
      O => CO1_OBUF_10
    );
  CAS_h_fa1_ha2_Mxor_s_xo_0_1 : LUT6
    generic map(
      INIT => X"71E88E178E1771E8"
    )
    port map (
      I0 => A12_IBUF_3,
      I1 => CI1_IBUF_6,
      I2 => DO2_OBUF_1,
      I3 => PI1_IBUF_4,
      I4 => A11_IBUF_2,
      I5 => DO1_OBUF_0,
      O => S11_OBUF_9
    );

end Structure;

