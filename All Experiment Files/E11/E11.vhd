-- Entity declaration for the full adder
entity FullAdder is
    Port (
        A    : in  STD_LOGIC;  -- Input bit A
        B    : in  STD_LOGIC;  -- Input bit B
        Cin  : in  STD_LOGIC;  -- Carry input bit
        Sum  : out STD_LOGIC;  -- Output sum bit
        Cout : out STD_LOGIC   -- Carry output bit
    );
end FullAdder;

-- Architecture declaration of the full adder
architecture Behavioral of FullAdder is
begin
    -- Combinational logic for sum and carry out
    Sum  <= A xor B xor Cin;           -- XOR gate for Sum
    Cout <= (A and B) or (B and Cin) or (A and Cin); -- OR gate for Cout
end Behavioral;
