--Parsa Mohammadi
--Y Module Test Bench
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.numeric_std.ALL;
USE ieee.std_logic_1164.ALL;
  
ENTITY Y_TB IS
END Y_TB;
 
ARCHITECTURE behavior OF Y_TB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Y
    PORT(
         DI1 : IN  std_logic;
         DI2 : IN  std_logic;
         A11 : IN  std_logic;
         A12 : IN  std_logic;
         A22 : IN  std_logic;
         PI1 : IN  std_logic;
         PI2 : IN  std_logic;
         CI1 : IN  std_logic;
         CI2 : IN  std_logic;
         CO1 : OUT  std_logic;
         CO2 : OUT  std_logic;
         PO1 : OUT  std_logic;
         PO2 : OUT  std_logic;
         DO1 : OUT  std_logic;
         DO2 : OUT  std_logic;
         S11 : OUT  std_logic;
         S21 : OUT  std_logic;
         S22 : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
	signal input : std_logic_vector(8 downto 0) := "000000000";
   signal DI1 : std_logic := '0';
   signal DI2 : std_logic := '0';
   signal A11 : std_logic := '0';
   signal A12 : std_logic := '0';
   signal A22 : std_logic := '0';
   signal PI1 : std_logic := '0';
   signal PI2 : std_logic := '0';
   signal CI1 : std_logic := '0';
   signal CI2 : std_logic := '0';


 	--Outputs
   signal CO1 : std_logic;
   signal CO2 : std_logic;
   signal PO1 : std_logic;
   signal PO2 : std_logic;
   signal DO1 : std_logic;
   signal DO2 : std_logic;
   signal S11 : std_logic;
   signal S21 : std_logic;
   signal S22 : std_logic;

 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Y PORT MAP (
          DI1 => DI1,
          DI2 => DI2,
          A11 => A11,
          A12 => A12,
          A22 => A22,
          PI1 => PI1,
          PI2 => PI2,
          CI1 => CI1,
          CI2 => CI2,
          CO1 => CO1,
          CO2 => CO2,
          PO1 => PO1,
          PO2 => PO2,
          DO1 => DO1,
          DO2 => DO2,
          S11 => S11,
          S21 => S21,
          S22 => S22
        );
 

   -- Stimulus process
   stim_proc: process
   begin		
		for i in 0 to 511 loop
		  input <= std_logic_vector(to_unsigned(i, 9));
		  wait for 0.000000001 ps;
		  DI1 <= input(0);
		  DI2 <= input(1);
		  A11 <= input(2);
		  A12 <= input(3);
		  A22 <= input(4);
		  PI1 <= input(5);
		  PI2 <= input(6);
		  CI1 <= input(7);
        CI2 <= input(8);
		  wait for 1 ns;
		 end loop;
		  
      wait;
   end process;

END;
