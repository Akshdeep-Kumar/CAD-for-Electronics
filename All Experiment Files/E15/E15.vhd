-- Entity declaration for JK Flip-Flop
entity JKFlipFlop is
    Port (
        J     : in STD_LOGIC;  -- Set input
        K     : in STD_LOGIC;  -- Reset input
        clk   : in STD_LOGIC;  -- Clock input
        clr   : in STD_LOGIC;  -- Asynchronous clear input
        Q     : out STD_LOGIC; -- Output
        Qnot  : out STD_LOGIC  -- Complementary output
    );
end JKFlipFlop;

-- Architecture declaration of the JK Flip-Flop
architecture Behavioral of JKFlipFlop is
begin
    -- Process with sensitivity list including clk and clr
    process(clk, clr)
    begin
        -- Asynchronous clear
        if clr = '1' then
            Q <= '0';
        elsif rising_edge(clk) then  -- Triggering on the positive edge of the clock
            case (J & K) is
                when "00" => 
                    Q <= Q;  -- Hold state
                when "01" =>
                    Q <= '0';  -- Reset state
                when "10" =>
                    Q <= '1';  -- Set state
                when "11" =>
                    Q <= not Q;  -- Toggle state
            end case;
        end if;
        Qnot <= not Q;  -- Complementary output
    end process;
end Behavioral;
