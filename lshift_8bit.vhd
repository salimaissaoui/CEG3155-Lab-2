LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;  

ENTITY lshift_8bit IS
    PORT(
        data_in  : IN  STD_LOGIC_VECTOR(7 downto 0);  -- 8-bit input data
        i_clock  : IN  STD_LOGIC;                     -- Clock signal
        n        : IN  INTEGER RANGE 0 TO 7;          -- Number of shifts (0 to 7)
        data_out : OUT STD_LOGIC_VECTOR(7 downto 0)   -- 8-bit output data
    );
END lshift_8bit;

ARCHITECTURE structural OF lshift_8bit IS

	COMPONENT dff_8bit
        PORT(
            i_d         : IN  STD_LOGIC_VECTOR(7 downto 0);  -- 8-bit input data
			   i_clock     : IN  STD_LOGIC;                      -- Clock input
			   o_q         : OUT STD_LOGIC_VECTOR(7 downto 0);  -- 8-bit output data
			   o_qBar      : OUT STD_LOGIC_VECTOR(7 downto 0)   -- 8-bit inverted output data
        );
    END COMPONENT;
	
   SIGNAL transData : STD_LOGIC_VECTOR(7 downto 0);
BEGIN
    transData <= STD_LOGIC_VECTOR(shift_left(unsigned(data_in),n));
    
  
    dff_inst: dFF_8bit
        PORT MAP(
            i_d     => transData,  -- Shifted input by n positions
            i_clock => i_clock,
            o_q     => data_out,   -- Output after clocked D flip-flop
            o_qBar  => OPEN        
        );

END structural;
