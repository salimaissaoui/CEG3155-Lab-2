LIBRARY ieee;
use IEEE.STD_LOGIC_1164.ALL;

entity counter_4bit IS
  PORT (
    clk, reset, enable : IN STD_LOGIC;
	 count : IN STD_LOGIC_VECTOR(3 downto 0);
    q : OUT STD_LOGIC_VECTOR(3 downto 0)
  );
end counter_4bit;

ARCHITECTURE basic of counter_4bit IS
	COMPONENT CLA_4bit 
		PORT (
			a,b : IN STD_LOGIC_VECTOR(3 downto 0);
			cin, GClock, GReset : IN STD_LOGIC;
			Sum : OUT STD_LOGIC_VECTOR(7 downto 0);
			CarryOut, zeroOut, OverFlowOut : OUT STD_LOGIC
		);
	END COMPONENT;
	
	COMPONENT register_8bit
        PORT(
			  i_d         : IN  STD_LOGIC_VECTOR(7 downto 0);  
			  i_clock     : IN  STD_LOGIC;                      
			  i_enable    : IN  STD_LOGIC;                      
			  o_q         : OUT STD_LOGIC_VECTOR(7 downto 0) 
		 );
    END COMPONENT;
	
	signal transitoryAdd : STD_LOGIC_VECTOR(3 downto 0);
	signal transitory_q, transitory_qfinal : STD_LOGIC_VECTOR(7 downto 0);
	
begin
	transitoryAdd(3 downto 1) <= "000";
	transitoryAdd(0) <= '1' AND enable;
	
	CLA_4bit_inst : CLA_4bit
		PORT MAP (
			a => count,
			b => transitoryAdd,
			cin => '0',
			GClock => clk,
			GReset => reset,
			Sum => transitory_q,
			CarryOut => open,
			zeroOut => open,
			OverFlowOut => open
		);
		
	register_8bit_inst : register_8bit
		PORT MAP (
			i_d => transitory_q,
			i_clock => clk,
			i_enable => enable,
			o_q => transitory_qfinal
		);
		
	q <= transitory_qfinal(3 downto 0);
		

end basic;