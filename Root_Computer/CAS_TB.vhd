-- Parsa Mohammadi
-- CAS Module Test Bench
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
 
 
ENTITY CAS_TB IS
END CAS_TB;
 
ARCHITECTURE behavior OF CAS_TB IS 
    -- Component Declaration for the Unit Under Test (UUT)
		  
	 COMPONENT CAS
    PORT(
         Pin : IN  std_logic;
         Din : IN  std_logic;
         X : IN  std_logic;
         Cin : IN  std_logic;
         Pout : OUT  std_logic;
         R : OUT  std_logic;
         Dout : OUT  std_logic;
         Cout : OUT  std_logic
        );
    END COMPONENT;
	 
   --Inputs
   signal Pin : std_logic := '0';
   signal Din : std_logic := '0';
   signal X : std_logic := '0';
   signal Cin : std_logic := '0';
	signal input : std_logic_vector(3 downto 0) := "0000";

	
 	--Outputs
   signal Pout : std_logic;
   signal R : std_logic;
   signal Dout : std_logic;
   signal Cout : std_logic;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: CAS PORT MAP (
          Pin => Pin,
          Din => Din,
          X => X,
          Cin => Cin,
          Pout => Pout,
          R => R,
          Dout => Dout,
          Cout => Cout
        );

   -- Stimulus process
   stim_proc: process
   begin		

	for i in 0 to 15 loop
	
		input <= std_logic_vector(to_unsigned(i,4));
		wait for 0.00000001 ps;
		Pin <= input(0);
      Din <= input(1);
      X   <= input(2);
      Cin <= input(3);
		wait for 10 ns;
		
	end loop;

      wait;
   end process;

END;
