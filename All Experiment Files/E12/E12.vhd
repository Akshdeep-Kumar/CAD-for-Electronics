-- Entity declaration for the 4x1 multiplexer
entity Mux4x1 is
    Port (
        D0   : in  STD_LOGIC;  -- Input data 0
        D1   : in  STD_LOGIC;  -- Input data 1
        D2   : in  STD_LOGIC;  -- Input data 2
        D3   : in  STD_LOGIC;  -- Input data 3
        S    : in  STD_LOGIC_VECTOR(1 downto 0);  -- Selection inputs
        Y    : out STD_LOGIC   -- Output data
    );
end Mux4x1;

-- Architecture declaration of the 4x1 multiplexer
architecture Behavioral of Mux4x1 is
begin
    -- Process defining the behavior of the multiplexer
    with S select
        Y <= D0 when "00",
             D1 when "01",
             D2 when "10",
             D3 when "11";
end Behavioral;
