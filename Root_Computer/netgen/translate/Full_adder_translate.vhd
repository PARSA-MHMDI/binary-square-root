--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: Full_adder_translate.vhd
-- /___/   /\     Timestamp: Thu Mar 23 15:31:54 2023
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -rpw 100 -tpw 0 -ar Structure -tm Full_adder -w -dir netgen/translate -ofmt vhdl -sim Full_adder.ngd Full_adder_translate.vhd 
-- Device	: 7a100tcsg324-3
-- Input file	: Full_adder.ngd
-- Output file	: D:\Study\AUT\Term6\Computer Architecture\VHDL2\Root_Computer\netgen\translate\Full_adder_translate.vhd
-- # of Entities	: 1
-- Design Name	: Full_adder
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

entity Full_adder is
  port (
    x : in STD_LOGIC := 'X'; 
    y : in STD_LOGIC := 'X'; 
    cin : in STD_LOGIC := 'X'; 
    sum : out STD_LOGIC; 
    carrout : out STD_LOGIC 
  );
end Full_adder;

architecture Structure of Full_adder is
  signal x_IBUF_0 : STD_LOGIC; 
  signal y_IBUF_1 : STD_LOGIC; 
  signal cin_IBUF_2 : STD_LOGIC; 
  signal sum_OBUF_3 : STD_LOGIC; 
  signal carrout_OBUF_4 : STD_LOGIC; 
begin
  carrout1 : X_LUT3
    generic map(
      INIT => X"E8"
    )
    port map (
      ADR0 => x_IBUF_0,
      ADR1 => y_IBUF_1,
      ADR2 => cin_IBUF_2,
      O => carrout_OBUF_4
    );
  sum1 : X_LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      ADR0 => cin_IBUF_2,
      ADR1 => x_IBUF_0,
      ADR2 => y_IBUF_1,
      O => sum_OBUF_3
    );
  x_IBUF : X_BUF
    port map (
      I => x,
      O => x_IBUF_0
    );
  y_IBUF : X_BUF
    port map (
      I => y,
      O => y_IBUF_1
    );
  cin_IBUF : X_BUF
    port map (
      I => cin,
      O => cin_IBUF_2
    );
  sum_OBUF : X_OBUF
    port map (
      I => sum_OBUF_3,
      O => sum
    );
  carrout_OBUF : X_OBUF
    port map (
      I => carrout_OBUF_4,
      O => carrout
    );
  NlwBlockROC : X_ROC
    generic map (ROC_WIDTH => 100 ns)
    port map (O => GSR);
  NlwBlockTOC : X_TOC
    port map (O => GTS);

end Structure;

