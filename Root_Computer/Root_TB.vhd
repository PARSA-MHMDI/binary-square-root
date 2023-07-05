-- Parsa Mohammadi
-- Root Computer Test Bench
------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;


 
ENTITY Root_TB IS
END Root_TB;
 
ARCHITECTURE behavior OF Root_TB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Root
    PORT(
         A : IN  std_logic_vector(1 to 16);
         q : OUT  std_logic_vector(1 TO 8);
         R : OUT  std_logic_vector(16 downto 1)
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic_vector(1 to 16) := (others => '0');

 	--Outputs
   signal q : std_logic_vector(8 downto 1);
   -- appropriate port name 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Root PORT MAP (
          A => A,
          q => q
        );


   -- Stimulus process
   stim_proc: process
   begin
		
		
		for i in 0 to 65535 loop
		  A <= std_logic_vector(to_unsigned(i, 16));
		  wait for 1 ns;
		 end loop;


      wait;
   end process;

END;
