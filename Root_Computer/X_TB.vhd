--Parsa Mohammadi
--Test Bench for X Module
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.numeric_std.ALL;
USE ieee.std_logic_1164.ALL;
  
ENTITY X_TB IS
END X_TB;
 
ARCHITECTURE behavior OF X_TB IS 
 
 
    COMPONENT X
    PORT(
         DI1 : IN  std_logic;
         A0 : IN  std_logic;
         A1 : IN  std_logic;
         A2 : IN  std_logic;
         A3 : IN  std_logic;
         A4 : IN  std_logic;
         PI1 : IN  std_logic;
         PI2 : IN  std_logic;
         R0 : OUT  std_logic;
         R1 : OUT  std_logic;
         R2 : OUT  std_logic;
         R3 : OUT  std_logic;
         R4 : OUT  std_logic;
         DO1 : OUT  std_logic;
         DO2 : OUT  std_logic;
         CO1 : OUT  std_logic;
         CO2 : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
	signal input : std_logic_vector(7 downto 0) := "00000000";
   signal DI1 : std_logic := '0';
   signal A0 : std_logic := '0';
   signal A1 : std_logic := '0';
   signal A2 : std_logic := '0';
   signal A3 : std_logic := '0';
   signal A4 : std_logic := '0';
   signal PI1 : std_logic := '0';
   signal PI2 : std_logic := '0';

 	--Outputs
   signal R0 : std_logic;
   signal R1 : std_logic;
   signal R2 : std_logic;
   signal R3 : std_logic;
   signal R4 : std_logic;
   signal DO1 : std_logic;
   signal DO2 : std_logic;
   signal CO1 : std_logic;
   signal CO2 : std_logic;

 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: X PORT MAP (
          DI1 => DI1,
          A0 => A0,
          A1 => A1,
          A2 => A2,
          A3 => A3,
          A4 => A4,
          PI1 => PI1,
          PI2 => PI2,
          R0 => R0,
          R1 => R1,
          R2 => R2,
          R3 => R3,
          R4 => R4,
          DO1 => DO1,
          DO2 => DO2,
          CO1 => CO1,
          CO2 => CO2
        );
 

   -- Stimulus process
   stim_proc: process
   begin		


		for i in 0 to 255 loop
		  input <= std_logic_vector(to_unsigned(i, 8));
		  wait for 0.000000001 ps;
		  DI1 <= input(0);
		  A0  <= input(1);
		  A1  <= input(2);
		  A2  <= input(3);
		  A3  <= input(4);
		  A4  <= input(5);
		  PI1 <= input(6);
        PI2 <= input(7);
		  
		wait for 10 ns;
		end loop;

      wait;
   end process;

END;
