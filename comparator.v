// Code your design here
// Code your design here
module comp_1(e, g, l, a, b);
  input a, b;
  output reg e, g, l;
  
  xnor g1(e, a, b);
  and g2(g, a, ~b);
  and g3(l, ~a, b);
endmodule

module comp_4(e, g, l, a, b);
  input [3:0] a, b;
  output reg e, g, l;
  wire n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12;
  wire m1, m2, m3, m4, m5, m6;
  
  comp_1 c1(.a(a[0]),.b(b[0]),.l(n1),.g(n2),.e(n3));
  comp_1 c2(.a(a[1]),.b(b[1]),.l(n4),.g(n5),.e(n6));
  comp_1 c3(.a(a[2]),.b(b[2]),.l(n7),.g(n8),.e(n9));
  comp_1 c4(.a(a[3]),.b(b[3]),.l(n10),.g(n11),.e(n12));
  
  and g4(m1,n2,n6,n9,n12);
  and g5(m2,n1,n6,n9,n12);
  and g6(m3,n5,n9,n12);
  and g7(m4,n4,n9,n12);
  and g8(m5,n8,n12);
  and g9(m6,n7,n12);
  and g10(e,n3,n6,n9,n12);
  or g11(g,m1,m3,m5,n11);
  or g12(l,m2,m4,m6,n10);
endmodule

module comp_16(a, b, comp);
  input [15:0] a, b;
  output reg comp;
  wire n1,n2,n3,n4,n5,n6,n7,n8,n9,n10,n11,n12;
  wire m1,m2,m3,m4,m5,m6,e, g, l;
  wire [1:0]op1;
  
  comp_4 c1(.a(a[3:0]),.b(b[3:0]),.l(n1),.g(n2),.e(n3));
  comp_4 c2(.a(a[7:4]),.b(b[7:4]),.l(n4),.g(n5),.e(n6));
  comp_4 c3(.a(a[11:8]),.b(b[11:8]),.l(n7),.g(n8),.e(n9));
  comp_4 c4(.a(a[15:12]),.b(b[15:12]),.l(n10),.g(n11),.e(n12));
  
  
  
  and g13(m1,n2,n6,n9,n12);
 
  and g14(m2,n1,n6,n9,n12);
  
  and g15(m3,n5,n9,n12);
  
  and g16(m4,n4,n9,n12);
  
  and g17(m5,n8,n12);
  
  and g18(m6,n7,n12);
  
 
 
  and g19(e,n3,n6,n9,n12);
  
  or g20(g,m1,m3,m5,n11);
 
  or g21(l,m2,m4,m6,n10);
  assign op1={l,g};
  always@(*)begin
    case(op1)
      2'b00 : begin 
        comp = e;
        $display("a=b");
      end
      2'b01 : begin
        comp = g;
        $display("a>b");
      end
      2'b10 :begin
        comp = l;
        $display("a<b");
      end
    endcase
  end
  
endmodule
