`timescale 1ns/1ns
module bcd ( clk, reset, out );
  output [3:0] out;
  input clk, reset;
  wire   n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37,
         n38;

  DFFX1 \out_reg[0]  ( .D(n27), .CLK(clk), .Q(out[0]) );
  DFFX1 \out_reg[2]  ( .D(n26), .CLK(clk), .Q(out[2]), .QN(n29) );
  DFFX1 \out_reg[3]  ( .D(n25), .CLK(clk), .Q(out[3]) );
  DFFX1 \out_reg[1]  ( .D(n24), .CLK(clk), .Q(out[1]), .QN(n28) );
  NOR2X0 U17 ( .IN1(reset), .IN2(n30), .QN(n27) );
  XOR2X1 U18 ( .IN1(out[0]), .IN2(n31), .Q(n30) );
  NOR2X0 U19 ( .IN1(reset), .IN2(n32), .QN(n26) );
  XNOR2X1 U20 ( .IN1(n33), .IN2(n29), .Q(n32) );
  NAND2X0 U21 ( .IN1(out[1]), .IN2(n34), .QN(n33) );
  OA21X1 U22 ( .IN1(n31), .IN2(n35), .IN3(n36), .Q(n25) );
  INVX0 U23 ( .IN(reset), .QN(n36) );
  MUX21X1 U24 ( .IN1(out[3]), .IN2(n37), .S(out[0]), .Q(n35) );
  NOR2X0 U25 ( .IN1(n28), .IN2(n29), .QN(n37) );
  OA21X1 U26 ( .IN1(out[1]), .IN2(out[2]), .IN3(out[3]), .Q(n31) );
  NOR2X0 U27 ( .IN1(reset), .IN2(n38), .QN(n24) );
  XOR2X1 U28 ( .IN1(n28), .IN2(n34), .Q(n38) );
  ISOLANDX1 U29 ( .D(out[0]), .ISO(out[3]), .Q(n34) );
endmodule

