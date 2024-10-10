LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY Divider_datapath IS
	PORT (
		X,Y : IN STD_LOGIC_VECTOR(3 downto 0);
		selAQ : IN STD_LOGIC_VECTOR(1 downto 0);
		GClock, GReset, LSB1, LSB0, LSAQ, loadAQ, DecN, loadN, loadM, loadSum, isSignZero : IN STD_LOGIC;
		MSB1, Nzero, CarryOut, ZeroOut, OverflowOut : OUT STD_LOGIC;
		Sum  : OUT STD_LOGIC_VECTOR(7 downto 0)
	);
END Divider_datapath;

ARCHITECTURE basic of Divider_datapath IS
	COMPONENT mux_2to1_4bit 
		PORT (
			sel     : IN  STD_LOGIC;                             -- Select input
			d_in1   : IN  STD_LOGIC_VECTOR(3 downto 0);        -- 8-bit Data input 1
			d_in2   : IN  STD_LOGIC_VECTOR(3 downto 0);        -- 8-bit Data input 2                         -- Reset input
			d_out   : OUT STD_LOGIC_VECTOR(3 downto 0)  
		);
	END COMPONENT;
	
	COMPONENT register_4bit
        PORT(
			  i_d         : IN  STD_LOGIC_VECTOR(3 downto 0);  
			  i_clock     : IN  STD_LOGIC;                      
			  i_enable    : IN  STD_LOGIC;                      
			  o_q         : OUT STD_LOGIC_VECTOR(3 downto 0) 
		 );
    END COMPONENT;
	 
	 COMPONENT register_4bit_special
        PORT(
			  i_d         : IN  STD_LOGIC_VECTOR(3 downto 0);  
			  i_clock     : IN  STD_LOGIC;                      
			  i_enable    : IN  STD_LOGIC;                      
			  o_q         : OUT STD_LOGIC_VECTOR(3 downto 0);
			  Nzero : OUT STD_LOGIC
		 );
    END COMPONENT;
	 
	 COMPONENT mux_4to1
		 PORT(
			  en    : IN STD_LOGIC;                     -- Enable signal
			  sel   : IN  STD_LOGIC_VECTOR(1 downto 0); -- Selection signal
			  d_in0 : IN  STD_LOGIC_VECTOR(7 downto 0);  -- 1st 8-bit input
			  d_in1 : IN  STD_LOGIC_VECTOR(7 downto 0);  -- 2nd 8-bit input
			  d_in2 : IN  STD_LOGIC_VECTOR(7 downto 0);  -- 3rd 8-bit input
			  d_in3 : IN  STD_LOGIC_VECTOR(7 downto 0);  -- 4th 8-bit input
			  d_out : OUT STD_LOGIC_VECTOR(7 downto 0)   -- 8-bit output
		 );
	 END COMPONENT;
	 
	 COMPONENT register_8bit_ls_0ctrl
        PORT(
			  i_d         : IN  STD_LOGIC_VECTOR(7 downto 0);  -- 8-bit input data
			  i_clock     : IN  STD_LOGIC;                      -- Clock input
			  i_enable : IN  STD_LOGIC;
			  i_shift_enable : IN  STD_LOGIC; 
			  LSB0 : IN  STD_LOGIC; 
			  LSB1     : IN  STD_LOGIC;                      -- Enable signal (single bit)
			  o_q         : OUT STD_LOGIC_VECTOR(7 downto 0);   -- 8-bit output data
			  MSB1 : OUT STD_LOGIC
		 );
    END COMPONENT;
	 
	 COMPONENT register_8bit
        PORT(
			  i_d         : IN  STD_LOGIC_VECTOR(7 downto 0);  -- 8-bit input data
			  i_clock     : IN  STD_LOGIC;                      -- Clock input
			  i_enable : IN  STD_LOGIC;                     -- Enable signal (single bit)
			  o_q         : OUT STD_LOGIC_VECTOR(7 downto 0)   -- 8-bit output data
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

	signal transitoryDecCount, transitoryDecCountReg, transitoryRegM, transitoryRegMNot, transitorySplitAQTop, transitorySplitAQBot, transitorySubbedN, transitorySplitAQBotNot, transitorySumQ : STD_LOGIC_VECTOR(3 downto 0);
	signal transitoryMakeX, transitoryAminusMfull, transitoryAplusMfull, transitoryAQRegIn, transitoryAQMuxOut, transitoryAQRegOut, transitorySum, transitoryAminusM, transitoryQFlipped, transitoryAplusM, transitorySubbedN8 : STD_LOGIC_VECTOR(7 downto 0);
begin
	mux_2to1_4bit_Dec_Reg : mux_2to1_4bit
		PORT MAP (
			sel => DecN,
			d_in1 => "0100",
			d_in2 => transitorySubbedN,
			d_out => transitoryDecCount
		);
		
	register_4bit_n : register_4bit_special
		PORT MAP (
			i_d => transitoryDecCount,
			i_clock => GClock,
			i_enable => loadN,
			o_q => transitoryDecCountReg,
			Nzero => Nzero
		);
		
	register_4bit_M : register_4bit
		PORT MAP (
			i_d => Y,
			i_clock => GClock,
			i_enable => loadM,
			o_q => transitoryRegM
		);
		
	transitoryRegMNot(3) <= NOT(transitoryRegM(3));
	transitoryRegMNot(2) <= NOT(transitoryRegM(2));
	transitoryRegMNot(1) <= NOT(transitoryRegM(1));
	transitoryRegMNot(0) <= NOT(transitoryRegM(0));
	CLA_4bit_n_dec : CLA_4bit
		PORT MAP (
			a => transitoryDecCountReg,
			b => "1110",
			cin => '1',
			GClock => GClock,
			GReset => GReset,
			Sum => transitorySubbedN8
		);
	transitorySubbedN <= transitorySubbedN8(3 downto 0);
	transitoryMakeX(7 downto 4) <= "0000";
	transitoryMakeX(3 downto 0) <= X;
		
	mux_4to1_AQ_MUX : mux_4to1
		PORT MAP (
			en => GReset,
			sel => selAQ,
			d_in0 => transitoryMakeX,
			d_in1 => transitoryAminusMfull,
			d_in2 => transitoryAplusMfull,
			d_in3 => "00000000",
			d_out => transitoryAQMuxOut
		);
		
	
	
	register_8bit_AQ : register_8bit_ls_0ctrl
		PORT MAP (
			i_d => transitoryAQRegIn,
			i_clock => GClock,
			i_enable => loadAQ,
			i_shift_enable => LSAQ,
			LSB0 => LSB0,
			LSB1 => LSB1,
			o_q => transitoryAQRegOut,
			MSB1 =>MSB1
		);
		
	transitorySplitAQTop <= transitoryAQRegOut(7 downto 4);
	
	CLA_4bit_test_A : CLA_4bit
		PORT MAP (
			a => transitorySplitAQTop,
			b => transitoryRegMNot,
			cin => '1',
			GClock => GClock,
			GReset => GReset,
			Sum => transitoryAminusM
		);
	transitoryAminusMfull(7 downto 4) <= transitoryAminusM(3 downto 0);
	transitoryAminusMfull(3 downto 0) <= transitoryAQRegOut(3 downto 0);
		
	CLA_4bit_restore_A : CLA_4bit
		PORT MAP (
			a => transitorySplitAQTop,
			b => transitoryRegM,
			cin => '0',
			GClock => GClock,
			GReset => GReset,
			Sum => transitoryAplusM
		);
	transitoryAplusMfull(7 downto 4) <= transitoryAplusM(3 downto 0);
	transitoryAplusMfull(3 downto 0) <= transitoryAQRegOut(3 downto 0);
	transitorySplitAQBot <= transitoryAQRegOut(3 downto 0);
	transitorySplitAQBotNot(3) <= NOT(transitoryAQRegOut(3));
	transitorySplitAQBotNot(2) <= NOT(transitoryAQRegOut(2));
	transitorySplitAQBotNot(1) <= NOT(transitoryAQRegOut(1));
	transitorySplitAQBotNot(0) <= NOT(transitoryAQRegOut(0));
	
	
	CLA_4bit_Q_Flipped : CLA_4bit
		PORT MAP (
			a => transitorySplitAQBotNot,
			b => "0001",
			cin => '0',
			GClock => GClock,
			GReset => GReset,
			Sum => transitoryQFlipped
		);
	
	mux_2to1_4bit_final_Sum : mux_2to1_4bit
		PORT MAP (
			sel => isSignZero,
			d_in1 => transitorySplitAQBot,
			d_in2 => transitoryQFlipped(3 downto 0),
			d_out => transitorySumQ
		);
	
	transitorySum(7 downto 4) <= transitorySplitAQTop;
	transitorySum(3 downto 0) <= transitorySumQ;
	
	register_8bit_Sum : register_8bit
		PORT MAP (
			i_d => transitorySum,
			i_clock => GClock,
			i_enable => loadSum,
			o_q => Sum
		);
	
	
	
	

end basic;