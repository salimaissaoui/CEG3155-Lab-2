library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity tb_adder_subtractor is
end tb_adder_subtractor;

architecture behavior of tb_adder_subtractor is

    -- Inputs
    signal a : STD_LOGIC_VECTOR (3 downto 0);
    signal b : STD_LOGIC_VECTOR (3 downto 0);
    signal add_sub : STD_LOGIC;

    -- Outputs
    signal result : STD_LOGIC_VECTOR (3 downto 0);
    signal carry_out : STD_LOGIC;

begin
    -- Instantiate the Unit Under Test (UUT)
    uut: entity work.adder_subtractor
        port map (
            a => a,
            b => b,
            add_sub => add_sub,
            result => result,
            carry_out => carry_out
        );

    -- Test process
    stim_proc: process
    begin
        -- Test case 1: Addition 3 + 5
        a <= "0011"; -- 3
        b <= "0101"; -- 5
        add_sub <= '0'; -- Addition
        wait for 100 ns;

        -- Test case 2: Subtraction 9 - 3
        a <= "1001"; -- 9
        b <= "0011"; -- 3
        add_sub <= '1'; -- Subtraction
        wait for 100 ns;

        -- Add more test cases as needed

        wait;
    end process;

end behavior;
