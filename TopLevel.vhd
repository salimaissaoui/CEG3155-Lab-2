LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY TopLevel IS
	PORT (
		OperandA, OperandB : IN STD_LOGIC_VECTOR(3 downto 0);
		GClock, GReset : IN STD_LOGIC;
		OperationSelect : IN STD_LOGIC_VECTOR(1 downto 0);
		MuxOut : OUT STD_LOGIC_VECTOR(7 downto 0);
		CarryOut, ZeroOut, OverFlowOut : OUT STD_LOGIC
	);
END TopLevel;

Architecture Basic of TopLevel is

	COMPONENT CLA_4bit 
		PORT (
			a,b : IN STD_LOGIC_VECTOR(3 downto 0);
			cin, GClock, GReset : IN STD_LOGIC;
			Sum : OUT STD_LOGIC_VECTOR(7 downto 0);
			CarryOut, zeroOut, OverFlowOut : OUT STD_LOGIC
		);
	END COMPONENT;
	
	COMPONENT Multiplier_4bit
		PORT (
			a,b : IN STD_LOGIC_VECTOR(3 downto 0);
			GClock, GReset : IN STD_LOGIC;
			Sum : OUT STD_LOGIC_VECTOR(7 downto 0);
			CarryOut, zeroOut, OverFlowOut : OUT STD_LOGIC
		);
	END COMPONENT;
	
	COMPONENT Divider_4bit
		PORT (
			a, b : IN  STD_LOGIC_VECTOR(3 downto 0);          -- 4-bit operands
         GClock, GReset : IN  STD_LOGIC;                  -- Clock and Reset
         Sum : OUT STD_LOGIC_VECTOR(7 downto 0);          -- 8-bit output (Quotient & Remainder)
         CarryOut, ZeroOut, OverFlowOut : OUT STD_LOGIC   -- Status Flags
		);
	END COMPONENT;
	COMPONENT mux_4to1
		PORT (
			en    : IN STD_LOGIC;                     -- Enable signal
         sel   : IN  STD_LOGIC_VECTOR(1 downto 0); -- Selection signal
         d_in0 : IN  STD_LOGIC_VECTOR(7 downto 0);  -- 1st 8-bit input
         d_in1 : IN  STD_LOGIC_VECTOR(7 downto 0);  -- 2nd 8-bit input
         d_in2 : IN  STD_LOGIC_VECTOR(7 downto 0);  -- 3rd 8-bit input
         d_in3 : IN  STD_LOGIC_VECTOR(7 downto 0);  -- 4th 8-bit input
         d_out : OUT STD_LOGIC_VECTOR(7 downto 0)   -- 8-bit output
		);
	END COMPONENT;
	
	COMPONENT mux_4to1_1bit
		PORT (
			d_in : IN STD_LOGIC_VECTOR(3 downto 0);
			sel : IN STD_LOGIC_VECTOR(1 downto 0);
			en : IN STD_LOGIC;
			d_out : OUT STD_LOGIC
		);
	END COMPONENT;
	
	
	
	Signal addCarry,addZero,addOverFlow, subCarry,subZero,subOverFlow, multCarry,multZero,multOverFlow, divCarryOut, divZeroOut, divOverflow : STD_LOGIC;
	Signal TransitoryAddOut, TransitorySubOut, transitoryMultOut, transitoryDivOut : STD_LOGIC_VECTOR(7 downto 0);
	Signal combinedCarries, combinedZeroes, combinedOverflow, tA, tB, NotOpB : STD_LOGIC_VECTOR(3 downto 0);
begin 
	
	tA <= OperandA;
	tB <= OperandB;
	
	NotOpB <= NOT OperandB;
	
	CLA_4bit_add : CLA_4bit
		PORT MAP (
			a => tA,
			b => tB,
			cin => '0',
			GClock => GClock,
			GReset => GReset,
			Sum => TransitoryAddOut,
			carryOut => addCarry,
			zeroOut => addZero,
			OverFlowOut => addOverFlow
		);
		
	CLA_4bit_sub : CLA_4bit
		PORT MAP (
			a => tA,
			b => NotOpB,
			cin => '1',
			GClock => GClock,
			GReset => GReset,
			Sum => TransitorySubOut,
			carryOut => subCarry,
			zeroOut => subZero,
			OverFlowOut => subOverFlow
		);
	
	Multiplier_4bit_inst : Multiplier_4bit
		PORT MAP (
			a => tA,
			b => tB,
			GClock => GClock,
			GReset => GReset,
			Sum => transitoryMultOut,
			carryOut => multCarry,
			zeroOut => multZero,
			OverFlowOut => multOverFlow
		);
		
	Divider_4bit_etst_inst : Divider_4bit
		PORT MAP (
			a => tA,
			b => tB,
			GClock => GClock,
			GReset => GReset,
			Sum => transitoryDivOut,
			CarryOut => divCarryOut,
			ZeroOut => divZeroOut,
			OverFlowOut => divOverflow
		);
		
		
	mux_4to1_MuxOut : mux_4to1
		PORT MAP (
			en => '1',
			sel => OperationSelect,
			d_in0 => TransitoryAddOut,
			d_in1 => TransitorySubOut,
			d_in2 => TransitoryMultOut,
			d_in3 => transitoryDivOut,
			d_out => MuxOut
		);
		
	combinedCarries(0) <= addCarry;
	combinedCarries(1) <= subCarry;
	combinedCarries(2) <= multCarry;
	combinedCarries(3) <= divCarryOut;
	
	combinedZeroes(0) <= addZero;
	combinedZeroes(1) <= subZero;
	combinedZeroes(2) <= multZero;
	combinedZeroes(3) <= divZeroOut;
	
	combinedOverflow(0) <= addOverFlow;
	combinedOverflow(1) <= subOverFlow;
	combinedOverflow(2) <= multOverFlow;
	combinedOverflow(3) <= divOverflow;
	
	mux_4to1_1bit_carries : mux_4to1_1bit
		PORT MAP (
			d_in => combinedCarries,
			sel => OperationSelect,
			en => '1',
			d_out => CarryOut
		);
		
	mux_4to1_1bit_zero : mux_4to1_1bit
		PORT MAP (
			d_in => combinedZeroes,
			sel => OperationSelect,
			en => '1',
			d_out => ZeroOut
		);
		
	mux_4to1_1bit_overflow : mux_4to1_1bit
		PORT MAP (
			d_in => combinedOverflow,
			sel => OperationSelect,
			en => '1',
			d_out => OverFlowOut
		);
		
end Basic;