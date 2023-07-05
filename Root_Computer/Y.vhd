-- Module Name:    Y - Behavioral 

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Y is
    Port ( DI1 : in  STD_LOGIC;
           DI2 : in  STD_LOGIC;
           A11 : in  STD_LOGIC;
           A12 : in  STD_LOGIC;
           A22 : in  STD_LOGIC;
           PI1 : in  STD_LOGIC;
           PI2 : in  STD_LOGIC;
           CI1 : in  STD_LOGIC;
           CI2 : in  STD_LOGIC;
           CO1 : out  STD_LOGIC;
           CO2 : out  STD_LOGIC;
           PO1 : out  STD_LOGIC;
           PO2 : out  STD_LOGIC;
           DO1 : out  STD_LOGIC;
           DO2 : out  STD_LOGIC;
           S11 : out  STD_LOGIC;
           S21 : out  STD_LOGIC;
           S22 : out  STD_LOGIC);
end Y;

architecture Behavioral of Y is

component CAS is port ( Pin : in  STD_LOGIC;
								  Din : in  STD_LOGIC;
								  X : in  STD_LOGIC;
								  Cin : in  STD_LOGIC;
								  Pout : out  STD_LOGIC;
								  R : out  STD_LOGIC;
								  Dout : out  STD_LOGIC;
								  Cout : out  STD_LOGIC);
								  end component;

signal R_h,R_i,R_j,R_k : std_logic;
signal Pout_h,Pout_i,Pout_j,Pout_k : std_logic;
signal Cout_h,Cout_i,Cout_j,Cout_k : std_logic;
signal z : std_logic_vector(3 downto 0);--dummy variable

begin

CAS_h : CAS port map(PI1 ,DI1 ,A11 ,Cout_i ,Pout_h ,S11 ,z(0) ,CO1 );
CAS_i : CAS port map(Pout_h ,DI2 ,A12 ,CI1 ,PO1 ,R_i ,z(1) ,Cout_i );
CAS_j : CAS port map(PI2 ,DI1 ,R_i ,Cout_k ,Pout_j ,S21 ,z(2) ,CO2 );
CAS_k : CAS port map(Pout_j ,DI2 ,A22 ,CI2 ,PO2 ,S22 ,Z(3) ,Cout_k );

DO1 <= DI1;
DO2 <= DI2;

end Behavioral;

