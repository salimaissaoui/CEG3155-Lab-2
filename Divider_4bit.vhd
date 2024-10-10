LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY Divider_4bit IS
	PORT (
		a,b : IN STD_LOGIC_VECTOR(3 downto 0);
		GClock, GReset : IN STD_LOGIC;
		Sum : OUT STD_LOGIC_VECTOR(7 downto 0);
		CarryOut, zeroOut, OverFlowOut : OUT STD_LOGIC
	);
end Divider_4bit;

architecture basic of Divider_4bit IS

	COMPONENT CLA_4bit 
		PORT (
			a,b : IN STD_LOGIC_VECTOR(3 downto 0);
			cin, GClock, GReset : IN STD_LOGIC;
			Sum : OUT STD_LOGIC_VECTOR(7 downto 0);
			CarryOut, zeroOut, OverFlowOut : OUT STD_LOGIC
		);
	END COMPONENT;
	
	COMPONENT mux_2to1_4bit 
		PORT (
			sel     : IN  STD_LOGIC;                             -- Select input
			d_in1   : IN  STD_LOGIC_VECTOR(3 downto 0);        -- 8-bit Data input 1
			d_in2   : IN  STD_LOGIC_VECTOR(3 downto 0);        -- 8-bit Data input 2                         -- Reset input
			d_out   : OUT STD_LOGIC_VECTOR(3 downto 0)  
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
	 
	 COMPONENT Divider_datapath
		PORT (
			X,Y : IN STD_LOGIC_VECTOR(3 downto 0);
			selAQ : IN STD_LOGIC_VECTOR(1 downto 0);
			GClock, GReset, LSB1, LSB0, LSAQ, loadAQ, DecN, loadN, loadM, loadSum, isSignZero : IN STD_LOGIC;
			MSB1, Nzero, CarryOut, ZeroOut, OverflowOut : OUT STD_LOGIC;
			Sum  : OUT STD_LOGIC_VECTOR(7 downto 0)
		);
	 END COMPONENT;
	 
	 COMPONENT divider_contollogic
		PORT (
			GClock, MSB1, Nzero, CarryOut, ZeroOut, OverflowOut : IN STD_LOGIC;
			SelAQ : OUT STD_LOGIC_VECTOR(1 downto 0);
			LSB1, LSB0, LSAQ, loadAQ, DecN, loadN, loadM, loadSum, isSignZero : OUT STD_LOGIC
		);
	 END COMPONENT;
	 
	signal isNegative_res,isNegative_a, isNegative_b, continue_subtracting : STD_LOGIC;
	signal realA,realB, negA, negB, absA, finalabsA, absB, negAbsB, finaltransRemainder, finalRemainder : STD_LOGIC_VECTOR(3 downto 0);
	signal negA1,negB1, transitoryAsub, finalRemainder8bit : STD_LOGIC_VECTOR(7 downto 0);
	signal quotient : STD_LOGIC_VECTOR(3 downto 0) := "0000";
	signal transitoryselAQ : STD_LOGIC_VECTOR(1 downto 0);
	signal transLSB1, transLSB0, transLSAQ, transCarryOut, transDecN, transLoadSum, transIsSignZero, transLoadAQ, transLoadN, transLoadM, transMSB1, transNzero, transZeroOut, transOverflowOut : STD_LOGIC;
	
begin
	isNegative_res <= a(3) XOR b(3);
	isNegative_a <= a(3);
	isNegative_b <= b(3);
	negA <= NOT a;
	negB <= NOT b;
	realA <= a;
	realB <= b;
	
	CLA_4bit_inst0 : CLA_4bit
		PORT MAP (
			a => negA,
			b => "0001",
			cin => '0',
			GClock => GClock,
			GReset => GReset,
			Sum => negA1,
			CarryOut => open,
			zeroOut => open,
			OverFlowOut => open
		);
		
	CLA_4bit_inst1 : CLA_4bit
		PORT MAP (
			a => negB,
			b => "0001",
			cin => '0',
			GClock => GClock,
			GReset => GReset,
			Sum => negB1,
			CarryOut => open,
			zeroOut => open,
			OverFlowOut => open
		);
	
	mux_2to1_4bit_selA : mux_2to1_4bit
		PORT MAP (
			sel => isNegative_a,
			d_in1 => realA,
			d_in2 => negA1(3 downto 0),
			d_out => absA
		);
		
	mux_2to1_4bit_selB : mux_2to1_4bit
		PORT MAP (
			sel => isNegative_b,
			d_in1 => realB,
			d_in2 => negB1(3 downto 0),
			d_out => absB
		);
	
	negAbsB <= not absB;
	
	Divider_datapath_inst : Divider_datapath
		PORT MAP (
			X => absA,
			Y => absB,
			selAQ => transitoryselAQ,
			GClock => GClock,
			GReset => GReset,
			LSB1 => transLSB1,
			LSB0 => transLSB0,
			LSAQ => transLSAQ,
			loadAQ => transLoadAQ,
			DecN => transDecN,
			loadN => transLoadN,
			loadM => transLoadM,
			loadSum => transLoadSum,
			isSignZero => transIsSignZero,
			MSB1 => transMSB1,
			Nzero => transNzero,
			CarryOut => transCarryOut,
			ZeroOut => transZeroOut,
			OverflowOut => transOverflowOut,
			Sum => Sum
		);
		
	divider_contollogic_inst : divider_contollogic
		PORT MAP (
			GClock => GClock,
			MSB1 => transMSB1,
			Nzero => transNzero,
			CarryOut => transCarryOut,
			ZeroOut => transZeroOut,
			OverflowOut => transOverflowOut,
			SelAQ => transitoryselAQ,
			LSB1 => transLSB1,
			LSB0 => transLSB0,
			LSAQ => transLSAQ,
			loadAQ => transLoadAQ,
			DecN => transDecN,
			loadN => transLoadN,
			loadM => transLoadM,
			loadSum => transLoadSum,
			isSignZero => transIsSignZero
		);
	
		
end basic;
