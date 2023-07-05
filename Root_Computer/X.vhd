-- Module Name:    X - Behavioral 

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity X is Port ( DI1 : in  STD_LOGIC;
						  A0 : in  STD_LOGIC;
						  A1 : in  STD_LOGIC;
						  A2 : in  STD_LOGIC;
						  A3 : in  STD_LOGIC;
						  A4 : in  STD_LOGIC;
						  PI1 : in  STD_LOGIC;
						  PI2 : in  STD_LOGIC;
						  R0 : out  STD_LOGIC;
						  R1 : out  STD_LOGIC;
						  R2 : out  STD_LOGIC;
						  R3 : out  STD_LOGIC;
						  R4 : out  STD_LOGIC;
						  DO1 : out  STD_LOGIC;
						  DO2 : out  STD_LOGIC;
						  CO1 : out  STD_LOGIC;
						  CO2 : out  STD_LOGIC);
						  end X;

architecture Behavioral of X is

component CAS is port( Pin : in  STD_LOGIC;
							  Din : in  STD_LOGIC;
							  X : in  STD_LOGIC;
							  Cin : in  STD_LOGIC;
							  Pout : out  STD_LOGIC;
							  R : out  STD_LOGIC;
							  Dout : out  STD_LOGIC;
							  Cout : out  STD_LOGIC);
							  end component;
							  
signal R_a ,R_b ,R_c ,R_d ,R_e ,R_f ,R_g : std_logic;
signal Pout_a ,Pout_b ,Pout_c ,Pout_d ,Pout_e ,Pout_f ,Pout_g : std_logic;
signal Cout_a ,Cout_b ,Cout_c ,Cout_d ,Cout_e ,Cout_f ,Cout_g : std_logic;
signal z : std_logic_vector(6 downto 0);--dummy variable

signal NPout_a,Npout_e :std_logic;

begin

NPout_a <= not Pout_a;
Npout_e <= not Pout_e;

CAS_a : CAS port map(PI1    ,PI1        ,A0  ,Cout_b ,Pout_a ,R0  ,z(0) ,CO1 );
CAS_b : CAS port map(Pout_a ,NPout_a    ,A1  ,Cout_c ,Pout_b ,R_b ,z(1) ,Cout_b );
CAS_c : CAS port map(Pout_b ,'1'        ,A2  ,Pout_c ,Pout_c ,R_c ,z(2) ,Cout_c );
CAS_d : CAS port map(PI2    ,DI1        ,R_b ,Cout_e ,Pout_d ,R1  ,Z(3) ,CO2 );
CAS_e : CAS port map(Pout_d ,Pout_d     ,R_c ,Cout_f ,Pout_e ,R2  ,Z(4) ,Cout_e );
CAS_f : CAS port map(Pout_e ,Npout_e    ,A3  ,Cout_g ,Pout_f ,R3  ,Z(5) ,Cout_f );
CAS_g : CAS port map(Pout_f ,'1'        ,A4  ,Pout_g ,Pout_g ,R4  ,Z(6) ,Cout_g );

DO1 <= DI1;
DO2 <= Pout_d;



end Behavioral;

