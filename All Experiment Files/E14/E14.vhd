-- Entity declaration for the 3-to-8 decoder
entity Decoder3to8 is
    Port (
        A   : in  STD_LOGIC_VECTOR(2 downto 0); -- Input vector (3 bits)
        Y   : out STD_LOGIC_VECTOR(7 downto 0)  -- Output vector (8 bits)
    );
end Decoder3to8;

-- Architecture declaration of the 3-to-8 decoder
architecture Behavioral of Decoder3to8 is
begin
    -- Process to decode the input
    process(A)
    begin
        -- Initialize output to low
        Y <= (others => '0');

        -- Decode input to activate one output
        case A is
            when "000" => Y(0) <= '1';
            when "001" => Y(1) <= '1';
            when "010" => Y(2) <= '1';
            when "011" => Y(3) <= '1';
            when "100" => Y(4) <= '1';
            when "101" => Y(5) <= '1';
            when "110" => Y(6) <= '1';
            when "111" => Y(7) <= '1';
            when others => Y <= (others => '0'); -- Default case
        end case;
    end process;
end Behavioral;
