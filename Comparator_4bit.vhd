LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;

ENTITY Comparator_4bit IS
	PORT (
		a,b : IN STD_LOGIC_VECTOR(3 downto 0);
		GClock : IN STD_LOGIC;
		gt : OUT STD_LOGIC
	);
END Comparator_4bit;

architecture basic of Comparator_4bit IS
	signal a_gt_b, a_e_b, gated_val : STD_LOGIC;

	
	COMPONENT d_FF
        PORT(
            i_d         : IN  STD_LOGIC;  
			   i_clock     : IN  STD_LOGIC;                     
			   o_q         : OUT STD_LOGIC;  
			   o_qBar      : OUT STD_LOGIC
        );
    END COMPONENT;
	 
begin
	a_gt_b <= (a(3) AND NOT b(3)) 
	OR (NOT(a(3) XOR b(3)) AND (a(2) AND NOT 
	b(2))) OR (NOT(a(3) XOR b(3)) AND 
	(NOT(a(2) XOR b(2))) AND (a(1) AND NOT b(1))) OR 
	(NOT(a(3) XOR b(3)) AND (NOT(a(2) XOR b(2))) AND 
	(NOT(a(1) XOR b(1))) AND (a(0) AND NOT b(0)));
	a_e_b <= NOT (a(3) XOR b(3)) AND NOT (a(2) XOR b(2)) AND NOT (a(1) XOR b(1)) AND NOT (a(0) XOR b(0));
	gated_val <= a_gt_b OR a_e_b;
	
	
	dff_inst : d_FF
		PORT MAP (
			i_d => gated_val,
			i_clock => GClock,
			o_q => gt,
			o_qBar => open
		);

	
		
	

end basic;


	