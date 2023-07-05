-- Module Name:    Root - Behavioral 

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity Root is
    Port ( A : in  STD_LOGIC_VECTOR(1 TO 16);
           q : out  STD_LOGIC_VECTOR(1 TO 8);
           R : out  STD_LOGIC_VECTOR(16 DOWNTO 1));
end Root;

architecture Behavioral of Root is

component X is port( DI1 : in  STD_LOGIC;
						   A0  : in  STD_LOGIC;
						   A1  : in  STD_LOGIC;
						   A2  : in  STD_LOGIC;
						   A3  : in  STD_LOGIC;
						   A4  : in  STD_LOGIC;
						   PI1 : in  STD_LOGIC;
						   PI2 : in  STD_LOGIC;
						   R0  : out  STD_LOGIC;
						   R1  : out  STD_LOGIC;
						   R2  : out  STD_LOGIC;
						   R3  : out  STD_LOGIC;
						   R4  : out  STD_LOGIC;
						   DO1 : out  STD_LOGIC;
						   DO2 : out  STD_LOGIC;
						   CO1 : out  STD_LOGIC;
						   CO2 : out  STD_LOGIC);
						   end component;

component Y is port( DI1 : in  STD_LOGIC;
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
						   end component;


signal R0_X_row ,R1_X_row ,R2_X_row ,R3_X_row ,R4_X_row ,DO1_X_row ,DO2_X_row ,CO1_X_row 
		,CO2_X_row :STD_LOGIC_vector(4 downto 1);
		
		
signal  CO1_Y_row ,CO2_Y_row ,CO1_Y1_row ,CO2_Y1_row ,CO1_Y2_row ,CO2_Y2_row ,CO1_Y3_row ,CO2_Y3_row
		 ,DO1_Y_row ,DO2_Y_row ,DO1_Y1_row ,DO2_Y1_row ,DO1_Y2_row ,DO2_Y2_row ,DO1_Y3_row ,DO2_Y3_row
		 ,PO1_Y_row ,PO2_Y_row ,PO1_Y1_row ,PO2_Y1_row ,PO1_Y2_row ,PO2_Y2_row ,PO1_Y3_row ,PO2_Y3_row 
		 ,S11_Y_row ,S11_Y1_row,S11_Y2_row ,S11_Y3_row ,S21_Y_row  ,S21_Y1_row ,S21_Y2_row ,S22_Y_row 
		 ,S22_Y1_row,S22_Y2_row : STD_LOGIC_vector(4 downto 1);

signal z : STD_LOGIC_VECTOR(15 downto 1); --Dummy Variable

begin

--Row 1
X_row1 : X port map('0' ,'1' ,A(1) ,A(2) ,A(3) ,A(4) ,'1' ,CO1_X_row(1) ,Z(1) ,Z(2) ,R2_X_row(1) ,R3_X_row(1) , R4_X_row(1) , DO1_X_row(1) , DO2_X_row(1) , CO1_X_row(1) , CO2_X_row(1) );
q(1) <= CO1_X_row(1);
q(2) <= CO2_X_row(1);

--Row 2
Y_row2 : Y port map(DO1_X_row(1) ,DO2_X_row(1) ,R2_X_row(1) ,R3_X_row(1) ,R0_X_row(2) ,CO2_X_row(1) ,CO1_Y_row(2) ,CO1_X_row(2) ,CO2_X_row(2) ,CO1_Y_row(2) ,CO2_Y_row(2) ,PO1_Y_row(2) ,PO2_Y_row(2) ,DO1_Y_row(2) ,DO2_Y_row(2) ,Z(3) ,Z(4) ,S22_Y_row(2) );
X_row2 : X port map(PO1_Y_row(2) ,R4_X_row(1) ,A(5) ,A(6) ,A(7) ,A(8) ,PO1_Y_row(2) ,PO2_Y_row(2) ,R0_X_row(2) ,R1_X_row(2) ,R2_X_row(2) ,R3_X_row(2) ,R4_X_row(2) ,DO1_X_row(2) ,DO2_X_row(2) ,CO1_X_row(2) ,CO2_X_row(2) );
q(3) <= CO1_Y_row(2);
q(4) <= CO2_Y_row(2);

--Row 3
Y1_row3 : Y port map(DO1_Y_row(2) ,DO2_Y_row(2) ,S22_Y_row(2) ,R1_X_row(2) ,S11_Y2_row(3) ,CO2_Y_row(2) ,CO1_Y1_row(3) ,CO1_Y2_row(3) ,CO2_Y2_row(3) ,CO1_Y1_row(3) ,CO2_Y1_row(3) ,PO1_Y1_row(3) ,PO2_Y1_row(3) ,DO1_Y1_row(3) ,DO2_Y1_row(3) ,Z(5) , Z(6) ,S22_Y1_row(3) );
Y2_row3 : Y port map(DO1_X_row(2) ,DO2_X_row(2) ,R2_X_row(2) ,R3_X_row(2) ,R0_X_row(3) ,PO1_Y1_row(3) ,PO2_Y1_row(3) ,CO1_X_row(3) ,CO2_X_row(3) ,CO1_Y2_row(3) ,CO2_Y2_row(3) ,PO1_Y2_row(3) ,PO2_Y2_row(3) ,DO1_Y2_row(3) ,DO2_Y2_row(3) ,S11_Y2_row(3) ,S21_Y2_row(3) ,S22_Y2_row(3) );
X_row3  : X port map(PO1_Y2_row(3) ,R4_X_row(2) ,A(9) ,A(10) ,A(11) ,A(12) ,PO1_Y2_row(3) ,PO2_Y2_row(3) ,R0_X_row(3) ,R1_X_row(3) ,R2_X_row(3) ,R3_X_row(3) ,R4_X_row(3) ,DO1_X_row(3) ,DO2_X_row(3) ,CO1_X_row(3) ,CO2_X_row(3) );
q(5) <= CO1_Y1_row(3);
q(6) <= CO2_Y1_row(3);

--Row 4
Y1_row4 : Y port map(DO1_Y1_row(3) ,DO2_Y1_row(3) ,S22_Y1_row(3) ,S21_Y2_row(3) ,S11_Y2_row(4) ,CO2_Y1_row(3) ,CO1_Y1_row(4) ,CO1_Y2_row(4) ,CO2_Y2_row(4) ,CO1_Y1_row(4) ,q(8)  ,PO1_Y1_row(4) ,PO2_Y1_row(4) ,Z(7) ,Z(8) ,Z(9), r(7), r(8) );
Y2_row4 : Y port map(DO1_Y2_row(3) ,DO2_Y2_row(3) ,S22_Y2_row(3) ,R1_X_row(3) ,S11_Y3_row(4) ,PO1_Y1_row(4) ,PO2_Y1_row(4) ,CO1_Y3_row(4) ,CO2_Y3_row(4) ,CO1_Y2_row(4) ,CO2_Y2_row(4) ,PO1_Y2_row(4) ,PO2_Y2_row(4) ,Z(10) ,Z(11) ,S11_Y2_row(4), r(9), r(10) );
Y3_row4 : Y port map(DO1_X_row(3) ,DO2_X_row(3) ,R2_X_row(3) ,R3_X_row(3) ,R0_X_row(4) ,PO1_Y2_row(4) ,PO2_Y2_row(4) ,CO1_X_row(4) ,CO2_X_row(4) ,CO1_Y3_row(4) ,CO2_Y3_row(4) ,PO1_Y3_row(4) ,PO2_Y3_row(4) ,Z(12) ,Z(13) ,S11_Y3_row(4), r(11), r(12) );
X_row4  : X port map(PO1_Y3_row(4) ,R4_X_row(3) ,A(13) ,A(14) ,A(15) ,A(16) ,PO1_Y3_row(4) ,PO2_Y3_row(4) ,R0_X_row(4) ,R(13) ,R(14) ,R(15) ,R(16) ,Z(14) ,Z(15) ,CO1_X_row(4) ,CO2_X_row(4)  );
q(7) <= CO1_Y1_row(4);


end Behavioral;

