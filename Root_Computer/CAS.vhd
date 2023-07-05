 -- Module Name:    CAS - Behavioral 

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity CAS is
    Port ( Pin : in  STD_LOGIC;
           Din : in  STD_LOGIC;
           X : in  STD_LOGIC;
           Cin : in  STD_LOGIC;
           Pout : out  STD_LOGIC;
           R : out  STD_LOGIC;
           Dout : out  STD_LOGIC;
           Cout : out  STD_LOGIC);
end CAS;

architecture Behavioral of CAS is

component full_adder 
			is port ( x : in  STD_LOGIC;
					  y : in  STD_LOGIC;
					  cin : in  STD_LOGIC;
					  sum : out  STD_LOGIC;
					  carrout : out  STD_LOGIC);
end component;

signal T : STD_LOGIC;

begin

T <= Pin xor Din;
fa1 : full_adder port map(x => T, y=> X, cin => Cin, sum=> R,carrout=>Cout);
pout <= Pin;
Dout <= Din;


end Behavioral;

