/*module fs_nbit(D, borr, A, B, Ci);
  parameter N=16;
  input [N-1:0] A, B;
  input Ci;
  //output reg [N-1:0] s;
  //output reg [N-1:0] co;
  output reg [N-1:0] D;
  output reg  borr;
  //output reg borr;
  always @(*) begin
    
    {borr, D} = A + (~B) + (~Ci);
  
  end
endmodule;*/
// Code your design here
module 16bitsub(A,B,Ci,D,borr);
  parameter N=16;
  input [N-1:0] A, B;
  input Ci;
  output reg [N-1:0] D;
  output reg borr;
  wire [N:0]b;
  
  genvar i;
  generate
    assign b[0]=bin;
    for(i=0; i<=N-1; i++)begin
      fs f0(.A(A[i]),.B(B[i]),.Ci(Ci[i]),.D(D[i]),.borr(b[i+1]));
      
    end
    assign borr=b[N];
  endgenerate
endmodule

module fs(output reg D, borr, input A, B, Ci);
  wire b,b1,sub1;
  hs h1(.A(A),.B(B),.borr(b),.D(sub1));
  hs h2(.A(A),.B(Ci),.borr(b1),.D(sub));
  or h3(borr,b1,b);
endmodule

module hs(output reg D, borr, input A, B);
  xor g1(D, A, B);
  and g2(borr, A, B);
endmodule// Code your design here
module 16bitsub(A,B,Ci,D,borr);
  parameter N=16;
  input [N-1:0] A, B;
  input Ci;
  output reg [N-1:0] D;
  output reg borr;
  wire [N:0]b;
  
  genvar i;
  generate
    assign b[0]=bin;
    for(i=0; i<=N-1; i++)begin
      fs f0(.A(A[i]),.B(B[i]),.Ci(Ci[i]),.D(D[i]),.borr(b[i+1]));
      
    end
    assign borr=b[N];
  endgenerate
endmodule

module fs(output reg D, borr, input A, B, Ci);
  wire b,b1,sub1;
  hs h1(.A(A),.B(B),.borr(b),.D(sub1));
  hs h2(.A(A),.B(Ci),.borr(b1),.D(sub));
  or h3(borr,b1,b);
endmodule

module hs(output reg D, borr, input A, B);
  xor g1(D, A, B);
  and g2(borr, A, B);
endmodule

