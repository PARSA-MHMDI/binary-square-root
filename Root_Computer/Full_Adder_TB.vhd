-- Parsa Mohammadi
-- Full Adder Test Bench
----------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
 
 
ENTITY Full_Adder_TB IS
END Full_Adder_TB;
 
ARCHITECTURE behavior OF Full_Adder_TB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Full_adder
    PORT(
         x : IN  std_logic;
         y : IN  std_logic;
         cin : IN  std_logic;
         sum : OUT  std_logic;
         carrout : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
	signal input : std_logic_vector(2 downto 0) := "000";
   signal x : std_logic := '0';
   signal y : std_logic := '0';
   signal cin : std_logic := '0';

 	--Outputs
   signal sum : std_logic;
   signal carrout : std_logic;

 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Full_adder PORT MAP (
          x => x,
          y => y,
          cin => cin,
          sum => sum,
          carrout => carrout
        );

   -- Stimulus process
   stim_proc: process
   begin		
	
	for i in 0 to 8 loop
		input <= std_logic_vector(to_unsigned(i,3));
		wait for 0.0000001 ps;
		x <= input(0);
		y <= input(1);
		cin <= input(2);
		wait for 100 ns;
	end loop;
	

      wait;
   end process;

END;
