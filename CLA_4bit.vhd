LIBRARY ieee;
USE ieee.STD_LOGIC_1164.ALL;

entity CLA_4bit IS
	PORT (
		a,b : IN STD_LOGIC_VECTOR(3 downto 0);
		cin, GClock, GReset : IN STD_LOGIC;
		Sum : OUT STD_LOGIC_VECTOR(7 downto 0);
		CarryOut, zeroOut, OverFlowOut : OUT STD_LOGIC
	);
end CLA_4bit;

architecture basic of CLA_4bit IS

	COMPONENT dff_8bit
        PORT(
            i_d         : IN  STD_LOGIC_VECTOR(7 downto 0);  -- 8-bit input data
			   i_clock     : IN  STD_LOGIC;                      -- Clock input
			   o_q         : OUT STD_LOGIC_VECTOR(7 downto 0);  -- 8-bit output data
			   o_qBar      : OUT STD_LOGIC_VECTOR(7 downto 0)   -- 8-bit inverted output data
        );
    END COMPONENT;
	
	signal transitoryG : STD_LOGIC_VECTOR(3 downto 0);
	signal transitoryP : STD_LOGIC_VECTOR(3 downto 0);
	signal transitoryC : STD_LOGIC_VECTOR(3 downto 0);
	signal transitorySignal, check_if_zero : STD_LOGIC_VECTOR(7 downto 0);

begin
	transitoryG(0) <= a(0) AND b(0);
	transitoryP(0) <= a(0) OR b(0);
	transitoryC(0) <= transitoryG(0) OR (transitoryP(0) AND Cin);
	transitorySignal(0) <= (a(0) XOR b(0)) XOR cin;
	
	transitoryG(1) <= a(1) AND b(1);
	transitoryP(1) <= a(1) OR b(1);
	transitoryC(1) <= transitoryG(0) OR (transitoryP(0) AND transitoryC(0));
	transitorySignal(1) <= (a(1) XOR b(1)) XOR transitoryC(1);
	
	transitoryG(2) <= a(2) AND b(2);
	transitoryP(2) <= a(2) OR b(2);
	transitoryC(2) <= transitoryG(1) OR (transitoryP(1) AND transitoryC(1));
	transitorySignal(2) <= (a(2) XOR b(2)) XOR transitoryC(2);
	
	transitoryG(3) <= a(3) AND b(3);
	transitoryP(3) <= a(3) OR b(3);
	transitoryC(3) <= transitoryG(2) OR (transitoryP(2) AND transitoryC(2));
	transitorySignal(3) <= (a(3) XOR b(3)) XOR transitoryC(3);
	
	CarryOut <= transitoryC(3);
	OverFlowOut <= (a(3) AND b(3)) XOR (transitorySignal(3));
	
	transitorySignal(4) <= '0';
	transitorySignal(5) <= '0';
	transitorySignal(6) <= '0';
	transitorySignal(7) <= '0';
	
	check_if_zero <= NOT transitorySignal;
	zeroOut <= check_if_zero(0) AND check_if_zero(1) AND check_if_zero(2) AND check_if_zero(3) AND check_if_zero(4) AND check_if_zero(5) AND check_if_zero(6) AND check_if_zero(7);
	
	dff_8bit_inst: dff_8bit
			PORT MAP (
            i_d     => transitorySignal,
            i_clock => GClock,
            o_q     => Sum,
            o_qBar  => open
        );
	
	
end basic;
	