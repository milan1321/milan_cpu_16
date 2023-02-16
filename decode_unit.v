// Code your design here
`include "mux_16x1_rs1_x"
`include "demux_1x16_1x4_rs1_r.v"
`include "mux_16x1_rs2_x.v"
`include "demux_1x16_1x4_rs2_r.v"

module decode_rs1(rs1_r_d0,rs1_r_d1,rs1_r_d2,rs1_r_d3, x0,x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15, rs1, f0);
  
  input [15:0] x0,x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15;
  input [3:0] rs1;
  input [1:0] f0;
  output reg [15:0] rs1_r_d0,rs1_r_d1,rs1_r_d2,rs1_r_d3;
  
  wire [15:0] rs1_x;
  
  mux_16x1_rs1 block_rs1(rs1_x, rs1, x0,x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15);
  Demultiplexer_rs1 block2_rs1(rs1_r_d0,rs1_r_d1,rs1_r_d2,rs1_r_d3,rs1_x,f0);
  
endmodule

module decode_rs2(rs2_r_d0,rs2_r_d1,rs2_r_d2,rs2_r_d3, x0,x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15, rs2, f0);
  
  input [15:0] x0,x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15;
  input [3:0] rs2;
  input [1:0] f0;
  output reg [15:0] rs2_r_d0,rs2_r_d1,rs2_r_d2,rs2_r_d3;
  
  wire [15:0] rs2_x;
  
  mux_16x1_rs2 block1_rs2(rs2_x, rs2, x0,x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15);
  Demultiplexer_rs2 block2_rs2(rs2_r_d0,rs2_r_d1,rs2_r_d2,rs2_r_d3,rs2_x,f0);
  
endmodule

module mux_16x1_rs1(
rs1_x, rs1, x0,x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15);
  input [15:0] rs1; 
  input [15:0] x0,x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15;
  output reg [15:0] rs1_x;

  //wire [3:0] sel;
  //assign sel={rs1_0, rs1_1, rs1_2, rs1_3};

always @ (*) begin
  case(rs1)
    4'b0000 : rs1_x = x0;
    4'b0001 : rs1_x = x1;
    4'b0010 : rs1_x = x2;
    4'b0011 : rs1_x = x3;
    4'b0100 : rs1_x = x4;
    4'b0101 : rs1_x = x5;
    4'b0110 : rs1_x = x6;
    4'b0111 : rs1_x = x7;
    4'b1000 : rs1_x = x8;
    4'b1001 : rs1_x = x9;
    4'b1010 : rs1_x = x10;
    4'b1011 : rs1_x = x11;
    4'b1100 : rs1_x = x12;
    4'b1101 : rs1_x = x13;
    4'b1110 : rs1_x = x14;
    4'b1111 : rs1_x = x15;
endcase
end
endmodule

module Demultiplexer_rs1(rs1_r_d0,rs1_r_d1,rs1_r_d2,rs1_r_d3,rs1_x,f0);
  input [15:0] rs1_x;
  input [1:0] f0;
  output reg [15:0] rs1_r_d0, rs1_r_d1, rs1_r_d2, rs1_r_d3;
  
  /* always @(*) begin
    assign  rs1_r_d0 = (rs1_x &   ~f1 & ~f0),
    		rs1_r_d1 = (rs1_x &   ~f1 & f0),
    		rs1_r_d2 = (rs1_x &   f1 & ~f0),
            rs1_r_d3 = (rs1_x &  f1 & f0);
  end
  
  and g0(rs1_r_d0, rs1_x, ~f1, ~f0 );
  and g1(rs1_r_d1, rs1_x, ~f1, f0 );
  and g2(rs1_r_d2, rs1_x, f1, ~f0 );
  and g3(rs1_r_d3, rs1_x, f1, f0 );*/
  
  always @(*) begin
    case(f0) 
      2'b00 : rs1_r_d0 = rs1_x;
      2'b01 : rs1_r_d1 = rs1_x;
      2'b10 : rs1_r_d2 = rs1_x;
      2'b11 : rs1_r_d3 = rs1_x;
    endcase
  end
endmodule
module mux_16x1_rs2(
rs2_x, rs2, x0,x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15);
  input [15:0] rs2; 
  input [15:0] x0,x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15;
  output reg [15:0] rs2_x;
  wire [15:0] rs2_x;

  //wire [3:0] sel;
  //assign sel={rs2_0, rs2_1, rs2_2, rs2_3};

always @ (*) begin
  case(rs2)
    4'b0000 : rs2_x = x0;
    4'b0001 : rs2_x = x1;
    4'b0010 : rs2_x = x2;
    4'b0011 : rs2_x = x3;
    4'b0100 : rs2_x = x4;
    4'b0101 : rs2_x = x5;
    4'b0110 : rs2_x = x6;
    4'b0111 : rs2_x = x7;
    4'b1000 : rs2_x = x8;
    4'b1001 : rs2_x = x9;
    4'b1010 : rs2_x = x10;
    4'b1011 : rs2_x = x11;
    4'b1100 : rs2_x = x12;
    4'b1101 : rs2_x = x13;
    4'b1110 : rs2_x = x14;
    4'b1111 : rs2_x = x15;
endcase
end
endmodule

module Demultiplexer_rs2(rs2_r_d0,rs2_r_d1,rs2_r_d2,rs2_r_d3,rs2_x,f0);
  input [15:0] rs2_x;
  input [1:0] f0;
  output reg [15:0] rs2_r_d0, rs2_r_d1, rs2_r_d2, rs2_r_d3;
  
  /* always @(*) begin
    assign  rs2_r_d0 = (rs2_x &   ~f1 & ~f0),
    		rs2_r_d1 = (rs2_x &   ~f1 & f0),
    		rs2_r_d2 = (rs2_x &   f1 & ~f0),
            rs2_r_d3 = (rs2_x &  f1 & f0);
  end
  
  and g0(rs2_r_d0, rs2_x, ~f1, ~f0 );
  and g1(rs2_r_d1, rs2_x, ~f1, f0 );
  and g2(rs2_r_d2, rs2_x, f1, ~f0 );
  and g3(rs2_r_d3, rs2_x, f1, f0 );*/
  
  always @(*) begin
    case(f0) 
      2'b00 : rs2_r_d0 = rs2_x;
      2'b01 : rs2_r_d1 = rs2_x;
      2'b10 : rs2_r_d2 = rs2_x;
      2'b11 : rs2_r_d3 = rs2_x;
    endcase
  end
endmodule

