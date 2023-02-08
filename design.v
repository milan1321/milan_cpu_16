// Code your design here

`include "adder.v"
`include "sub.v"
`include "multiplier.v"
`include "division.v"
`include "mux_4x1.v"
`include "demux_16x1_wb.v"
module eu(x0,x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,rd,f0, A, B, Ci);
parameter N=16;
input [N-1:0] A, B;
  input Ci;
  input [1:0] f0;
  //output reg [15:0] rd_v;
  input rd;
  output reg  [15:0] x0,x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15;
  
  wire [15:0] s, D, P, result, rd_v;
  
  fa_nbit blk1(s, co, A, B, Ci);//module_name block_name(o_p, i_p);
  fs_nbit blk2(D, borr, A, B, Ci);
  multiplier blk3(P, A, B);
  division blk4(result, remainder, A, B);
  mux_4x1 blk5(rd_v, f0, s, D, P, result);
  Demultiplexer blk6(x0,x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,rd,rd_v);
endmodule


