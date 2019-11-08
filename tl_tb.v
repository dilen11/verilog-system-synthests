
`timescale 1ns/1ns
module tl_tb;
reg start, clk, reset;
wire r,y,g;
tl uut1 (.start(start), .clk(clk),.reset(reset), .r(r), .y(y), .g(g));
always #10 clk = ~clk;
initial begin
 clk = 0;

 reset = 1;
 clk = 0;
#5 start = 0;
#6 reset = 0;
#5 reset = 0;
end
endmodule

