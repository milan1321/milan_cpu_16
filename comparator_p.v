`include "first.v"
`include "second.v"
`include "third.v"
`include "fourth.v"
module comparator(e_4_, g_4_, l_4_, a0, a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, b0, b1, b2, b3, b4, b5, b6, b7, b8, b9, b10, b11, b12, b13, b14, b15);
  input a0, a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, b0, b1, b2, b3, b4, b5, b6, b7, b8, b9, b10, b11, b12, b13, b14, b15;
  output reg e_4_, g_4_, l_4_;
  
  
  four_bit_comp_1 c1(e_1_, g_1_, l_1_, a0, a1, a2, a3, b0, b1, b2, b3, 1, 0, 0);
  four_bit_comp_2 c2(e_2_, g_2_, l_2_, a4, a5, a6, a7, b4, b5, b6, b7, e_1_, g_1_, l_1_);
  four_bit_comp_3 c3(e_3_, g_3_, l_3_, a8, a9, a10, a11, b8, b9, b10, b11, e_2_, g_2_, l_2_);
  four_bit_comp_4 b44(e_4_, g_4_, l_4_, a12, a13, a14, a15, b12, b13, b14, b15, e_3_, g_3_, l_3_);
  
endmodule
// Code your desig_1_n_1_ here
module four_bit_comp_1(e_1_, g_1_, l_1_, a0, a1, a2, a3, b0, b1, b2, b3,1,0,0);
  input a0, a1, a2, a3, b0, b1, b2, b3, 1, 0, 0;
  output reg e_1_, g_1_, l_1_;
  
  wire n_1_1, n_1_2, n_1_3, n_1_4, n_1_5, n_1_6, n_1_7, n_1_8, n_1_9, n_1_10, n_1_11, n_1_12, n_1_13, n_1_14, n_1_15, n_1_16, n_1_18, n_1_19, n_1_20, n_1_21, n_1_22, n_1_23, n_1_24, n_1_25, n_1_26;

//equal
  xnor g_1_1(n_1_1, a3, b3);
  xnor g_1_2(n_1_2, a2, b2);
  xnor g_1_3(n_1_3, a1, b1);
  xnor g_1_4(n_1_4, a0, b0);
  and g_1_5(n_1_5, n_1_1, n_1_2);
  and g_1_6(n_1_6, n_1_4, n_1_3);
  and g_1_7(e_1_, n_1_5, n_1_6);
 
//g_1_reater than_1_
  and g_1_8(n_1_7, a3, ~b3);
  and g_1_9(n_1_8, a2, ~b2);
  and g_1_10(n_1_9, n_1_8, n_1_1);
  and g_1_12(n_1_10, a1, ~b1);
  and g_1_13(n_1_11, n_1_5, n_1_10);
  and g_1_14(n_1_12, n_1_5, n_1_3);
  and g_1_17(n_1_13, a0, ~b0);
  and g_1_15(n_1_14, n_1_12, n_1_13);
  or g_1_11(n_1_15, n_1_7, n_1_9);
  or g_1_16(n_1_16, n_1_11, n_1_14);
  or g_1_18(g_1_, n_1_15, n_1_16);

  //less than_1_
  and g_1_19(n_1_17, ~a3, b3);
  and g_1_20(n_1_18, ~a2, b2);
  and g_1_21(n_1_19, n_1_18, n_1_1);
  and g_1_23(n_1_20, ~a1, b1);
  and g_1_24(n_1_21, n_1_5, n_1_20);
  and g_1_25(n_1_22, n_1_3, n_1_5);
  and g_1_27(n_1_23, ~a0, b0);
  and g_1_26(n_1_24, n_1_22, n_1_23);
  or g_1_22(n_1_25, n_1_17, n_1_19);
  or g_1_28(n_1_26, n_1_21, n_1_24);
  or g_1_29(l_1_, n_1_25, n_1_26);

endmodule
// Code your desig_2_n_1_ here
module four_bit_comp_2(e_2_, g_2_, l_2_, a4, a5, a6, a7, b4, b5, b6, b7, e_1_, g_1_, l_1_);
  input a4, a5, a6, a7, b4, b5, b6, b7, e_1_, g_1_, l_1_;
  output reg e_2_, g_2_, l_2_;
  
  wire n_2_1, n_2_2, n_2_3, n_2_4, n_2_5, n_2_6, n_2_7, n_2_8, n_2_9, n_2_10, n_2_11, n_2_12, n_2_13, n_2_14, n_2_15, n_2_16, n_2_18, n_2_19, n_2_20, n_2_21, n_2_22, n_2_23, n_2_24, n_2_25, n_2_26;

//equal
  xnor g_2_1(n_2_1, a7, b7);
  xnor g_2_2(n_2_2, a6, b6);
  xnor g_2_3(n_2_3, a5, b5);
  xnor g_2_4(n_2_4, a4, b4);
  and g_2_5(n_2_5, n_2_1, n_2_2);
  and g_2_6(n_2_6, n_2_4, n_2_3);
  and g_2_7(e_2_, n_2_5, n_2_6);
 
//g_2_reater than_1_
  and g_2_8(n_2_7, a7, ~b7);
  and g_2_9(n_2_8, a6, ~b6);
  and g_2_10(n_2_9, n_2_8, n_2_1);
  and g_2_12(n_2_10, a5, ~b5);
  and g_2_13(n_2_11, n_2_5, n_2_10);
  and g_2_14(n_2_12, n_2_5, n_2_3);
  and g_2_17(n_2_13, a4, ~b4);
  and g_2_15(n_2_14, n_2_12, n_2_13);
  or g_2_11(n_2_15, n_2_7, n_2_9);
  or g_2_16(n_2_16, n_2_11, n_2_14);
  or g_2_18(g_2_, n_2_15, n_2_16);

  //less than_1_
  and g_2_19(n_2_17, ~a7, b7);
  and g_2_20(n_2_18, ~a6, b6);
  and g_2_21(n_2_19, n_2_18, n_2_1);
  and g_2_23(n_2_20, ~a5, b5);
  and g_2_24(n_2_21, n_2_5, n_2_20);
  and g_2_25(n_2_22, n_2_3, n_2_5);
  and g_2_27(n_2_23, ~a4, b4);
  and g_2_26(n_2_24, n_2_22, n_2_23);
  or g_2_22(n_2_25, n_2_17, n_2_19);
  or g_2_28(n_2_26, n_2_21, n_2_24);
  or g_2_29(l_2_, n_2_25, n_2_26);

endmodule

// Code your desig_3_n_1_ here
module four_bit_comp_3(e_3_, g_3_, l_3_, a8, a9, a10, a11, b8, b9, b10, b11, e_2_, g_2_, l_2_);
  input a8, a9, a10, a11, b8, b9, b10, b11, e_2_, g_2_, l_2_;
  output reg e_3_, g_3_, l_3_;
  
  wire n_3_1, n_3_2, n_3_3, n_3_4, n_3_5, n_3_6, n_3_7, n_3_8, n_3_9, n_3_10, n_3_11, n_3_12, n_3_13, n_3_14, n_3_15, n_3_16, n_3_18, n_3_19, n_3_20, n_3_21, n_3_22, n_3_23, n_3_24, n_3_25, n_3_26;

//equal
  xnor g_3_1(n_3_1, a11, b11);
  xnor g_3_2(n_3_2, a10, b10);
  xnor g_3_3(n_3_3, a9, b9);
  xnor g_3_4(n_3_4, a8, b8);
  and g_3_5(n_3_5, n_3_1, n_3_2);
  and g_3_6(n_3_6, n_3_4, n_3_3);
  and g_3_7(e_3_, n_3_5, n_3_6);
 
//g_3_reater than_1_
  and g_3_8(n_3_7, a11, ~b11);
  and g_3_9(n_3_8, a10, ~b10);
  and g_3_10(n_3_9, n_3_8, n_3_1);
  and g_3_12(n_3_10, a9, ~b9);
  and g_3_13(n_3_11, n_3_5, n_3_10);
  and g_3_14(n_3_12, n_3_5, n_3_3);
  and g_3_17(n_3_13, a8, ~b8);
  and g_3_15(n_3_14, n_3_12, n_3_13);
  or g_3_11(n_3_15, n_3_7, n_3_9);
  or g_3_16(n_3_16, n_3_11, n_3_14);
  or g_3_18(g_3_, n_3_15, n_3_16);

  //less than_1_
  and g_3_19(n_3_17, ~a11, b11);
  and g_3_20(n_3_18, ~a10, b10);
  and g_3_21(n_3_19, n_3_18, n_3_1);
  and g_3_23(n_3_20, ~a9, b9);
  and g_3_24(n_3_21, n_3_5, n_3_20);
  and g_3_25(n_3_22, n_3_3, n_3_5);
  and g_3_27(n_3_23, ~a8, b8);
  and g_3_26(n_3_24, n_3_22, n_3_23);
  or g_3_22(n_3_25, n_3_17, n_3_19);
  or g_3_28(n_3_26, n_3_21, n_3_24);
  or g_3_29(l_3_, n_3_25, n_3_26);

endmodule


// Code your desig_4_n_1_ here
module four_bit_comp_4(e_4_, g_4_, l_4_, a12, a13, a14, a15, b12, b13, b14, b15, e_3_, g_3_, l_3_);
  input a12, a13, a14, a15, b12, b13, b14, b15, e_3_, g_3_, l_3_;
  output reg e_4_, g_4_, l_4_;
  
  wire n_4_1, n_4_2, n_4_3, n_4_4, n_4_5, n_4_6, n_4_7, n_4_8, n_4_9, n_4_10, n_4_11, n_4_12, n_4_13, n_4_14, n_4_15, n_4_16, n_4_18, n_4_19, n_4_20, n_4_21, n_4_22, n_4_23, n_4_24, n_4_25, n_4_26;

//equal
  xnor g_4_1(n_4_1, a15, b15);
  xnor g_4_2(n_4_2, a14, b14);
  xnor g_4_3(n_4_3, a13, b13);
  xnor g_4_4(n_4_4, a12, b12);
  and g_4_5(n_4_5, n_4_1, n_4_2);
  and g_4_6(n_4_6, n_4_4, n_4_3);
  and g_4_7(e_4_, n_4_5, n_4_6);
 
//g_4_reater than_1_
  and g_4_8(n_4_7, a15, ~b15);
  and g_4_9(n_4_8, a14, ~b14);
  and g_4_10(n_4_9, n_4_8, n_4_1);
  and g_4_12(n_4_10, a13, ~b13);
  and g_4_13(n_4_11, n_4_5, n_4_10);
  and g_4_14(n_4_12, n_4_5, n_4_3);
  and g_4_17(n_4_13, a12, ~b12);
  and g_4_15(n_4_14, n_4_12, n_4_13);
  or g_4_11(n_4_15, n_4_7, n_4_9);
  or g_4_16(n_4_16, n_4_11, n_4_14);
  or g_4_18(g_4_, n_4_15, n_4_16);

  //less than_1_
  and g_4_19(n_4_17, ~a15, b15);
  and g_4_20(n_4_18, ~a14, b14);
  and g_4_21(n_4_19, n_4_18, n_4_1);
  and g_4_23(n_4_20, ~a13, b13);
  and g_4_24(n_4_21, n_4_5, n_4_20);
  and g_4_25(n_4_22, n_4_3, n_4_5);
  and g_4_27(n_4_23, ~a12, b12);
  and g_4_26(n_4_24, n_4_22, n_4_23);
  or g_4_22(n_4_25, n_4_17, n_4_19);
  or g_4_28(n_4_26, n_4_21, n_4_24);
  or g_4_29(l_4_, n_4_25, n_4_26);
endmodule
