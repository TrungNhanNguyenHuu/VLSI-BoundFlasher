
// Generated by Cadence Genus(TM) Synthesis Solution 19.13-s073_1
// Generated on: Aug  5 2020 23:41:06 +07 (Aug  5 2020 16:41:06 UTC)

// Verification Directory fv/boundFlasher 

module boundFlasher(flick, clk, rst, led);
  input flick, clk, rst;
  output [15:0] led;
  wire flick, clk, rst;
  wire [15:0] led;
  wire [2:0] state;
  wire [2:0] stateR;
  wire UNCONNECTED, UNCONNECTED0, UNCONNECTED1, flickFlag, n_1, n_2,
       n_3, n_4;
  wire n_5, n_8, n_9, n_16, n_18, n_21, n_22, n_23;
  wire n_24, n_25, n_26, n_27, n_30, n_31, n_32, n_33;
  wire n_38, n_40, n_42, n_43, n_44, n_48, n_49, n_50;
  wire n_51, n_52, n_53, n_54, n_55, n_56, n_57, n_58;
  wire n_59, n_60, n_64, n_67, n_68, n_69, n_70, n_71;
  wire n_72, n_73, n_74, n_75, n_76, n_77, n_78, n_79;
  wire n_80, n_81, n_82, n_83, n_87, n_89, n_92, n_93;
  wire n_95, n_96, n_97, n_98, n_99, n_100, n_101, n_102;
  wire n_103, n_104, n_105, n_106;
  TLATNXL \state_reg[1] (.GN (n_83), .D (n_82), .Q (state[1]), .QN
       (UNCONNECTED));
  TLATNXL \state_reg[0] (.GN (n_83), .D (n_32), .Q (state[0]), .QN
       (n_3));
  TLATNXL \state_reg[2] (.GN (n_83), .D (n_79), .Q (state[2]), .QN
       (UNCONNECTED0));
  NOR3XL g2576__2398(.A (n_55), .B (n_4), .C (n_80), .Y (n_83));
  TLATX1 flickFlag_reg(.G (n_81), .D (n_78), .Q (flickFlag), .QN
       (UNCONNECTED1));
  OAI2BB1X1 g2580__5107(.A0N (stateR[0]), .A1N (n_18), .B0 (n_77), .Y
       (n_82));
  NAND3BXL g2578__6260(.AN (n_87), .B (rst), .C (n_75), .Y (n_81));
  OAI211X1 g2579__4319(.A0 (led[0]), .A1 (n_56), .B0 (n_57), .C0
       (n_74), .Y (n_80));
  OAI22XL g2585__8428(.A0 (n_70), .A1 (n_69), .B0 (n_31), .B1 (n_51),
       .Y (n_79));
  OA21X1 g2581__5526(.A0 (n_50), .A1 (n_76), .B0 (n_72), .Y (n_78));
  AOI21XL g2582__6783(.A0 (flick), .A1 (n_76), .B0 (n_52), .Y (n_77));
  AOI32X1 g2584__3680(.A0 (stateR[2]), .A1 (n_73), .A2 (n_68), .B0
       (n_43), .B1 (n_9), .Y (n_75));
  OAI211X1 g2583__1617(.A0 (n_48), .A1 (n_71), .B0 (n_73), .C0 (n_72),
       .Y (n_74));
  NOR2BX1 g2586__2802(.AN (n_71), .B (n_70), .Y (n_76));
  OA21X1 g2587__1705(.A0 (n_42), .A1 (n_89), .B0 (n_68), .Y (n_69));
  OAI21XL g2588__5122(.A0 (n_87), .A1 (n_67), .B0 (led[0]), .Y (n_71));
  AOI21XL g2589__8246(.A0 (led[0]), .A1 (n_67), .B0 (n_54), .Y (n_68));
  DFFRHQX4 \led_reg[3] (.RN (rst), .CK (clk), .D (n_95), .Q (led[3]));
  DFFRHQX4 \led_reg[8] (.RN (rst), .CK (clk), .D (n_97), .Q (led[8]));
  DFFRHQX4 \led_reg[6] (.RN (rst), .CK (clk), .D (n_64), .Q (led[6]));
  DFFRHQX4 \led_reg[5] (.RN (rst), .CK (clk), .D (n_96), .Q (led[5]));
  OAI22X4 g2599__1881(.A0 (n_53), .A1 (n_38), .B0 (n_40), .B1 (n_89),
       .Y (n_64));
  NAND4XL g2592__7482(.A (led[4]), .B (n_92), .C (led[2]), .D (led[3]),
       .Y (n_67));
  NAND2X4 g2602__6161(.A (led[4]), .B (n_58), .Y (n_60));
  NAND2X4 g2603__9315(.A (led[7]), .B (n_58), .Y (n_59));
  OAI2BB1X1 g2595__9945(.A0N (n_56), .A1N (n_49), .B0 (stateR[0]), .Y
       (n_57));
  OAI33X1 g2596__2883(.A0 (flickFlag), .A1 (stateR[0]), .A2 (n_44), .B0
       (n_87), .B1 (stateR[2]), .B2 (n_54), .Y (n_55));
  AOI211XL g2612__2346(.A0 (flick), .A1 (n_89), .B0 (stateR[0]), .C0
       (n_51), .Y (n_52));
  DFFRHQX4 \led_reg[9] (.RN (rst), .CK (clk), .D (n_100), .Q (led[9]));
  DFFRHQX4 \led_reg[7] (.RN (rst), .CK (clk), .D (n_98), .Q (led[7]));
  DFFRHQX4 \led_reg[4] (.RN (rst), .CK (clk), .D (n_102), .Q (led[4]));
  DFFRHQX4 \led_reg[0] (.RN (rst), .CK (clk), .D (n_101), .Q (led[0]));
  DFFRHQX4 \led_reg[14] (.RN (rst), .CK (clk), .D (n_99), .Q (led[14]));
  DFFRHQX4 \led_reg[12] (.RN (rst), .CK (clk), .D (n_106), .Q
       (led[12]));
  DFFRHQX4 \led_reg[11] (.RN (rst), .CK (clk), .D (n_105), .Q
       (led[11]));
  DFFRHQX4 \led_reg[13] (.RN (rst), .CK (clk), .D (n_103), .Q
       (led[13]));
  DFFRHQX4 \led_reg[10] (.RN (rst), .CK (clk), .D (n_104), .Q
       (led[10]));
  NOR2XL g2619__1666(.A (n_87), .B (n_51), .Y (n_50));
  DFFRHQX4 \led_reg[1] (.RN (rst), .CK (clk), .D (n_33), .Q (led[1]));
  AOI222X1 g2611__7410(.A0 (n_48), .A1 (n_8), .B0 (stateR[2]), .B1
       (n_87), .C0 (led[10]), .C1 (stateR[1]), .Y (n_49));
  DFFRHQX4 \led_reg[2] (.RN (rst), .CK (clk), .D (n_30), .Q (led[2]));
  AOI22XL g2632__5107(.A0 (n_89), .A1 (n_43), .B0 (n_42), .B1
       (stateR[2]), .Y (n_44));
  DFFRHQX4 \led_reg[15] (.RN (rst), .CK (clk), .D (n_26), .Q (led[15]));
  OAI22X4 g2631__1617(.A0 (n_38), .A1 (n_2), .B0 (n_42), .B1 (n_40), .Y
       (n_33));
  NAND2XL g2655__2802(.A (n_43), .B (rst), .Y (n_51));
  AND3XL g2620__1705(.A (rst), .B (n_31), .C (n_56), .Y (n_32));
  OAI22X2 g2622__5122(.A0 (n_38), .A1 (n_1), .B0 (n_40), .B1 (n_93), .Y
       (n_30));
  NAND2X4 g2637__7098(.A (led[6]), .B (n_58), .Y (n_27));
  AND2X1 g2638__6131(.A (led[14]), .B (n_58), .Y (n_26));
  NAND2X4 g2640__1881(.A (led[2]), .B (n_58), .Y (n_25));
  NAND2X4 g2641__5115(.A (led[8]), .B (n_58), .Y (n_24));
  NAND2X4 g2643__7482(.A (led[9]), .B (n_58), .Y (n_23));
  NAND2XL g2654__2883(.A (n_18), .B (stateR[2]), .Y (n_70));
  OAI31X1 g2653__6260(.A0 (n_92), .A1 (n_42), .A2 (n_31), .B0 (n_54),
       .Y (n_9));
  AND2X1 g2656__4319(.A (led[15]), .B (n_73), .Y (n_8));
  NOR2XL g2657__6783(.A (stateR[2]), .B (n_73), .Y (n_43));
  NAND2XL g2658__3680(.A (stateR[2]), .B (stateR[1]), .Y (n_56));
  INVX1 g2659(.A (n_16), .Y (n_38));
  INVX3 g2660(.A (n_40), .Y (n_58));
  MX2X1 g2661__1617(.A (state[1]), .B (n_3), .S0 (state[2]), .Y (n_5));
  INVXL g2668(.A (n_54), .Y (n_72));
  NOR2XL g2662__2802(.A (n_4), .B (stateR[1]), .Y (n_18));
  AO21X2 g2664__1705(.A0 (state[1]), .A1 (state[2]), .B0 (n_3), .Y
       (n_40));
  OA21X2 g2663__5122(.A0 (state[1]), .A1 (state[2]), .B0 (n_3), .Y
       (n_16));
  NAND2XL g2669__8246(.A (flick), .B (n_31), .Y (n_54));
  INVX2 g2677(.A (led[2]), .Y (n_2));
  INVX2 g2671(.A (led[3]), .Y (n_1));
  CLKINVX4 g2678(.A (led[0]), .Y (n_42));
  INVXL g2675(.A (rst), .Y (n_4));
  CLKINVX4 fopt2706(.A (led[5]), .Y (n_89));
  NAND2X2 g2645__2712(.A (n_58), .B (led[10]), .Y (n_22));
  DFFRX1 \stateR_reg[1] (.RN (rst), .CK (clk), .D (state[1]), .Q
       (stateR[1]), .QN (n_73));
  DFFRX1 \stateR_reg[2] (.RN (rst), .CK (clk), .D (state[2]), .Q
       (stateR[2]), .QN (n_48));
  DFFRX1 \stateR_reg[0] (.RN (rst), .CK (clk), .D (state[0]), .Q
       (stateR[0]), .QN (n_31));
  AO22X4 g2722(.A0 (led[15]), .A1 (n_16), .B0 (led[13]), .B1 (n_58), .Y
       (n_99));
  OAI2BB1X4 g2723(.A0N (led[10]), .A1N (n_16), .B0 (n_24), .Y (n_100));
  OAI2BB2X4 g2725(.A0N (n_58), .A1N (led[3]), .B0 (n_38), .B1 (n_89),
       .Y (n_102));
  AO22X4 g2726(.A0 (led[14]), .A1 (n_16), .B0 (led[12]), .B1 (n_58), .Y
       (n_103));
  OAI2BB1X2 g2728(.A0N (led[12]), .A1N (n_16), .B0 (n_22), .Y (n_105));
  OAI2BB1X2 g2729(.A0N (led[13]), .A1N (n_16), .B0 (n_21), .Y (n_106));
  NAND2X2 g2647__2733(.A (led[11]), .B (n_58), .Y (n_21));
  INVX2 fopt2735(.A (led[1]), .Y (n_93));
  INVX2 g2737(.A (led[7]), .Y (n_53));
  OAI2BB1X1 g2739(.A0N (n_16), .A1N (led[4]), .B0 (n_25), .Y (n_95));
  OAI2BB1X1 g2741(.A0N (led[9]), .A1N (n_16), .B0 (n_59), .Y (n_97));
  OAI2BB1X1 g2743(.A0N (led[6]), .A1N (n_16), .B0 (n_60), .Y (n_96));
  OAI2BB1X1 g2745(.A0N (led[8]), .A1N (n_16), .B0 (n_27), .Y (n_98));
  OAI2BB1X1 g2747(.A0N (led[11]), .A1N (n_16), .B0 (n_23), .Y (n_104));
  INVX1 fopt2749(.A (n_93), .Y (n_92));
  OAI2BB1X1 g2751(.A0N (led[1]), .A1N (n_5), .B0 (n_40), .Y (n_101));
  INVX2 fopt2753(.A (n_89), .Y (n_87));
endmodule

