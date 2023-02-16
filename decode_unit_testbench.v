// Code your testbench here
// or browse Examples
module tb_rs2;
  //wire [15:0] rs2_x;
  wire [15:0] rs2_r_d0,rs2_r_d1,rs2_r_d2,rs2_r_d3;
  reg [3:0] rs2;
  reg [1:0] f0;
  reg [15:0] x0,x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15;
 
  decode_rs2  dut(.rs2_r_d0(rs2_r_d0),.rs2_r_d1(rs2_r_d1),.rs2_r_d2(rs2_r_d2),.rs2_r_d3(rs2_r_d3), .x0(x0), .x1(x1), .x2(x2), .x3(x3), .x4(x4), .x5(x5), .x6(x6), .x7(x7), .x8(x8), .x9(x9), .x10(x10), .x11(x11), .x12(x12), .x13(x13), .x14(x14), .x15(x15), .rs2(rs2), .f0(f0));
  
  initial begin
    repeat(10) begin
    rs2 = $random;
    //rs2_1 = $random;
    //rs2_2 = $random;
    //rs2_3 = $random; 
    x0 = $random;
    x1 = $random;
    x2 = $random;
    x3 = $random;
    x4 = $random;
    x5 = $random;
    x6 = $random;
    x7 = $random;
    x8 = $random;
    x9 = $random;
    x10 = $random;
    x11 = $random;
    x12 = $random;
    x13 = $random;
    x14 = $random;
    x15 = $random;
    f0 = $random;
    //f1 = $random;
#2
      $display("rs2_r_d0=%b, rs2_r_d1=%b, rs2_r_d2=%b, rs2_r_d3=%b, x0=%b, x1=%b, x2=%b, x3=%b, x4=%b, x5=%b, x6=%b, x7=%b, x8=%b, x9=%b, x10=%b, x11=%b, x12=%b, x13=%b, x14=%b, x15=%b, rs2=%b, f0=%b", rs2_r_d0,rs2_r_d1,rs2_r_d2,rs2_r_d3, x0,x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,rs2,f0);
      
    end
  end
endmodule

