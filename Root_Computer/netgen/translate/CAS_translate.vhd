--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: CAS_translate.vhd
-- /___/   /\     Timestamp: Thu Mar 23 15:39:48 2023
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -rpw 100 -tpw 0 -ar Structure -tm CAS -w -dir netgen/translate -ofmt vhdl -sim CAS.ngd CAS_translate.vhd 
-- Device	: 7a100tcsg324-3
-- Input file	: CAS.ngd
-- Output file	: D:\Study\AUT\Term6\Computer Architecture\VHDL2\Root_Computer\netgen\translate\CAS_translate.vhd
-- # of Entities	: 1
-- Design Name	: CAS
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

entity CAS is
  port (
    Pin : in STD_LOGIC := 'X'; 
    Din : in STD_LOGIC := 'X'; 
    X : in STD_LOGIC := 'X'; 
    Cin : in STD_LOGIC := 'X'; 
    Pout : out STD_LOGIC; 
    R : out STD_LOGIC; 
    Dout : out STD_LOGIC; 
    Cout : out STD_LOGIC 
  );
end CAS;

architecture Structure of CAS is
  signal Pout_OBUF_0 : STD_LOGIC; 
  signal Dout_OBUF_1 : STD_LOGIC; 
  signal X_IBUF_2 : STD_LOGIC; 
  signal Cin_IBUF_3 : STD_LOGIC; 
  signal R_OBUF_4 : STD_LOGIC; 
  signal Cout_OBUF_5 : STD_LOGIC; 
begin
  R1 : X_LUT4
    generic map(
      INIT => X"6996"
    )
    port map (
      ADR0 => Cin_IBUF_3,
      ADR1 => X_IBUF_2,
      ADR2 => Dout_OBUF_1,
      ADR3 => Pout_OBUF_0,
      O => R_OBUF_4
    );
  Cout1 : X_LUT4
    generic map(
      INIT => X"8EE8"
    )
    port map (
      ADR0 => Cin_IBUF_3,
      ADR1 => X_IBUF_2,
      ADR2 => Dout_OBUF_1,
      ADR3 => Pout_OBUF_0,
      O => Cout_OBUF_5
    );
  Pin_IBUF : X_BUF
    port map (
      I => Pin,
      O => Pout_OBUF_0
    );
  Din_IBUF : X_BUF
    port map (
      I => Din,
      O => Dout_OBUF_1
    );
  X_IBUF : X_BUF
    port map (
      I => X,
      O => X_IBUF_2
    );
  Cin_IBUF : X_BUF
    port map (
      I => Cin,
      O => Cin_IBUF_3
    );
  Pout_OBUF : X_OBUF
    port map (
      I => Pout_OBUF_0,
      O => Pout
    );
  R_OBUF : X_OBUF
    port map (
      I => R_OBUF_4,
      O => R
    );
  Dout_OBUF : X_OBUF
    port map (
      I => Dout_OBUF_1,
      O => Dout
    );
  Cout_OBUF : X_OBUF
    port map (
      I => Cout_OBUF_5,
      O => Cout
    );
  NlwBlockROC : X_ROC
    generic map (ROC_WIDTH => 100 ns)
    port map (O => GSR);
  NlwBlockTOC : X_TOC
    port map (O => GTS);

end Structure;

