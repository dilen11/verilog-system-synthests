`timescale 1ns/1ns
module bcd_tb;
reg clk = 0, reset = 1;
wire[3:0] out;
bcd uut(clk, reset, out);
initial repeat(50)
# 10 clk =~clk;
initial #10 reset = 0;
endmodule