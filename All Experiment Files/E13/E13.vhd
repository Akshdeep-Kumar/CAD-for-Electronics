-- Entity declaration for BCD to Excess-3 converter
entity BCD_to_Excess3 is
    Port ( 
        BCD_in  : in  STD_LOGIC_VECTOR(3 downto 0); -- 4-bit BCD input
        Excess3 : out STD_LOGIC_VECTOR(3 downto 0)  -- 4-bit Excess-3 output
    );
end BCD_to_Excess3;

-- Architecture declaration of the BCD to Excess-3 converter
architecture Behavioral of BCD_to_Excess3 is
begin
    -- Process to handle BCD to Excess-3 conversion
    Excess3 <= BCD_in + "0011";

end Behavioral;
