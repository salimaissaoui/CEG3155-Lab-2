library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity adder_subtractor is
    Port ( a : in STD_LOGIC_VECTOR (3 downto 0);
           b : in STD_LOGIC_VECTOR (3 downto 0);
           add_sub : in STD_LOGIC; -- 0 for addition, 1 for subtraction
           result : out STD_LOGIC_VECTOR (3 downto 0);
           carry_out : out STD_LOGIC);
end adder_subtractor;

architecture Structural of adder_subtractor is

    signal b_complement : STD_LOGIC_VECTOR(3 downto 0);
    signal carry : STD_LOGIC_VECTOR(4 downto 0); -- Intermediate carry signals

begin
    -- XOR each bit of b with add_sub for 2's complement subtraction
    b_complement(0) <= b(0) XOR add_sub;
    b_complement(1) <= b(1) XOR add_sub;
    b_complement(2) <= b(2) XOR add_sub;
    b_complement(3) <= b(3) XOR add_sub;

    -- Carry in for the first stage is the add_sub signal (0 for addition, 1 for subtraction)
    carry(0) <= add_sub;

    -- Instantiate four full adders structurally
    FA0: entity work.full_adder port map (
        a => a(0), 
        b => b_complement(0), 
        cin => carry(0), 
        sum => result(0), 
        cout => carry(1)
    );

    FA1: entity work.full_adder port map (
        a => a(1), 
        b => b_complement(1), 
        cin => carry(1), 
        sum => result(1), 
        cout => carry(2)
    );

    FA2: entity work.full_adder port map (
        a => a(2), 
        b => b_complement(2), 
        cin => carry(2), 
        sum => result(2), 
        cout => carry(3)
    );

    FA3: entity work.full_adder port map (
        a => a(3), 
        b => b_complement(3), 
        cin => carry(3), 
        sum => result(3), 
        cout => carry(4)
    );

    -- Final carry-out signal
    carry_out <= carry(4);

end Structural;
