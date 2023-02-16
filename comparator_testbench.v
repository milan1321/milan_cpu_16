module tb;
  
  reg [15:0]a,b;
  wire comp;
  
  comp_16 dut(a,b,comp);
  initial begin
    repeat(3)begin
      #2;
    a=16'b011111;
    b=16'b011111;
    $monitor("comp=%0b",comp);
    end
  end
endmodule


