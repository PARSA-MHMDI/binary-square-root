-- Parsa Mohammadi
-- Half Adder Test Bench
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
 
 
ENTITY Half_Adder_TB IS
END Half_Adder_TB;
 
ARCHITECTURE behavior OF Half_Adder_TB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT half_adder
    PORT(
         a : IN  std_logic;
         b : IN  std_logic;
         c : OUT  std_logic;
         s : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal input : std_logic_vector(1 downto 0) := "00";
	signal a : std_logic := '0';
   signal b : std_logic := '0';

 	--Outputs
   signal c : std_logic;
   signal s : std_logic;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: half_adder PORT MAP (
          a => a,
          b => b,
          c => c,
          s => s
        );
 

   -- Stimulus process
   stim_proc: process
   begin		

	for i in 0 to 4 loop
		input <= std_logic_vector(to_unsigned(i,2));
		wait for 0.000001 ps;
		a <= input(0);
		b <= input(1);
		wait for 100 ns;
	end loop;
	
      wait;
   end process;

END;
