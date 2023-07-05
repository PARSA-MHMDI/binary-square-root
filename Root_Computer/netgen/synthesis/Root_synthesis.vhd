--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: Root_synthesis.vhd
-- /___/   /\     Timestamp: Sun Apr 02 18:38:25 2023
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -ar Structure -tm Root -w -dir netgen/synthesis -ofmt vhdl -sim Root.ngc Root_synthesis.vhd 
-- Device	: xc7a100t-3-csg324
-- Input file	: Root.ngc
-- Output file	: D:\Study\AUT\Term6\Computer Architecture\VHDL2\Root_Computer\netgen\synthesis\Root_synthesis.vhd
-- # of Entities	: 1
-- Design Name	: Root
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

entity Root is
  port (
    A : in STD_LOGIC_VECTOR ( 1 to 16 ); 
    q : out STD_LOGIC_VECTOR ( 1 to 8 ); 
    R : out STD_LOGIC_VECTOR ( 16 downto 1 ) 
  );
end Root;

architecture Structure of Root is
  signal A_1_IBUF_0 : STD_LOGIC; 
  signal A_2_IBUF_1 : STD_LOGIC; 
  signal A_3_IBUF_2 : STD_LOGIC; 
  signal A_4_IBUF_3 : STD_LOGIC; 
  signal A_5_IBUF_4 : STD_LOGIC; 
  signal A_6_IBUF_5 : STD_LOGIC; 
  signal A_7_IBUF_6 : STD_LOGIC; 
  signal A_8_IBUF_7 : STD_LOGIC; 
  signal A_9_IBUF_8 : STD_LOGIC; 
  signal A_10_IBUF_9 : STD_LOGIC; 
  signal A_11_IBUF_10 : STD_LOGIC; 
  signal A_12_IBUF_11 : STD_LOGIC; 
  signal A_13_IBUF_12 : STD_LOGIC; 
  signal A_14_IBUF_13 : STD_LOGIC; 
  signal A_15_IBUF_14 : STD_LOGIC; 
  signal A_16_IBUF_15 : STD_LOGIC; 
  signal R_13_OBUF_24 : STD_LOGIC; 
  signal R_14_OBUF_25 : STD_LOGIC; 
  signal R_15_OBUF_26 : STD_LOGIC; 
  signal R_16_OBUF_27 : STD_LOGIC; 
  signal R_9_OBUF_35 : STD_LOGIC; 
  signal R_10_OBUF_36 : STD_LOGIC; 
  signal R_11_OBUF_38 : STD_LOGIC; 
  signal R_12_OBUF_39 : STD_LOGIC; 
  signal q_8_OBUF_40 : STD_LOGIC; 
  signal R_7_OBUF_41 : STD_LOGIC; 
  signal R_8_OBUF_42 : STD_LOGIC; 
  signal Y1_row4_CAS_h_T : STD_LOGIC; 
  signal Y1_row4_CAS_j_T : STD_LOGIC; 
  signal Y1_row4_Cout_k : STD_LOGIC; 
  signal Y1_row4_R_i : STD_LOGIC; 
  signal Y3_row4_Cout_k : STD_LOGIC; 
  signal Y3_row4_Cout_i : STD_LOGIC; 
  signal Y3_row4_R_i : STD_LOGIC; 
  signal Y2_row4_Cout_k : STD_LOGIC; 
  signal Y2_row4_Cout_i : STD_LOGIC; 
  signal Y2_row4_R_i : STD_LOGIC; 
  signal Y2_row3_CAS_h_T : STD_LOGIC; 
  signal Y2_row3_Cout_k : STD_LOGIC; 
  signal Y2_row3_Cout_i : STD_LOGIC; 
  signal Y2_row3_R_i : STD_LOGIC; 
  signal Y1_row3_CAS_k_fa1_s : STD_LOGIC; 
  signal Y1_row3_CAS_i_fa1_s : STD_LOGIC; 
  signal Y1_row3_CAS_h_T : STD_LOGIC; 
  signal Y1_row3_CAS_j_T : STD_LOGIC; 
  signal Y_row2_CAS_k_fa1_s : STD_LOGIC; 
  signal Y_row2_CAS_i_fa1_s : STD_LOGIC; 
  signal Y_row2_CAS_h_T : STD_LOGIC; 
  signal Y_row2_CAS_j_T : STD_LOGIC; 
  signal X_row4_Cout_e : STD_LOGIC; 
  signal X_row4_R_b : STD_LOGIC; 
  signal X_row3_Cout_e : STD_LOGIC; 
  signal X_row3_R_b : STD_LOGIC; 
  signal X_row2_CAS_d_T : STD_LOGIC; 
  signal X_row1_CAS_d_T : STD_LOGIC; 
  signal R0_X_row : STD_LOGIC_VECTOR ( 4 downto 2 ); 
  signal R1_X_row : STD_LOGIC_VECTOR ( 3 downto 2 ); 
  signal CO1_X_row : STD_LOGIC_VECTOR ( 2 downto 2 ); 
  signal CO2_X_row : STD_LOGIC_VECTOR ( 2 downto 2 ); 
  signal R2_X_row : STD_LOGIC_VECTOR ( 3 downto 3 ); 
  signal CO1_Y2_row : STD_LOGIC_VECTOR ( 4 downto 3 ); 
  signal CO2_Y2_row : STD_LOGIC_VECTOR ( 3 downto 3 ); 
  signal S11_Y2_row : STD_LOGIC_VECTOR ( 4 downto 3 ); 
  signal S21_Y2_row : STD_LOGIC_VECTOR ( 3 downto 3 ); 
  signal S22_Y2_row : STD_LOGIC_VECTOR ( 3 downto 3 ); 
  signal S11_Y3_row : STD_LOGIC_VECTOR ( 4 downto 4 ); 
begin
  X_row4_CAS_f_fa1_ha2_Mxor_s_xo_0_1 : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => A_15_IBUF_14,
      I1 => A_16_IBUF_15,
      O => R_15_OBUF_26
    );
  X_row4_CAS_b_fa1_ha2_Mxor_s_xo_0_1 : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => A_13_IBUF_12,
      I1 => A_14_IBUF_13,
      O => X_row4_R_b
    );
  X_row3_CAS_b_fa1_ha2_Mxor_s_xo_0_1 : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => A_9_IBUF_8,
      I1 => A_10_IBUF_9,
      O => X_row3_R_b
    );
  X_row1_CAS_b_fa1_carrout1 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => A_1_IBUF_0,
      I1 => A_2_IBUF_1,
      O => X_row1_CAS_d_T
    );
  X_row1_CAS_d_fa1_carrout1 : LUT4
    generic map(
      INIT => X"FE54"
    )
    port map (
      I0 => A_2_IBUF_1,
      I1 => A_3_IBUF_2,
      I2 => A_4_IBUF_3,
      I3 => A_1_IBUF_0,
      O => Y_row2_CAS_h_T
    );
  Y1_row4_CAS_j_fa1_carrout1 : LUT3
    generic map(
      INIT => X"E8"
    )
    port map (
      I0 => Y1_row4_Cout_k,
      I1 => Y1_row4_R_i,
      I2 => Y1_row4_CAS_j_T,
      O => q_8_OBUF_40
    );
  Y1_row3_CAS_h_fa1_carrout1 : LUT6
    generic map(
      INIT => X"80A8FEEAFEEA80A8"
    )
    port map (
      I0 => Y1_row3_CAS_h_T,
      I1 => CO1_Y2_row(3),
      I2 => R1_X_row(2),
      I3 => X_row1_CAS_d_T,
      I4 => CO2_X_row(2),
      I5 => Y_row2_CAS_k_fa1_s,
      O => Y1_row3_CAS_j_T
    );
  Y1_row4_CAS_h_fa1_carrout1 : LUT6
    generic map(
      INIT => X"80A8FEEAFEEA80A8"
    )
    port map (
      I0 => Y1_row4_CAS_h_T,
      I1 => CO1_Y2_row(4),
      I2 => S21_Y2_row(3),
      I3 => X_row1_CAS_d_T,
      I4 => CO2_Y2_row(3),
      I5 => Y1_row3_CAS_k_fa1_s,
      O => Y1_row4_CAS_j_T
    );
  Y1_row3_CAS_j_fa1_carrout1 : LUT6
    generic map(
      INIT => X"80A8FEEAFEEA80A8"
    )
    port map (
      I0 => Y1_row3_CAS_j_T,
      I1 => CO2_Y2_row(3),
      I2 => S11_Y2_row(3),
      I3 => X_row1_CAS_d_T,
      I4 => CO1_Y2_row(3),
      I5 => Y1_row3_CAS_i_fa1_s,
      O => Y1_row4_CAS_h_T
    );
  Y1_row4_CAS_j_fa1_ha2_Mxor_s_xo_0_1 : LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => Y1_row4_Cout_k,
      I1 => Y1_row4_R_i,
      I2 => Y1_row4_CAS_j_T,
      O => R_7_OBUF_41
    );
  X_row2_CAS_a_fa1_ha2_Mxor_s_xo_0_1 : LUT3
    generic map(
      INIT => X"A9"
    )
    port map (
      I0 => A_4_IBUF_3,
      I1 => A_5_IBUF_4,
      I2 => A_6_IBUF_5,
      O => R0_X_row(2)
    );
  X_row2_CAS_a_fa1_carrout1 : LUT3
    generic map(
      INIT => X"54"
    )
    port map (
      I0 => A_4_IBUF_3,
      I1 => A_5_IBUF_4,
      I2 => A_6_IBUF_5,
      O => CO1_X_row(2)
    );
  Y2_row3_CAS_j_fa1_carrout1 : LUT4
    generic map(
      INIT => X"8EE8"
    )
    port map (
      I0 => Y2_row3_Cout_k,
      I1 => Y2_row3_R_i,
      I2 => Y1_row3_CAS_j_T,
      I3 => Y_row2_CAS_h_T,
      O => CO2_Y2_row(3)
    );
  Y2_row3_CAS_j_fa1_ha2_Mxor_s_xo_0_1 : LUT4
    generic map(
      INIT => X"6996"
    )
    port map (
      I0 => Y2_row3_R_i,
      I1 => Y_row2_CAS_h_T,
      I2 => Y1_row3_CAS_j_T,
      I3 => Y2_row3_Cout_k,
      O => S21_Y2_row(3)
    );
  Y3_row4_CAS_j_fa1_ha2_Mxor_s_xo_0_1 : LUT4
    generic map(
      INIT => X"6996"
    )
    port map (
      I0 => Y3_row4_Cout_k,
      I1 => Y3_row4_R_i,
      I2 => Y1_row3_CAS_h_T,
      I3 => Y1_row4_CAS_j_T,
      O => R_11_OBUF_38
    );
  Y2_row4_CAS_j_fa1_ha2_Mxor_s_xo_0_1 : LUT4
    generic map(
      INIT => X"6996"
    )
    port map (
      I0 => Y2_row4_R_i,
      I1 => Y_row2_CAS_h_T,
      I2 => Y1_row4_CAS_j_T,
      I3 => Y2_row4_Cout_k,
      O => R_9_OBUF_35
    );
  X_row3_CAS_a_fa1_ha2_Mxor_s_xo_0_1 : LUT3
    generic map(
      INIT => X"A9"
    )
    port map (
      I0 => A_8_IBUF_7,
      I1 => A_10_IBUF_9,
      I2 => A_9_IBUF_8,
      O => R0_X_row(3)
    );
  Y2_row3_CAS_h_fa1_carrout1 : LUT5
    generic map(
      INIT => X"E8E8E88E"
    )
    port map (
      I0 => Y2_row3_CAS_h_T,
      I1 => Y2_row3_Cout_i,
      I2 => A_6_IBUF_5,
      I3 => A_7_IBUF_6,
      I4 => A_8_IBUF_7,
      O => CO1_Y2_row(3)
    );
  Y2_row3_CAS_h_fa1_ha2_Mxor_s_xo_0_1 : LUT5
    generic map(
      INIT => X"96969669"
    )
    port map (
      I0 => A_6_IBUF_5,
      I1 => Y2_row3_Cout_i,
      I2 => Y2_row3_CAS_h_T,
      I3 => A_7_IBUF_6,
      I4 => A_8_IBUF_7,
      O => S11_Y2_row(3)
    );
  X_row3_CAS_e_fa1_ha2_Mxor_s_xo_0_1 : LUT3
    generic map(
      INIT => X"A9"
    )
    port map (
      I0 => A_10_IBUF_9,
      I1 => A_11_IBUF_10,
      I2 => A_12_IBUF_11,
      O => R2_X_row(3)
    );
  X_row3_CAS_e_fa1_carrout1 : LUT3
    generic map(
      INIT => X"54"
    )
    port map (
      I0 => A_10_IBUF_9,
      I1 => A_11_IBUF_10,
      I2 => A_12_IBUF_11,
      O => X_row3_Cout_e
    );
  X_row4_CAS_a_fa1_ha2_Mxor_s_xo_0_1 : LUT3
    generic map(
      INIT => X"A9"
    )
    port map (
      I0 => A_12_IBUF_11,
      I1 => A_13_IBUF_12,
      I2 => A_14_IBUF_13,
      O => R0_X_row(4)
    );
  X_row4_CAS_e_fa1_ha2_Mxor_s_xo_0_1 : LUT3
    generic map(
      INIT => X"A9"
    )
    port map (
      I0 => A_14_IBUF_13,
      I1 => A_15_IBUF_14,
      I2 => A_16_IBUF_15,
      O => R_14_OBUF_25
    );
  X_row4_CAS_e_fa1_carrout1 : LUT3
    generic map(
      INIT => X"54"
    )
    port map (
      I0 => A_14_IBUF_13,
      I1 => A_15_IBUF_14,
      I2 => A_16_IBUF_15,
      O => X_row4_Cout_e
    );
  X_row2_CAS_d_fa1_carrout1 : LUT5
    generic map(
      INIT => X"B1B1B190"
    )
    port map (
      I0 => A_5_IBUF_4,
      I1 => A_6_IBUF_5,
      I2 => X_row2_CAS_d_T,
      I3 => A_7_IBUF_6,
      I4 => A_8_IBUF_7,
      O => CO2_X_row(2)
    );
  X_row2_CAS_d_fa1_ha2_Mxor_s_xo_0_1 : LUT5
    generic map(
      INIT => X"01FEFE01"
    )
    port map (
      I0 => A_6_IBUF_5,
      I1 => A_7_IBUF_6,
      I2 => A_8_IBUF_7,
      I3 => A_5_IBUF_4,
      I4 => X_row2_CAS_d_T,
      O => R1_X_row(2)
    );
  Y2_row4_CAS_h_fa1_carrout1 : LUT4
    generic map(
      INIT => X"8EE8"
    )
    port map (
      I0 => S22_Y2_row(3),
      I1 => Y2_row4_Cout_i,
      I2 => Y1_row4_CAS_h_T,
      I3 => Y_row2_CAS_h_T,
      O => CO1_Y2_row(4)
    );
  Y2_row4_CAS_h_fa1_ha2_Mxor_s_xo_0_1 : LUT4
    generic map(
      INIT => X"6996"
    )
    port map (
      I0 => S22_Y2_row(3),
      I1 => Y2_row4_Cout_i,
      I2 => Y_row2_CAS_h_T,
      I3 => Y1_row4_CAS_h_T,
      O => S11_Y2_row(4)
    );
  Y2_row3_CAS_i_fa1_carrout1 : LUT6
    generic map(
      INIT => X"1110BBB9BBB91110"
    )
    port map (
      I0 => A_7_IBUF_6,
      I1 => A_8_IBUF_7,
      I2 => A_10_IBUF_9,
      I3 => A_9_IBUF_8,
      I4 => Y1_row3_CAS_h_T,
      I5 => Y_row2_CAS_j_T,
      O => Y2_row3_Cout_i
    );
  Y2_row3_CAS_i_fa1_ha2_Mxor_s_xo_0_1 : LUT6
    generic map(
      INIT => X"FE0101FE01FEFE01"
    )
    port map (
      I0 => A_10_IBUF_9,
      I1 => A_8_IBUF_7,
      I2 => A_9_IBUF_8,
      I3 => A_7_IBUF_6,
      I4 => Y1_row3_CAS_h_T,
      I5 => Y_row2_CAS_j_T,
      O => Y2_row3_R_i
    );
  Y3_row4_CAS_i_fa1_carrout1 : LUT6
    generic map(
      INIT => X"1110BBB9BBB91110"
    )
    port map (
      I0 => A_11_IBUF_10,
      I1 => A_12_IBUF_11,
      I2 => A_13_IBUF_12,
      I3 => A_14_IBUF_13,
      I4 => Y1_row3_CAS_j_T,
      I5 => Y1_row4_CAS_h_T,
      O => Y3_row4_Cout_i
    );
  Y3_row4_CAS_i_fa1_ha2_Mxor_s_xo_0_1 : LUT6
    generic map(
      INIT => X"FE0101FE01FEFE01"
    )
    port map (
      I0 => A_12_IBUF_11,
      I1 => A_13_IBUF_12,
      I2 => A_14_IBUF_13,
      I3 => A_11_IBUF_10,
      I4 => Y1_row3_CAS_j_T,
      I5 => Y1_row4_CAS_h_T,
      O => Y3_row4_R_i
    );
  Y_row2_CAS_j_fa1_carrout : LUT6
    generic map(
      INIT => X"80A8FEEAFEEA80A8"
    )
    port map (
      I0 => Y_row2_CAS_j_T,
      I1 => CO2_X_row(2),
      I2 => R0_X_row(2),
      I3 => X_row1_CAS_d_T,
      I4 => CO1_X_row(2),
      I5 => Y_row2_CAS_i_fa1_s,
      O => Y1_row3_CAS_h_T
    );
  A_1_IBUF : IBUF
    port map (
      I => A(1),
      O => A_1_IBUF_0
    );
  A_2_IBUF : IBUF
    port map (
      I => A(2),
      O => A_2_IBUF_1
    );
  A_3_IBUF : IBUF
    port map (
      I => A(3),
      O => A_3_IBUF_2
    );
  A_4_IBUF : IBUF
    port map (
      I => A(4),
      O => A_4_IBUF_3
    );
  A_5_IBUF : IBUF
    port map (
      I => A(5),
      O => A_5_IBUF_4
    );
  A_6_IBUF : IBUF
    port map (
      I => A(6),
      O => A_6_IBUF_5
    );
  A_7_IBUF : IBUF
    port map (
      I => A(7),
      O => A_7_IBUF_6
    );
  A_8_IBUF : IBUF
    port map (
      I => A(8),
      O => A_8_IBUF_7
    );
  A_9_IBUF : IBUF
    port map (
      I => A(9),
      O => A_9_IBUF_8
    );
  A_10_IBUF : IBUF
    port map (
      I => A(10),
      O => A_10_IBUF_9
    );
  A_11_IBUF : IBUF
    port map (
      I => A(11),
      O => A_11_IBUF_10
    );
  A_12_IBUF : IBUF
    port map (
      I => A(12),
      O => A_12_IBUF_11
    );
  A_13_IBUF : IBUF
    port map (
      I => A(13),
      O => A_13_IBUF_12
    );
  A_14_IBUF : IBUF
    port map (
      I => A(14),
      O => A_14_IBUF_13
    );
  A_15_IBUF : IBUF
    port map (
      I => A(15),
      O => A_15_IBUF_14
    );
  A_16_IBUF : IBUF
    port map (
      I => A(16),
      O => A_16_IBUF_15
    );
  q_1_OBUF : OBUF
    port map (
      I => X_row1_CAS_d_T,
      O => q(1)
    );
  q_2_OBUF : OBUF
    port map (
      I => Y_row2_CAS_h_T,
      O => q(2)
    );
  q_3_OBUF : OBUF
    port map (
      I => Y_row2_CAS_j_T,
      O => q(3)
    );
  q_4_OBUF : OBUF
    port map (
      I => Y1_row3_CAS_h_T,
      O => q(4)
    );
  q_5_OBUF : OBUF
    port map (
      I => Y1_row3_CAS_j_T,
      O => q(5)
    );
  q_6_OBUF : OBUF
    port map (
      I => Y1_row4_CAS_h_T,
      O => q(6)
    );
  q_7_OBUF : OBUF
    port map (
      I => Y1_row4_CAS_j_T,
      O => q(7)
    );
  q_8_OBUF : OBUF
    port map (
      I => q_8_OBUF_40,
      O => q(8)
    );
  R_16_OBUF : OBUF
    port map (
      I => R_16_OBUF_27,
      O => R(16)
    );
  R_15_OBUF : OBUF
    port map (
      I => R_15_OBUF_26,
      O => R(15)
    );
  R_14_OBUF : OBUF
    port map (
      I => R_14_OBUF_25,
      O => R(14)
    );
  R_13_OBUF : OBUF
    port map (
      I => R_13_OBUF_24,
      O => R(13)
    );
  R_12_OBUF : OBUF
    port map (
      I => R_12_OBUF_39,
      O => R(12)
    );
  R_11_OBUF : OBUF
    port map (
      I => R_11_OBUF_38,
      O => R(11)
    );
  R_10_OBUF : OBUF
    port map (
      I => R_10_OBUF_36,
      O => R(10)
    );
  R_9_OBUF : OBUF
    port map (
      I => R_9_OBUF_35,
      O => R(9)
    );
  R_8_OBUF : OBUF
    port map (
      I => R_8_OBUF_42,
      O => R(8)
    );
  R_7_OBUF : OBUF
    port map (
      I => R_7_OBUF_41,
      O => R(7)
    );
  Y_row2_CAS_i_fa1_ha1_Mxor_s_xo_0_1 : LUT4
    generic map(
      INIT => X"9693"
    )
    port map (
      I0 => A_4_IBUF_3,
      I1 => A_1_IBUF_0,
      I2 => A_3_IBUF_2,
      I3 => A_2_IBUF_1,
      O => Y_row2_CAS_i_fa1_s
    );
  Y_row2_CAS_k_fa1_ha1_Mxor_s_xo_0_1 : LUT6
    generic map(
      INIT => X"A99A999699959666"
    )
    port map (
      I0 => R0_X_row(2),
      I1 => A_2_IBUF_1,
      I2 => A_4_IBUF_3,
      I3 => A_3_IBUF_2,
      I4 => CO1_X_row(2),
      I5 => A_1_IBUF_0,
      O => Y_row2_CAS_k_fa1_s
    );
  Y1_row4_CAS_i_fa1_ha2_Mxor_s_xo_0_1 : LUT6
    generic map(
      INIT => X"7E1881E781E77E18"
    )
    port map (
      I0 => S22_Y2_row(3),
      I1 => Y2_row4_Cout_i,
      I2 => Y1_row4_CAS_h_T,
      I3 => Y_row2_CAS_h_T,
      I4 => S21_Y2_row(3),
      I5 => X_row1_CAS_d_T,
      O => Y1_row4_R_i
    );
  Y2_row3_CAS_k_fa1_carrout1 : LUT6
    generic map(
      INIT => X"BE2E2E28BEB8B828"
    )
    port map (
      I0 => R0_X_row(3),
      I1 => Y_row2_CAS_j_T,
      I2 => Y1_row3_CAS_j_T,
      I3 => X_row3_Cout_e,
      I4 => X_row3_R_b,
      I5 => Y1_row3_CAS_h_T,
      O => Y2_row3_Cout_k
    );
  Y2_row3_CAS_k_fa1_ha2_Mxor_s_xo_0_1 : LUT6
    generic map(
      INIT => X"7E1881E781E77E18"
    )
    port map (
      I0 => X_row3_Cout_e,
      I1 => X_row3_R_b,
      I2 => Y1_row3_CAS_j_T,
      I3 => Y1_row3_CAS_h_T,
      I4 => R0_X_row(3),
      I5 => Y_row2_CAS_j_T,
      O => S22_Y2_row(3)
    );
  Y3_row4_CAS_k_fa1_carrout1 : LUT6
    generic map(
      INIT => X"BE2E2E28BEB8B828"
    )
    port map (
      I0 => R0_X_row(4),
      I1 => Y1_row3_CAS_j_T,
      I2 => Y1_row4_CAS_j_T,
      I3 => X_row4_Cout_e,
      I4 => X_row4_R_b,
      I5 => Y1_row4_CAS_h_T,
      O => Y3_row4_Cout_k
    );
  Y3_row4_CAS_k_fa1_ha2_Mxor_s_xo_0_1 : LUT6
    generic map(
      INIT => X"7E1881E781E77E18"
    )
    port map (
      I0 => X_row4_Cout_e,
      I1 => X_row4_R_b,
      I2 => Y1_row4_CAS_j_T,
      I3 => Y1_row4_CAS_h_T,
      I4 => R0_X_row(4),
      I5 => Y1_row3_CAS_j_T,
      O => R_12_OBUF_39
    );
  Y2_row4_CAS_k_fa1_carrout1 : LUT6
    generic map(
      INIT => X"BE2E2E28BEB8B828"
    )
    port map (
      I0 => S11_Y3_row(4),
      I1 => Y_row2_CAS_j_T,
      I2 => Y1_row4_CAS_j_T,
      I3 => Y3_row4_Cout_k,
      I4 => Y3_row4_R_i,
      I5 => Y1_row3_CAS_h_T,
      O => Y2_row4_Cout_k
    );
  Y2_row4_CAS_k_fa1_ha2_Mxor_s_xo_0_1 : LUT6
    generic map(
      INIT => X"7E1881E781E77E18"
    )
    port map (
      I0 => Y3_row4_Cout_k,
      I1 => Y3_row4_R_i,
      I2 => Y1_row4_CAS_j_T,
      I3 => Y1_row3_CAS_h_T,
      I4 => S11_Y3_row(4),
      I5 => Y_row2_CAS_j_T,
      O => R_10_OBUF_36
    );
  Y1_row4_CAS_k_fa1_carrout1 : LUT6
    generic map(
      INIT => X"BE2E2E28BEB8B828"
    )
    port map (
      I0 => S11_Y2_row(4),
      I1 => X_row1_CAS_d_T,
      I2 => Y1_row4_CAS_j_T,
      I3 => Y2_row4_Cout_k,
      I4 => Y2_row4_R_i,
      I5 => Y_row2_CAS_h_T,
      O => Y1_row4_Cout_k
    );
  Y1_row4_CAS_k_fa1_ha2_Mxor_s_xo_0_1 : LUT6
    generic map(
      INIT => X"7E1881E781E77E18"
    )
    port map (
      I0 => Y2_row4_Cout_k,
      I1 => Y2_row4_R_i,
      I2 => Y1_row4_CAS_j_T,
      I3 => Y_row2_CAS_h_T,
      I4 => S11_Y2_row(4),
      I5 => X_row1_CAS_d_T,
      O => R_8_OBUF_42
    );
  Y2_row4_CAS_i_fa1_carrout1 : LUT6
    generic map(
      INIT => X"BE2E2E28BEB8B828"
    )
    port map (
      I0 => R1_X_row(3),
      I1 => Y_row2_CAS_j_T,
      I2 => Y1_row4_CAS_h_T,
      I3 => R2_X_row(3),
      I4 => Y3_row4_Cout_i,
      I5 => Y1_row3_CAS_h_T,
      O => Y2_row4_Cout_i
    );
  Y2_row4_CAS_i_fa1_ha2_Mxor_s_xo_0_1 : LUT6
    generic map(
      INIT => X"7E1881E781E77E18"
    )
    port map (
      I0 => R2_X_row(3),
      I1 => Y3_row4_Cout_i,
      I2 => Y1_row4_CAS_h_T,
      I3 => Y1_row3_CAS_h_T,
      I4 => R1_X_row(3),
      I5 => Y_row2_CAS_j_T,
      O => Y2_row4_R_i
    );
  Y2_row3_CAS_h_Mxor_T_xo_0_1 : LUT5
    generic map(
      INIT => X"3336999C"
    )
    port map (
      I0 => A_2_IBUF_1,
      I1 => Y1_row3_CAS_h_T,
      I2 => A_4_IBUF_3,
      I3 => A_3_IBUF_2,
      I4 => A_1_IBUF_0,
      O => Y2_row3_CAS_h_T
    );
  Y1_row3_CAS_i_fa1_ha1_Mxor_s_xo_0_1 : LUT4
    generic map(
      INIT => X"E11E"
    )
    port map (
      I0 => A_2_IBUF_1,
      I1 => A_1_IBUF_0,
      I2 => R1_X_row(2),
      I3 => Y1_row3_CAS_h_T,
      O => Y1_row3_CAS_i_fa1_s
    );
  Y1_row3_CAS_k_fa1_ha1_Mxor_s_xo_0_1 : LUT4
    generic map(
      INIT => X"E11E"
    )
    port map (
      I0 => A_2_IBUF_1,
      I1 => A_1_IBUF_0,
      I2 => S11_Y2_row(3),
      I3 => Y1_row3_CAS_j_T,
      O => Y1_row3_CAS_k_fa1_s
    );
  Y3_row4_CAS_h_fa1_ha2_Mxor_s_xo_0_1 : LUT6
    generic map(
      INIT => X"6996699669969669"
    )
    port map (
      I0 => Y3_row4_Cout_i,
      I1 => Y1_row3_CAS_h_T,
      I2 => A_10_IBUF_9,
      I3 => Y1_row4_CAS_h_T,
      I4 => A_11_IBUF_10,
      I5 => A_12_IBUF_11,
      O => S11_Y3_row(4)
    );
  Y_row2_CAS_h_fa1_carrout1 : LUT6
    generic map(
      INIT => X"FAFAFAE81B1B1B18"
    )
    port map (
      I0 => A_3_IBUF_2,
      I1 => A_4_IBUF_3,
      I2 => A_1_IBUF_0,
      I3 => A_6_IBUF_5,
      I4 => A_5_IBUF_4,
      I5 => A_2_IBUF_1,
      O => Y_row2_CAS_j_T
    );
  X_row2_CAS_d_Mxor_T_xo_0_1 : LUT6
    generic map(
      INIT => X"5555555799999994"
    )
    port map (
      I0 => A_2_IBUF_1,
      I1 => A_3_IBUF_2,
      I2 => A_4_IBUF_3,
      I3 => A_5_IBUF_4,
      I4 => A_6_IBUF_5,
      I5 => A_1_IBUF_0,
      O => X_row2_CAS_d_T
    );
  X_row3_CAS_d_fa1_ha2_Mxor_s_xo_0_1 : LUT6
    generic map(
      INIT => X"FE0101FE01FEFE01"
    )
    port map (
      I0 => A_10_IBUF_9,
      I1 => A_12_IBUF_11,
      I2 => A_11_IBUF_10,
      I3 => Y1_row3_CAS_h_T,
      I4 => Y1_row3_CAS_j_T,
      I5 => A_9_IBUF_8,
      O => R1_X_row(3)
    );
  X_row4_CAS_d_fa1_ha2_Mxor_s_xo_0_1 : LUT6
    generic map(
      INIT => X"FE0101FE01FEFE01"
    )
    port map (
      I0 => A_14_IBUF_13,
      I1 => A_16_IBUF_15,
      I2 => A_15_IBUF_14,
      I3 => Y1_row4_CAS_h_T,
      I4 => Y1_row4_CAS_j_T,
      I5 => A_13_IBUF_12,
      O => R_13_OBUF_24
    );
  X_row4_CAS_g_fa1_ha2_Mxor_s_xo_0_1_INV_0 : INV
    port map (
      I => A_16_IBUF_15,
      O => R_16_OBUF_27
    );

end Structure;

