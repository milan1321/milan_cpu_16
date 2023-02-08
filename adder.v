/*module fa_nbit(s, co, A, B, Ci);
  parameter N=16;
  input [N-1:0] A, B;
  input Ci;
  output reg [N-1:0] s;
  output reg  co;
 // output reg [N-1:0] D;
  //output reg [N-1:0] borr;
  always @(*) begin;
    //{co , s} = A + B + Ci;
      s = A ^ B ^ Ci;
    //$display("sum = %0d",s);
      
  end
endmodule;*/
module fa_nbit(s, co, A, B, Ci);
parameter N=16;
  input [N-1:0] A, B;
  input Ci;
  output reg [N-1:0] s;
  output reg co;
  
  wire [N-1:0] p, g;
  
  genvar i;
  generate
  
  	for(i=0; i<N; i++)begin
    	xor g1(p[i], A[i], B[i]);
    	and g2(g[i], A[i], B[i]);
        xor g3(s[i], p[i], Ci);
      
  	end
  endgenerate  
  
endmodule

