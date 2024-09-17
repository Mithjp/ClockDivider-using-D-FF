`timescale 1ns/1ps
module tb_clk_divider;
// Inputs
reg clk;
reg rst;
// Outputs
wire div1;
wire div2;
wire div3;
wire div4;
// Instantiate the Unit Under Test (UUT)
clk_divider uut (
.clk(clk),
.rst(rst),
.div1(div1),
.div2(div2),
.div3(div3),
.div4(div4)
);
// Clock Generation
initial begin

clk = 0;
forever #5 clk = ~clk; // Clock period = 10 ns (100 MHZ)
end
// Test Sequence
initial begin

// Initialize Inputs
rst = 1; // Assert reset
#10;     // Wait for 10 time units
rst = 0; // Deassert reset
// Wait for some time to observe the behavior
#1000;
// Test completed 
$finish;
end
// Monitor signals
initial begin
$monitor("Time = %0t | clk=%b | rst = %b❘ div1 = %b | div2=%b | div3=%b❘ div4 =%b", $time, clk, rst, div1, div2, div3, div4);
end

initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0, tb_clk_divider);
end
endmodule
