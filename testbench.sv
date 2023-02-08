// Code your testbench here
// or browse Examples
`include "design.v"
module tb;
  parameter N=16;
  reg [N-1:0] A, B;
  reg Ci;
  reg [1:0] f0;
  reg [3:0] rd;
  //wire [N-1:0] S;
  //wire [N-1:0] D;
  //wire [7:0] P;
  //wire [7:0] result, remainder;
//wire co;
//wire borr;  
  wire [15:0] x0,x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15;
  
 // wire [N-1:0] rd_v;
  
  /*fa_nbit dut (.A(A), .B(B), .Ci(Ci), .s(s), .co(co));
 fs_nbit dutt (.A(A), .B(B), .Ci(Ci), .D(D), .borr(borr));
 multiplier duttt (.P(P), .A(A), .B(B));
  division dutttt(.result(result), .remainder(remainder), .A(A), .B(B));
  mux_4x1 duttttt(.rd_v(rd_v), .f0(f0), f1(f1), .s(s), .D(D), .P(P), .result(result));*/
  
  //eu dut(.rd_v(rd_v), .f0(f0), .A(A), .B(B), .Ci(Ci));
  eu dut(.x0(x0),.x1(x1),.x2(x2),.x3(x3),.x4(x4),.x5(x5),.x6(x6),.x7(x7),.x8(x8),.x9(x9),.x10(x10),.x11(x11),.x12(x12),.x13(x13),.x14(x14),.x15(x15),.rd(rd), .f0(f0), .A(A), .B(B), .Ci(Ci));
initial begin
  repeat(10) begin
  A = $random;
  B = $random;
  Ci = $random;
  f0 = 00;
  rd = $random;
  
  //A = 2;
  //B = 20;
  //Ci = 0;
  //f0 = 0;
  //Ci=0;
	#500;
	
  
  //$display("%0t : A=%0d, B=%0d, Ci=%0d, co=%0d, s=%0d, D=%0d, borr=%0d, P=%0d, result=%0d, remainder=%0d", $time, A, B, Ci, co, s, D, borr, P, result, remainder);
 // $display("rd_v=%b, f0=%b, A=%b, B=%b, Ci=%b", rd_v, f0, A, B, Ci);
  $monitor(" x0=%b, x1=%b, x2=%b, x3=%b, x4=%b, x5=%b, x6=%b, x7=%b, x8=%b, x9=%b, x10=%b, x11=%b, x12=%b, x13=%b, x14=%b, x15=%b, rd=%b,f0=%b, A=%b, B=%b, Ci=%b",x0, x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, x11, x12, x13, x14, x15,rd, f0, A, B, Ci);
  
end
end
  initial begin
    $dumpfile("text.vcd");
    $dumpvars(1);
  end
endmodule

