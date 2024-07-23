module CMOSInverter(
    input wire in,    // Input to the inverter
    output wire out   // Output of the inverter
);
// Behavioral modeling of CMOS inverter
assign out = ~in; // The output is the logical NOT of the input
endmodule
