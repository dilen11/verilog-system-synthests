`timescale 1ns/1ns
// dilendra khanal


module tb;
reg[7:0] input1;
// output
wire [4:0]o;
reg [7:0] count;
// connecting the testbench wire with
count1 uut(.input1(input1), .o(o));
initial 
begin
for (count = 8'b0; count < 11111111; count = count+1 ) begin // loop that goes form 0 to 256
input1 = count; #100;
end
end 
endmodule
