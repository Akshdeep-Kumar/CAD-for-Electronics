`timescale 1ns / 1ps
`include "E16.v"
module CMOSInverter_tb;
reg in;     // Input to the inverter
wire out;   // Output of the inverter
// Instantiate the CMOSInverter
CMOSInverter uut (
    .in(in),
    .out(out)
);
initial begin
    // Initialize the input
    in = 0;
    #10; // Wait for 10 ns
    in = 1;
    #10; // Wait for 10 ns
    in = 0;
    #10; // Wait for 10 ns
    $finish; // End the simulation
end
endmodule
