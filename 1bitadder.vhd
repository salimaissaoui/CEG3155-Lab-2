library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- NAND gate definition (primitive)
entity NAND2 is
    Port ( I1 : in  STD_LOGIC;
           I2 : in  STD_LOGIC;
           O  : out STD_LOGIC);
end NAND2;

architecture Structural of NAND2 is
begin
    O <= not (I1 and I2);
end Structural;

-- NOT gate using NAND gate
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity NOT1 is
    Port ( I : in  STD_LOGIC;
           O : out STD_LOGIC);
end NOT1;

architecture Structural of NOT1 is
    component NAND2
        Port ( I1 : in  STD_LOGIC;
               I2 : in  STD_LOGIC;
               O  : out STD_LOGIC);
    end component;
begin
    U1: NAND2 port map (I1 => I, I2 => I, O => O);
end Structural;

-- AND gate using NAND gates
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity AND2 is
    Port ( I1 : in  STD_LOGIC;
           I2 : in  STD_LOGIC;
           O  : out STD_LOGIC);
end AND2;

architecture Structural of AND2 is
    component NAND2
        Port ( I1 : in  STD_LOGIC;
               I2 : in  STD_LOGIC;
               O  : out STD_LOGIC);
    end component;

    component NOT1
        Port ( I : in  STD_LOGIC;
               O : out STD_LOGIC);
    end component;

    signal N1: STD_LOGIC;
begin
    U1: NAND2 port map (I1 => I1, I2 => I2, O => N1);
    U2: NOT1  port map (I => N1, O => O);
end Structural;

-- OR gate using NAND gates
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity OR2 is
    Port ( I1 : in  STD_LOGIC;
           I2 : in  STD_LOGIC;
           O  : out STD_LOGIC);
end OR2;

architecture Structural of OR2 is
    component NAND2
        Port ( I1 : in  STD_LOGIC;
               I2 : in  STD_LOGIC;
               O  : out STD_LOGIC);
    end component;

    signal N1, N2: STD_LOGIC;
begin
    U1: NAND2 port map (I1 => I1, I2 => I1, O => N1);
    U2: NAND2 port map (I1 => I2, I2 => I2, O => N2);
    U3: NAND2 port map (I1 => N1, I2 => N2, O => O);
end Structural;

-- XOR gate using NAND gates
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity XOR2 is
    Port ( I1 : in  STD_LOGIC;
           I2 : in  STD_LOGIC;
           O  : out STD_LOGIC);
end XOR2;

architecture Structural of XOR2 is
    component NAND2
        Port ( I1 : in  STD_LOGIC;
               I2 : in  STD_LOGIC;
               O  : out STD_LOGIC);
    end component;

    signal N1, N2, N3, N4: STD_LOGIC;
begin
    U1: NAND2 port map (I1 => I1, I2 => I2, O => N1);
    U2: NAND2 port map (I1 => I1, I2 => N1, O => N2);
    U3: NAND2 port map (I1 => I2, I2 => N1, O => N3);
    U4: NAND2 port map (I1 => N2, I2 => N3, O => O);
end Structural;

-- Full Adder using structural description
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity full_adder is
    Port ( a    : in  STD_LOGIC;
           b    : in  STD_LOGIC;
           cin  : in  STD_LOGIC;
           sum  : out STD_LOGIC;
           cout : out STD_LOGIC);
end full_adder;

architecture Structural of full_adder is
    -- Component declarations
    component XOR2
        Port ( I1 : in  STD_LOGIC;
               I2 : in  STD_LOGIC;
               O  : out STD_LOGIC);
    end component;

    component AND2
        Port ( I1 : in  STD_LOGIC;
               I2 : in  STD_LOGIC;
               O  : out STD_LOGIC);
    end component;

    component OR2
        Port ( I1 : in  STD_LOGIC;
               I2 : in  STD_LOGIC;
               O  : out STD_LOGIC);
    end component;

    -- Internal signals
    signal s1, s2, s3, s4, s5 : STD_LOGIC;

begin
    -- Instantiate XOR gates for sum calculation
    U1: XOR2 port map (I1 => a,    I2 => b,   O => s1);
    U2: XOR2 port map (I1 => s1,   I2 => cin, O => sum);

    -- Instantiate AND gates for carry calculation
    U3: AND2 port map (I1 => a,    I2 => b,   O => s2);
    U4: AND2 port map (I1 => b,    I2 => cin, O => s3);
    U5: AND2 port map (I1 => a,    I2 => cin, O => s4);

    -- Instantiate OR gates to combine carry outputs
    U6: OR2  port map (I1 => s2,   I2 => s3,  O => s5);
    U7: OR2  port map (I1 => s5,   I2 => s4,  O => cout);
end Structural;

