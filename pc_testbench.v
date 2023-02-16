// Code your testbench here
// or browse Examples
module tb;
reg clk, rst;
  wire pc;
  
  pc dut(.clk(clk), .rst(rst), .pc(pc));
  initial begin
   forever  begin clk=1; 
     				#5;
   					clk=0;
     				#5;
   			end
  end
  
  initial begin
  rst=1;
    #5
  rst=0;    
     #1000;
    $finish;
    end  
  initial $display("%0t clk=%d, rst=%d ,pc=%d", $time, clk, rst, pc); 
  initial begin
      $dumpfile("test.vcd");
      $dumpvars(1);
    end
endmodule
