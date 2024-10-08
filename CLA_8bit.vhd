LIBRARY ieee;
use IEEE.STD_LOGIC_1164.ALL;

entity CLA_8bit IS
	PORT (
		a,b : IN STD_LOGIC_VECTOR(7 downto 0);
		cin, GClock, GReset : IN STD_LOGIC;
		Sum : OUT STD_LOGIC_VECTOR(7 downto 0);
		CarryOut, zeroOut, OverFlowOut : OUT STD_LOGIC
	);
end CLA_8bit;

architecture basic of CLA_8bit IS
	signal CarryInOut : STD_LOGIC; 
   signal Sum_lower : STD_LOGIC_VECTOR(7 downto 0);  
   signal Sum_upper : STD_LOGIC_VECTOR(7 downto 0);

	COMPONENT CLA_4bit
	  PORT (
			a, b         : IN  STD_LOGIC_VECTOR(3 downto 0);
			cin, GClock, GReset : IN  STD_LOGIC;
			Sum          : OUT STD_LOGIC_VECTOR(7 downto 0);
			CarryOut, zeroOut, OverFlowOut : OUT STD_LOGIC
	  );
	END COMPONENT;
begin
	CLA_4bit_lower: CLA_4bit
        PORT MAP (
            a        => a(3 downto 0),     
            b        => b(3 downto 0),     
            cin      => cin,               
            GClock   => GClock,            
            GReset   => GReset,            
            Sum      => Sum_lower,   
            CarryOut => CarryInOut,            
            zeroOut  => open,              
            OverFlowOut => open            
        );
		  
	CLA_4bit_upper: CLA_4bit
        PORT MAP (
            a        => a(7 downto 4),     
            b        => b(7 downto 4),     
            cin      => CarryInOut,            
            GClock   => GClock,           
            GReset   => GReset,            
            Sum      => Sum_upper,   
            CarryOut => CarryOut,          
            zeroOut  => open,             
            OverFlowOut => OverFlowOut     
        );
	Sum(3 downto 0) <= Sum_lower(3 downto 0);
	Sum(7 downto 4) <= Sum_upper(3 downto 0);


end basic;