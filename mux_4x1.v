module mux4x1(rd_v, f0, s, D, P, result);
  input [1:0] f0;
  input [15:0] s, D, P, result;
  output reg [15:0] rd_v;
  
  //wire  s, D, P, result;
  /*always@(*)begin
  assign rd_v=(~f0 & ~f1 & s)|(~f0 & f1 & D)|(f0 & ~f1 & P)|(f0 & f1 & result);
  end*/
  
  always@(*)begin
  case(f0)
    2'b00 : rd_v = s;
    2'b01 : rd_v = D;
    2'b10 : rd_v = P;
    2'b11 : rd_v = result;
  endcase
  end

  
endmodule

