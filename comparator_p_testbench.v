module tb;
  reg a0, a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, b0, b1, b2, b3, b4, b5, b6, b7, b8, b9, b10, b11, b12, b13, b14, b15;
  
  //wire e_4_, g_4_, l_4_;
  
wire n_1_1, n_1_2, n_1_3, n_1_4, n_1_5, n_1_6, n_1_7, n_1_8, n_1_9, n_1_10, n_1_11, n_1_12, n_1_13, n_1_14, n_1_15, n_1_16, n_1_18, n_1_19, n_1_20, n_1_21, n_1_22, n_1_23, n_1_24, n_1_25, n_1_26;
  wire n_2_1, n_2_2, n_2_3, n_2_4, n_2_5, n_2_6, n_2_7, n_2_8, n_2_9, n_2_10, n_2_11, n_2_12, n_2_13, n_2_14, n_2_15, n_2_16, n_2_18, n_2_19, n_2_20, n_2_21, n_2_22, n_2_23, n_2_24, n_2_25, n_2_26;
wire n_3_1, n_3_2, n_3_3, n_3_4, n_3_5, n_3_6, n_3_7, n_3_8, n_3_9, n_3_10, n_3_11, n_3_12, n_3_13, n_3_14, n_3_15, n_3_16, n_3_18, n_3_19, n_3_20, n_3_21, n_3_22, n_3_23, n_3_24, n_3_25, n_3_26;

wire n_4_1, n_4_2, n_4_3, n_4_4, n_4_5, n_4_6, n_4_7, n_4_8, n_4_9, n_4_10, n_4_11, n_4_12, n_4_13, n_4_14, n_4_15, n_4_16, n_4_18, n_4_19, n_4_20, n_4_21, n_4_22, n_4_23, n_4_24, n_4_25, n_4_26;


  
  comparator dut(e_4_, g_4_, l_4_, a0, a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, b0, b1, b2, b3, b4, b5, b6, b7, b8, b9, b10, b11, b12, b13, b14, b15);
  
  initial begin
  a0 = $random;
  a1 = $random;
  a2 = $random;
  a3 = $random;
  a4 = $random;
  a5 = $random;
  a6 = $random;
  a7 = $random;
  a8 = $random;
  a9 = $random;
  a10 = $random;
  a11 = $random;
  a12 = $random;
  a13 = $random;
  a14 = $random;
  a15 = $random;
  b0 = $random;
  b1 = $random;
  b2 = $random;
  b3 = $random;
  b4 = $random;
  b5 = $random;
  b6 = $random;
  b7 = $random;
  b8 = $random;
  b9 = $random;
  b10 = $random;
  b11 = $random;
  b12 = $random;
  b13 = $random;
  b14 = $random;
  b15 = $random;
    //e_4_=1;
    //g_4_=0;
    //l_4_=0;
    #100;
    $display("a0=%b, a1=%b, a2=%b, a3=%b,a4=%b, a5=%b, a6=%b, a7=%b,a8=%b, a9=%b, a10=%b, a11=%b,a12=%b, a13=%b, a14=%b, a15=%b, b0=%b, b1=%b, b2=%b, b3=%b, b4=%b, b5=%b, b6=%b, b7=%b,b8=%b, b9=%b, b10=%b, b11=%b,b12=%b, b13=%b, b14=%b, b15=%b, e_4_=%b, g_4_=%b, l_4_=%b", a0, a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, b0, b1, b2, b3, b4, b5, b6, b7, b8, b9, b10, b11, b12, b13, b14, b15, e_4_, g_4_, l_4_);
  end
  initial begin
    $dumpfile("text.vcd");
    $dumpvars(1);
  end

