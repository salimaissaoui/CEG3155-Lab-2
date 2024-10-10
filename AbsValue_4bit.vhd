library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity AbsValue_4bit is
    Port (
        input_vector : in  STD_LOGIC_VECTOR(3 downto 0);  -- 8-bit input
        abs_value    : out STD_LOGIC_VECTOR(3 downto 0)   -- Output for absolute value
    );
end AbsValue_4bit;

architecture Structural of AbsValue_4bit is
	COMPONENT mux_2to1_4bit 
		PORT (
			sel     : IN  STD_LOGIC;                             -- Select input
			d_in1   : IN  STD_LOGIC_VECTOR(3 downto 0);        -- 8-bit Data input 1
			d_in2   : IN  STD_LOGIC_VECTOR(3 downto 0);        -- 8-bit Data input 2                         -- Reset input
			d_out   : OUT STD_LOGIC_VECTOR(3 downto 0)  
		);
	END COMPONENT;
	
	COMPONENT CLA_4bit 
		PORT (
			a,b : IN STD_LOGIC_VECTOR(3 downto 0);
			cin, GClock, GReset : IN STD_LOGIC;
			Sum : OUT STD_LOGIC_VECTOR(7 downto 0);
			CarryOut, zeroOut, OverFlowOut : OUT STD_LOGIC
		);
	END COMPONENT;
   signal is_negative : STD_LOGIC;                      -- Signal to indicate negativity
   signal neg_vector  : STD_LOGIC_VECTOR(3 downto 0);   -- Negated vector for output
	signal real_vector  : STD_LOGIC_VECTOR(3 downto 0);
begin

    is_negative <= input_vector(3);
	 neg_vector <= not input_vector;
     
	 
	 real_vector <= input_vector;
	 
	 mux_2to1_4bit_inst : mux_2to1_4bit
		PORT MAP (
			sel => is_negative,
			d_in1 => real_vector,
			d_in2 => neg_vector,
			d_out => abs_value
		);
   
end Structural;
