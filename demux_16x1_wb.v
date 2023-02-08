// Code your design here
module Demultiplexer(x0,x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,rd,rd_v,);
  input [15:0] rd_v;
  input [3:0] rd;
  output reg  [15:0] x0,x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15;
 
  
  /*assign 
    x0=(rd_v & ~rd3 & ~rd2 & ~rd1 & ~rd0),
    x1=(rd_v & ~rd3 & ~rd2 & ~rd1 & rd0),
    x2=(rd_v & ~rd3 & ~rd2 & rd1 &~rd0),
    x3=(rd_v & ~rd3 & ~rd2 & rd1 &rd0),
    x4=(rd_v & ~rd3 & rd2 & ~rd1 &~rd0),
    x5=(rd_v & ~rd3 & rd2 & ~rd1 &rd0),
    x6=(rd_v & ~rd3 & rd2 & rd1 &~rd0),
    x7=(rd_v & ~rd3 & rd2 & rd1 &rd0),
    	 
    x8=(rd_v & rd3 & ~rd2 & ~rd1 &~rd0),
    x9=(rd_v & rd3 & ~rd2 & ~rd1 &rd0),
    x10=(rd_v & rd3 & ~rd2 & rd1 &~rd0),
    x11=(rd_v & rd3 & ~rd2 & rd1 &rd0),
    x12=(rd_v & rd3 & rd2 & ~rd1 &~rd0),
    x13=(rd_v & rd3 & rd2 & ~rd1 &rd0),
    x14=(rd_v & rd3 & rd2 & rd1 &~rd0),
    x15=(rd_v & rd3 & rd2 & rd1 &rd0);*/
  always@(*)begin
    case(rd)
    4'b0000 : x0 = rd_v;
    4'b0001 : x1 = rd_v;
    4'b0010 : x2 = rd_v;
    4'b0011 : x3 = rd_v;
    4'b0100 : x4 = rd_v;
    4'b0101 : x5 = rd_v;
    4'b0110 : x6 = rd_v;
    4'b0111 : x7 = rd_v;
    4'b1000 : x8 = rd_v;
    4'b1001 : x9 = rd_v;
    4'b1010 : x10 = rd_v;
    4'b1011 : x11 = rd_v;
    4'b1100 : x12 = rd_v;
    4'b1101 : x13 = rd_v;
    4'b1110 : x14 = rd_v;
    4'b1111 : x15 = rd_v;
  endcase
  
  end
		 
endmodule
