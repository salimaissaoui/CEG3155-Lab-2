LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY register_8bit_ls_0ctrl IS
    PORT(
        i_d         : IN  STD_LOGIC_VECTOR(7 downto 0);  -- 8-bit input data
        i_clock     : IN  STD_LOGIC;                      -- Clock input
        i_enable, i_shift_enable, LSB0, LSB1     : IN  STD_LOGIC;                      -- Enable signal (single bit)
        o_q         : OUT STD_LOGIC_VECTOR(7 downto 0);   -- 8-bit output data
		  MSB1 : OUT STD_LOGIC
    );
END register_8bit_ls_0ctrl;

ARCHITECTURE rtl OF register_8bit_ls_0ctrl IS
    COMPONENT d_FF
        PORT(
            i_d       : IN  STD_LOGIC;                    -- 1-bit input data
            i_clock   : IN  STD_LOGIC;                    -- Clock input
            o_q       : OUT STD_LOGIC;                    -- 1-bit output data
            o_qBar    : OUT STD_LOGIC                       -- 1-bit inverted output data
        );
    END COMPONENT;
	 
	 COMPONENT lshift_8bit_2
        PORT(
			  data_in  : IN  STD_LOGIC_VECTOR(7 downto 0);  -- 8-bit input data
			  i_clock    : IN  STD_LOGIC;                     -- Clock signal
			  data_out : OUT STD_LOGIC_VECTOR(7 downto 0)   -- 8-bit output data
		 );
    END COMPONENT;
	 
	 SIGNAL i_d_lsb0 : STD_LOGIC;
	 SIGNAL shift_temp : STD_LOGIC_VECTOR(0 downto 0);
    SIGNAL q_internal, d_internal, q_ls : STD_LOGIC_VECTOR(7 downto 0);  -- Internal signal to hold the output of D flip-flops
	 

BEGIN

	 i_d_lsb0 <= (i_d(0) AND NOT(LSB0)) OR LSB1;
	 d_internal(0) <= i_d_lsb0 AND i_enable AND NOT(LSB0);
	 d_internal(1) <= i_d(1) AND i_enable;
	 d_internal(2) <= i_d(2) AND i_enable;
	 d_internal(3) <= i_d(3) AND i_enable;
	 d_internal(4) <= i_d(4) AND i_enable;
	 d_internal(5) <= i_d(5) AND i_enable;
	 d_internal(6) <= i_d(6) AND i_enable;
	 d_internal(7) <= i_d(7) AND i_enable;
	 shift_temp(0) <= i_shift_enable;
	 
	 
	 lshift_8bit_inst : lshift_8bit_2
		PORT MAP (
			data_in => d_internal,
			i_clock => i_clock,
			data_out => q_ls
		);
	 
    -- Instantiate each D flip-flop for the 8-bit register
    dff_inst0: d_FF
        PORT MAP (
            i_d     => q_ls(0),                -- Load if enabled
            i_clock => i_clock,
            o_q     => q_internal(0),
            o_qBar  => open                                  -- Not used
        );

    dff_inst1: d_FF
        PORT MAP (
            i_d     => q_ls(1),
            i_clock => i_clock,
            o_q     => q_internal(1),
            o_qBar  => open
        );

    dff_inst2: d_FF
        PORT MAP (
            i_d     => q_ls(2),
            i_clock => i_clock,
            o_q     => q_internal(2),
            o_qBar  => open
        );

    dff_inst3: d_FF
        PORT MAP (
            i_d     => q_ls(3),
            i_clock => i_clock,
            o_q     => q_internal(3),
            o_qBar  => open
        );

    dff_inst4: d_FF
        PORT MAP (
            i_d     => q_ls(4),
            i_clock => i_clock,
            o_q     => q_internal(4),
            o_qBar  => open
        );

    dff_inst5: d_FF
        PORT MAP (
            i_d     => q_ls(5),
            i_clock => i_clock,
            o_q     => q_internal(5),
            o_qBar  => open
        );

    dff_inst6: d_FF
        PORT MAP (
            i_d     => q_ls(6),
            i_clock => i_clock,
            o_q     => q_internal(6),
            o_qBar  => open
        );

    dff_inst7: d_FF
        PORT MAP (
            i_d     => q_ls(7),
            i_clock => i_clock,
            o_q     => q_internal(7),
            o_qBar  => open
        );

    -- Assign the internal signal to the output
    o_q <= q_internal;
	 MSB1 <= q_internal(7) AND '1';

END rtl;
