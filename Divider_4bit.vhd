LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;

ENTITY Divider_4bit IS
    PORT (
        a, b : IN  STD_LOGIC_VECTOR(3 downto 0);          -- 4-bit operands
        GClock, GReset : IN  STD_LOGIC;                  -- Clock and Reset
        Sum : OUT STD_LOGIC_VECTOR(7 downto 0);          -- 8-bit output (Quotient & Remainder)
        CarryOut, ZeroOut, OverFlowOut : OUT STD_LOGIC   -- Status Flags
    );
END Divider_4bit;

ARCHITECTURE behavioral OF Divider_4bit IS
    -- Internal Signals
    SIGNAL signed_a, signed_b : SIGNED(3 downto 0);
    SIGNAL abs_a, abs_b       : SIGNED(4 downto 0);  -- Extra bit for magnitude
    SIGNAL quotient           : SIGNED(4 downto 0);
    SIGNAL remainder          : SIGNED(4 downto 0);
    SIGNAL is_negative        : STD_LOGIC;
    SIGNAL division_by_zero   : STD_LOGIC;
BEGIN
    PROCESS(GClock, GReset)
        VARIABLE temp_quotient  : SIGNED(4 downto 0);
        VARIABLE temp_remainder : SIGNED(4 downto 0);
    BEGIN
        IF GReset = '1' THEN
            -- Asynchronous Reset: Clear all outputs
            Sum          <= (OTHERS => '0');
            CarryOut     <= '0';
            ZeroOut      <= '0';
            OverFlowOut  <= '0';
        ELSIF rising_edge(GClock) THEN
            -- Convert inputs to signed numbers
            signed_a <= SIGNED(a);
            signed_b <= SIGNED(b);
            
            -- Calculate absolute values with proper resizing
            IF signed_a(3) = '1' THEN
                abs_a <= -resize(SIGNED(a), 5);
            ELSE
                abs_a <= resize(SIGNED(a), 5);
            END IF;
            
            IF signed_b(3) = '1' THEN
                abs_b <= -resize(SIGNED(b), 5);
            ELSE
                abs_b <= resize(SIGNED(b), 5);
            END IF;
            
            -- Determine the sign of the result
            is_negative <= signed_a(3) XOR signed_b(3);
            
            -- Check for division by zero
            IF b = "0000" THEN
                division_by_zero <= '1';
                temp_quotient    := (OTHERS => '0');
                temp_remainder   := (OTHERS => '0');
            ELSE
                division_by_zero <= '0';
                temp_quotient    := abs_a / abs_b;       -- Perform unsigned division
                temp_remainder   := abs_a MOD abs_b;     -- Calculate remainder
            END IF;
            
            -- Apply sign to the quotient
            IF is_negative = '1' THEN
                temp_quotient := -temp_quotient;
            END IF;
            
            -- Assign quotient and remainder
            quotient  <= temp_quotient;
            remainder <= temp_remainder;
            
            -- Combine quotient and remainder into the Sum output
            -- Upper 4 bits: Quotient, Lower 4 bits: Remainder
            -- Since 'quotient' is 5 bits, we take bits 4 downto 1 for the 4-bit quotient
            Sum <= std_logic_vector(quotient(4 downto 1)) & std_logic_vector(remainder(3 downto 0));
            
            -- Set Status Flags using sequential 'if-then-else' statements
            -- CarryOut: Indicates overflow in the quotient
            IF (temp_quotient > 15) OR (temp_quotient < -16) THEN
                CarryOut <= '1';
            ELSE
                CarryOut <= '0';
            END IF;
            
            -- ZeroOut: Indicates if the quotient is zero
            IF temp_quotient = 0 THEN
                ZeroOut <= '1';
            ELSE
                ZeroOut <= '0';
            END IF;
            
            -- OverFlowOut: Indicates division by zero
            OverFlowOut <= division_by_zero;
        END IF;
    END PROCESS;
END behavioral;



