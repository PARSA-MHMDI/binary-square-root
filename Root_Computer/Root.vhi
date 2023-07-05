
-- VHDL Instantiation Created from source file Root.vhd -- 21:13:31 04/04/2023
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT Root
	PORT(
		A : IN std_logic_vector(1 to 16);          
		q : OUT std_logic_vector(1 to 8);
		R : OUT std_logic_vector(16 downto 1)
		);
	END COMPONENT;

	Inst_Root: Root PORT MAP(
		A => ,
		q => ,
		R => 
	);


