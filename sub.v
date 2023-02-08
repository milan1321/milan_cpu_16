module fs_nbit(D, borr, A, B, Ci);
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
endmodule;

