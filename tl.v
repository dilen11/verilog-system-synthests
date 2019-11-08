
module tl ( start, clk, reset, r, y, g );
  input start, clk, reset;
  output r, y, g;
  wire   N5, N25, N26, N27, N28, n20, n21, n22, n23, n24, n25, n26, n27, n32,
         n33, n34, n35, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49,
         n50, n51, n52, n53, n54, n55, n56;
  wire   [3:0] p_s;
  assign N5 = start;

  LATCHX1 y_reg ( .CLK(N28), .D(N26), .Q(y) );
  LATCHX1 g_reg ( .CLK(N28), .D(N27), .Q(g) );
  LATCHX1 r_reg ( .CLK(N28), .D(N25), .Q(r) );
  DFFASRX1 \p_s_reg[0]  ( .D(n35), .CLK(clk), .RSTB(n27), .SETB(n26), .Q(
        p_s[0]), .QN(n40) );
  DFFASRX1 \p_s_reg[3]  ( .D(n34), .CLK(clk), .RSTB(n25), .SETB(n24), .Q(
        p_s[3]), .QN(n39) );
  DFFASRX1 \p_s_reg[2]  ( .D(n33), .CLK(clk), .RSTB(n23), .SETB(n22), .Q(
        p_s[2]) );
  DFFASRX1 \p_s_reg[1]  ( .D(n32), .CLK(clk), .RSTB(n21), .SETB(n20), .Q(
        p_s[1]), .QN(n41) );
  AO21X1 U37 ( .IN1(n35), .IN2(n42), .IN3(n43), .Q(n27) );
  NAND2X0 U38 ( .IN1(n44), .IN2(n35), .QN(n26) );
  AO21X1 U39 ( .IN1(n40), .IN2(n39), .IN3(n45), .Q(n35) );
  AO21X1 U40 ( .IN1(n34), .IN2(n42), .IN3(n43), .Q(n25) );
  AO21X1 U41 ( .IN1(p_s[0]), .IN2(n46), .IN3(n45), .Q(n34) );
  NAND3X0 U42 ( .IN1(n47), .IN2(n48), .IN3(n44), .QN(n24) );
  NAND2X0 U43 ( .IN1(n41), .IN2(n39), .QN(n48) );
  AO21X1 U44 ( .IN1(n33), .IN2(n42), .IN3(n43), .Q(n23) );
  NAND2X0 U45 ( .IN1(n44), .IN2(n33), .QN(n22) );
  AO221X1 U46 ( .IN1(p_s[2]), .IN2(n40), .IN3(p_s[1]), .IN4(p_s[3]), .IN5(n49), 
        .Q(n33) );
  INVX0 U47 ( .IN(n50), .QN(n49) );
  AO21X1 U48 ( .IN1(n32), .IN2(n42), .IN3(n43), .Q(n21) );
  NOR2X0 U49 ( .IN1(N5), .IN2(reset), .QN(n43) );
  INVX0 U50 ( .IN(reset), .QN(n42) );
  NAND2X0 U51 ( .IN1(n44), .IN2(n32), .QN(n20) );
  NAND2X0 U52 ( .IN1(n47), .IN2(n51), .QN(n32) );
  NAND3X0 U53 ( .IN1(n41), .IN2(n39), .IN3(p_s[0]), .QN(n51) );
  AOI22X1 U54 ( .IN1(p_s[2]), .IN2(p_s[3]), .IN3(p_s[1]), .IN4(n52), .QN(n47)
         );
  NAND2X0 U55 ( .IN1(p_s[0]), .IN2(p_s[2]), .QN(n52) );
  ISOLANDX1 U56 ( .D(N5), .ISO(reset), .Q(n44) );
  NAND2X0 U57 ( .IN1(p_s[3]), .IN2(n53), .QN(N28) );
  AO21X1 U58 ( .IN1(n45), .IN2(n40), .IN3(n46), .Q(N27) );
  AND3X1 U59 ( .IN1(p_s[1]), .IN2(n39), .IN3(p_s[2]), .Q(n46) );
  NOR2X0 U60 ( .IN1(n39), .IN2(n53), .QN(n45) );
  INVX0 U61 ( .IN(n54), .QN(n53) );
  NOR2X0 U62 ( .IN1(p_s[3]), .IN2(n50), .QN(N26) );
  MUX21X1 U63 ( .IN1(n55), .IN2(p_s[1]), .S(p_s[2]), .Q(n50) );
  NAND2X0 U64 ( .IN1(p_s[0]), .IN2(p_s[1]), .QN(n55) );
  MUX21X1 U65 ( .IN1(n54), .IN2(n56), .S(n40), .Q(N25) );
  NOR2X0 U66 ( .IN1(p_s[3]), .IN2(p_s[2]), .QN(n56) );
  NOR2X0 U67 ( .IN1(p_s[1]), .IN2(p_s[2]), .QN(n54) );
endmodule

