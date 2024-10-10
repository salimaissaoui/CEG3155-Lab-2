LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY divider_contollogic IS
	PORT (
		GClock, MSB1, Nzero, CarryOut, ZeroOut, OverflowOut : IN STD_LOGIC;
		SelAQ : OUT STD_LOGIC_VECTOR(1 downto 0);
		LSB1, LSB0, LSAQ, loadAQ, DecN, loadN, loadM, loadSum, isSignZero : OUT STD_LOGIC
	);
END divider_contollogic;

ARCHITECTURE basic of divider_contollogic IS
	COMPONENT d_FF
        PORT(
            i_d       : IN  STD_LOGIC;
            i_clock   : IN  STD_LOGIC;
            o_q       : OUT STD_LOGIC;
            o_qBar    : OUT STD_LOGIC
        );
    END COMPONENT;
	 
	 signal transitoryNzeroNot, transitoryforSum, transitoryNzeroNot2, transitoryMSB1Not : STD_LOGIC;
begin

	d_FFAQ : d_FF
		PORT MAP (
			i_d => '1',
			i_clock => GClock,
			o_q => loadAQ,
			o_qBar => open
		);
		
	d_FFLoadM : d_FF
		PORT MAP (
			i_d => '1',
			i_clock => GClock,
			o_q => loadM,
			o_qBar => open
		);
		
	d_FFLoadN : d_FF
		PORT MAP (
			i_d => '1',
			i_clock => GClock,
			o_q => loadN,
			o_qBar => open
		);
	
	transitoryNzeroNot <= NOT(Nzero);
	transitoryNzeroNot2 <= transitoryNzeroNot AND NOT(MSB1);
	d_FFLSAQ : d_FF
		PORT MAP (
			i_d => transitoryNzeroNot,
			i_clock => GClock,
			o_q => LSAQ,
			o_qBar => open
		);
		
	d_FFLselAQ0 : d_FF
		PORT MAP (
			i_d => transitoryNzeroNot2,
			i_clock => GClock,
			o_q => selAQ(0),
			o_qBar => open
		);
		
	d_FFLselAQ1 : d_FF
		PORT MAP (
			i_d => MSB1,
			i_clock => GClock,
			o_q => selAQ(1),
			o_qBar => open
		);
	
		
	d_FFLselDecN : d_FF
		PORT MAP (
			i_d => Nzero,
			i_clock => GClock,
			o_q => DecN,
			o_qBar => open
		);
	d_FFLselLSB0 : d_FF
		PORT MAP (
			i_d => MSB1,
			i_clock => GClock,
			o_q => LSB0,
			o_qBar => open
		);
	transitoryMSB1Not <= NOT(MSB1);
	
	d_FFLlsb1 : d_FF
		PORT MAP (
			i_d => transitoryMSB1Not,
			i_clock => GClock,
			o_q => LSB1,
			o_qBar => open
		);
		
	d_FFSignZero : d_FF
		PORT MAP (
			i_d => transitoryMSB1Not,
			i_clock => GClock,
			o_q => isSignZero,
			o_qBar => open
		);
	
	transitoryforSum <= Nzero AND transitoryMSB1Not;
	
	d_FFLoadSum : d_FF
		PORT MAP (
			i_d => transitoryforSum,
			i_clock => GClock,
			o_q => loadSum,
			o_qBar => open
		);
	
	
	
	
	
end basic;