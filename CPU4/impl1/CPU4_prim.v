// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.12.0.240.2
// Netlist written on Sun Jul 21 16:25:30 2024
//
// Verilog Description of module CPU4
//

module CPU4 (clk, rst, key, rx, P, led_dig) /* synthesis syn_module_defined=1 */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(3[8:12])
    input clk;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(4[9:12])
    input rst /* synthesis syn_force_pads=1 */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(5[9:12])
    input key /* synthesis syn_force_pads=1 */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(6[9:12])
    input [15:0]rx;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(7[16:18])
    output [15:0]P;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(8[20:21])
    output [1:0]led_dig;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(10[20:27])
    
    wire clk_c /* synthesis is_clock=1 */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(4[9:12])
    wire rst_c /* synthesis syn_force_pads=1 */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(5[9:12])
    wire key_c /* synthesis syn_force_pads=1 */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(6[9:12])
    wire clk_pll /* synthesis is_clock=1, SET_AS_NETWORK=clk_pll */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(39[6:13])
    
    wire GND_net, VCC_net, rx_c_15, rx_c_14, rx_c_13, rx_c_12, rx_c_11, 
        rx_c_10, rx_c_9, rx_c_8, rx_c_7, rx_c_6, rx_c_5, rx_c_4, 
        rx_c_3, rx_c_2, rx_c_1, rx_c_0, P_c_15, P_c_14, P_c_13, 
        P_c_12, P_c_11, P_c_10, P_c_9, P_c_8, P_c_7, P_c_6, P_c_5, 
        P_c_4, P_c_3, P_c_2, P_c_1, P_c_0;
    wire [15:0]A;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(17[13:14])
    wire [15:0]B;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(18[13:14])
    wire [15:0]SP;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(19[13:15])
    
    wire flag, IRQ_EN;
    wire [9:0]PC;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(22[26:28])
    wire [9:0]PC_temp;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(23[26:33])
    wire [15:0]prog;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(28[13:17])
    
    wire n6336;
    wire [15:0]ram_in;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(30[13:19])
    wire [15:0]ram_out;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(31[14:21])
    
    wire ram_we;
    wire [15:0]alu_a;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(33[13:18])
    wire [15:0]alu_b;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(34[13:18])
    
    wire alu_cin;
    wire [15:0]alu_c;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(36[14:19])
    wire [3:0]alu_type;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(37[11:19])
    
    wire alu_co, n6, n6338, n3514;
    wire [9:0]PC_9__N_177;
    
    wire n273, n274, n275, n276, n277, n278, n279, n280, n281, 
        n282, n283, n23, n3518, n321, n322, n323, n324, n325, 
        n326, n327, n328, n329, n330, n331, n23_adj_449, n25, 
        n25_adj_450, alu_cin_N_368, n371, n4002, n9073;
    wire [9:0]PC_9__N_167;
    
    wire n4000, n23_adj_451, n25_adj_452, n1, n23_adj_453, n2252, 
        n2251, n2250, n2249, n2248, n2247, n2246, n2245, n2244, 
        n2242, n2241, n2240, n2239, n2238, n9146, n6288, n6290, 
        n25_adj_454, n9145, n569, n570, n571, n572, n573, n574, 
        n575, n576, n577, n578;
    wire [9:0]PC_9__N_157;
    wire [15:0]A_15__N_219;
    wire [15:0]B_15__N_235;
    
    wire n9143, n9142, n3990, n9140, n9139, n12, n2863, n2827, 
        n2826, n2825, n2824, n2823, n2822, n2821, n2820, n2819, 
        n2818, n2816, n2861, n2860, n2859, n2801, n9048, clk_pll_enable_83, 
        n8931, n23_adj_455, n25_adj_456, n8930, n18, n17, n15, 
        n14, n9141, n9068, n5331, n8519, n5269, n3818, n7, n8517, 
        n9138, n9355, n9354, n9353, n9348, n9136, n9347, n9346, 
        n12_adj_457, n9135, n1329, n1330, n1331, n1332, n1333, 
        n1334, n1336, n9344, n5267, n9133, n1343, n9131, n9343, 
        n3998, n9342, n2865, n7772, n9130, clk_pll_enable_11, clk_pll_enable_59, 
        n9340, n9339, n2762, n2761, n2760, n4704, n9338, n9336, 
        n4746, n9335, n9128, n23_adj_458, n9334, n9127, n9332, 
        n25_adj_459, n5, clk_pll_enable_141, n9125, n8399, n9124, 
        n9122, n9331, n9121, n2855, n9119, n2854, n2853, n2852, 
        n2858, n2857, n2851, n2850, n2848, n9330, n3817, clk_pll_enable_44, 
        n9328, n2856, n9327, n6_adj_460, n23_adj_461, n8396, n9326, 
        n25_adj_462, n3992, n2864, n2862, n2800, n2799, n2798, 
        n2797, n2796, n2795, n2794, n2793, n2792, n2791, n2790, 
        n2773, n2772, n2765, n2789, n2787, n2786, n2788, n2785, 
        n3994, n14_adj_463, n9118, n2759, n2758, n2757, n2756, 
        n2755, n2754, n2753, n2752, n9072, n9, n34, n25_adj_464, 
        n23_adj_465, n3542, n9102, n9116, n25_adj_466, n9115, n2680, 
        n3996, n7877, n6_adj_467, n11, n9113, n11_adj_468, n40, 
        clk_pll_enable_129, n9112, clk_pll_enable_113, n9110, n7767, 
        n8761, clk_pll_enable_120, n1_adj_469, n8760, n8408, n9109, 
        n5_adj_470, n8758, n9_adj_471, n6_adj_472, n6_adj_473, n9107, 
        n3, n8757, n33, n9433, n6240, n6_adj_474, clk_pll_enable_12, 
        n6242, n3791, n9106, n20, n8416, n9104, n9093, n9067, 
        n6_adj_475, clk_pll_enable_122, n7_adj_476, n9144, n9071, 
        n9103, n9066, n1_adj_477, n8355, n6192, n6194, n9101, 
        clk_pll_enable_74, n9100, n4515, n7784, n9098, clk_pll_enable_131, 
        clk_pll_enable_140, n7771, n9120, n9084, n8362, n6_adj_478, 
        clk_pll_enable_98, n9065, n4, n9097, n1_adj_479, n9064, 
        n13, n17_adj_480, n30, n9063, n9123, n14_adj_481, n15_adj_482, 
        n17_adj_483, n7783, n9188, n30_adj_484, n6144, n6832, n9083, 
        n5323, n9096, n14_adj_485, n15_adj_486, n17_adj_487, n18_adj_488, 
        n6146, clk_pll_enable_123, n9061, n9108, n14_adj_489, n15_adj_490, 
        n17_adj_491, n18_adj_492, n9187, n8446, n9186, n7845, n9060, 
        n9117, n14_adj_493, n15_adj_494, n17_adj_495, n18_adj_496, 
        n14_adj_497, n15_adj_498, n9099, n17_adj_499, n18_adj_500, 
        n9058, n9057, n9090, n14_adj_501, n15_adj_502, n17_adj_503, 
        n18_adj_504, n9082, n9081, n9105, n14_adj_505, n15_adj_506, 
        n17_adj_507, n18_adj_508, n58, n9095, n9114, n9094, n9054, 
        n9111, n14_adj_509, n15_adj_510, n17_adj_511, n18_adj_512, 
        n9178, n9177, n9092, n5525, n8434, n9070, n8636, n5315, 
        n31, n9091, n9434, n9089, n15_adj_513, n9088, n9126, n7782, 
        n1_adj_514, n9132, n6528, n6530, n9051, n5133, n7781, 
        clk_pll_enable_29, n7780, n9129, n9050, n1_adj_515, clk_pll_enable_10, 
        n4003, n4001, n3999, n3997, n3995, n3993, n3991, n3989, 
        n3988, n6480, n6482, n9069, clk_pll_enable_15, n7770, n7769, 
        n1_adj_516, n7776, n6432, n6434, n7775, n7774, n1_adj_517, 
        n6384, n6386, n8732, n8801, n7768, n3836, n8731, n8730, 
        n7773, n1_adj_518, n6105, n6_adj_519, n6_adj_520, n8803, 
        n26, n8802, n46, n6_adj_521, n8800, n8799, n8798, n5_adj_522, 
        n9047, n9087, n9_adj_523, n9076, n9085, n6_adj_524, n9075, 
        n9046, n9074, n21, n25_adj_525;
    
    VHI i2 (.Z(VCC_net));
    LUT4 n6105_bdd_4_lut_6699 (.A(n6105), .B(alu_c[1]), .C(n2251), .D(n1329), 
         .Z(B_15__N_235[1])) /* synthesis lut_function=(A (B (C+!(D))+!B (C (D)))+!A (C (D))) */ ;
    defparam n6105_bdd_4_lut_6699.init = 16'hf088;
    OB P_pad_3 (.I(P_c_3), .O(P[3]));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(8[20:21])
    OB P_pad_4 (.I(P_c_4), .O(P[4]));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(8[20:21])
    ram RAM_M (.clk_pll(clk_pll), .VCC_net(VCC_net), .GND_net(GND_net), 
        .ram_we(ram_we), .PC({PC}), .ram_in({ram_in}), .ram_out({ram_out})) /* synthesis NGD_DRC_MASK=1, syn_module_defined=1 */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(46[5] 54[2])
    LUT4 n3791_bdd_4_lut_6650 (.A(n3791), .B(n9047), .C(alu_c[14]), .D(ram_out[14]), 
         .Z(n9330)) /* synthesis lut_function=(A (B (D)+!B (C))) */ ;
    defparam n3791_bdd_4_lut_6650.init = 16'ha820;
    FD1P3AX B_i0_i0 (.D(B_15__N_235[0]), .SP(clk_pll_enable_44), .CK(clk_pll), 
            .Q(B[0]));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(75[11] 324[5])
    defparam B_i0_i0.GSR = "DISABLED";
    LUT4 i4253_2_lut_3_lut_3_lut_4_lut (.A(prog[2]), .B(n9072), .C(n9073), 
         .D(ram_out[13]), .Z(n2239)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(287[5:13])
    defparam i4253_2_lut_3_lut_3_lut_4_lut.init = 16'h0200;
    OB P_pad_5 (.I(P_c_5), .O(P[5]));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(8[20:21])
    OB P_pad_6 (.I(P_c_6), .O(P[6]));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(8[20:21])
    OB P_pad_7 (.I(P_c_7), .O(P[7]));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(8[20:21])
    OB P_pad_8 (.I(P_c_8), .O(P[8]));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(8[20:21])
    LUT4 i1_2_lut (.A(n8355), .B(PC_temp[2]), .Z(n23_adj_465)) /* synthesis lut_function=(!(A+!(B))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(293[5] 319[12])
    defparam i1_2_lut.init = 16'h4444;
    OB P_pad_9 (.I(P_c_9), .O(P[9]));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(8[20:21])
    IB rx_pad_0 (.I(rx[0]), .O(rx_c_0));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(7[16:18])
    OB P_pad_10 (.I(P_c_10), .O(P[10]));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(8[20:21])
    IB rx_pad_1 (.I(rx[1]), .O(rx_c_1));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(7[16:18])
    OB P_pad_11 (.I(P_c_11), .O(P[11]));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(8[20:21])
    OB P_pad_12 (.I(P_c_12), .O(P[12]));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(8[20:21])
    OB P_pad_13 (.I(P_c_13), .O(P[13]));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(8[20:21])
    LUT4 mux_663_i15_3_lut (.A(ram_out[14]), .B(A[14]), .C(n11_adj_468), 
         .Z(n2786)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(76[3] 323[11])
    defparam mux_663_i15_3_lut.init = 16'hcaca;
    LUT4 i21_4_lut (.A(n9122), .B(n3791), .C(n9074), .D(n1_adj_517), 
         .Z(A_15__N_219[5])) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(28[13:17])
    defparam i21_4_lut.init = 16'hca0a;
    OB P_pad_14 (.I(P_c_14), .O(P[14]));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(8[20:21])
    IB rx_pad_2 (.I(rx[2]), .O(rx_c_2));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(7[16:18])
    FD1P3AX alu_a_i0_i0 (.D(n2800), .SP(clk_pll_enable_59), .CK(clk_pll), 
            .Q(alu_a[0]));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(75[11] 324[5])
    defparam alu_a_i0_i0.GSR = "DISABLED";
    LUT4 i4254_2_lut_3_lut_3_lut_4_lut (.A(prog[2]), .B(n9072), .C(n9073), 
         .D(ram_out[14]), .Z(n2238)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(287[5:13])
    defparam i4254_2_lut_3_lut_3_lut_4_lut.init = 16'h0200;
    FD1P3AX alu_b_i0_i0 (.D(B[0]), .SP(clk_pll_enable_74), .CK(clk_pll), 
            .Q(alu_b[0]));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(75[11] 324[5])
    defparam alu_b_i0_i0.GSR = "DISABLED";
    FD1P3AX PC_temp_i0_i0 (.D(n2827), .SP(clk_pll_enable_83), .CK(clk_pll), 
            .Q(PC_temp[0]));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(75[11] 324[5])
    defparam PC_temp_i0_i0.GSR = "DISABLED";
    FD1P3AX ram_in_i0_i0 (.D(n2865), .SP(clk_pll_enable_98), .CK(clk_pll), 
            .Q(ram_in[0]));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(75[11] 324[5])
    defparam ram_in_i0_i0.GSR = "DISABLED";
    FD1P3AX P_i0_i1 (.D(A[0]), .SP(clk_pll_enable_113), .CK(clk_pll), 
            .Q(P_c_0));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(75[11] 324[5])
    defparam P_i0_i1.GSR = "DISABLED";
    IB rx_pad_3 (.I(rx[3]), .O(rx_c_3));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(7[16:18])
    IB rx_pad_4 (.I(rx[4]), .O(rx_c_4));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(7[16:18])
    FD1P3AX PC_i0_i0 (.D(n3818), .SP(clk_pll_enable_120), .CK(clk_pll), 
            .Q(PC[0]));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(75[11] 324[5])
    defparam PC_i0_i0.GSR = "ENABLED";
    FD1P3AX alu_type_i0_i0 (.D(n5269), .SP(clk_pll_enable_123), .CK(clk_pll), 
            .Q(alu_type[0]));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(75[11] 324[5])
    defparam alu_type_i0_i0.GSR = "DISABLED";
    IB rx_pad_5 (.I(rx[5]), .O(rx_c_5));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(7[16:18])
    FD1S3JX statu_FSM_i1 (.D(n1336), .CK(clk_pll), .PD(n1329), .Q(n1334));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(76[3] 323[11])
    defparam statu_FSM_i1.GSR = "ENABLED";
    OB P_pad_2 (.I(P_c_2), .O(P[2]));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(8[20:21])
    ALU ALU_M (.alu_a({alu_a}), .\alu_type[2] (alu_type[2]), .alu_b({alu_b}), 
        .\alu_type[0] (alu_type[0]), .alu_c({alu_c}), .alu_co(alu_co), 
        .\alu_type[1] (alu_type[1]), .GND_net(GND_net), .alu_cin(alu_cin)) /* synthesis syn_module_defined=1 */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(56[5] 63[2])
    IB rx_pad_6 (.I(rx[6]), .O(rx_c_6));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(7[16:18])
    IB rx_pad_7 (.I(rx[7]), .O(rx_c_7));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(7[16:18])
    LUT4 i21_4_lut_adj_4 (.A(n9125), .B(n3791), .C(n9074), .D(n1_adj_516), 
         .Z(A_15__N_219[6])) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(28[13:17])
    defparam i21_4_lut_adj_4.init = 16'hca0a;
    LUT4 i21_4_lut_adj_5 (.A(n9119), .B(n3791), .C(n9074), .D(n1_adj_515), 
         .Z(A_15__N_219[7])) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(28[13:17])
    defparam i21_4_lut_adj_5.init = 16'hca0a;
    IB rx_pad_8 (.I(rx[8]), .O(rx_c_8));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(7[16:18])
    PLL pll_m (.clk_c(clk_c), .clk_pll(clk_pll), .GND_net(GND_net)) /* synthesis NGD_DRC_MASK=1, syn_module_defined=1 */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(41[5] 44[2])
    LUT4 i21_4_lut_adj_6 (.A(n9140), .B(n3791), .C(n9074), .D(n1_adj_514), 
         .Z(A_15__N_219[8])) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(28[13:17])
    defparam i21_4_lut_adj_6.init = 16'hca0a;
    LUT4 i3656_3_lut (.A(ram_out[15]), .B(A[15]), .C(n11_adj_468), .Z(n2785)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i3656_3_lut.init = 16'hcaca;
    LUT4 mux_670_i2_4_lut (.A(PC[1]), .B(PC_9__N_177[1]), .C(n2816), .D(n2801), 
         .Z(n2826)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(75[11] 324[5])
    defparam mux_670_i2_4_lut.init = 16'hcac0;
    LUT4 mux_670_i3_4_lut (.A(PC[2]), .B(PC_9__N_177[2]), .C(n2816), .D(n2801), 
         .Z(n2825)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(75[11] 324[5])
    defparam mux_670_i3_4_lut.init = 16'hcac0;
    LUT4 i1_2_lut_3_lut_3_lut_4_lut (.A(prog[2]), .B(n9072), .C(n9073), 
         .D(ram_out[9]), .Z(n15_adj_513)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(287[5:13])
    defparam i1_2_lut_3_lut_3_lut_4_lut.init = 16'h0200;
    LUT4 i4299_2_lut_rep_68 (.A(prog[2]), .B(prog[3]), .Z(n9060)) /* synthesis lut_function=(A (B)) */ ;
    defparam i4299_2_lut_rep_68.init = 16'h8888;
    LUT4 n30_bdd_3_lut_6426_4_lut (.A(prog[2]), .B(prog[3]), .C(n9089), 
         .D(n13), .Z(n8757)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (C)) */ ;
    defparam n30_bdd_3_lut_6426_4_lut.init = 16'hf870;
    LUT4 mux_670_i4_4_lut (.A(PC[3]), .B(PC_9__N_177[3]), .C(n2816), .D(n2801), 
         .Z(n2824)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(75[11] 324[5])
    defparam mux_670_i4_4_lut.init = 16'hcac0;
    LUT4 i1_2_lut_3_lut_3_lut_4_lut_adj_7 (.A(prog[2]), .B(n9072), .C(n9073), 
         .D(ram_out[2]), .Z(n2250)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(287[5:13])
    defparam i1_2_lut_3_lut_3_lut_4_lut_adj_7.init = 16'h0200;
    LUT4 mux_670_i5_4_lut (.A(PC[4]), .B(PC_9__N_177[4]), .C(n2816), .D(n2801), 
         .Z(n2823)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(75[11] 324[5])
    defparam mux_670_i5_4_lut.init = 16'hcac0;
    LUT4 n6105_bdd_4_lut_6691 (.A(n6105), .B(alu_c[9]), .C(n15_adj_513), 
         .D(n1329), .Z(B_15__N_235[9])) /* synthesis lut_function=(A (B (C+!(D))+!B (C (D)))+!A (C (D))) */ ;
    defparam n6105_bdd_4_lut_6691.init = 16'hf088;
    LUT4 mux_670_i6_4_lut (.A(PC[5]), .B(PC_9__N_177[5]), .C(n2816), .D(n2801), 
         .Z(n2822)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(75[11] 324[5])
    defparam mux_670_i6_4_lut.init = 16'hcac0;
    LUT4 mux_37_Mux_9_i13_4_lut_4_lut (.A(prog[0]), .B(prog[1]), .C(ram_out[9]), 
         .D(n322), .Z(n13)) /* synthesis lut_function=(A (B (C))+!A (B (C)+!B (D))) */ ;
    defparam mux_37_Mux_9_i13_4_lut_4_lut.init = 16'hd1c0;
    LUT4 n6105_bdd_4_lut_6700 (.A(n6105), .B(alu_c[15]), .C(n5), .D(n1329), 
         .Z(B_15__N_235[15])) /* synthesis lut_function=(A (B (C+!(D))+!B (C (D)))+!A (C (D))) */ ;
    defparam n6105_bdd_4_lut_6700.init = 16'hf088;
    LUT4 mux_670_i7_4_lut (.A(PC[6]), .B(PC_9__N_177[6]), .C(n2816), .D(n2801), 
         .Z(n2821)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(75[11] 324[5])
    defparam mux_670_i7_4_lut.init = 16'hcac0;
    LUT4 mux_670_i8_4_lut (.A(PC[7]), .B(PC_9__N_177[7]), .C(n2816), .D(n2801), 
         .Z(n2820)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(75[11] 324[5])
    defparam mux_670_i8_4_lut.init = 16'hcac0;
    LUT4 n6105_bdd_4_lut (.A(n6105), .B(alu_c[0]), .C(n2252), .D(n1329), 
         .Z(B_15__N_235[0])) /* synthesis lut_function=(A (B (C+!(D))+!B (C (D)))+!A (C (D))) */ ;
    defparam n6105_bdd_4_lut.init = 16'hf088;
    LUT4 mux_670_i9_4_lut (.A(PC[8]), .B(PC_9__N_177[8]), .C(n2816), .D(n2801), 
         .Z(n2819)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(75[11] 324[5])
    defparam mux_670_i9_4_lut.init = 16'hcac0;
    LUT4 i1_2_lut_3_lut_3_lut_4_lut_adj_8 (.A(prog[2]), .B(n9072), .C(n9073), 
         .D(ram_out[3]), .Z(n2249)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(287[5:13])
    defparam i1_2_lut_3_lut_3_lut_4_lut_adj_8.init = 16'h0200;
    FD1P3AX prog__0__i1 (.D(ram_out[0]), .SP(clk_pll_enable_141), .CK(clk_pll), 
            .Q(prog[0]));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(75[11] 324[5])
    defparam prog__0__i1.GSR = "DISABLED";
    IB rx_pad_9 (.I(rx[9]), .O(rx_c_9));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(7[16:18])
    LUT4 mux_670_i10_4_lut (.A(n2801), .B(PC_9__N_177[9]), .C(n2816), 
         .D(PC[9]), .Z(n2818)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(75[11] 324[5])
    defparam mux_670_i10_4_lut.init = 16'hcac0;
    LUT4 i1_2_lut_rep_69 (.A(n1333), .B(ram_out[15]), .Z(n9061)) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(76[3] 323[11])
    defparam i1_2_lut_rep_69.init = 16'h2222;
    LUT4 n21_bdd_4_lut (.A(n21), .B(n25_adj_525), .C(prog[2]), .D(n9066), 
         .Z(clk_pll_enable_15)) /* synthesis lut_function=(A (B (D)+!B !(C+!(D)))+!A (B (C (D)))) */ ;
    defparam n21_bdd_4_lut.init = 16'hca00;
    FD1P3AX IRQ_EN_137 (.D(n3836), .SP(clk_pll_enable_10), .CK(clk_pll), 
            .Q(IRQ_EN));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(75[11] 324[5])
    defparam IRQ_EN_137.GSR = "ENABLED";
    LUT4 i1_2_lut_3_lut_3_lut_4_lut_adj_9 (.A(prog[2]), .B(n9072), .C(n9073), 
         .D(ram_out[4]), .Z(n2248)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(287[5:13])
    defparam i1_2_lut_3_lut_3_lut_4_lut_adj_9.init = 16'h0200;
    LUT4 i1_2_lut_3_lut_3_lut_4_lut_adj_10 (.A(prog[2]), .B(n9072), .C(n9073), 
         .D(ram_out[5]), .Z(n2247)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(287[5:13])
    defparam i1_2_lut_3_lut_3_lut_4_lut_adj_10.init = 16'h0200;
    IB rx_pad_10 (.I(rx[10]), .O(rx_c_10));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(7[16:18])
    IB rx_pad_11 (.I(rx[11]), .O(rx_c_11));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(7[16:18])
    IB rx_pad_12 (.I(rx[12]), .O(rx_c_12));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(7[16:18])
    LUT4 n5_bdd_4_lut (.A(n5_adj_522), .B(n9_adj_523), .C(prog[0]), .D(n1331), 
         .Z(n2765)) /* synthesis lut_function=(A (B (D)+!B !(C+!(D)))+!A (B (C (D)))) */ ;
    defparam n5_bdd_4_lut.init = 16'hca00;
    IB rst_pad (.I(rst), .O(rst_c));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(5[9:12])
    LUT4 i3744_3_lut (.A(ram_out[1]), .B(A[1]), .C(n11_adj_468), .Z(n2799)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i3744_3_lut.init = 16'hcaca;
    IB rx_pad_13 (.I(rx[13]), .O(rx_c_13));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(7[16:18])
    LUT4 n8931_bdd_4_lut (.A(n8931), .B(n8930), .C(prog[2]), .D(n9066), 
         .Z(clk_pll_enable_59)) /* synthesis lut_function=(A (B (D)+!B !(C+!(D)))+!A (B (C (D)))) */ ;
    defparam n8931_bdd_4_lut.init = 16'hca00;
    LUT4 i3793_3_lut (.A(ram_out[2]), .B(A[2]), .C(n11_adj_468), .Z(n2798)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i3793_3_lut.init = 16'hcaca;
    CCU2D add_169_11 (.A0(SP[9]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(SP[10]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n7784), 
          .S0(n274), .S1(n273));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(194[13:19])
    defparam add_169_11.INIT0 = 16'h5aaa;
    defparam add_169_11.INIT1 = 16'h5aaa;
    defparam add_169_11.INJECT1_0 = "NO";
    defparam add_169_11.INJECT1_1 = "NO";
    LUT4 i3842_3_lut (.A(ram_out[3]), .B(A[3]), .C(n11_adj_468), .Z(n2797)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i3842_3_lut.init = 16'hcaca;
    IB rx_pad_14 (.I(rx[14]), .O(rx_c_14));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(7[16:18])
    LUT4 i1_2_lut_3_lut_3_lut_4_lut_adj_11 (.A(prog[2]), .B(n9072), .C(n9073), 
         .D(ram_out[6]), .Z(n2246)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(287[5:13])
    defparam i1_2_lut_3_lut_3_lut_4_lut_adj_11.init = 16'h0200;
    LUT4 i1_2_lut_3_lut_3_lut_4_lut_adj_12 (.A(prog[2]), .B(n9072), .C(n9073), 
         .D(ram_out[7]), .Z(n2245)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(287[5:13])
    defparam i1_2_lut_3_lut_3_lut_4_lut_adj_12.init = 16'h0200;
    LUT4 i3891_3_lut (.A(ram_out[4]), .B(A[4]), .C(n11_adj_468), .Z(n2796)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i3891_3_lut.init = 16'hcaca;
    LUT4 i3940_3_lut (.A(ram_out[5]), .B(A[5]), .C(n11_adj_468), .Z(n2795)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i3940_3_lut.init = 16'hcaca;
    LUT4 i3989_3_lut (.A(ram_out[6]), .B(A[6]), .C(n11_adj_468), .Z(n2794)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i3989_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut_3_lut_3_lut_4_lut_adj_13 (.A(prog[2]), .B(n9072), .C(n9073), 
         .D(ram_out[8]), .Z(n2244)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(287[5:13])
    defparam i1_2_lut_3_lut_3_lut_4_lut_adj_13.init = 16'h0200;
    IB clk_pad (.I(clk), .O(clk_c));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(4[9:12])
    LUT4 i4038_3_lut (.A(ram_out[7]), .B(A[7]), .C(n11_adj_468), .Z(n2793)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i4038_3_lut.init = 16'hcaca;
    OB led_dig_pad_0 (.I(GND_net), .O(led_dig[0]));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(10[20:27])
    IB rx_pad_15 (.I(rx[15]), .O(rx_c_15));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(7[16:18])
    LUT4 i4087_3_lut (.A(ram_out[8]), .B(A[8]), .C(n11_adj_468), .Z(n2792)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i4087_3_lut.init = 16'hcaca;
    LUT4 mux_692_i2_3_lut (.A(B[1]), .B(A[1]), .C(n2848), .Z(n2864)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(76[3] 323[11])
    defparam mux_692_i2_3_lut.init = 16'hcaca;
    LUT4 mux_663_i10_3_lut (.A(ram_out[9]), .B(A[9]), .C(n11_adj_468), 
         .Z(n2791)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(76[3] 323[11])
    defparam mux_663_i10_3_lut.init = 16'hcaca;
    IB key_pad (.I(key), .O(key_c));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(6[9:12])
    LUT4 mux_663_i11_3_lut (.A(ram_out[10]), .B(A[10]), .C(n11_adj_468), 
         .Z(n2790)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(76[3] 323[11])
    defparam mux_663_i11_3_lut.init = 16'hcaca;
    LUT4 reduce_or_197_i1_2_lut_3_lut (.A(n1333), .B(ram_out[15]), .C(n1332), 
         .Z(n1343)) /* synthesis lut_function=(A ((C)+!B)+!A (C)) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(76[3] 323[11])
    defparam reduce_or_197_i1_2_lut_3_lut.init = 16'hf2f2;
    LUT4 i4250_2_lut_3_lut_3_lut_4_lut (.A(prog[2]), .B(n9072), .C(n9073), 
         .D(ram_out[10]), .Z(n2242)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(287[5:13])
    defparam i4250_2_lut_3_lut_3_lut_4_lut.init = 16'h0200;
    LUT4 mux_692_i3_3_lut (.A(B[2]), .B(A[2]), .C(n2848), .Z(n2863)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(76[3] 323[11])
    defparam mux_692_i3_3_lut.init = 16'hcaca;
    LUT4 mux_663_i12_3_lut (.A(ram_out[11]), .B(A[11]), .C(n11_adj_468), 
         .Z(n2789)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(76[3] 323[11])
    defparam mux_663_i12_3_lut.init = 16'hcaca;
    LUT4 mux_692_i4_3_lut (.A(B[3]), .B(A[3]), .C(n2848), .Z(n2862)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(76[3] 323[11])
    defparam mux_692_i4_3_lut.init = 16'hcaca;
    LUT4 i4251_2_lut_3_lut_3_lut_4_lut (.A(prog[2]), .B(n9072), .C(n9073), 
         .D(ram_out[11]), .Z(n2241)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(287[5:13])
    defparam i4251_2_lut_3_lut_3_lut_4_lut.init = 16'h0200;
    LUT4 mux_663_i13_3_lut (.A(ram_out[12]), .B(A[12]), .C(n11_adj_468), 
         .Z(n2788)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(76[3] 323[11])
    defparam mux_663_i13_3_lut.init = 16'hcaca;
    LUT4 i4252_2_lut_3_lut_3_lut_4_lut (.A(prog[2]), .B(n9072), .C(n9073), 
         .D(ram_out[12]), .Z(n2240)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(287[5:13])
    defparam i4252_2_lut_3_lut_3_lut_4_lut.init = 16'h0200;
    LUT4 mux_663_i14_3_lut (.A(ram_out[13]), .B(A[13]), .C(n11_adj_468), 
         .Z(n2787)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(76[3] 323[11])
    defparam mux_663_i14_3_lut.init = 16'hcaca;
    LUT4 mux_692_i5_3_lut (.A(B[4]), .B(A[4]), .C(n2848), .Z(n2861)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(76[3] 323[11])
    defparam mux_692_i5_3_lut.init = 16'hcaca;
    LUT4 rx_c_10_bdd_4_lut_6663 (.A(n3791), .B(n9047), .C(alu_c[10]), 
         .D(ram_out[10]), .Z(n9346)) /* synthesis lut_function=(A (B (D)+!B (C))) */ ;
    defparam rx_c_10_bdd_4_lut_6663.init = 16'ha820;
    LUT4 mux_71_i3_3_lut (.A(PC_9__N_177[2]), .B(ram_out[2]), .C(alu_co), 
         .Z(n576)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(303[15] 305[9])
    defparam mux_71_i3_3_lut.init = 16'hcaca;
    LUT4 mux_37_Mux_2_i14_4_lut_4_lut (.A(prog[3]), .B(ram_out[2]), .C(n9051), 
         .D(n9110), .Z(n14_adj_505)) /* synthesis lut_function=(A (D)+!A (B (C))) */ ;
    defparam mux_37_Mux_2_i14_4_lut_4_lut.init = 16'hea40;
    LUT4 i4037_3_lut (.A(SP[7]), .B(n324), .C(prog[0]), .Z(n17_adj_487)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(28[13:17])
    defparam i4037_3_lut.init = 16'hcaca;
    FD1S3IX statu_FSM_i3 (.D(ram_out[15]), .CK(clk_pll), .CD(n5331), .Q(n1332));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(76[3] 323[11])
    defparam statu_FSM_i3.GSR = "ENABLED";
    LUT4 i1_4_lut_4_lut_then_4_lut (.A(prog[1]), .B(prog[2]), .C(prog[4]), 
         .D(prog[3]), .Z(n9178)) /* synthesis lut_function=((B+((D)+!C))+!A) */ ;
    defparam i1_4_lut_4_lut_then_4_lut.init = 16'hffdf;
    LUT4 mux_692_i6_3_lut (.A(B[5]), .B(A[5]), .C(n2848), .Z(n2860)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(76[3] 323[11])
    defparam mux_692_i6_3_lut.init = 16'hcaca;
    LUT4 i2_4_lut (.A(n8355), .B(PC_9__N_177[9]), .C(PC_temp[9]), .D(n34), 
         .Z(n6_adj_460)) /* synthesis lut_function=(A (B (D))+!A (B (C+(D))+!B (C))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(28[13:17])
    defparam i2_4_lut.init = 16'hdc50;
    LUT4 mux_692_i7_3_lut (.A(B[6]), .B(A[6]), .C(n2848), .Z(n2859)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(76[3] 323[11])
    defparam mux_692_i7_3_lut.init = 16'hcaca;
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    LUT4 mux_692_i8_3_lut (.A(B[7]), .B(A[7]), .C(n2848), .Z(n2858)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(76[3] 323[11])
    defparam mux_692_i8_3_lut.init = 16'hcaca;
    LUT4 mux_692_i9_3_lut (.A(B[8]), .B(A[8]), .C(n2848), .Z(n2857)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(76[3] 323[11])
    defparam mux_692_i9_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut_3_lut_4_lut (.A(prog[0]), .B(prog[1]), .C(n9071), .D(prog[2]), 
         .Z(n4746)) /* synthesis lut_function=((B+(C+(D)))+!A) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(28[13:17])
    defparam i1_2_lut_3_lut_4_lut.init = 16'hfffd;
    LUT4 rx_c_10_bdd_4_lut (.A(rx_c_10), .B(P_c_10), .C(prog[1]), .D(prog[0]), 
         .Z(n9347)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B (C+!(D)))+!A (((D)+!C)+!B))) */ ;
    defparam rx_c_10_bdd_4_lut.init = 16'h0ac0;
    LUT4 i6248_2_lut_rep_71 (.A(n9434), .B(n9433), .Z(n9063)) /* synthesis lut_function=(!(A+(B))) */ ;
    defparam i6248_2_lut_rep_71.init = 16'h1111;
    LUT4 led_dig_c_bdd_2_lut_6671 (.A(n9347), .B(n1331), .Z(n9348)) /* synthesis lut_function=(A (B)) */ ;
    defparam led_dig_c_bdd_2_lut_6671.init = 16'h8888;
    LUT4 n5525_bdd_4_lut (.A(prog[0]), .B(rx_c_15), .C(P_c_15), .D(prog[1]), 
         .Z(n9354)) /* synthesis lut_function=(!(A ((D)+!B)+!A !(C (D)))) */ ;
    defparam n5525_bdd_4_lut.init = 16'h5088;
    FD1P3AX flag_141 (.D(alu_co), .SP(clk_pll_enable_11), .CK(clk_pll), 
            .Q(flag));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(75[11] 324[5])
    defparam flag_141.GSR = "DISABLED";
    PFUMX i6522 (.BLUT(n9084), .ALUT(n9085), .C0(n9433), .Z(n12));
    LUT4 i2_4_lut_adj_14 (.A(n25_adj_462), .B(PC_9__N_177[3]), .C(n7877), 
         .D(n34), .Z(n6_adj_475)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (D))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(293[5] 319[12])
    defparam i2_4_lut_adj_14.init = 16'hce0a;
    FD1P3AX ram_we_136 (.D(n5133), .SP(clk_pll_enable_12), .CK(clk_pll), 
            .Q(ram_we));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(75[11] 324[5])
    defparam ram_we_136.GSR = "ENABLED";
    LUT4 mux_692_i10_3_lut (.A(B[9]), .B(A[9]), .C(n2848), .Z(n2856)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(76[3] 323[11])
    defparam mux_692_i10_3_lut.init = 16'hcaca;
    FD1P3AX SP_i0_i0 (.D(n2762), .SP(clk_pll_enable_140), .CK(clk_pll), 
            .Q(SP[0]));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(75[11] 324[5])
    defparam SP_i0_i0.GSR = "ENABLED";
    OB led_dig_pad_1 (.I(GND_net), .O(led_dig[1]));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(10[20:27])
    OB P_pad_0 (.I(P_c_0), .O(P[0]));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(8[20:21])
    OB P_pad_1 (.I(P_c_1), .O(P[1]));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(8[20:21])
    FD1P3AX A_i0_i1 (.D(A_15__N_219[1]), .SP(clk_pll_enable_131), .CK(clk_pll), 
            .Q(A[1]));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(75[11] 324[5])
    defparam A_i0_i1.GSR = "DISABLED";
    OB P_pad_15 (.I(P_c_15), .O(P[15]));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(8[20:21])
    LUT4 mux_692_i11_3_lut (.A(B[10]), .B(A[10]), .C(n2848), .Z(n2855)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(76[3] 323[11])
    defparam mux_692_i11_3_lut.init = 16'hcaca;
    FD1P3AX alu_type_i0_i1 (.D(n371), .SP(clk_pll_enable_15), .CK(clk_pll), 
            .Q(alu_type[1]));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(75[11] 324[5])
    defparam alu_type_i0_i1.GSR = "DISABLED";
    LUT4 mux_692_i12_3_lut (.A(B[11]), .B(A[11]), .C(n2848), .Z(n2854)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(76[3] 323[11])
    defparam mux_692_i12_3_lut.init = 16'hcaca;
    FD1P3AX A_i0_i2 (.D(A_15__N_219[2]), .SP(clk_pll_enable_131), .CK(clk_pll), 
            .Q(A[2]));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(75[11] 324[5])
    defparam A_i0_i2.GSR = "DISABLED";
    FD1P3AX A_i0_i3 (.D(A_15__N_219[3]), .SP(clk_pll_enable_131), .CK(clk_pll), 
            .Q(A[3]));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(75[11] 324[5])
    defparam A_i0_i3.GSR = "DISABLED";
    FD1P3AX A_i0_i4 (.D(A_15__N_219[4]), .SP(clk_pll_enable_131), .CK(clk_pll), 
            .Q(A[4]));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(75[11] 324[5])
    defparam A_i0_i4.GSR = "DISABLED";
    FD1P3AX A_i0_i5 (.D(A_15__N_219[5]), .SP(clk_pll_enable_131), .CK(clk_pll), 
            .Q(A[5]));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(75[11] 324[5])
    defparam A_i0_i5.GSR = "DISABLED";
    FD1P3AX A_i0_i6 (.D(A_15__N_219[6]), .SP(clk_pll_enable_131), .CK(clk_pll), 
            .Q(A[6]));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(75[11] 324[5])
    defparam A_i0_i6.GSR = "DISABLED";
    FD1P3AX A_i0_i7 (.D(A_15__N_219[7]), .SP(clk_pll_enable_131), .CK(clk_pll), 
            .Q(A[7]));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(75[11] 324[5])
    defparam A_i0_i7.GSR = "DISABLED";
    FD1P3AX A_i0_i8 (.D(A_15__N_219[8]), .SP(clk_pll_enable_131), .CK(clk_pll), 
            .Q(A[8]));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(75[11] 324[5])
    defparam A_i0_i8.GSR = "DISABLED";
    FD1P3AX A_i0_i9 (.D(A_15__N_219[9]), .SP(clk_pll_enable_131), .CK(clk_pll), 
            .Q(A[9]));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(75[11] 324[5])
    defparam A_i0_i9.GSR = "DISABLED";
    FD1P3AX A_i0_i10 (.D(A_15__N_219[10]), .SP(clk_pll_enable_131), .CK(clk_pll), 
            .Q(A[10]));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(75[11] 324[5])
    defparam A_i0_i10.GSR = "DISABLED";
    FD1P3AX A_i0_i11 (.D(A_15__N_219[11]), .SP(clk_pll_enable_131), .CK(clk_pll), 
            .Q(A[11]));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(75[11] 324[5])
    defparam A_i0_i11.GSR = "DISABLED";
    FD1P3AX A_i0_i12 (.D(A_15__N_219[12]), .SP(clk_pll_enable_131), .CK(clk_pll), 
            .Q(A[12]));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(75[11] 324[5])
    defparam A_i0_i12.GSR = "DISABLED";
    FD1P3AX A_i0_i13 (.D(A_15__N_219[13]), .SP(clk_pll_enable_29), .CK(clk_pll), 
            .Q(A[13]));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(75[11] 324[5])
    defparam A_i0_i13.GSR = "DISABLED";
    FD1P3AX A_i0_i14 (.D(A_15__N_219[14]), .SP(clk_pll_enable_29), .CK(clk_pll), 
            .Q(A[14]));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(75[11] 324[5])
    defparam A_i0_i14.GSR = "DISABLED";
    FD1P3AX A_i0_i15 (.D(A_15__N_219[15]), .SP(clk_pll_enable_29), .CK(clk_pll), 
            .Q(A[15]));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(75[11] 324[5])
    defparam A_i0_i15.GSR = "DISABLED";
    FD1P3AX B_i0_i1 (.D(B_15__N_235[1]), .SP(clk_pll_enable_44), .CK(clk_pll), 
            .Q(B[1]));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(75[11] 324[5])
    defparam B_i0_i1.GSR = "DISABLED";
    LUT4 i2_3_lut_4_lut (.A(prog[2]), .B(prog[3]), .C(n9076), .D(n9075), 
         .Z(n33)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;
    defparam i2_3_lut_4_lut.init = 16'h1000;
    PFUMX i6672 (.BLUT(n9355), .ALUT(n9353), .C0(n9074), .Z(A_15__N_219[15]));
    LUT4 mux_692_i13_3_lut (.A(B[12]), .B(A[12]), .C(n2848), .Z(n2853)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(76[3] 323[11])
    defparam mux_692_i13_3_lut.init = 16'hcaca;
    LUT4 mux_692_i14_3_lut (.A(B[13]), .B(A[13]), .C(n2848), .Z(n2852)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(76[3] 323[11])
    defparam mux_692_i14_3_lut.init = 16'hcaca;
    LUT4 mux_692_i15_3_lut (.A(B[14]), .B(A[14]), .C(n2848), .Z(n2851)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(76[3] 323[11])
    defparam mux_692_i15_3_lut.init = 16'hcaca;
    LUT4 i53_3_lut (.A(PC[3]), .B(alu_c[3]), .C(prog[0]), .Z(n25_adj_462)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(293[5] 319[12])
    defparam i53_3_lut.init = 16'hcaca;
    LUT4 i3657_3_lut (.A(B[15]), .B(A[15]), .C(n2848), .Z(n2850)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i3657_3_lut.init = 16'hcaca;
    LUT4 i1_4_lut_4_lut_else_4_lut (.A(prog[1]), .B(prog[2]), .C(prog[4]), 
         .D(prog[3]), .Z(n9177)) /* synthesis lut_function=(A ((C+!(D))+!B)+!A (B+((D)+!C))) */ ;
    defparam i1_4_lut_4_lut_else_4_lut.init = 16'hf7ef;
    LUT4 i1183_2_lut_rep_55 (.A(n1329), .B(n6832), .Z(n9047)) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(76[3] 323[11])
    defparam i1183_2_lut_rep_55.init = 16'h2222;
    LUT4 rx_c_9_bdd_4_lut (.A(rx_c_9), .B(P_c_9), .C(prog[1]), .D(prog[0]), 
         .Z(n9327)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B (C+!(D)))+!A (((D)+!C)+!B))) */ ;
    defparam rx_c_9_bdd_4_lut.init = 16'h0ac0;
    LUT4 n3791_bdd_4_lut (.A(n3791), .B(n9047), .C(alu_c[15]), .D(ram_out[15]), 
         .Z(n9353)) /* synthesis lut_function=(A (B (D)+!B (C))) */ ;
    defparam n3791_bdd_4_lut.init = 16'ha820;
    CCU2D add_169_9 (.A0(SP[7]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(SP[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n7783), 
          .COUT(n7784), .S0(n276), .S1(n275));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(194[13:19])
    defparam add_169_9.INIT0 = 16'h5aaa;
    defparam add_169_9.INIT1 = 16'h5aaa;
    defparam add_169_9.INJECT1_0 = "NO";
    defparam add_169_9.INJECT1_1 = "NO";
    LUT4 i1_2_lut_adj_15 (.A(n8355), .B(PC_temp[3]), .Z(n23_adj_461)) /* synthesis lut_function=(!(A+!(B))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(293[5] 319[12])
    defparam i1_2_lut_adj_15.init = 16'h4444;
    LUT4 rx_c_9_bdd_4_lut_6644 (.A(n3791), .B(n9047), .C(alu_c[9]), .D(ram_out[9]), 
         .Z(n9326)) /* synthesis lut_function=(A (B (D)+!B (C))) */ ;
    defparam rx_c_9_bdd_4_lut_6644.init = 16'ha820;
    FD1P3AX B_i0_i2 (.D(B_15__N_235[2]), .SP(clk_pll_enable_44), .CK(clk_pll), 
            .Q(B[2]));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(75[11] 324[5])
    defparam B_i0_i2.GSR = "DISABLED";
    FD1P3AX B_i0_i3 (.D(B_15__N_235[3]), .SP(clk_pll_enable_44), .CK(clk_pll), 
            .Q(B[3]));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(75[11] 324[5])
    defparam B_i0_i3.GSR = "DISABLED";
    FD1P3AX B_i0_i4 (.D(B_15__N_235[4]), .SP(clk_pll_enable_44), .CK(clk_pll), 
            .Q(B[4]));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(75[11] 324[5])
    defparam B_i0_i4.GSR = "DISABLED";
    FD1P3AX B_i0_i5 (.D(B_15__N_235[5]), .SP(clk_pll_enable_44), .CK(clk_pll), 
            .Q(B[5]));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(75[11] 324[5])
    defparam B_i0_i5.GSR = "DISABLED";
    FD1P3AX B_i0_i6 (.D(B_15__N_235[6]), .SP(clk_pll_enable_44), .CK(clk_pll), 
            .Q(B[6]));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(75[11] 324[5])
    defparam B_i0_i6.GSR = "DISABLED";
    FD1P3AX B_i0_i7 (.D(B_15__N_235[7]), .SP(clk_pll_enable_44), .CK(clk_pll), 
            .Q(B[7]));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(75[11] 324[5])
    defparam B_i0_i7.GSR = "DISABLED";
    FD1P3AX B_i0_i8 (.D(B_15__N_235[8]), .SP(clk_pll_enable_44), .CK(clk_pll), 
            .Q(B[8]));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(75[11] 324[5])
    defparam B_i0_i8.GSR = "DISABLED";
    FD1P3AX B_i0_i9 (.D(B_15__N_235[9]), .SP(clk_pll_enable_44), .CK(clk_pll), 
            .Q(B[9]));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(75[11] 324[5])
    defparam B_i0_i9.GSR = "DISABLED";
    FD1P3AX B_i0_i10 (.D(B_15__N_235[10]), .SP(clk_pll_enable_44), .CK(clk_pll), 
            .Q(B[10]));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(75[11] 324[5])
    defparam B_i0_i10.GSR = "DISABLED";
    FD1P3AX B_i0_i11 (.D(B_15__N_235[11]), .SP(clk_pll_enable_44), .CK(clk_pll), 
            .Q(B[11]));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(75[11] 324[5])
    defparam B_i0_i11.GSR = "DISABLED";
    FD1P3AX B_i0_i12 (.D(B_15__N_235[12]), .SP(clk_pll_enable_44), .CK(clk_pll), 
            .Q(B[12]));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(75[11] 324[5])
    defparam B_i0_i12.GSR = "DISABLED";
    FD1P3AX B_i0_i13 (.D(B_15__N_235[13]), .SP(clk_pll_enable_44), .CK(clk_pll), 
            .Q(B[13]));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(75[11] 324[5])
    defparam B_i0_i13.GSR = "DISABLED";
    FD1P3AX B_i0_i14 (.D(B_15__N_235[14]), .SP(clk_pll_enable_44), .CK(clk_pll), 
            .Q(B[14]));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(75[11] 324[5])
    defparam B_i0_i14.GSR = "DISABLED";
    FD1P3AX B_i0_i15 (.D(B_15__N_235[15]), .SP(clk_pll_enable_44), .CK(clk_pll), 
            .Q(B[15]));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(75[11] 324[5])
    defparam B_i0_i15.GSR = "DISABLED";
    FD1P3AX alu_a_i0_i1 (.D(n2799), .SP(clk_pll_enable_59), .CK(clk_pll), 
            .Q(alu_a[1]));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(75[11] 324[5])
    defparam alu_a_i0_i1.GSR = "DISABLED";
    FD1P3AX alu_a_i0_i2 (.D(n2798), .SP(clk_pll_enable_59), .CK(clk_pll), 
            .Q(alu_a[2]));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(75[11] 324[5])
    defparam alu_a_i0_i2.GSR = "DISABLED";
    FD1P3AX alu_a_i0_i3 (.D(n2797), .SP(clk_pll_enable_59), .CK(clk_pll), 
            .Q(alu_a[3]));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(75[11] 324[5])
    defparam alu_a_i0_i3.GSR = "DISABLED";
    FD1P3AX alu_a_i0_i4 (.D(n2796), .SP(clk_pll_enable_59), .CK(clk_pll), 
            .Q(alu_a[4]));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(75[11] 324[5])
    defparam alu_a_i0_i4.GSR = "DISABLED";
    FD1P3AX alu_a_i0_i5 (.D(n2795), .SP(clk_pll_enable_59), .CK(clk_pll), 
            .Q(alu_a[5]));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(75[11] 324[5])
    defparam alu_a_i0_i5.GSR = "DISABLED";
    FD1P3AX alu_a_i0_i6 (.D(n2794), .SP(clk_pll_enable_59), .CK(clk_pll), 
            .Q(alu_a[6]));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(75[11] 324[5])
    defparam alu_a_i0_i6.GSR = "DISABLED";
    FD1P3AX alu_a_i0_i7 (.D(n2793), .SP(clk_pll_enable_59), .CK(clk_pll), 
            .Q(alu_a[7]));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(75[11] 324[5])
    defparam alu_a_i0_i7.GSR = "DISABLED";
    FD1P3AX alu_a_i0_i8 (.D(n2792), .SP(clk_pll_enable_59), .CK(clk_pll), 
            .Q(alu_a[8]));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(75[11] 324[5])
    defparam alu_a_i0_i8.GSR = "DISABLED";
    FD1P3AX alu_a_i0_i9 (.D(n2791), .SP(clk_pll_enable_59), .CK(clk_pll), 
            .Q(alu_a[9]));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(75[11] 324[5])
    defparam alu_a_i0_i9.GSR = "DISABLED";
    FD1P3AX alu_a_i0_i10 (.D(n2790), .SP(clk_pll_enable_59), .CK(clk_pll), 
            .Q(alu_a[10]));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(75[11] 324[5])
    defparam alu_a_i0_i10.GSR = "DISABLED";
    FD1P3AX alu_a_i0_i11 (.D(n2789), .SP(clk_pll_enable_59), .CK(clk_pll), 
            .Q(alu_a[11]));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(75[11] 324[5])
    defparam alu_a_i0_i11.GSR = "DISABLED";
    FD1P3AX alu_a_i0_i12 (.D(n2788), .SP(clk_pll_enable_59), .CK(clk_pll), 
            .Q(alu_a[12]));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(75[11] 324[5])
    defparam alu_a_i0_i12.GSR = "DISABLED";
    FD1P3AX alu_a_i0_i13 (.D(n2787), .SP(clk_pll_enable_59), .CK(clk_pll), 
            .Q(alu_a[13]));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(75[11] 324[5])
    defparam alu_a_i0_i13.GSR = "DISABLED";
    FD1P3AX alu_a_i0_i14 (.D(n2786), .SP(clk_pll_enable_59), .CK(clk_pll), 
            .Q(alu_a[14]));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(75[11] 324[5])
    defparam alu_a_i0_i14.GSR = "DISABLED";
    FD1P3AX alu_a_i0_i15 (.D(n2785), .SP(clk_pll_enable_59), .CK(clk_pll), 
            .Q(alu_a[15]));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(75[11] 324[5])
    defparam alu_a_i0_i15.GSR = "DISABLED";
    FD1P3AX alu_b_i0_i1 (.D(B[1]), .SP(clk_pll_enable_74), .CK(clk_pll), 
            .Q(alu_b[1]));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(75[11] 324[5])
    defparam alu_b_i0_i1.GSR = "DISABLED";
    FD1P3AX alu_b_i0_i2 (.D(B[2]), .SP(clk_pll_enable_74), .CK(clk_pll), 
            .Q(alu_b[2]));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(75[11] 324[5])
    defparam alu_b_i0_i2.GSR = "DISABLED";
    FD1P3AX alu_b_i0_i3 (.D(B[3]), .SP(clk_pll_enable_74), .CK(clk_pll), 
            .Q(alu_b[3]));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(75[11] 324[5])
    defparam alu_b_i0_i3.GSR = "DISABLED";
    FD1P3AX alu_b_i0_i4 (.D(B[4]), .SP(clk_pll_enable_74), .CK(clk_pll), 
            .Q(alu_b[4]));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(75[11] 324[5])
    defparam alu_b_i0_i4.GSR = "DISABLED";
    FD1P3AX alu_b_i0_i5 (.D(B[5]), .SP(clk_pll_enable_74), .CK(clk_pll), 
            .Q(alu_b[5]));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(75[11] 324[5])
    defparam alu_b_i0_i5.GSR = "DISABLED";
    FD1P3AX alu_b_i0_i6 (.D(B[6]), .SP(clk_pll_enable_74), .CK(clk_pll), 
            .Q(alu_b[6]));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(75[11] 324[5])
    defparam alu_b_i0_i6.GSR = "DISABLED";
    FD1P3AX alu_b_i0_i7 (.D(B[7]), .SP(clk_pll_enable_74), .CK(clk_pll), 
            .Q(alu_b[7]));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(75[11] 324[5])
    defparam alu_b_i0_i7.GSR = "DISABLED";
    FD1P3AX alu_b_i0_i8 (.D(B[8]), .SP(clk_pll_enable_74), .CK(clk_pll), 
            .Q(alu_b[8]));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(75[11] 324[5])
    defparam alu_b_i0_i8.GSR = "DISABLED";
    FD1P3AX alu_b_i0_i9 (.D(B[9]), .SP(clk_pll_enable_74), .CK(clk_pll), 
            .Q(alu_b[9]));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(75[11] 324[5])
    defparam alu_b_i0_i9.GSR = "DISABLED";
    FD1P3AX alu_b_i0_i10 (.D(B[10]), .SP(clk_pll_enable_74), .CK(clk_pll), 
            .Q(alu_b[10]));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(75[11] 324[5])
    defparam alu_b_i0_i10.GSR = "DISABLED";
    FD1P3AX alu_b_i0_i11 (.D(B[11]), .SP(clk_pll_enable_74), .CK(clk_pll), 
            .Q(alu_b[11]));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(75[11] 324[5])
    defparam alu_b_i0_i11.GSR = "DISABLED";
    FD1P3AX alu_b_i0_i12 (.D(B[12]), .SP(clk_pll_enable_74), .CK(clk_pll), 
            .Q(alu_b[12]));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(75[11] 324[5])
    defparam alu_b_i0_i12.GSR = "DISABLED";
    FD1P3AX alu_b_i0_i13 (.D(B[13]), .SP(clk_pll_enable_74), .CK(clk_pll), 
            .Q(alu_b[13]));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(75[11] 324[5])
    defparam alu_b_i0_i13.GSR = "DISABLED";
    FD1P3AX alu_b_i0_i14 (.D(B[14]), .SP(clk_pll_enable_74), .CK(clk_pll), 
            .Q(alu_b[14]));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(75[11] 324[5])
    defparam alu_b_i0_i14.GSR = "DISABLED";
    FD1P3AX alu_b_i0_i15 (.D(B[15]), .SP(clk_pll_enable_74), .CK(clk_pll), 
            .Q(alu_b[15]));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(75[11] 324[5])
    defparam alu_b_i0_i15.GSR = "DISABLED";
    FD1P3AX PC_temp_i0_i1 (.D(n2826), .SP(clk_pll_enable_83), .CK(clk_pll), 
            .Q(PC_temp[1]));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(75[11] 324[5])
    defparam PC_temp_i0_i1.GSR = "DISABLED";
    FD1P3AX PC_temp_i0_i2 (.D(n2825), .SP(clk_pll_enable_83), .CK(clk_pll), 
            .Q(PC_temp[2]));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(75[11] 324[5])
    defparam PC_temp_i0_i2.GSR = "DISABLED";
    FD1P3AX PC_temp_i0_i3 (.D(n2824), .SP(clk_pll_enable_83), .CK(clk_pll), 
            .Q(PC_temp[3]));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(75[11] 324[5])
    defparam PC_temp_i0_i3.GSR = "DISABLED";
    FD1P3AX PC_temp_i0_i4 (.D(n2823), .SP(clk_pll_enable_83), .CK(clk_pll), 
            .Q(PC_temp[4]));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(75[11] 324[5])
    defparam PC_temp_i0_i4.GSR = "DISABLED";
    FD1P3AX PC_temp_i0_i5 (.D(n2822), .SP(clk_pll_enable_83), .CK(clk_pll), 
            .Q(PC_temp[5]));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(75[11] 324[5])
    defparam PC_temp_i0_i5.GSR = "DISABLED";
    FD1P3AX PC_temp_i0_i6 (.D(n2821), .SP(clk_pll_enable_83), .CK(clk_pll), 
            .Q(PC_temp[6]));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(75[11] 324[5])
    defparam PC_temp_i0_i6.GSR = "DISABLED";
    FD1P3AX PC_temp_i0_i7 (.D(n2820), .SP(clk_pll_enable_83), .CK(clk_pll), 
            .Q(PC_temp[7]));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(75[11] 324[5])
    defparam PC_temp_i0_i7.GSR = "DISABLED";
    FD1P3AX PC_temp_i0_i8 (.D(n2819), .SP(clk_pll_enable_83), .CK(clk_pll), 
            .Q(PC_temp[8]));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(75[11] 324[5])
    defparam PC_temp_i0_i8.GSR = "DISABLED";
    FD1P3AX PC_temp_i0_i9 (.D(n2818), .SP(clk_pll_enable_83), .CK(clk_pll), 
            .Q(PC_temp[9]));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(75[11] 324[5])
    defparam PC_temp_i0_i9.GSR = "DISABLED";
    FD1P3AX ram_in_i0_i1 (.D(n2864), .SP(clk_pll_enable_98), .CK(clk_pll), 
            .Q(ram_in[1]));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(75[11] 324[5])
    defparam ram_in_i0_i1.GSR = "DISABLED";
    FD1P3AX ram_in_i0_i2 (.D(n2863), .SP(clk_pll_enable_98), .CK(clk_pll), 
            .Q(ram_in[2]));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(75[11] 324[5])
    defparam ram_in_i0_i2.GSR = "DISABLED";
    FD1P3AX ram_in_i0_i3 (.D(n2862), .SP(clk_pll_enable_98), .CK(clk_pll), 
            .Q(ram_in[3]));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(75[11] 324[5])
    defparam ram_in_i0_i3.GSR = "DISABLED";
    FD1P3AX ram_in_i0_i4 (.D(n2861), .SP(clk_pll_enable_98), .CK(clk_pll), 
            .Q(ram_in[4]));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(75[11] 324[5])
    defparam ram_in_i0_i4.GSR = "DISABLED";
    FD1P3AX ram_in_i0_i5 (.D(n2860), .SP(clk_pll_enable_98), .CK(clk_pll), 
            .Q(ram_in[5]));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(75[11] 324[5])
    defparam ram_in_i0_i5.GSR = "DISABLED";
    FD1P3AX ram_in_i0_i6 (.D(n2859), .SP(clk_pll_enable_98), .CK(clk_pll), 
            .Q(ram_in[6]));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(75[11] 324[5])
    defparam ram_in_i0_i6.GSR = "DISABLED";
    FD1P3AX ram_in_i0_i7 (.D(n2858), .SP(clk_pll_enable_98), .CK(clk_pll), 
            .Q(ram_in[7]));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(75[11] 324[5])
    defparam ram_in_i0_i7.GSR = "DISABLED";
    FD1P3AX ram_in_i0_i8 (.D(n2857), .SP(clk_pll_enable_98), .CK(clk_pll), 
            .Q(ram_in[8]));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(75[11] 324[5])
    defparam ram_in_i0_i8.GSR = "DISABLED";
    FD1P3AX ram_in_i0_i9 (.D(n2856), .SP(clk_pll_enable_98), .CK(clk_pll), 
            .Q(ram_in[9]));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(75[11] 324[5])
    defparam ram_in_i0_i9.GSR = "DISABLED";
    FD1P3AX ram_in_i0_i10 (.D(n2855), .SP(clk_pll_enable_98), .CK(clk_pll), 
            .Q(ram_in[10]));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(75[11] 324[5])
    defparam ram_in_i0_i10.GSR = "DISABLED";
    FD1P3AX ram_in_i0_i11 (.D(n2854), .SP(clk_pll_enable_98), .CK(clk_pll), 
            .Q(ram_in[11]));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(75[11] 324[5])
    defparam ram_in_i0_i11.GSR = "DISABLED";
    FD1P3AX ram_in_i0_i12 (.D(n2853), .SP(clk_pll_enable_98), .CK(clk_pll), 
            .Q(ram_in[12]));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(75[11] 324[5])
    defparam ram_in_i0_i12.GSR = "DISABLED";
    FD1P3AX ram_in_i0_i13 (.D(n2852), .SP(clk_pll_enable_98), .CK(clk_pll), 
            .Q(ram_in[13]));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(75[11] 324[5])
    defparam ram_in_i0_i13.GSR = "DISABLED";
    FD1P3AX ram_in_i0_i14 (.D(n2851), .SP(clk_pll_enable_98), .CK(clk_pll), 
            .Q(ram_in[14]));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(75[11] 324[5])
    defparam ram_in_i0_i14.GSR = "DISABLED";
    FD1P3AX ram_in_i0_i15 (.D(n2850), .SP(clk_pll_enable_98), .CK(clk_pll), 
            .Q(ram_in[15]));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(75[11] 324[5])
    defparam ram_in_i0_i15.GSR = "DISABLED";
    FD1P3AX P_i0_i2 (.D(A[1]), .SP(clk_pll_enable_113), .CK(clk_pll), 
            .Q(P_c_1));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(75[11] 324[5])
    defparam P_i0_i2.GSR = "DISABLED";
    FD1P3AX P_i0_i3 (.D(A[2]), .SP(clk_pll_enable_113), .CK(clk_pll), 
            .Q(P_c_2));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(75[11] 324[5])
    defparam P_i0_i3.GSR = "DISABLED";
    FD1P3AX P_i0_i4 (.D(A[3]), .SP(clk_pll_enable_113), .CK(clk_pll), 
            .Q(P_c_3));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(75[11] 324[5])
    defparam P_i0_i4.GSR = "DISABLED";
    FD1P3AX P_i0_i5 (.D(A[4]), .SP(clk_pll_enable_113), .CK(clk_pll), 
            .Q(P_c_4));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(75[11] 324[5])
    defparam P_i0_i5.GSR = "DISABLED";
    FD1P3AX P_i0_i6 (.D(A[5]), .SP(clk_pll_enable_113), .CK(clk_pll), 
            .Q(P_c_5));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(75[11] 324[5])
    defparam P_i0_i6.GSR = "DISABLED";
    FD1P3AX P_i0_i7 (.D(A[6]), .SP(clk_pll_enable_113), .CK(clk_pll), 
            .Q(P_c_6));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(75[11] 324[5])
    defparam P_i0_i7.GSR = "DISABLED";
    FD1P3AX P_i0_i8 (.D(A[7]), .SP(clk_pll_enable_113), .CK(clk_pll), 
            .Q(P_c_7));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(75[11] 324[5])
    defparam P_i0_i8.GSR = "DISABLED";
    FD1P3AX P_i0_i9 (.D(A[8]), .SP(clk_pll_enable_113), .CK(clk_pll), 
            .Q(P_c_8));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(75[11] 324[5])
    defparam P_i0_i9.GSR = "DISABLED";
    FD1P3AX P_i0_i10 (.D(A[9]), .SP(clk_pll_enable_113), .CK(clk_pll), 
            .Q(P_c_9));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(75[11] 324[5])
    defparam P_i0_i10.GSR = "DISABLED";
    FD1P3AX P_i0_i11 (.D(A[10]), .SP(clk_pll_enable_113), .CK(clk_pll), 
            .Q(P_c_10));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(75[11] 324[5])
    defparam P_i0_i11.GSR = "DISABLED";
    FD1P3AX P_i0_i12 (.D(A[11]), .SP(clk_pll_enable_113), .CK(clk_pll), 
            .Q(P_c_11));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(75[11] 324[5])
    defparam P_i0_i12.GSR = "DISABLED";
    FD1P3AX P_i0_i13 (.D(A[12]), .SP(clk_pll_enable_113), .CK(clk_pll), 
            .Q(P_c_12));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(75[11] 324[5])
    defparam P_i0_i13.GSR = "DISABLED";
    FD1P3AX P_i0_i14 (.D(A[13]), .SP(clk_pll_enable_113), .CK(clk_pll), 
            .Q(P_c_13));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(75[11] 324[5])
    defparam P_i0_i14.GSR = "DISABLED";
    FD1P3AX P_i0_i15 (.D(A[14]), .SP(clk_pll_enable_113), .CK(clk_pll), 
            .Q(P_c_14));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(75[11] 324[5])
    defparam P_i0_i15.GSR = "DISABLED";
    FD1P3AX P_i0_i16 (.D(A[15]), .SP(clk_pll_enable_113), .CK(clk_pll), 
            .Q(P_c_15));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(75[11] 324[5])
    defparam P_i0_i16.GSR = "DISABLED";
    FD1P3AY PC_i0_i1 (.D(n3989), .SP(clk_pll_enable_120), .CK(clk_pll), 
            .Q(PC[1]));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(75[11] 324[5])
    defparam PC_i0_i1.GSR = "ENABLED";
    FD1P3AX PC_i0_i2 (.D(n3991), .SP(clk_pll_enable_120), .CK(clk_pll), 
            .Q(PC[2]));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(75[11] 324[5])
    defparam PC_i0_i2.GSR = "ENABLED";
    FD1P3AX PC_i0_i3 (.D(n3993), .SP(clk_pll_enable_120), .CK(clk_pll), 
            .Q(PC[3]));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(75[11] 324[5])
    defparam PC_i0_i3.GSR = "ENABLED";
    FD1P3AX PC_i0_i4 (.D(n3995), .SP(clk_pll_enable_120), .CK(clk_pll), 
            .Q(PC[4]));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(75[11] 324[5])
    defparam PC_i0_i4.GSR = "ENABLED";
    FD1P3AX PC_i0_i5 (.D(n3997), .SP(clk_pll_enable_120), .CK(clk_pll), 
            .Q(PC[5]));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(75[11] 324[5])
    defparam PC_i0_i5.GSR = "ENABLED";
    FD1P3AX PC_i0_i6 (.D(n3999), .SP(clk_pll_enable_120), .CK(clk_pll), 
            .Q(PC[6]));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(75[11] 324[5])
    defparam PC_i0_i6.GSR = "ENABLED";
    FD1P3AX PC_i0_i7 (.D(n4001), .SP(clk_pll_enable_120), .CK(clk_pll), 
            .Q(PC[7]));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(75[11] 324[5])
    defparam PC_i0_i7.GSR = "ENABLED";
    FD1P3AX PC_i0_i8 (.D(n4003), .SP(clk_pll_enable_122), .CK(clk_pll), 
            .Q(PC[8]));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(75[11] 324[5])
    defparam PC_i0_i8.GSR = "ENABLED";
    FD1P3AX PC_i0_i9 (.D(n8761), .SP(clk_pll_enable_122), .CK(clk_pll), 
            .Q(PC[9]));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(75[11] 324[5])
    defparam PC_i0_i9.GSR = "ENABLED";
    FD1P3AX alu_type_i0_i2 (.D(n9146), .SP(clk_pll_enable_123), .CK(clk_pll), 
            .Q(alu_type[2]));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(75[11] 324[5])
    defparam alu_type_i0_i2.GSR = "DISABLED";
    FD1S3AX statu_FSM_i2 (.D(n3514), .CK(clk_pll), .Q(n1333));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(76[3] 323[11])
    defparam statu_FSM_i2.GSR = "ENABLED";
    FD1S3AX statu_FSM_i4 (.D(n1343), .CK(clk_pll), .Q(n1331));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(76[3] 323[11])
    defparam statu_FSM_i4.GSR = "ENABLED";
    FD1S3AX statu_FSM_i5 (.D(n1331), .CK(clk_pll), .Q(n1330));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(76[3] 323[11])
    defparam statu_FSM_i5.GSR = "ENABLED";
    FD1S3AX statu_FSM_i6 (.D(n1330), .CK(clk_pll), .Q(n1329));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(76[3] 323[11])
    defparam statu_FSM_i6.GSR = "ENABLED";
    FD1P3AX prog__0__i2 (.D(ram_out[1]), .SP(clk_pll_enable_141), .CK(clk_pll), 
            .Q(prog[1]));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(75[11] 324[5])
    defparam prog__0__i2.GSR = "DISABLED";
    FD1P3AX prog__0__i3 (.D(ram_out[2]), .SP(clk_pll_enable_141), .CK(clk_pll), 
            .Q(prog[2]));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(75[11] 324[5])
    defparam prog__0__i3.GSR = "DISABLED";
    FD1P3AX prog__0__i4 (.D(ram_out[3]), .SP(clk_pll_enable_141), .CK(clk_pll), 
            .Q(prog[3]));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(75[11] 324[5])
    defparam prog__0__i4.GSR = "DISABLED";
    FD1P3AX prog__0__i5 (.D(ram_out[4]), .SP(clk_pll_enable_141), .CK(clk_pll), 
            .Q(prog[4]));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(75[11] 324[5])
    defparam prog__0__i5.GSR = "DISABLED";
    FD1P3AX SP_i0_i1 (.D(n2761), .SP(clk_pll_enable_140), .CK(clk_pll), 
            .Q(SP[1]));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(75[11] 324[5])
    defparam SP_i0_i1.GSR = "ENABLED";
    LUT4 i4289_2_lut (.A(PC_9__N_177[8]), .B(n1333), .Z(n3542)) /* synthesis lut_function=(A (B)) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(76[3] 323[11])
    defparam i4289_2_lut.init = 16'h8888;
    LUT4 i3739_3_lut (.A(A[1]), .B(n6192), .C(n11), .Z(n2761)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i3739_3_lut.init = 16'hcaca;
    LUT4 i4316_4_lut (.A(B[8]), .B(n9063), .C(n17_adj_483), .D(prog[1]), 
         .Z(n30_adj_484)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(104[5] 249[13])
    defparam i4316_4_lut.init = 16'hc088;
    LUT4 i3738_3_lut (.A(n282), .B(n330), .C(n2765), .Z(n6192)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i3738_3_lut.init = 16'hcaca;
    LUT4 led_dig_c_bdd_2_lut_6652 (.A(n9331), .B(n5525), .Z(n9332)) /* synthesis lut_function=(A (B)) */ ;
    defparam led_dig_c_bdd_2_lut_6652.init = 16'h8888;
    LUT4 i2_3_lut_4_lut_adj_16 (.A(prog[4]), .B(prog[3]), .C(n9434), .D(prog[1]), 
         .Z(n7877)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i2_3_lut_4_lut_adj_16.init = 16'hfffe;
    LUT4 equal_659_i7_2_lut_rep_72 (.A(prog[1]), .B(n9434), .Z(n9064)) /* synthesis lut_function=(A+!(B)) */ ;
    defparam equal_659_i7_2_lut_rep_72.init = 16'hbbbb;
    LUT4 i4072_3_lut_4_lut (.A(n1329), .B(n6832), .C(ram_out[8]), .D(alu_c[8]), 
         .Z(n1_adj_514)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (D)) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(76[3] 323[11])
    defparam i4072_3_lut_4_lut.init = 16'hfd20;
    LUT4 i3_4_lut (.A(n2680), .B(n6_adj_460), .C(n31), .D(n569), .Z(n7845)) /* synthesis lut_function=(A (B+(C+(D)))+!A (B+(C))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(28[13:17])
    defparam i3_4_lut.init = 16'hfefc;
    LUT4 i3_4_lut_adj_17 (.A(n2680), .B(n6_adj_474), .C(n23_adj_449), 
         .D(n571), .Z(PC_9__N_157[7])) /* synthesis lut_function=(A (B+(C+(D)))+!A (B+(C))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(293[5] 319[12])
    defparam i3_4_lut_adj_17.init = 16'hfefc;
    LUT4 i6250_3_lut (.A(n1329), .B(n1331), .C(prog[4]), .Z(n8517)) /* synthesis lut_function=(A+((C)+!B)) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(76[3] 323[11])
    defparam i6250_3_lut.init = 16'hfbfb;
    LUT4 i3_4_lut_adj_18 (.A(n2680), .B(n6_adj_467), .C(n23_adj_451), 
         .D(n572), .Z(PC_9__N_157[6])) /* synthesis lut_function=(A (B+(C+(D)))+!A (B+(C))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(293[5] 319[12])
    defparam i3_4_lut_adj_18.init = 16'hfefc;
    LUT4 i3_4_lut_adj_19 (.A(n2680), .B(n6), .C(n23_adj_455), .D(n573), 
         .Z(PC_9__N_157[5])) /* synthesis lut_function=(A (B+(C+(D)))+!A (B+(C))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(293[5] 319[12])
    defparam i3_4_lut_adj_19.init = 16'hfefc;
    LUT4 i6072_1_lut_2_lut (.A(n1331), .B(prog[1]), .Z(n8519)) /* synthesis lut_function=(!(A (B))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(104[5] 249[13])
    defparam i6072_1_lut_2_lut.init = 16'h7777;
    LUT4 i3680_3_lut_4_lut (.A(n1329), .B(n6832), .C(ram_out[0]), .D(alu_c[0]), 
         .Z(n1_adj_479)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (D)) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(76[3] 323[11])
    defparam i3680_3_lut_4_lut.init = 16'hfd20;
    LUT4 i3_4_lut_adj_20 (.A(n2680), .B(n6_adj_520), .C(n23_adj_458), 
         .D(n574), .Z(PC_9__N_157[4])) /* synthesis lut_function=(A (B+(C+(D)))+!A (B+(C))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(293[5] 319[12])
    defparam i3_4_lut_adj_20.init = 16'hfefc;
    LUT4 i1_2_lut_4_lut (.A(n9057), .B(n9069), .C(n9073), .D(n1331), 
         .Z(n5525)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;
    defparam i1_2_lut_4_lut.init = 16'h1000;
    PFUMX i6665 (.BLUT(n9348), .ALUT(n9346), .C0(n9074), .Z(A_15__N_219[10]));
    LUT4 i3_4_lut_4_lut (.A(n9048), .B(n8803), .C(n4746), .D(n6832), 
         .Z(n8355)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(283[5:13])
    defparam i3_4_lut_4_lut.init = 16'h4000;
    PFUMX i6661 (.BLUT(n9344), .ALUT(n9342), .C0(n9074), .Z(A_15__N_219[11]));
    LUT4 IRQ_EN_I_0_2_lut_rep_73 (.A(IRQ_EN), .B(key_c), .Z(n9065)) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(79[8:37])
    defparam IRQ_EN_I_0_2_lut_rep_73.init = 16'h2222;
    LUT4 i48_4_lut (.A(n7877), .B(PC[9]), .C(alu_c[9]), .D(prog[0]), 
         .Z(n31)) /* synthesis lut_function=(!(A+!(B (C+!(D))+!B (C (D))))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(28[13:17])
    defparam i48_4_lut.init = 16'h5044;
    LUT4 i1152_2_lut_3_lut (.A(IRQ_EN), .B(key_c), .C(n1334), .Z(n3514)) /* synthesis lut_function=(A (B (C))+!A (C)) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(79[8:37])
    defparam i1152_2_lut_3_lut.init = 16'hd0d0;
    LUT4 i6278_4_lut (.A(n1329), .B(n1331), .C(prog[4]), .D(n8416), 
         .Z(n8446)) /* synthesis lut_function=(A+((C+!(D))+!B)) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(76[3] 323[11])
    defparam i6278_4_lut.init = 16'hfbff;
    LUT4 i191_2_lut_3_lut (.A(IRQ_EN), .B(key_c), .C(n1334), .Z(n1336)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(79[8:37])
    defparam i191_2_lut_3_lut.init = 16'h2020;
    LUT4 i6267_3_lut (.A(n9433), .B(prog[2]), .C(prog[0]), .Z(n8416)) /* synthesis lut_function=(((C)+!B)+!A) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(104[5] 249[13])
    defparam i6267_3_lut.init = 16'hf7f7;
    LUT4 i1_2_lut_rep_74 (.A(rst_c), .B(n1331), .Z(n9066)) /* synthesis lut_function=(A (B)) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(76[3] 323[11])
    defparam i1_2_lut_rep_74.init = 16'h8888;
    LUT4 led_dig_c_bdd_2_lut_6647 (.A(n9327), .B(n1331), .Z(n9328)) /* synthesis lut_function=(A (B)) */ ;
    defparam led_dig_c_bdd_2_lut_6647.init = 16'h8888;
    LUT4 i5954_2_lut_3_lut (.A(rst_c), .B(n1331), .C(prog[0]), .Z(n8399)) /* synthesis lut_function=(A (B (C))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(76[3] 323[11])
    defparam i5954_2_lut_3_lut.init = 16'h8080;
    LUT4 i3_4_lut_adj_21 (.A(n2680), .B(n6_adj_475), .C(n23_adj_461), 
         .D(n575), .Z(PC_9__N_157[3])) /* synthesis lut_function=(A (B+(C+(D)))+!A (B+(C))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(293[5] 319[12])
    defparam i3_4_lut_adj_21.init = 16'hfefc;
    LUT4 i3_4_lut_adj_22 (.A(n2680), .B(n6_adj_478), .C(n23_adj_465), 
         .D(n576), .Z(PC_9__N_157[2])) /* synthesis lut_function=(A (B+(C+(D)))+!A (B+(C))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(293[5] 319[12])
    defparam i3_4_lut_adj_22.init = 16'hfefc;
    LUT4 i6285_2_lut_3_lut (.A(rst_c), .B(n1331), .C(n8636), .Z(clk_pll_enable_98)) /* synthesis lut_function=(A (B (C))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(76[3] 323[11])
    defparam i6285_2_lut_3_lut.init = 16'h8080;
    LUT4 mux_37_Mux_0_i14_4_lut_4_lut (.A(prog[3]), .B(ram_out[0]), .C(n9051), 
         .D(n9095), .Z(n14)) /* synthesis lut_function=(A (D)+!A (B (C))) */ ;
    defparam mux_37_Mux_0_i14_4_lut_4_lut.init = 16'hea40;
    LUT4 i1_4_lut (.A(n2680), .B(n8355), .C(n570), .D(PC_temp[8]), .Z(n5_adj_470)) /* synthesis lut_function=(A (B (C)+!B (C+(D)))+!A !(B+!(D))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(293[5] 319[12])
    defparam i1_4_lut.init = 16'hb3a0;
    LUT4 mux_71_i9_3_lut (.A(PC_9__N_177[8]), .B(ram_out[8]), .C(alu_co), 
         .Z(n570)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(303[15] 305[9])
    defparam mux_71_i9_3_lut.init = 16'hcaca;
    LUT4 i65_4_lut_4_lut (.A(prog[0]), .B(prog[1]), .C(n9434), .D(n9433), 
         .Z(n58)) /* synthesis lut_function=(!(A (B (D))+!A (B (C (D))+!B (C (D)+!C !(D))))) */ ;
    defparam i65_4_lut_4_lut.init = 16'h27fe;
    LUT4 i1_4_lut_adj_23 (.A(rst_c), .B(n6105), .C(n9048), .D(n1329), 
         .Z(clk_pll_enable_44)) /* synthesis lut_function=(A (B (C+!(D))+!B (C (D)))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(5[9:12])
    defparam i1_4_lut_adj_23.init = 16'ha088;
    LUT4 n4485_bdd_4_lut_4_lut (.A(prog[0]), .B(prog[1]), .C(n9433), .D(prog[2]), 
         .Z(n20)) /* synthesis lut_function=(!(A (B (C+!(D))+!B (C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B ((D)+!C)))) */ ;
    defparam n4485_bdd_4_lut_4_lut.init = 16'h0e70;
    LUT4 mux_34_Mux_1_i31_3_lut_4_lut_4_lut (.A(prog[0]), .B(prog[1]), .C(n5315), 
         .D(alu_type[1]), .Z(n371)) /* synthesis lut_function=(!(A ((C)+!B)+!A (B+!(C+(D))))) */ ;
    defparam mux_34_Mux_1_i31_3_lut_4_lut_4_lut.init = 16'h1918;
    LUT4 n2091_bdd_4_lut_4_lut_4_lut (.A(prog[3]), .B(prog[4]), .C(prog[0]), 
         .D(prog[1]), .Z(n8931)) /* synthesis lut_function=(!(A ((C (D))+!B)+!A (B+!(C+(D))))) */ ;
    defparam n2091_bdd_4_lut_4_lut_4_lut.init = 16'h1998;
    LUT4 i2_4_lut_adj_24 (.A(n25_adj_464), .B(PC_9__N_177[8]), .C(n7877), 
         .D(n34), .Z(n6_adj_524)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (D))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(293[5] 319[12])
    defparam i2_4_lut_adj_24.init = 16'hce0a;
    LUT4 mux_71_i10_3_lut (.A(PC_9__N_177[9]), .B(ram_out[9]), .C(alu_co), 
         .Z(n569)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(303[15] 305[9])
    defparam mux_71_i10_3_lut.init = 16'hcaca;
    LUT4 i53_3_lut_adj_25 (.A(PC[8]), .B(alu_c[8]), .C(prog[0]), .Z(n25_adj_464)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(293[5] 319[12])
    defparam i53_3_lut_adj_25.init = 16'hcaca;
    LUT4 i1270_1_lut_rep_75 (.A(n1331), .Z(n9067)) /* synthesis lut_function=(!(A)) */ ;
    defparam i1270_1_lut_rep_75.init = 16'h5555;
    LUT4 rx_c_3_bdd_4_lut_then_4_lut (.A(P_c_3), .B(prog[1]), .C(n1331), 
         .D(prog[0]), .Z(n9187)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(C (D)))+!A (B+!(C (D))))) */ ;
    defparam rx_c_3_bdd_4_lut_then_4_lut.init = 16'h3080;
    PFUMX i1558 (.BLUT(n14_adj_481), .ALUT(n4002), .C0(n8446), .Z(n4003));
    LUT4 mux_37_Mux_7_i18_4_lut_4_lut (.A(n1331), .B(n1333), .C(PC_9__N_177[7]), 
         .D(B[7]), .Z(n18_adj_488)) /* synthesis lut_function=(A (D)+!A (B (C))) */ ;
    defparam mux_37_Mux_7_i18_4_lut_4_lut.init = 16'hea40;
    LUT4 rx_c_3_bdd_4_lut_else_4_lut (.A(P_c_3), .B(prog[1]), .C(n1331), 
         .D(prog[0]), .Z(n9186)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam rx_c_3_bdd_4_lut_else_4_lut.init = 16'h0080;
    LUT4 i4319_4_lut (.A(B[9]), .B(n9063), .C(n17_adj_480), .D(prog[1]), 
         .Z(n30)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(104[5] 249[13])
    defparam i4319_4_lut.init = 16'hc088;
    PFUMX i1544 (.BLUT(n15_adj_510), .ALUT(n3988), .C0(n8517), .Z(n3989));
    PFUMX i6657 (.BLUT(n9340), .ALUT(n9338), .C0(n9074), .Z(A_15__N_219[12]));
    LUT4 i37_3_lut_4_lut_3_lut_4_lut (.A(prog[3]), .B(prog[4]), .C(prog[0]), 
         .D(prog[1]), .Z(n21)) /* synthesis lut_function=(!(A ((C (D))+!B)+!A (B))) */ ;
    defparam i37_3_lut_4_lut_3_lut_4_lut.init = 16'h1999;
    PFUMX i1546 (.BLUT(n15_adj_506), .ALUT(n3990), .C0(n8517), .Z(n3991));
    PFUMX i1548 (.BLUT(n15_adj_502), .ALUT(n3992), .C0(n8517), .Z(n3993));
    LUT4 mux_37_Mux_5_i18_4_lut_4_lut (.A(n1331), .B(n1333), .C(PC_9__N_177[5]), 
         .D(B[5]), .Z(n18_adj_496)) /* synthesis lut_function=(A (D)+!A (B (C))) */ ;
    defparam mux_37_Mux_5_i18_4_lut_4_lut.init = 16'hea40;
    LUT4 i2_4_lut_adj_26 (.A(n25), .B(PC_9__N_177[0]), .C(n7877), .D(n34), 
         .Z(n6_adj_473)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (D))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(293[5] 319[12])
    defparam i2_4_lut_adj_26.init = 16'hce0a;
    PFUMX i6311 (.BLUT(n8731), .ALUT(n8730), .C0(prog[2]), .Z(n8732));
    LUT4 prog_4__bdd_4_lut_4_lut (.A(prog[3]), .B(prog[2]), .C(prog[0]), 
         .D(prog[1]), .Z(n8801)) /* synthesis lut_function=(A (B+!(C (D)))+!A (B+(C+!(D)))) */ ;
    defparam prog_4__bdd_4_lut_4_lut.init = 16'hdeff;
    LUT4 mux_37_Mux_6_i18_4_lut_4_lut (.A(n1331), .B(n1333), .C(PC_9__N_177[6]), 
         .D(B[6]), .Z(n18_adj_492)) /* synthesis lut_function=(A (D)+!A (B (C))) */ ;
    defparam mux_37_Mux_6_i18_4_lut_4_lut.init = 16'hea40;
    LUT4 mux_37_Mux_3_i18_4_lut_4_lut (.A(n1331), .B(n1333), .C(PC_9__N_177[3]), 
         .D(B[3]), .Z(n18_adj_504)) /* synthesis lut_function=(A (D)+!A (B (C))) */ ;
    defparam mux_37_Mux_3_i18_4_lut_4_lut.init = 16'hea40;
    LUT4 i5962_2_lut (.A(prog[4]), .B(prog[3]), .Z(n8408)) /* synthesis lut_function=(A (B)) */ ;
    defparam i5962_2_lut.init = 16'h8888;
    LUT4 mux_37_Mux_4_i18_4_lut_4_lut (.A(n1331), .B(n1333), .C(PC_9__N_177[4]), 
         .D(B[4]), .Z(n18_adj_500)) /* synthesis lut_function=(A (D)+!A (B (C))) */ ;
    defparam mux_37_Mux_4_i18_4_lut_4_lut.init = 16'hea40;
    LUT4 mux_37_Mux_1_i18_4_lut_4_lut (.A(n1331), .B(n1333), .C(PC_9__N_177[1]), 
         .D(B[1]), .Z(n18_adj_512)) /* synthesis lut_function=(A (D)+!A (B (C))) */ ;
    defparam mux_37_Mux_1_i18_4_lut_4_lut.init = 16'hea40;
    PFUMX i1550 (.BLUT(n15_adj_498), .ALUT(n3994), .C0(n8517), .Z(n3995));
    LUT4 n2127_bdd_4_lut_6509_4_lut (.A(prog[0]), .B(prog[1]), .C(prog[4]), 
         .D(prog[2]), .Z(n8798)) /* synthesis lut_function=(!(A ((C)+!B)+!A (C+!(D)))) */ ;
    defparam n2127_bdd_4_lut_6509_4_lut.init = 16'h0d08;
    LUT4 i3_4_lut_adj_27 (.A(n2680), .B(n6_adj_521), .C(n23_adj_453), 
         .D(n577), .Z(PC_9__N_157[1])) /* synthesis lut_function=(A (B+(C+(D)))+!A (B+(C))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(293[5] 319[12])
    defparam i3_4_lut_adj_27.init = 16'hfefc;
    PFUMX i1552 (.BLUT(n15_adj_494), .ALUT(n3996), .C0(n8517), .Z(n3997));
    LUT4 i53_3_lut_adj_28 (.A(PC[0]), .B(alu_c[0]), .C(prog[0]), .Z(n25)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(293[5] 319[12])
    defparam i53_3_lut_adj_28.init = 16'hcaca;
    PFUMX i1554 (.BLUT(n15_adj_490), .ALUT(n3998), .C0(n8517), .Z(n3999));
    LUT4 i2022_3_lut_4_lut_4_lut_4_lut (.A(prog[2]), .B(prog[0]), .C(prog[1]), 
         .D(prog[3]), .Z(n4515)) /* synthesis lut_function=(!(A (B (D)+!B ((D)+!C))+!A (B (C+!(D))+!B !(D)))) */ ;
    defparam i2022_3_lut_4_lut_4_lut_4_lut.init = 16'h15a8;
    PFUMX i6354 (.BLUT(n8802), .ALUT(n8801), .C0(prog[4]), .Z(n8803));
    CCU2D add_169_7 (.A0(SP[5]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(SP[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n7782), 
          .COUT(n7783), .S0(n278), .S1(n277));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(194[13:19])
    defparam add_169_7.INIT0 = 16'h5aaa;
    defparam add_169_7.INIT1 = 16'h5aaa;
    defparam add_169_7.INJECT1_0 = "NO";
    defparam add_169_7.INJECT1_1 = "NO";
    PFUMX i1556 (.BLUT(n15_adj_486), .ALUT(n4000), .C0(n8517), .Z(n4001));
    LUT4 n3791_bdd_4_lut_6669 (.A(n3791), .B(n9047), .C(alu_c[13]), .D(ram_out[13]), 
         .Z(n9334)) /* synthesis lut_function=(A (B (D)+!B (C))) */ ;
    defparam n3791_bdd_4_lut_6669.init = 16'ha820;
    LUT4 i3_4_lut_adj_29 (.A(n2680), .B(n6_adj_473), .C(n23), .D(n578), 
         .Z(PC_9__N_157[0])) /* synthesis lut_function=(A (B+(C+(D)))+!A (B+(C))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(293[5] 319[12])
    defparam i3_4_lut_adj_29.init = 16'hfefc;
    LUT4 led_dig_c_bdd_2_lut_6656 (.A(n9335), .B(n5525), .Z(n9336)) /* synthesis lut_function=(A (B)) */ ;
    defparam led_dig_c_bdd_2_lut_6656.init = 16'h8888;
    LUT4 i1_2_lut_adj_30 (.A(n8355), .B(PC_temp[0]), .Z(n23)) /* synthesis lut_function=(!(A+!(B))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(293[5] 319[12])
    defparam i1_2_lut_adj_30.init = 16'h4444;
    LUT4 mux_37_Mux_2_i18_4_lut_4_lut (.A(n1331), .B(n1333), .C(PC_9__N_177[2]), 
         .D(B[2]), .Z(n18_adj_508)) /* synthesis lut_function=(A (D)+!A (B (C))) */ ;
    defparam mux_37_Mux_2_i18_4_lut_4_lut.init = 16'hea40;
    LUT4 i2_4_lut_adj_31 (.A(n25_adj_454), .B(PC_9__N_177[1]), .C(n7877), 
         .D(n34), .Z(n6_adj_521)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (D))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(293[5] 319[12])
    defparam i2_4_lut_adj_31.init = 16'hce0a;
    LUT4 i309_2_lut (.A(n1333), .B(rst_c), .Z(clk_pll_enable_141)) /* synthesis lut_function=(A (B)) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(75[11] 324[5])
    defparam i309_2_lut.init = 16'h8888;
    LUT4 i53_3_lut_adj_32 (.A(PC[1]), .B(alu_c[1]), .C(prog[0]), .Z(n25_adj_454)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(293[5] 319[12])
    defparam i53_3_lut_adj_32.init = 16'hcaca;
    LUT4 i6281_4_lut (.A(n9073), .B(n1331), .C(n9060), .D(prog[4]), 
         .Z(clk_pll_enable_10)) /* synthesis lut_function=(!(A (B)+!A !((C (D))+!B))) */ ;
    defparam i6281_4_lut.init = 16'h7333;
    LUT4 i4344_4_lut (.A(n1334), .B(n1331), .C(IRQ_EN), .D(key_c), .Z(n3836)) /* synthesis lut_function=(A (B+(C (D)))+!A (B+(C))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(75[11] 324[5])
    defparam i4344_4_lut.init = 16'hfcdc;
    LUT4 i2870_1_lut (.A(n1333), .Z(n5331)) /* synthesis lut_function=(!(A)) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(76[3] 323[11])
    defparam i2870_1_lut.init = 16'h5555;
    LUT4 i3_4_lut_adj_33 (.A(prog[4]), .B(n14_adj_463), .C(n1330), .D(rst_c), 
         .Z(clk_pll_enable_11)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(75[11] 324[5])
    defparam i3_4_lut_adj_33.init = 16'h8000;
    LUT4 mux_37_Mux_0_i18_4_lut_4_lut (.A(n1331), .B(n1333), .C(PC_9__N_177[0]), 
         .D(B[0]), .Z(n18)) /* synthesis lut_function=(A (D)+!A (B (C))) */ ;
    defparam mux_37_Mux_0_i18_4_lut_4_lut.init = 16'hea40;
    PFUMX i1373 (.BLUT(n15), .ALUT(n3817), .C0(n8517), .Z(n3818));
    LUT4 prog_2__bdd_3_lut_6310_4_lut_4_lut (.A(prog[1]), .B(prog[4]), .C(prog[3]), 
         .D(prog[0]), .Z(n8730)) /* synthesis lut_function=(!(A (B+!(C))+!A (B+((D)+!C)))) */ ;
    defparam prog_2__bdd_3_lut_6310_4_lut_4_lut.init = 16'h2030;
    LUT4 i1_2_lut_adj_34 (.A(n8355), .B(PC_temp[1]), .Z(n23_adj_453)) /* synthesis lut_function=(!(A+!(B))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(293[5] 319[12])
    defparam i1_2_lut_adj_34.init = 16'h4444;
    LUT4 mux_71_i2_3_lut (.A(PC_9__N_177[1]), .B(ram_out[1]), .C(alu_co), 
         .Z(n577)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(303[15] 305[9])
    defparam mux_71_i2_3_lut.init = 16'hcaca;
    PFUMX i6653 (.BLUT(n9336), .ALUT(n9334), .C0(n9074), .Z(A_15__N_219[13]));
    LUT4 i54_4_lut (.A(prog[3]), .B(n33), .C(prog[4]), .D(n8396), .Z(clk_pll_enable_12)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;
    defparam i54_4_lut.init = 16'hcac0;
    LUT4 mux_71_i1_3_lut (.A(PC_9__N_177[0]), .B(ram_out[0]), .C(alu_co), 
         .Z(n578)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(303[15] 305[9])
    defparam mux_71_i1_3_lut.init = 16'hcaca;
    LUT4 mux_37_Mux_9_i17_3_lut (.A(SP[9]), .B(n322), .C(prog[0]), .Z(n17_adj_480)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(104[5] 249[13])
    defparam mux_37_Mux_9_i17_3_lut.init = 16'hcaca;
    LUT4 n2127_bdd_4_lut_6516_4_lut_then_2_lut (.A(ram_out[1]), .B(prog[1]), 
         .Z(n9091)) /* synthesis lut_function=(A (B)) */ ;
    defparam n2127_bdd_4_lut_6516_4_lut_then_2_lut.init = 16'h8888;
    LUT4 i4086_3_lut (.A(SP[8]), .B(n323), .C(prog[0]), .Z(n17_adj_483)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(28[13:17])
    defparam i4086_3_lut.init = 16'hcaca;
    LUT4 n2127_bdd_4_lut_6516_4_lut_else_2_lut (.A(prog[1]), .B(SP[1]), 
         .C(prog[0]), .Z(n9090)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam n2127_bdd_4_lut_6516_4_lut_else_2_lut.init = 16'h8080;
    LUT4 i2_4_lut_adj_35 (.A(n25_adj_466), .B(PC_9__N_177[2]), .C(n7877), 
         .D(n34), .Z(n6_adj_478)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (D))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(293[5] 319[12])
    defparam i2_4_lut_adj_35.init = 16'hce0a;
    LUT4 n2127_bdd_4_lut_6514_4_lut_then_2_lut (.A(ram_out[0]), .B(prog[1]), 
         .Z(n9094)) /* synthesis lut_function=(A (B)) */ ;
    defparam n2127_bdd_4_lut_6514_4_lut_then_2_lut.init = 16'h8888;
    LUT4 i53_3_lut_adj_36 (.A(PC[2]), .B(alu_c[2]), .C(prog[0]), .Z(n25_adj_466)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(293[5] 319[12])
    defparam i53_3_lut_adj_36.init = 16'hcaca;
    LUT4 n2127_bdd_4_lut_6514_4_lut_else_2_lut (.A(prog[1]), .B(SP[0]), 
         .C(prog[0]), .Z(n9093)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam n2127_bdd_4_lut_6514_4_lut_else_2_lut.init = 16'h8080;
    PFUMX i6352 (.BLUT(n8799), .ALUT(n8798), .C0(n9433), .Z(n8800));
    LUT4 n5525_bdd_4_lut_6670 (.A(prog[0]), .B(rx_c_13), .C(P_c_13), .D(prog[1]), 
         .Z(n9335)) /* synthesis lut_function=(!(A ((D)+!B)+!A !(C (D)))) */ ;
    defparam n5525_bdd_4_lut_6670.init = 16'h5088;
    LUT4 i1_4_lut_4_lut_then_4_lut_adj_37 (.A(prog[1]), .B(prog[0]), .C(prog[4]), 
         .D(prog[2]), .Z(n9085)) /* synthesis lut_function=(!(A (B+((D)+!C))+!A ((D)+!C))) */ ;
    defparam i1_4_lut_4_lut_then_4_lut_adj_37.init = 16'h0070;
    LUT4 n2127_bdd_4_lut_6515_4_lut_then_2_lut (.A(ram_out[8]), .B(prog[1]), 
         .Z(n9097)) /* synthesis lut_function=(A (B)) */ ;
    defparam n2127_bdd_4_lut_6515_4_lut_then_2_lut.init = 16'h8888;
    LUT4 mux_71_i4_3_lut (.A(PC_9__N_177[3]), .B(ram_out[3]), .C(alu_co), 
         .Z(n575)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(303[15] 305[9])
    defparam mux_71_i4_3_lut.init = 16'hcaca;
    LUT4 i6264_4_lut (.A(n9071), .B(n9070), .C(n1330), .D(n9434), .Z(n6105)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(76[3] 323[11])
    defparam i6264_4_lut.init = 16'h1000;
    LUT4 n2127_bdd_4_lut_6515_4_lut_else_2_lut (.A(prog[1]), .B(SP[8]), 
         .C(prog[0]), .Z(n9096)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam n2127_bdd_4_lut_6515_4_lut_else_2_lut.init = 16'h8080;
    LUT4 n2127_bdd_4_lut_6510_4_lut_then_2_lut (.A(ram_out[4]), .B(prog[1]), 
         .Z(n9100)) /* synthesis lut_function=(A (B)) */ ;
    defparam n2127_bdd_4_lut_6510_4_lut_then_2_lut.init = 16'h8888;
    LUT4 i2678_1_lut (.A(n1329), .Z(n5133)) /* synthesis lut_function=(!(A)) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(76[3] 323[11])
    defparam i2678_1_lut.init = 16'h5555;
    LUT4 i3691_3_lut (.A(n331), .B(ram_out[0]), .C(prog[1]), .Z(n6146)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(28[13:17])
    defparam i3691_3_lut.init = 16'hcaca;
    LUT4 n2127_bdd_4_lut_6510_4_lut_else_2_lut (.A(prog[1]), .B(SP[4]), 
         .C(prog[0]), .Z(n9099)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam n2127_bdd_4_lut_6510_4_lut_else_2_lut.init = 16'h8080;
    LUT4 i6210_3_lut (.A(n6146), .B(n14), .C(n8416), .Z(n15)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(76[3] 323[11])
    defparam i6210_3_lut.init = 16'hcaca;
    PFUMX i6520 (.BLUT(n9081), .ALUT(n9082), .C0(rx_c_4), .Z(n9083));
    LUT4 i1372_3_lut (.A(PC_9__N_167[0]), .B(PC_9__N_157[0]), .C(n1329), 
         .Z(n3817)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(76[3] 323[11])
    defparam i1372_3_lut.init = 16'hcaca;
    LUT4 n2127_bdd_4_lut_4_lut_then_2_lut (.A(ram_out[3]), .B(prog[1]), 
         .Z(n9103)) /* synthesis lut_function=(A (B)) */ ;
    defparam n2127_bdd_4_lut_4_lut_then_2_lut.init = 16'h8888;
    LUT4 i2_4_lut_adj_38 (.A(n25_adj_459), .B(PC_9__N_177[4]), .C(n7877), 
         .D(n34), .Z(n6_adj_520)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (D))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(293[5] 319[12])
    defparam i2_4_lut_adj_38.init = 16'hce0a;
    LUT4 n2127_bdd_4_lut_4_lut_else_2_lut (.A(prog[1]), .B(SP[3]), .C(prog[0]), 
         .Z(n9102)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam n2127_bdd_4_lut_4_lut_else_2_lut.init = 16'h8080;
    PFUMX i6590 (.BLUT(n9186), .ALUT(n9187), .C0(rx_c_3), .Z(n9188));
    LUT4 i3974_3_lut_4_lut (.A(n1329), .B(n6832), .C(ram_out[6]), .D(alu_c[6]), 
         .Z(n1_adj_516)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (D)) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(76[3] 323[11])
    defparam i3974_3_lut_4_lut.init = 16'hfd20;
    LUT4 i53_3_lut_adj_39 (.A(PC[4]), .B(alu_c[4]), .C(prog[0]), .Z(n25_adj_459)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(293[5] 319[12])
    defparam i53_3_lut_adj_39.init = 16'hcaca;
    PFUMX i6648 (.BLUT(n9332), .ALUT(n9330), .C0(n9074), .Z(A_15__N_219[14]));
    LUT4 led_dig_c_bdd_2_lut_6674 (.A(n9354), .B(n5525), .Z(n9355)) /* synthesis lut_function=(A (B)) */ ;
    defparam led_dig_c_bdd_2_lut_6674.init = 16'h8888;
    LUT4 alu_c_13__bdd_4_lut (.A(alu_c[13]), .B(n6105), .C(n2239), .D(n1329), 
         .Z(B_15__N_235[13])) /* synthesis lut_function=(A (B (C+!(D))+!B (C (D)))+!A (C (D))) */ ;
    defparam alu_c_13__bdd_4_lut.init = 16'hf088;
    LUT4 alu_c_12__bdd_4_lut (.A(alu_c[12]), .B(n6105), .C(n2240), .D(n1329), 
         .Z(B_15__N_235[12])) /* synthesis lut_function=(A (B (C+!(D))+!B (C (D)))+!A (C (D))) */ ;
    defparam alu_c_12__bdd_4_lut.init = 16'hf088;
    LUT4 i310_2_lut_rep_76 (.A(prog[1]), .B(prog[0]), .Z(n9068)) /* synthesis lut_function=(!(A+!(B))) */ ;
    defparam i310_2_lut_rep_76.init = 16'h4444;
    LUT4 n2127_bdd_4_lut_6513_4_lut_then_2_lut (.A(ram_out[7]), .B(prog[1]), 
         .Z(n9106)) /* synthesis lut_function=(A (B)) */ ;
    defparam n2127_bdd_4_lut_6513_4_lut_then_2_lut.init = 16'h8888;
    LUT4 i3925_3_lut_4_lut (.A(n1329), .B(n6832), .C(ram_out[5]), .D(alu_c[5]), 
         .Z(n1_adj_517)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (D)) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(76[3] 323[11])
    defparam i3925_3_lut_4_lut.init = 16'hfd20;
    LUT4 mux_37_Mux_8_i31_4_lut (.A(n15_adj_482), .B(n5_adj_470), .C(n1329), 
         .D(n6_adj_524), .Z(PC_9__N_167[8])) /* synthesis lut_function=(A (B+((D)+!C))+!A (B (C)+!B (C (D)))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(104[5] 249[13])
    defparam mux_37_Mux_8_i31_4_lut.init = 16'hfaca;
    LUT4 n2127_bdd_4_lut_6513_4_lut_else_2_lut (.A(prog[1]), .B(SP[7]), 
         .C(prog[0]), .Z(n9105)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam n2127_bdd_4_lut_6513_4_lut_else_2_lut.init = 16'h8080;
    LUT4 i4083_3_lut (.A(n323), .B(ram_out[8]), .C(prog[1]), .Z(n6530)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(28[13:17])
    defparam i4083_3_lut.init = 16'hcaca;
    LUT4 n2127_bdd_4_lut_6517_4_lut_then_2_lut (.A(ram_out[2]), .B(prog[1]), 
         .Z(n9109)) /* synthesis lut_function=(A (B)) */ ;
    defparam n2127_bdd_4_lut_6517_4_lut_then_2_lut.init = 16'h8888;
    LUT4 n2127_bdd_4_lut_6517_4_lut_else_2_lut (.A(prog[1]), .B(SP[2]), 
         .C(prog[0]), .Z(n9108)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam n2127_bdd_4_lut_6517_4_lut_else_2_lut.init = 16'h8080;
    LUT4 alu_c_11__bdd_4_lut (.A(alu_c[11]), .B(n6105), .C(n2241), .D(n1329), 
         .Z(B_15__N_235[11])) /* synthesis lut_function=(A (B (C+!(D))+!B (C (D)))+!A (C (D))) */ ;
    defparam alu_c_11__bdd_4_lut.init = 16'hf088;
    LUT4 n2127_bdd_4_lut_6511_4_lut_then_2_lut (.A(ram_out[5]), .B(prog[1]), 
         .Z(n9112)) /* synthesis lut_function=(A (B)) */ ;
    defparam n2127_bdd_4_lut_6511_4_lut_then_2_lut.init = 16'h8888;
    LUT4 n2127_bdd_4_lut_6511_4_lut_else_2_lut (.A(prog[1]), .B(SP[5]), 
         .C(prog[0]), .Z(n9111)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam n2127_bdd_4_lut_6511_4_lut_else_2_lut.init = 16'h8080;
    LUT4 i3887_3_lut (.A(n327), .B(ram_out[4]), .C(prog[1]), .Z(n6338)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(28[13:17])
    defparam i3887_3_lut.init = 16'hcaca;
    LUT4 i1549_3_lut (.A(PC_9__N_167[4]), .B(PC_9__N_157[4]), .C(n1329), 
         .Z(n3994)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(76[3] 323[11])
    defparam i1549_3_lut.init = 16'hcaca;
    LUT4 i3838_3_lut (.A(n328), .B(ram_out[3]), .C(prog[1]), .Z(n6290)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(28[13:17])
    defparam i3838_3_lut.init = 16'hcaca;
    LUT4 i1547_3_lut (.A(PC_9__N_167[3]), .B(PC_9__N_157[3]), .C(n1329), 
         .Z(n3992)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(76[3] 323[11])
    defparam i1547_3_lut.init = 16'hcaca;
    LUT4 i6231_3_lut (.A(n6530), .B(PC_9__N_167[8]), .C(n8517), .Z(n4002)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(76[3] 323[11])
    defparam i6231_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut_rep_77 (.A(prog[0]), .B(prog[1]), .Z(n9069)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_rep_77.init = 16'h8888;
    PFUMX mux_37_Mux_8_i15 (.BLUT(n30_adj_484), .ALUT(n3542), .C0(n9067), 
          .Z(n15_adj_482));
    PFUMX i6584 (.BLUT(n9177), .ALUT(n9178), .C0(prog[0]), .Z(n6832));
    LUT4 i1_4_lut_adj_40 (.A(n9066), .B(n7_adj_476), .C(n20), .D(prog[4]), 
         .Z(clk_pll_enable_129)) /* synthesis lut_function=(A (B (C+!(D))+!B (C (D)))) */ ;
    defparam i1_4_lut_adj_40.init = 16'ha088;
    LUT4 i6215_3_lut (.A(n6482), .B(n14_adj_485), .C(n8416), .Z(n15_adj_486)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(76[3] 323[11])
    defparam i6215_3_lut.init = 16'hcaca;
    LUT4 alu_c_10__bdd_4_lut (.A(alu_c[10]), .B(n6105), .C(n2242), .D(n1329), 
         .Z(B_15__N_235[10])) /* synthesis lut_function=(A (B (C+!(D))+!B (C (D)))+!A (C (D))) */ ;
    defparam alu_c_10__bdd_4_lut.init = 16'hf088;
    PFUMX i6645 (.BLUT(n9328), .ALUT(n9326), .C0(n9074), .Z(A_15__N_219[9]));
    LUT4 n6105_bdd_4_lut_6692 (.A(n6105), .B(alu_c[8]), .C(n2244), .D(n1329), 
         .Z(B_15__N_235[8])) /* synthesis lut_function=(A (B (C+!(D))+!B (C (D)))+!A (C (D))) */ ;
    defparam n6105_bdd_4_lut_6692.init = 16'hf088;
    LUT4 n2127_bdd_4_lut_6512_4_lut_then_2_lut (.A(ram_out[6]), .B(prog[1]), 
         .Z(n9115)) /* synthesis lut_function=(A (B)) */ ;
    defparam n2127_bdd_4_lut_6512_4_lut_then_2_lut.init = 16'h8888;
    LUT4 i3789_3_lut (.A(n329), .B(ram_out[2]), .C(prog[1]), .Z(n6242)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(28[13:17])
    defparam i3789_3_lut.init = 16'hcaca;
    LUT4 n6105_bdd_4_lut_6693 (.A(n6105), .B(alu_c[7]), .C(n2245), .D(n1329), 
         .Z(B_15__N_235[7])) /* synthesis lut_function=(A (B (C+!(D))+!B (C (D)))+!A (C (D))) */ ;
    defparam n6105_bdd_4_lut_6693.init = 16'hf088;
    PFUMX mux_37_Mux_7_i31 (.BLUT(n17_adj_487), .ALUT(n18_adj_488), .C0(n8519), 
          .Z(PC_9__N_167[7]));
    LUT4 i1545_3_lut (.A(PC_9__N_167[2]), .B(PC_9__N_157[2]), .C(n1329), 
         .Z(n3990)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(76[3] 323[11])
    defparam i1545_3_lut.init = 16'hcaca;
    PFUMX i24 (.BLUT(n3), .ALUT(n6_adj_472), .C0(prog[2]), .Z(n9_adj_471));
    LUT4 i1_2_lut_adj_41 (.A(n8355), .B(PC_temp[4]), .Z(n23_adj_458)) /* synthesis lut_function=(!(A+!(B))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(293[5] 319[12])
    defparam i1_2_lut_adj_41.init = 16'h4444;
    LUT4 n8759_bdd_3_lut_4_lut (.A(PC_9__N_177[9]), .B(n1333), .C(n1331), 
         .D(n8758), .Z(n8760)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;
    defparam n8759_bdd_3_lut_4_lut.init = 16'hf808;
    LUT4 i33_2_lut_rep_83 (.A(prog[0]), .B(prog[1]), .Z(n9075)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(254[5] 273[12])
    defparam i33_2_lut_rep_83.init = 16'h6666;
    LUT4 mux_34_Mux_0_i7_3_lut_3_lut_3_lut (.A(prog[0]), .B(prog[1]), .C(prog[2]), 
         .Z(n7)) /* synthesis lut_function=(!(A (B)+!A (B (C)+!B !(C)))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(254[5] 273[12])
    defparam mux_34_Mux_0_i7_3_lut_3_lut_3_lut.init = 16'h3636;
    LUT4 n6105_bdd_4_lut_6694 (.A(n6105), .B(alu_c[6]), .C(n2246), .D(n1329), 
         .Z(B_15__N_235[6])) /* synthesis lut_function=(A (B (C+!(D))+!B (C (D)))+!A (C (D))) */ ;
    defparam n6105_bdd_4_lut_6694.init = 16'hf088;
    LUT4 n2127_bdd_4_lut_6512_4_lut_else_2_lut (.A(prog[1]), .B(SP[6]), 
         .C(prog[0]), .Z(n9114)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam n2127_bdd_4_lut_6512_4_lut_else_2_lut.init = 16'h8080;
    LUT4 i3792_3_lut (.A(SP[2]), .B(n329), .C(prog[0]), .Z(n17_adj_507)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(28[13:17])
    defparam i3792_3_lut.init = 16'hcaca;
    LUT4 n2091_bdd_4_lut_6434_4_lut (.A(prog[3]), .B(prog[1]), .C(prog[4]), 
         .D(prog[0]), .Z(n8930)) /* synthesis lut_function=(!(A+!(B (C)+!B ((D)+!C)))) */ ;
    defparam n2091_bdd_4_lut_6434_4_lut.init = 16'h5141;
    LUT4 i1_3_lut_3_lut_3_lut (.A(prog[3]), .B(prog[4]), .C(prog[1]), 
         .Z(n25_adj_525)) /* synthesis lut_function=(!(A+!(B+!(C)))) */ ;
    defparam i1_3_lut_3_lut_3_lut.init = 16'h4545;
    LUT4 i6217_3_lut (.A(n6434), .B(n14_adj_489), .C(n8416), .Z(n15_adj_490)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(76[3] 323[11])
    defparam i6217_3_lut.init = 16'hcaca;
    LUT4 i3740_3_lut (.A(n330), .B(ram_out[1]), .C(prog[1]), .Z(n6194)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(28[13:17])
    defparam i3740_3_lut.init = 16'hcaca;
    LUT4 i21_4_lut_adj_42 (.A(n9128), .B(n3791), .C(n9074), .D(n1_adj_479), 
         .Z(A_15__N_219[0])) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(28[13:17])
    defparam i21_4_lut_adj_42.init = 16'hca0a;
    FD1P3AX alu_cin_144 (.D(alu_cin_N_368), .SP(clk_pll_enable_129), .CK(clk_pll), 
            .Q(alu_cin));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(75[11] 324[5])
    defparam alu_cin_144.GSR = "DISABLED";
    LUT4 i1543_3_lut (.A(PC_9__N_167[1]), .B(PC_9__N_157[1]), .C(n1329), 
         .Z(n3988)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(76[3] 323[11])
    defparam i1543_3_lut.init = 16'hcaca;
    LUT4 i3743_3_lut (.A(SP[1]), .B(n330), .C(prog[0]), .Z(n17_adj_511)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(28[13:17])
    defparam i3743_3_lut.init = 16'hcaca;
    LUT4 rx_c_7_bdd_4_lut_then_4_lut (.A(P_c_7), .B(prog[1]), .C(n1331), 
         .D(prog[0]), .Z(n9118)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(C (D)))+!A (B+!(C (D))))) */ ;
    defparam rx_c_7_bdd_4_lut_then_4_lut.init = 16'h3080;
    LUT4 rx_c_7_bdd_4_lut_else_4_lut (.A(P_c_7), .B(prog[1]), .C(n1331), 
         .D(prog[0]), .Z(n9117)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam rx_c_7_bdd_4_lut_else_4_lut.init = 16'h0080;
    LUT4 rx_c_5_bdd_4_lut_then_4_lut (.A(P_c_5), .B(prog[1]), .C(n1331), 
         .D(prog[0]), .Z(n9121)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(C (D)))+!A (B+!(C (D))))) */ ;
    defparam rx_c_5_bdd_4_lut_then_4_lut.init = 16'h3080;
    LUT4 rx_c_5_bdd_4_lut_else_4_lut (.A(P_c_5), .B(prog[1]), .C(n1331), 
         .D(prog[0]), .Z(n9120)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam rx_c_5_bdd_4_lut_else_4_lut.init = 16'h0080;
    LUT4 i1_2_lut_2_lut_3_lut (.A(prog[0]), .B(prog[1]), .C(prog[3]), 
         .Z(n12_adj_457)) /* synthesis lut_function=(!(A (B+(C))+!A ((C)+!B))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(254[5] 273[12])
    defparam i1_2_lut_2_lut_3_lut.init = 16'h0606;
    LUT4 i5950_2_lut_rep_84 (.A(n1329), .B(n1331), .Z(n9076)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i5950_2_lut_rep_84.init = 16'heeee;
    LUT4 i1_3_lut (.A(n1331), .B(n26), .C(n46), .Z(clk_pll_enable_140)) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(76[3] 323[11])
    defparam i1_3_lut.init = 16'h0808;
    LUT4 rx_c_6_bdd_4_lut_then_4_lut (.A(P_c_6), .B(prog[1]), .C(n1331), 
         .D(prog[0]), .Z(n9124)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(C (D)))+!A (B+!(C (D))))) */ ;
    defparam rx_c_6_bdd_4_lut_then_4_lut.init = 16'h3080;
    LUT4 i49_3_lut (.A(prog[2]), .B(prog[1]), .C(prog[0]), .Z(n46)) /* synthesis lut_function=(A (B+(C))+!A !(B)) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(76[3] 323[11])
    defparam i49_3_lut.init = 16'hb9b9;
    LUT4 rx_c_6_bdd_4_lut_else_4_lut (.A(P_c_6), .B(prog[1]), .C(n1331), 
         .D(prog[0]), .Z(n9123)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam rx_c_6_bdd_4_lut_else_4_lut.init = 16'h0080;
    LUT4 rx_c_0_bdd_4_lut_then_4_lut (.A(P_c_0), .B(prog[1]), .C(n1331), 
         .D(prog[0]), .Z(n9127)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(C (D)))+!A (B+!(C (D))))) */ ;
    defparam rx_c_0_bdd_4_lut_then_4_lut.init = 16'h3080;
    LUT4 rx_c_0_bdd_4_lut_else_4_lut (.A(P_c_0), .B(prog[1]), .C(n1331), 
         .D(prog[0]), .Z(n9126)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam rx_c_0_bdd_4_lut_else_4_lut.init = 16'h0080;
    LUT4 i3690_3_lut (.A(A[0]), .B(n6144), .C(n11), .Z(n2762)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i3690_3_lut.init = 16'hcaca;
    CCU2D add_27_11 (.A0(PC[9]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n7771), 
          .S0(PC_9__N_177[9]));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(197[18:27])
    defparam add_27_11.INIT0 = 16'h5aaa;
    defparam add_27_11.INIT1 = 16'h0000;
    defparam add_27_11.INJECT1_0 = "NO";
    defparam add_27_11.INJECT1_1 = "NO";
    LUT4 rx_c_1_bdd_4_lut_then_4_lut (.A(P_c_1), .B(prog[1]), .C(n1331), 
         .D(prog[0]), .Z(n9130)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(C (D)))+!A (B+!(C (D))))) */ ;
    defparam rx_c_1_bdd_4_lut_then_4_lut.init = 16'h3080;
    CCU2D add_169_5 (.A0(SP[3]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(SP[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n7781), 
          .COUT(n7782), .S0(n280), .S1(n279));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(194[13:19])
    defparam add_169_5.INIT0 = 16'h5aaa;
    defparam add_169_5.INIT1 = 16'h5aaa;
    defparam add_169_5.INJECT1_0 = "NO";
    defparam add_169_5.INJECT1_1 = "NO";
    LUT4 i3689_3_lut (.A(n283), .B(n331), .C(n2765), .Z(n6144)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i3689_3_lut.init = 16'hcaca;
    LUT4 rx_c_1_bdd_4_lut_else_4_lut (.A(P_c_1), .B(prog[1]), .C(n1331), 
         .D(prog[0]), .Z(n9129)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam rx_c_1_bdd_4_lut_else_4_lut.init = 16'h0080;
    LUT4 i2_3_lut_4_lut_4_lut (.A(n9434), .B(prog[1]), .C(prog[4]), .D(prog[3]), 
         .Z(n9_adj_523)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;
    defparam i2_3_lut_4_lut_4_lut.init = 16'h0040;
    LUT4 i5951_2_lut_3_lut_4_lut (.A(n1329), .B(n1331), .C(prog[1]), .D(prog[0]), 
         .Z(n8396)) /* synthesis lut_function=(A (C (D))+!A (B (C (D)))) */ ;
    defparam i5951_2_lut_3_lut_4_lut.init = 16'he000;
    LUT4 mux_37_Mux_4_i14_4_lut_4_lut (.A(prog[3]), .B(ram_out[4]), .C(n9051), 
         .D(n9101), .Z(n14_adj_497)) /* synthesis lut_function=(A (D)+!A (B (C))) */ ;
    defparam mux_37_Mux_4_i14_4_lut_4_lut.init = 16'hea40;
    LUT4 i6270_3_lut_3_lut_4_lut (.A(n9063), .B(prog[4]), .C(n8434), .D(n9046), 
         .Z(clk_pll_enable_122)) /* synthesis lut_function=(!(A (D)+!A (B (C+(D))+!B (D)))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(75[11] 324[5])
    defparam i6270_3_lut_3_lut_4_lut.init = 16'h00bf;
    LUT4 i3788_3_lut (.A(A[2]), .B(n6240), .C(n11), .Z(n2760)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i3788_3_lut.init = 16'hcaca;
    LUT4 mux_71_i5_3_lut (.A(PC_9__N_177[4]), .B(ram_out[4]), .C(alu_co), 
         .Z(n574)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(303[15] 305[9])
    defparam mux_71_i5_3_lut.init = 16'hcaca;
    LUT4 i3787_3_lut (.A(n281), .B(n329), .C(n2765), .Z(n6240)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i3787_3_lut.init = 16'hcaca;
    PFUMX mux_37_Mux_0_i31 (.BLUT(n17), .ALUT(n18), .C0(n8519), .Z(PC_9__N_167[0]));
    LUT4 i6276_4_lut_then_4_lut (.A(prog[4]), .B(prog[3]), .C(prog[1]), 
         .D(prog[0]), .Z(n9133)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;
    defparam i6276_4_lut_then_4_lut.init = 16'h0001;
    LUT4 i3985_3_lut (.A(n325), .B(ram_out[6]), .C(prog[1]), .Z(n6434)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(28[13:17])
    defparam i3985_3_lut.init = 16'hcaca;
    LUT4 i6219_3_lut (.A(n6386), .B(n14_adj_493), .C(n8416), .Z(n15_adj_494)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(76[3] 323[11])
    defparam i6219_3_lut.init = 16'hcaca;
    LUT4 i6276_4_lut_else_4_lut (.A(prog[4]), .B(prog[3]), .C(prog[1]), 
         .Z(n9132)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i6276_4_lut_else_4_lut.init = 16'h1010;
    LUT4 mux_37_Mux_3_i14_4_lut_4_lut (.A(prog[3]), .B(ram_out[3]), .C(n9051), 
         .D(n9104), .Z(n14_adj_501)) /* synthesis lut_function=(A (D)+!A (B (C))) */ ;
    defparam mux_37_Mux_3_i14_4_lut_4_lut.init = 16'hea40;
    LUT4 i3695_3_lut (.A(ram_out[0]), .B(A[0]), .C(n11_adj_468), .Z(n2800)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i3695_3_lut.init = 16'hcaca;
    LUT4 i6221_3_lut (.A(n6338), .B(n14_adj_497), .C(n8416), .Z(n15_adj_498)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(76[3] 323[11])
    defparam i6221_3_lut.init = 16'hcaca;
    LUT4 i2_4_lut_adj_43 (.A(n25_adj_456), .B(PC_9__N_177[5]), .C(n7877), 
         .D(n34), .Z(n6)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (D))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(293[5] 319[12])
    defparam i2_4_lut_adj_43.init = 16'hce0a;
    LUT4 i3837_3_lut (.A(A[3]), .B(n6288), .C(n11), .Z(n2759)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i3837_3_lut.init = 16'hcaca;
    LUT4 i3836_3_lut (.A(n280), .B(n328), .C(n2765), .Z(n6288)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i3836_3_lut.init = 16'hcaca;
    LUT4 i3886_3_lut (.A(A[4]), .B(n6336), .C(n11), .Z(n2758)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i3886_3_lut.init = 16'hcaca;
    LUT4 i3885_3_lut (.A(n279), .B(n327), .C(n2765), .Z(n6336)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i3885_3_lut.init = 16'hcaca;
    LUT4 i1553_3_lut (.A(PC_9__N_167[6]), .B(PC_9__N_157[6]), .C(n1329), 
         .Z(n3998)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(76[3] 323[11])
    defparam i1553_3_lut.init = 16'hcaca;
    LUT4 i3935_3_lut (.A(A[5]), .B(n6384), .C(n11), .Z(n2757)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i3935_3_lut.init = 16'hcaca;
    LUT4 i1_4_lut_then_4_lut (.A(prog[3]), .B(prog[1]), .C(prog[0]), .D(prog[4]), 
         .Z(n9136)) /* synthesis lut_function=(A (B (D)+!B (C+(D)))+!A (B+(C+(D)))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(293[5] 319[12])
    defparam i1_4_lut_then_4_lut.init = 16'hff74;
    LUT4 i1_4_lut_else_4_lut (.A(prog[3]), .B(prog[1]), .C(prog[0]), .Z(n9135)) /* synthesis lut_function=(!((B (C))+!A)) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(293[5] 319[12])
    defparam i1_4_lut_else_4_lut.init = 16'h2a2a;
    CCU2D add_169_3 (.A0(SP[1]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(SP[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n7780), 
          .COUT(n7781), .S0(n282), .S1(n281));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(194[13:19])
    defparam add_169_3.INIT0 = 16'h5aaa;
    defparam add_169_3.INIT1 = 16'h5aaa;
    defparam add_169_3.INJECT1_0 = "NO";
    defparam add_169_3.INJECT1_1 = "NO";
    LUT4 i3936_3_lut (.A(n326), .B(ram_out[5]), .C(prog[1]), .Z(n6386)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(28[13:17])
    defparam i3936_3_lut.init = 16'hcaca;
    CCU2D add_169_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(SP[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .COUT(n7780), 
          .S1(n283));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(194[13:19])
    defparam add_169_1.INIT0 = 16'hF000;
    defparam add_169_1.INIT1 = 16'h5555;
    defparam add_169_1.INJECT1_0 = "NO";
    defparam add_169_1.INJECT1_1 = "NO";
    CCU2D add_27_9 (.A0(PC[7]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(PC[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n7770), 
          .COUT(n7771), .S0(PC_9__N_177[7]), .S1(PC_9__N_177[8]));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(197[18:27])
    defparam add_27_9.INIT0 = 16'h5aaa;
    defparam add_27_9.INIT1 = 16'h5aaa;
    defparam add_27_9.INJECT1_0 = "NO";
    defparam add_27_9.INJECT1_1 = "NO";
    LUT4 i3934_3_lut (.A(n278), .B(n326), .C(n2765), .Z(n6384)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i3934_3_lut.init = 16'hcaca;
    CCU2D add_27_7 (.A0(PC[5]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(PC[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n7769), 
          .COUT(n7770), .S0(PC_9__N_177[5]), .S1(PC_9__N_177[6]));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(197[18:27])
    defparam add_27_7.INIT0 = 16'h5aaa;
    defparam add_27_7.INIT1 = 16'h5aaa;
    defparam add_27_7.INJECT1_0 = "NO";
    defparam add_27_7.INJECT1_1 = "NO";
    LUT4 rx_c_4_bdd_4_lut_else_4_lut (.A(P_c_4), .B(prog[1]), .C(n1331), 
         .D(prog[0]), .Z(n9081)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam rx_c_4_bdd_4_lut_else_4_lut.init = 16'h0080;
    LUT4 i1551_3_lut (.A(PC_9__N_167[5]), .B(PC_9__N_157[5]), .C(n1329), 
         .Z(n3996)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(76[3] 323[11])
    defparam i1551_3_lut.init = 16'hcaca;
    LUT4 rx_c_12_bdd_4_lut_6655 (.A(n3791), .B(n9047), .C(alu_c[12]), 
         .D(ram_out[12]), .Z(n9338)) /* synthesis lut_function=(A (B (D)+!B (C))) */ ;
    defparam rx_c_12_bdd_4_lut_6655.init = 16'ha820;
    LUT4 rx_c_8_bdd_4_lut_then_4_lut (.A(P_c_8), .B(prog[1]), .C(n1331), 
         .D(prog[0]), .Z(n9139)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(C (D)))+!A (B+!(C (D))))) */ ;
    defparam rx_c_8_bdd_4_lut_then_4_lut.init = 16'h3080;
    LUT4 i6223_3_lut (.A(n6290), .B(n14_adj_501), .C(n8416), .Z(n15_adj_502)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(76[3] 323[11])
    defparam i6223_3_lut.init = 16'hcaca;
    LUT4 i3984_3_lut (.A(A[6]), .B(n6432), .C(n11), .Z(n2756)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i3984_3_lut.init = 16'hcaca;
    LUT4 n2127_bdd_2_lut_2_lut (.A(prog[2]), .B(prog[4]), .Z(n8799)) /* synthesis lut_function=(!(A+!(B))) */ ;
    defparam n2127_bdd_2_lut_2_lut.init = 16'h4444;
    PFUMX mux_37_Mux_5_i31 (.BLUT(n17_adj_495), .ALUT(n18_adj_496), .C0(n8519), 
          .Z(PC_9__N_167[5]));
    CCU2D add_27_5 (.A0(PC[3]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(PC[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n7768), 
          .COUT(n7769), .S0(PC_9__N_177[3]), .S1(PC_9__N_177[4]));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(197[18:27])
    defparam add_27_5.INIT0 = 16'h5aaa;
    defparam add_27_5.INIT1 = 16'h5aaa;
    defparam add_27_5.INJECT1_0 = "NO";
    defparam add_27_5.INJECT1_1 = "NO";
    LUT4 i3_4_lut_adj_44 (.A(n1331), .B(n9064), .C(prog[0]), .D(n9071), 
         .Z(n11)) /* synthesis lut_function=((B+(C+(D)))+!A) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(76[3] 323[11])
    defparam i3_4_lut_adj_44.init = 16'hfffd;
    LUT4 rx_c_8_bdd_4_lut_else_4_lut (.A(P_c_8), .B(prog[1]), .C(n1331), 
         .D(prog[0]), .Z(n9138)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam rx_c_8_bdd_4_lut_else_4_lut.init = 16'h0080;
    PFUMX mux_37_Mux_6_i31 (.BLUT(n17_adj_491), .ALUT(n18_adj_492), .C0(n8519), 
          .Z(PC_9__N_167[6]));
    LUT4 i3876_3_lut_4_lut (.A(n1329), .B(n6832), .C(ram_out[4]), .D(alu_c[4]), 
         .Z(n1_adj_518)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (D)) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(76[3] 323[11])
    defparam i3876_3_lut_4_lut.init = 16'hfd20;
    CCU2D sub_171_add_2_11 (.A0(SP[9]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(SP[10]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n7776), 
          .S0(n322), .S1(n321));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(199[13:19])
    defparam sub_171_add_2_11.INIT0 = 16'h5555;
    defparam sub_171_add_2_11.INIT1 = 16'h5555;
    defparam sub_171_add_2_11.INJECT1_0 = "NO";
    defparam sub_171_add_2_11.INJECT1_1 = "NO";
    LUT4 i3983_3_lut (.A(n277), .B(n325), .C(n2765), .Z(n6432)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i3983_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut_rep_81 (.A(prog[0]), .B(prog[1]), .Z(n9073)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_rep_81.init = 16'heeee;
    LUT4 i4033_3_lut (.A(A[7]), .B(n6480), .C(n11), .Z(n2755)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i4033_3_lut.init = 16'hcaca;
    CCU2D add_27_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(PC[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .COUT(n7767), 
          .S1(PC_9__N_177[0]));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(197[18:27])
    defparam add_27_1.INIT0 = 16'hF000;
    defparam add_27_1.INIT1 = 16'h5555;
    defparam add_27_1.INJECT1_0 = "NO";
    defparam add_27_1.INJECT1_1 = "NO";
    LUT4 i1_4_lut_adj_45 (.A(rst_c), .B(n1336), .C(n8732), .D(n1331), 
         .Z(clk_pll_enable_83)) /* synthesis lut_function=(A (B (C+!(D))+!B (C (D)))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(5[9:12])
    defparam i1_4_lut_adj_45.init = 16'ha088;
    CCU2D sub_171_add_2_9 (.A0(SP[7]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(SP[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n7775), 
          .COUT(n7776), .S0(n324), .S1(n323));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(199[13:19])
    defparam sub_171_add_2_9.INIT0 = 16'h5555;
    defparam sub_171_add_2_9.INIT1 = 16'h5555;
    defparam sub_171_add_2_9.INJECT1_0 = "NO";
    defparam sub_171_add_2_9.INJECT1_1 = "NO";
    LUT4 i4032_3_lut (.A(n276), .B(n324), .C(n2765), .Z(n6480)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i4032_3_lut.init = 16'hcaca;
    LUT4 i37_3_lut_rep_62_3_lut_3_lut (.A(prog[0]), .B(prog[1]), .C(prog[2]), 
         .Z(n9054)) /* synthesis lut_function=(!(A (B (C))+!A (B (C)+!B !(C)))) */ ;
    defparam i37_3_lut_rep_62_3_lut_3_lut.init = 16'h3e3e;
    LUT4 rx_c_4_bdd_4_lut_then_4_lut (.A(P_c_4), .B(prog[1]), .C(n1331), 
         .D(prog[0]), .Z(n9082)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(C (D)))+!A (B+!(C (D))))) */ ;
    defparam rx_c_4_bdd_4_lut_then_4_lut.init = 16'h3080;
    LUT4 i3890_3_lut (.A(SP[4]), .B(n327), .C(prog[0]), .Z(n17_adj_499)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(28[13:17])
    defparam i3890_3_lut.init = 16'hcaca;
    LUT4 rx_c_12_bdd_4_lut (.A(rx_c_12), .B(P_c_12), .C(prog[1]), .D(prog[0]), 
         .Z(n9339)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B (C+!(D)))+!A (((D)+!C)+!B))) */ ;
    defparam rx_c_12_bdd_4_lut.init = 16'h0ac0;
    LUT4 led_dig_c_bdd_2_lut_6660 (.A(n9339), .B(n1331), .Z(n9340)) /* synthesis lut_function=(A (B)) */ ;
    defparam led_dig_c_bdd_2_lut_6660.init = 16'h8888;
    CCU2D sub_171_add_2_7 (.A0(SP[5]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(SP[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n7774), 
          .COUT(n7775), .S0(n326), .S1(n325));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(199[13:19])
    defparam sub_171_add_2_7.INIT0 = 16'h5555;
    defparam sub_171_add_2_7.INIT1 = 16'h5555;
    defparam sub_171_add_2_7.INJECT1_0 = "NO";
    defparam sub_171_add_2_7.INJECT1_1 = "NO";
    PFUMX i2812 (.BLUT(n7), .ALUT(n5267), .C0(prog[4]), .Z(n5269));
    LUT4 i2_4_lut_adj_46 (.A(n9064), .B(prog[4]), .C(n9433), .D(n8399), 
         .Z(n11_adj_468)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;
    defparam i2_4_lut_adj_46.init = 16'hfeff;
    FD1P3AX prog__0__i4_rep_86 (.D(ram_out[3]), .SP(clk_pll_enable_141), 
            .CK(clk_pll), .Q(n9433));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(75[11] 324[5])
    defparam prog__0__i4_rep_86.GSR = "DISABLED";
    LUT4 i6260_2_lut_rep_59_3_lut (.A(prog[0]), .B(prog[1]), .C(n9434), 
         .Z(n9051)) /* synthesis lut_function=(!(A+(B+(C)))) */ ;
    defparam i6260_2_lut_rep_59_3_lut.init = 16'h0101;
    LUT4 i1_4_lut_rep_54 (.A(n3518), .B(n8434), .C(n58), .D(prog[4]), 
         .Z(n9046)) /* synthesis lut_function=(A+!(((D)+!C)+!B)) */ ;
    defparam i1_4_lut_rep_54.init = 16'haaea;
    LUT4 i1_4_lut_adj_47 (.A(n9075), .B(n8362), .C(n9058), .D(n9057), 
         .Z(clk_pll_enable_131)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(5[9:12])
    defparam i1_4_lut_adj_47.init = 16'hc0c8;
    LUT4 i21_4_lut_adj_48 (.A(n9131), .B(n3791), .C(n9074), .D(n1_adj_477), 
         .Z(A_15__N_219[1])) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(28[13:17])
    defparam i21_4_lut_adj_48.init = 16'hca0a;
    PFUMX mux_37_Mux_3_i31 (.BLUT(n17_adj_503), .ALUT(n18_adj_504), .C0(n8519), 
          .Z(PC_9__N_167[3]));
    PFUMX i6562 (.BLUT(n9144), .ALUT(n9145), .C0(prog[3]), .Z(n9146));
    LUT4 rx_c_2_bdd_4_lut_then_4_lut (.A(P_c_2), .B(prog[1]), .C(n1331), 
         .D(prog[0]), .Z(n9142)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(C (D)))+!A (B+!(C (D))))) */ ;
    defparam rx_c_2_bdd_4_lut_then_4_lut.init = 16'h3080;
    LUT4 i53_3_lut_adj_49 (.A(PC[5]), .B(alu_c[5]), .C(prog[0]), .Z(n25_adj_456)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(293[5] 319[12])
    defparam i53_3_lut_adj_49.init = 16'hcaca;
    FD1P3AX A_i0_i0 (.D(A_15__N_219[0]), .SP(clk_pll_enable_131), .CK(clk_pll), 
            .Q(A[0]));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(75[11] 324[5])
    defparam A_i0_i0.GSR = "DISABLED";
    PFUMX i6560 (.BLUT(n9141), .ALUT(n9142), .C0(rx_c_2), .Z(n9143));
    LUT4 rx_c_2_bdd_4_lut_else_4_lut (.A(P_c_2), .B(prog[1]), .C(n1331), 
         .D(prog[0]), .Z(n9141)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam rx_c_2_bdd_4_lut_else_4_lut.init = 16'h0080;
    LUT4 i3827_3_lut_4_lut (.A(n1329), .B(n6832), .C(ram_out[3]), .D(alu_c[3]), 
         .Z(n1)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (D)) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(76[3] 323[11])
    defparam i3827_3_lut_4_lut.init = 16'hfd20;
    PFUMX i6558 (.BLUT(n9138), .ALUT(n9139), .C0(rx_c_8), .Z(n9140));
    LUT4 i6225_3_lut (.A(n6242), .B(n14_adj_505), .C(n8416), .Z(n15_adj_506)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(76[3] 323[11])
    defparam i6225_3_lut.init = 16'hcaca;
    PFUMX mux_37_Mux_4_i31 (.BLUT(n17_adj_499), .ALUT(n18_adj_500), .C0(n8519), 
          .Z(PC_9__N_167[4]));
    LUT4 n19_bdd_4_lut_then_4_lut (.A(prog[2]), .B(prog[1]), .C(prog[0]), 
         .D(prog[4]), .Z(n9145)) /* synthesis lut_function=(!(A (B+!(C (D)+!C !(D)))+!A (B (D)+!B !(C (D))))) */ ;
    defparam n19_bdd_4_lut_then_4_lut.init = 16'h3046;
    LUT4 i1344_3_lut (.A(n12), .B(n6832), .C(n1329), .Z(n3791)) /* synthesis lut_function=(!(A (B (C))+!A (B+!(C)))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(76[3] 323[11])
    defparam i1344_3_lut.init = 16'h3a3a;
    CCU2D sub_171_add_2_5 (.A0(SP[3]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(SP[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n7773), 
          .COUT(n7774), .S0(n328), .S1(n327));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(199[13:19])
    defparam sub_171_add_2_5.INIT0 = 16'h5555;
    defparam sub_171_add_2_5.INIT1 = 16'h5555;
    defparam sub_171_add_2_5.INJECT1_0 = "NO";
    defparam sub_171_add_2_5.INJECT1_1 = "NO";
    LUT4 i3841_3_lut (.A(SP[3]), .B(n328), .C(prog[0]), .Z(n17_adj_503)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(28[13:17])
    defparam i3841_3_lut.init = 16'hcaca;
    PFUMX i6556 (.BLUT(n9135), .ALUT(n9136), .C0(prog[2]), .Z(n34));
    LUT4 prog_2__bdd_3_lut_6358_4_lut (.A(prog[0]), .B(prog[1]), .C(prog[3]), 
         .D(prog[4]), .Z(n8731)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B (C+!(D)))+!A (C+!(D)))) */ ;
    defparam prog_2__bdd_3_lut_6358_4_lut.init = 16'h0f80;
    LUT4 n19_bdd_4_lut_else_4_lut (.A(prog[2]), .B(prog[1]), .C(prog[0]), 
         .D(prog[4]), .Z(n9144)) /* synthesis lut_function=(!(A (B+(C+(D)))+!A ((D)+!B))) */ ;
    defparam n19_bdd_4_lut_else_4_lut.init = 16'h0046;
    CCU2D sub_171_add_2_3 (.A0(SP[1]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(SP[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n7772), 
          .COUT(n7773), .S0(n330), .S1(n329));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(199[13:19])
    defparam sub_171_add_2_3.INIT0 = 16'h5555;
    defparam sub_171_add_2_3.INIT1 = 16'h5555;
    defparam sub_171_add_2_3.INJECT1_0 = "NO";
    defparam sub_171_add_2_3.INJECT1_1 = "NO";
    PFUMX i6554 (.BLUT(n9132), .ALUT(n9133), .C0(prog[2]), .Z(n2680));
    LUT4 i1_2_lut_adj_50 (.A(n8355), .B(PC_temp[5]), .Z(n23_adj_455)) /* synthesis lut_function=(!(A+!(B))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(293[5] 319[12])
    defparam i1_2_lut_adj_50.init = 16'h4444;
    PFUMX i6332 (.BLUT(n8760), .ALUT(n7845), .C0(n1329), .Z(n8761));
    PFUMX i6552 (.BLUT(n9129), .ALUT(n9130), .C0(rx_c_1), .Z(n9131));
    LUT4 mux_71_i6_3_lut (.A(PC_9__N_177[5]), .B(ram_out[5]), .C(alu_co), 
         .Z(n573)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(303[15] 305[9])
    defparam mux_71_i6_3_lut.init = 16'hcaca;
    LUT4 i4082_3_lut (.A(A[8]), .B(n6528), .C(n11), .Z(n2754)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i4082_3_lut.init = 16'hcaca;
    LUT4 i4081_3_lut (.A(n275), .B(n323), .C(n2765), .Z(n6528)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i4081_3_lut.init = 16'hcaca;
    LUT4 i2_3_lut_rep_58_4_lut (.A(prog[2]), .B(n9072), .C(n9073), .D(n9069), 
         .Z(n9050)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(104[5] 249[13])
    defparam i2_3_lut_rep_58_4_lut.init = 16'hffef;
    CCU2D add_27_3 (.A0(PC[1]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(PC[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n7767), 
          .COUT(n7768), .S0(PC_9__N_177[1]), .S1(PC_9__N_177[2]));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(197[18:27])
    defparam add_27_3.INIT0 = 16'h5aaa;
    defparam add_27_3.INIT1 = 16'h5aaa;
    defparam add_27_3.INJECT1_0 = "NO";
    defparam add_27_3.INJECT1_1 = "NO";
    CCU2D sub_171_add_2_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(SP[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .COUT(n7772), 
          .S1(n331));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(199[13:19])
    defparam sub_171_add_2_1.INIT0 = 16'hF000;
    defparam sub_171_add_2_1.INIT1 = 16'h5555;
    defparam sub_171_add_2_1.INJECT1_0 = "NO";
    defparam sub_171_add_2_1.INJECT1_1 = "NO";
    PFUMX i6550 (.BLUT(n9126), .ALUT(n9127), .C0(rx_c_0), .Z(n9128));
    LUT4 alu_c_14__bdd_4_lut (.A(alu_c[14]), .B(n6105), .C(n2238), .D(n1329), 
         .Z(B_15__N_235[14])) /* synthesis lut_function=(A (B (C+!(D))+!B (C (D)))+!A (C (D))) */ ;
    defparam alu_c_14__bdd_4_lut.init = 16'hf088;
    FD1P3AX SP_i0_i2 (.D(n2760), .SP(clk_pll_enable_140), .CK(clk_pll), 
            .Q(SP[2]));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(75[11] 324[5])
    defparam SP_i0_i2.GSR = "ENABLED";
    FD1P3AX SP_i0_i3 (.D(n2759), .SP(clk_pll_enable_140), .CK(clk_pll), 
            .Q(SP[3]));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(75[11] 324[5])
    defparam SP_i0_i3.GSR = "ENABLED";
    FD1P3AX SP_i0_i4 (.D(n2758), .SP(clk_pll_enable_140), .CK(clk_pll), 
            .Q(SP[4]));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(75[11] 324[5])
    defparam SP_i0_i4.GSR = "ENABLED";
    FD1P3AX SP_i0_i5 (.D(n2757), .SP(clk_pll_enable_140), .CK(clk_pll), 
            .Q(SP[5]));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(75[11] 324[5])
    defparam SP_i0_i5.GSR = "ENABLED";
    FD1P3AX SP_i0_i6 (.D(n2756), .SP(clk_pll_enable_140), .CK(clk_pll), 
            .Q(SP[6]));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(75[11] 324[5])
    defparam SP_i0_i6.GSR = "ENABLED";
    FD1P3AX SP_i0_i7 (.D(n2755), .SP(clk_pll_enable_140), .CK(clk_pll), 
            .Q(SP[7]));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(75[11] 324[5])
    defparam SP_i0_i7.GSR = "ENABLED";
    FD1P3AY SP_i0_i8 (.D(n2754), .SP(clk_pll_enable_140), .CK(clk_pll), 
            .Q(SP[8]));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(75[11] 324[5])
    defparam SP_i0_i8.GSR = "ENABLED";
    FD1P3AY SP_i0_i9 (.D(n2753), .SP(clk_pll_enable_140), .CK(clk_pll), 
            .Q(SP[9]));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(75[11] 324[5])
    defparam SP_i0_i9.GSR = "ENABLED";
    FD1P3AY SP_i0_i10 (.D(n2752), .SP(clk_pll_enable_140), .CK(clk_pll), 
            .Q(SP[10]));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(75[11] 324[5])
    defparam SP_i0_i10.GSR = "ENABLED";
    PFUMX i6548 (.BLUT(n9123), .ALUT(n9124), .C0(rx_c_6), .Z(n9125));
    LUT4 i1_2_lut_rep_79 (.A(n9433), .B(prog[4]), .Z(n9071)) /* synthesis lut_function=(A+!(B)) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(287[5:13])
    defparam i1_2_lut_rep_79.init = 16'hbbbb;
    LUT4 i1_3_lut_4_lut (.A(n9074), .B(n1331), .C(n8362), .D(n9050), 
         .Z(clk_pll_enable_29)) /* synthesis lut_function=(A (C)+!A !(B ((D)+!C)+!B !(C))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(5[9:12])
    defparam i1_3_lut_4_lut.init = 16'hb0f0;
    PFUMX i6330 (.BLUT(n8757), .ALUT(n30), .C0(prog[4]), .Z(n8758));
    LUT4 i3694_3_lut (.A(SP[0]), .B(n331), .C(prog[0]), .Z(n17)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(28[13:17])
    defparam i3694_3_lut.init = 16'hcaca;
    LUT4 i4395_2_lut_2_lut_3_lut (.A(prog[0]), .B(prog[1]), .C(prog[3]), 
         .Z(n5267)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i4395_2_lut_2_lut_3_lut.init = 16'h1010;
    LUT4 i1_4_lut_adj_51 (.A(rst_c), .B(n5323), .C(n6832), .D(n1329), 
         .Z(n8362)) /* synthesis lut_function=(!((B (C (D))+!B (C+!(D)))+!A)) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(5[9:12])
    defparam i1_4_lut_adj_51.init = 16'h0a88;
    LUT4 i2_3_lut_3_lut (.A(prog[0]), .B(prog[1]), .C(prog[3]), .Z(n9)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;
    defparam i2_3_lut_3_lut.init = 16'h4040;
    PFUMX i6546 (.BLUT(n9120), .ALUT(n9121), .C0(rx_c_5), .Z(n9122));
    LUT4 rx_c_11_bdd_4_lut_6659 (.A(n3791), .B(n9047), .C(alu_c[11]), 
         .D(ram_out[11]), .Z(n9342)) /* synthesis lut_function=(A (B (D)+!B (C))) */ ;
    defparam rx_c_11_bdd_4_lut_6659.init = 16'ha820;
    GSR GSR_INST (.GSR(rst_c));
    PFUMX i6544 (.BLUT(n9117), .ALUT(n9118), .C0(rx_c_7), .Z(n9119));
    LUT4 i6227_3_lut (.A(n6194), .B(n14_adj_509), .C(n8416), .Z(n15_adj_510)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(76[3] 323[11])
    defparam i6227_3_lut.init = 16'hcaca;
    LUT4 i4034_3_lut (.A(n324), .B(ram_out[7]), .C(prog[1]), .Z(n6482)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(28[13:17])
    defparam i4034_3_lut.init = 16'hcaca;
    LUT4 mux_657_i10_3_lut (.A(A[9]), .B(n2773), .C(n11), .Z(n2753)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(76[3] 323[11])
    defparam mux_657_i10_3_lut.init = 16'hcaca;
    LUT4 mux_661_i10_3_lut (.A(n274), .B(n322), .C(n2765), .Z(n2773)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(76[3] 323[11])
    defparam mux_661_i10_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut_4_lut_4_lut_4_lut_4_lut (.A(prog[0]), .B(prog[1]), .C(prog[2]), 
         .D(n9433), .Z(n7_adj_476)) /* synthesis lut_function=(!(A (B (C+(D))+!B (D))+!A (B (C+(D))+!B ((D)+!C)))) */ ;
    defparam i1_2_lut_4_lut_4_lut_4_lut_4_lut.init = 16'h003e;
    PFUMX mux_37_Mux_1_i31 (.BLUT(n17_adj_511), .ALUT(n18_adj_512), .C0(n8519), 
          .Z(PC_9__N_167[1]));
    PFUMX i6542 (.BLUT(n9114), .ALUT(n9115), .C0(n9434), .Z(n9116));
    LUT4 i2_4_lut_adj_52 (.A(n25_adj_452), .B(PC_9__N_177[6]), .C(n7877), 
         .D(n34), .Z(n6_adj_467)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (D))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(293[5] 319[12])
    defparam i2_4_lut_adj_52.init = 16'hce0a;
    PFUMX mux_37_Mux_2_i31 (.BLUT(n17_adj_507), .ALUT(n18_adj_508), .C0(n8519), 
          .Z(PC_9__N_167[2]));
    LUT4 i1555_3_lut (.A(PC_9__N_167[7]), .B(PC_9__N_157[7]), .C(n1329), 
         .Z(n4000)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(76[3] 323[11])
    defparam i1555_3_lut.init = 16'hcaca;
    PFUMX i6540 (.BLUT(n9111), .ALUT(n9112), .C0(n9434), .Z(n9113));
    LUT4 prog_4__bdd_2_lut_3_lut (.A(prog[0]), .B(prog[1]), .C(prog[3]), 
         .Z(n8802)) /* synthesis lut_function=(!(A (B (C)))) */ ;
    defparam prog_4__bdd_2_lut_3_lut.init = 16'h7f7f;
    LUT4 mux_670_i1_4_lut (.A(PC[0]), .B(PC_9__N_177[0]), .C(n2816), .D(n2801), 
         .Z(n2827)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(75[11] 324[5])
    defparam mux_670_i1_4_lut.init = 16'hcac0;
    LUT4 i1_4_lut_adj_53 (.A(n9066), .B(n4746), .C(prog[1]), .D(n9_adj_471), 
         .Z(n2848)) /* synthesis lut_function=(A ((C (D))+!B)) */ ;
    defparam i1_4_lut_adj_53.init = 16'ha222;
    LUT4 n6249_bdd_4_lut_4_lut_then_3_lut (.A(prog[1]), .B(prog[0]), .C(SP[9]), 
         .Z(n9088)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam n6249_bdd_4_lut_4_lut_then_3_lut.init = 16'h8080;
    LUT4 i6273_4_lut (.A(n9063), .B(n9046), .C(n6_adj_519), .D(n1331), 
         .Z(clk_pll_enable_120)) /* synthesis lut_function=(!(A (B)+!A (B+(C (D))))) */ ;
    defparam i6273_4_lut.init = 16'h2333;
    PFUMX i6538 (.BLUT(n9108), .ALUT(n9109), .C0(n9434), .Z(n9110));
    LUT4 i682_3_lut (.A(n1331), .B(rst_c), .C(n8800), .Z(n2816)) /* synthesis lut_function=(A (B (C))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(76[3] 323[11])
    defparam i682_3_lut.init = 16'h8080;
    LUT4 i2_2_lut (.A(n1329), .B(prog[4]), .Z(n6_adj_519)) /* synthesis lut_function=(!(A+!(B))) */ ;
    defparam i2_2_lut.init = 16'h4444;
    LUT4 i53_3_lut_adj_54 (.A(PC[6]), .B(alu_c[6]), .C(prog[0]), .Z(n25_adj_452)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(293[5] 319[12])
    defparam i53_3_lut_adj_54.init = 16'hcaca;
    LUT4 mux_37_Mux_1_i14_4_lut_4_lut (.A(prog[3]), .B(ram_out[1]), .C(n9051), 
         .D(n9092), .Z(n14_adj_509)) /* synthesis lut_function=(A (D)+!A (B (C))) */ ;
    defparam mux_37_Mux_1_i14_4_lut_4_lut.init = 16'hea40;
    LUT4 n6105_bdd_4_lut_6696 (.A(n6105), .B(alu_c[4]), .C(n2248), .D(n1329), 
         .Z(B_15__N_235[4])) /* synthesis lut_function=(A (B (C+!(D))+!B (C (D)))+!A (C (D))) */ ;
    defparam n6105_bdd_4_lut_6696.init = 16'hf088;
    PFUMX i27 (.BLUT(n9), .ALUT(n12_adj_457), .C0(prog[2]), .Z(n14_adj_463));
    LUT4 i3_4_lut_adj_55 (.A(n9065), .B(n1331), .C(rst_c), .D(n1334), 
         .Z(n2801)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(76[3] 323[11])
    defparam i3_4_lut_adj_55.init = 16'h2000;
    LUT4 i2_3_lut_3_lut_adj_56 (.A(prog[0]), .B(prog[4]), .C(prog[3]), 
         .Z(n6_adj_472)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;
    defparam i2_3_lut_3_lut_adj_56.init = 16'h2020;
    PFUMX i6536 (.BLUT(n9105), .ALUT(n9106), .C0(n9434), .Z(n9107));
    LUT4 i1923_4_lut (.A(n7_adj_476), .B(n9066), .C(n4515), .D(prog[4]), 
         .Z(clk_pll_enable_74)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(75[11] 324[5])
    defparam i1923_4_lut.init = 16'hc088;
    LUT4 i3_4_lut_adj_57 (.A(n1330), .B(n9061), .C(n1332), .D(n3514), 
         .Z(n3518)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i3_4_lut_adj_57.init = 16'hfffe;
    LUT4 mux_37_Mux_6_i14_4_lut_4_lut (.A(prog[3]), .B(ram_out[6]), .C(n9051), 
         .D(n9116), .Z(n14_adj_489)) /* synthesis lut_function=(A (D)+!A (B (C))) */ ;
    defparam mux_37_Mux_6_i14_4_lut_4_lut.init = 16'hea40;
    LUT4 n6249_bdd_4_lut_4_lut_else_3_lut (.A(prog[1]), .B(prog[0]), .C(ram_out[9]), 
         .D(prog[2]), .Z(n9087)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;
    defparam n6249_bdd_4_lut_4_lut_else_3_lut.init = 16'h0010;
    LUT4 mux_37_Mux_5_i14_4_lut_4_lut (.A(prog[3]), .B(ram_out[5]), .C(n9051), 
         .D(n9113), .Z(n14_adj_493)) /* synthesis lut_function=(A (D)+!A (B (C))) */ ;
    defparam mux_37_Mux_5_i14_4_lut_4_lut.init = 16'hea40;
    LUT4 i5987_2_lut (.A(n1329), .B(n1331), .Z(n8434)) /* synthesis lut_function=(!(A+!(B))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(76[3] 323[11])
    defparam i5987_2_lut.init = 16'h4444;
    LUT4 mux_37_Mux_7_i14_4_lut_4_lut (.A(prog[3]), .B(ram_out[7]), .C(n9051), 
         .D(n9107), .Z(n14_adj_485)) /* synthesis lut_function=(A (D)+!A (B (C))) */ ;
    defparam mux_37_Mux_7_i14_4_lut_4_lut.init = 16'hea40;
    LUT4 i2_4_lut_adj_58 (.A(n9054), .B(n4), .C(n20), .D(prog[4]), .Z(clk_pll_enable_123)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;
    defparam i2_4_lut_adj_58.init = 16'hc088;
    PFUMX i6534 (.BLUT(n9102), .ALUT(n9103), .C0(n9434), .Z(n9104));
    LUT4 i3988_3_lut (.A(SP[6]), .B(n325), .C(prog[0]), .Z(n17_adj_491)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(28[13:17])
    defparam i3988_3_lut.init = 16'hcaca;
    LUT4 mux_37_Mux_8_i14_4_lut_4_lut (.A(prog[3]), .B(ram_out[8]), .C(n9051), 
         .D(n9098), .Z(n14_adj_481)) /* synthesis lut_function=(A (D)+!A (B (C))) */ ;
    defparam mux_37_Mux_8_i14_4_lut_4_lut.init = 16'hea40;
    LUT4 n6105_bdd_4_lut_6697 (.A(n6105), .B(alu_c[3]), .C(n2249), .D(n1329), 
         .Z(B_15__N_235[3])) /* synthesis lut_function=(A (B (C+!(D))+!B (C (D)))+!A (C (D))) */ ;
    defparam n6105_bdd_4_lut_6697.init = 16'hf088;
    LUT4 i1_2_lut_adj_59 (.A(n8355), .B(PC_temp[6]), .Z(n23_adj_451)) /* synthesis lut_function=(!(A+!(B))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(293[5] 319[12])
    defparam i1_2_lut_adj_59.init = 16'h4444;
    LUT4 equal_75_i6_2_lut_rep_78 (.A(prog[0]), .B(prog[1]), .Z(n9070)) /* synthesis lut_function=(A+!(B)) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(300[5:13])
    defparam equal_75_i6_2_lut_rep_78.init = 16'hbbbb;
    LUT4 n6105_bdd_4_lut_6698 (.A(n6105), .B(alu_c[2]), .C(n2250), .D(n1329), 
         .Z(B_15__N_235[2])) /* synthesis lut_function=(A (B (C+!(D))+!B (C (D)))+!A (C (D))) */ ;
    defparam n6105_bdd_4_lut_6698.init = 16'hf088;
    LUT4 i50_3_lut_4_lut (.A(prog[0]), .B(prog[1]), .C(prog[3]), .D(prog[4]), 
         .Z(n26)) /* synthesis lut_function=(!(A (C (D)+!C !(D))+!A (B (C+!(D))+!B (C (D)+!C !(D))))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(300[5:13])
    defparam i50_3_lut_4_lut.init = 16'h0fb0;
    LUT4 i4_4_lut_4_lut (.A(prog[0]), .B(flag), .C(prog[1]), .D(n8408), 
         .Z(alu_cin_N_368)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;
    defparam i4_4_lut_4_lut.init = 16'h4000;
    LUT4 i1_2_lut_adj_60 (.A(prog[3]), .B(prog[4]), .Z(n4704)) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(75[11] 324[5])
    defparam i1_2_lut_adj_60.init = 16'h2222;
    VLO i1 (.Z(GND_net));
    PFUMX i6532 (.BLUT(n9099), .ALUT(n9100), .C0(prog[2]), .Z(n9101));
    LUT4 n6105_bdd_4_lut_6695 (.A(n6105), .B(alu_c[5]), .C(n2247), .D(n1329), 
         .Z(B_15__N_235[5])) /* synthesis lut_function=(A (B (C+!(D))+!B (C (D)))+!A (C (D))) */ ;
    defparam n6105_bdd_4_lut_6695.init = 16'hf088;
    LUT4 i3778_3_lut_4_lut (.A(n1329), .B(n6832), .C(ram_out[2]), .D(alu_c[2]), 
         .Z(n1_adj_469)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (D)) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(76[3] 323[11])
    defparam i3778_3_lut_4_lut.init = 16'hfd20;
    LUT4 i3939_3_lut (.A(SP[5]), .B(n326), .C(prog[0]), .Z(n17_adj_495)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(28[13:17])
    defparam i3939_3_lut.init = 16'hcaca;
    PFUMX i6530 (.BLUT(n9096), .ALUT(n9097), .C0(prog[2]), .Z(n9098));
    LUT4 mux_71_i7_3_lut (.A(PC_9__N_177[6]), .B(ram_out[6]), .C(alu_co), 
         .Z(n572)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(303[15] 305[9])
    defparam mux_71_i7_3_lut.init = 16'hcaca;
    LUT4 i6284_4_lut (.A(prog[0]), .B(n40), .C(n9072), .D(prog[1]), 
         .Z(n8636)) /* synthesis lut_function=(!(A (B+(C (D)))+!A (B+!(D)))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(76[3] 323[11])
    defparam i6284_4_lut.init = 16'h1322;
    FD1P3AX prog__0__i3_rep_87 (.D(ram_out[2]), .SP(clk_pll_enable_141), 
            .CK(clk_pll), .Q(n9434));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(75[11] 324[5])
    defparam prog__0__i3_rep_87.GSR = "DISABLED";
    LUT4 i2863_3_lut (.A(n1331), .B(n12), .C(n1330), .Z(n5323)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2863_3_lut.init = 16'hcaca;
    PFUMX i6528 (.BLUT(n9093), .ALUT(n9094), .C0(n9434), .Z(n9095));
    LUT4 mux_692_i1_3_lut (.A(B[0]), .B(A[0]), .C(n2848), .Z(n2865)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(76[3] 323[11])
    defparam mux_692_i1_3_lut.init = 16'hcaca;
    TSALL TSALL_INST (.TSALL(GND_net));
    LUT4 i1_2_lut_3_lut_4_lut_adj_61 (.A(prog[0]), .B(prog[1]), .C(n9071), 
         .D(n9434), .Z(n40)) /* synthesis lut_function=(!(A (B+!(C+(D)))+!A !(C+(D)))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_61.init = 16'h7770;
    LUT4 i1_2_lut_3_lut_3_lut_4_lut_adj_62 (.A(prog[2]), .B(n9072), .C(n9073), 
         .D(ram_out[0]), .Z(n2252)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(287[5:13])
    defparam i1_2_lut_3_lut_3_lut_4_lut_adj_62.init = 16'h0200;
    LUT4 i1_2_lut_3_lut_3_lut_4_lut_adj_63 (.A(prog[2]), .B(n9072), .C(n9073), 
         .D(ram_out[15]), .Z(n5)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(287[5:13])
    defparam i1_2_lut_3_lut_3_lut_4_lut_adj_63.init = 16'h0200;
    PFUMX i6526 (.BLUT(n9090), .ALUT(n9091), .C0(n9434), .Z(n9092));
    LUT4 i2_4_lut_adj_64 (.A(n25_adj_450), .B(PC_9__N_177[7]), .C(n7877), 
         .D(n34), .Z(n6_adj_474)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (D))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(293[5] 319[12])
    defparam i2_4_lut_adj_64.init = 16'hce0a;
    LUT4 i1_2_lut_3_lut_3_lut_4_lut_adj_65 (.A(prog[2]), .B(n9072), .C(n9073), 
         .D(ram_out[1]), .Z(n2251)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(287[5:13])
    defparam i1_2_lut_3_lut_3_lut_4_lut_adj_65.init = 16'h0200;
    LUT4 i53_3_lut_adj_66 (.A(PC[7]), .B(alu_c[7]), .C(prog[0]), .Z(n25_adj_450)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(293[5] 319[12])
    defparam i53_3_lut_adj_66.init = 16'hcaca;
    PFUMX i6524 (.BLUT(n9087), .ALUT(n9088), .C0(prog[3]), .Z(n9089));
    LUT4 i5947_2_lut_3_lut (.A(prog[3]), .B(prog[4]), .C(prog[0]), .Z(n3)) /* synthesis lut_function=(!(A+((C)+!B))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(287[5:13])
    defparam i5947_2_lut_3_lut.init = 16'h0404;
    LUT4 prog_4__I_0_164_i7_2_lut_rep_80 (.A(n9433), .B(prog[4]), .Z(n9072)) /* synthesis lut_function=((B)+!A) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(287[5:13])
    defparam prog_4__I_0_164_i7_2_lut_rep_80.init = 16'hdddd;
    LUT4 rx_c_11_bdd_4_lut (.A(rx_c_11), .B(P_c_11), .C(prog[1]), .D(prog[0]), 
         .Z(n9343)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B (C+!(D)))+!A (((D)+!C)+!B))) */ ;
    defparam rx_c_11_bdd_4_lut.init = 16'h0ac0;
    LUT4 i1_2_lut_adj_67 (.A(n8355), .B(PC_temp[7]), .Z(n23_adj_449)) /* synthesis lut_function=(!(A+!(B))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(293[5] 319[12])
    defparam i1_2_lut_adj_67.init = 16'h4444;
    LUT4 mux_71_i8_3_lut (.A(PC_9__N_177[7]), .B(ram_out[7]), .C(alu_co), 
         .Z(n571)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(303[15] 305[9])
    defparam mux_71_i8_3_lut.init = 16'hcaca;
    LUT4 i4023_3_lut_4_lut (.A(n1329), .B(n6832), .C(ram_out[7]), .D(alu_c[7]), 
         .Z(n1_adj_515)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (D)) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(76[3] 323[11])
    defparam i4023_3_lut_4_lut.init = 16'hfd20;
    LUT4 i1_4_lut_4_lut_else_4_lut_adj_68 (.A(prog[1]), .B(prog[0]), .C(prog[4]), 
         .D(prog[2]), .Z(n9084)) /* synthesis lut_function=(A (B (C (D)))+!A (B (D))) */ ;
    defparam i1_4_lut_4_lut_else_4_lut_adj_68.init = 16'hc400;
    LUT4 i2_3_lut_4_lut_adj_69 (.A(prog[2]), .B(n9068), .C(n4704), .D(n9066), 
         .Z(clk_pll_enable_113)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i2_3_lut_4_lut_adj_69.init = 16'h8000;
    LUT4 led_dig_c_bdd_2_lut_6664 (.A(n9343), .B(n1331), .Z(n9344)) /* synthesis lut_function=(A (B)) */ ;
    defparam led_dig_c_bdd_2_lut_6664.init = 16'h8888;
    LUT4 i3729_3_lut_4_lut (.A(n1329), .B(n6832), .C(ram_out[1]), .D(alu_c[1]), 
         .Z(n1_adj_477)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (D)) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(76[3] 323[11])
    defparam i3729_3_lut_4_lut.init = 16'hfd20;
    LUT4 i1_2_lut_rep_65_3_lut (.A(n9433), .B(prog[4]), .C(n9434), .Z(n9057)) /* synthesis lut_function=((B+(C))+!A) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(287[5:13])
    defparam i1_2_lut_rep_65_3_lut.init = 16'hfdfd;
    LUT4 i1_2_lut_3_lut_4_lut_adj_70 (.A(prog[3]), .B(prog[4]), .C(n1331), 
         .D(rst_c), .Z(n4)) /* synthesis lut_function=(A (B (C (D)))+!A (C (D))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(287[5:13])
    defparam i1_2_lut_3_lut_4_lut_adj_70.init = 16'hd000;
    LUT4 i6256_2_lut_rep_56_2_lut_3_lut_4_lut (.A(prog[3]), .B(prog[4]), 
         .C(n9073), .D(prog[2]), .Z(n9048)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(287[5:13])
    defparam i6256_2_lut_rep_56_2_lut_3_lut_4_lut.init = 16'h0200;
    LUT4 n5525_bdd_4_lut_6651 (.A(prog[0]), .B(rx_c_14), .C(P_c_14), .D(prog[1]), 
         .Z(n9331)) /* synthesis lut_function=(!(A ((D)+!B)+!A !(C (D)))) */ ;
    defparam n5525_bdd_4_lut_6651.init = 16'h5088;
    LUT4 mux_657_i11_3_lut (.A(A[10]), .B(n2772), .C(n11), .Z(n2752)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(76[3] 323[11])
    defparam mux_657_i11_3_lut.init = 16'hcaca;
    LUT4 i2856_3_lut (.A(prog[2]), .B(prog[3]), .C(prog[4]), .Z(n5315)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(104[5] 249[13])
    defparam i2856_3_lut.init = 16'hcaca;
    LUT4 mux_661_i11_3_lut (.A(n273), .B(n321), .C(n2765), .Z(n2772)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(76[3] 323[11])
    defparam mux_661_i11_3_lut.init = 16'hcaca;
    LUT4 i5961_2_lut_3_lut_4_lut (.A(n9433), .B(prog[4]), .C(prog[2]), 
         .D(prog[1]), .Z(n5_adj_522)) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(287[5:13])
    defparam i5961_2_lut_3_lut_4_lut.init = 16'h0020;
    LUT4 i21_4_lut_adj_71 (.A(n9143), .B(n3791), .C(n9074), .D(n1_adj_469), 
         .Z(A_15__N_219[2])) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(28[13:17])
    defparam i21_4_lut_adj_71.init = 16'hca0a;
    LUT4 i21_4_lut_adj_72 (.A(n9188), .B(n3791), .C(n9074), .D(n1), 
         .Z(A_15__N_219[3])) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(28[13:17])
    defparam i21_4_lut_adj_72.init = 16'hca0a;
    LUT4 i239_2_lut_rep_82 (.A(n1330), .B(n1329), .Z(n9074)) /* synthesis lut_function=(A+(B)) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(76[3] 323[11])
    defparam i239_2_lut_rep_82.init = 16'heeee;
    LUT4 i1_2_lut_rep_66_3_lut (.A(n1330), .B(n1329), .C(n1331), .Z(n9058)) /* synthesis lut_function=(A+(B+!(C))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(76[3] 323[11])
    defparam i1_2_lut_rep_66_3_lut.init = 16'hefef;
    LUT4 i21_4_lut_adj_73 (.A(n9083), .B(n3791), .C(n9074), .D(n1_adj_518), 
         .Z(A_15__N_219[4])) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(28[13:17])
    defparam i21_4_lut_adj_73.init = 16'hca0a;
    
endmodule
//
// Verilog Description of module ram
//

module ram (clk_pll, VCC_net, GND_net, ram_we, PC, ram_in, ram_out) /* synthesis NGD_DRC_MASK=1, syn_module_defined=1 */ ;
    input clk_pll;
    input VCC_net;
    input GND_net;
    input ram_we;
    input [9:0]PC;
    input [15:0]ram_in;
    output [15:0]ram_out;
    
    wire clk_pll /* synthesis is_clock=1, SET_AS_NETWORK=clk_pll */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(39[6:13])
    
    DP8KC ram_0_1_0 (.DIA0(ram_in[9]), .DIA1(ram_in[10]), .DIA2(ram_in[11]), 
          .DIA3(ram_in[12]), .DIA4(ram_in[13]), .DIA5(ram_in[14]), .DIA6(ram_in[15]), 
          .DIA7(GND_net), .DIA8(GND_net), .ADA0(VCC_net), .ADA1(GND_net), 
          .ADA2(GND_net), .ADA3(PC[0]), .ADA4(PC[1]), .ADA5(PC[2]), 
          .ADA6(PC[3]), .ADA7(PC[4]), .ADA8(PC[5]), .ADA9(PC[6]), .ADA10(PC[7]), 
          .ADA11(PC[8]), .ADA12(PC[9]), .CEA(VCC_net), .OCEA(VCC_net), 
          .CLKA(clk_pll), .WEA(ram_we), .CSA0(GND_net), .CSA1(GND_net), 
          .CSA2(GND_net), .RSTA(GND_net), .DIB0(GND_net), .DIB1(GND_net), 
          .DIB2(GND_net), .DIB3(GND_net), .DIB4(GND_net), .DIB5(GND_net), 
          .DIB6(GND_net), .DIB7(GND_net), .DIB8(GND_net), .ADB0(GND_net), 
          .ADB1(GND_net), .ADB2(GND_net), .ADB3(GND_net), .ADB4(GND_net), 
          .ADB5(GND_net), .ADB6(GND_net), .ADB7(GND_net), .ADB8(GND_net), 
          .ADB9(GND_net), .ADB10(GND_net), .ADB11(GND_net), .ADB12(GND_net), 
          .CEB(VCC_net), .OCEB(VCC_net), .CLKB(GND_net), .WEB(GND_net), 
          .CSB0(GND_net), .CSB1(GND_net), .CSB2(GND_net), .RSTB(GND_net), 
          .DOA0(ram_out[9]), .DOA1(ram_out[10]), .DOA2(ram_out[11]), .DOA3(ram_out[12]), 
          .DOA4(ram_out[13]), .DOA5(ram_out[14]), .DOA6(ram_out[15])) /* synthesis MEM_LPC_FILE="ram.lpc", MEM_INIT_FILE="ram.mem", syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=46, LSE_RLINE=54 */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(46[5] 54[2])
    defparam ram_0_1_0.DATA_WIDTH_A = 9;
    defparam ram_0_1_0.DATA_WIDTH_B = 9;
    defparam ram_0_1_0.REGMODE_A = "NOREG";
    defparam ram_0_1_0.REGMODE_B = "NOREG";
    defparam ram_0_1_0.CSDECODE_A = "0b000";
    defparam ram_0_1_0.CSDECODE_B = "0b111";
    defparam ram_0_1_0.WRITEMODE_A = "NORMAL";
    defparam ram_0_1_0.WRITEMODE_B = "NORMAL";
    defparam ram_0_1_0.GSR = "ENABLED";
    defparam ram_0_1_0.RESETMODE = "ASYNC";
    defparam ram_0_1_0.ASYNC_RESET_RELEASE = "SYNC";
    defparam ram_0_1_0.INIT_DATA = "DYNAMIC";
    defparam ram_0_1_0.INITVAL_00 = "0x000000000000000000000004000000000000800000040000000AA40000000007F080000004000040";
    defparam ram_0_1_0.INITVAL_01 = "0x0000008000080000000000000080000FA40000000000000000080000000008000000000800000040";
    defparam ram_0_1_0.INITVAL_02 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ram_0_1_0.INITVAL_03 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ram_0_1_0.INITVAL_04 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ram_0_1_0.INITVAL_05 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ram_0_1_0.INITVAL_06 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ram_0_1_0.INITVAL_07 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ram_0_1_0.INITVAL_08 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ram_0_1_0.INITVAL_09 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ram_0_1_0.INITVAL_0A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ram_0_1_0.INITVAL_0B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ram_0_1_0.INITVAL_0C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ram_0_1_0.INITVAL_0D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ram_0_1_0.INITVAL_0E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ram_0_1_0.INITVAL_0F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ram_0_1_0.INITVAL_10 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ram_0_1_0.INITVAL_11 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ram_0_1_0.INITVAL_12 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ram_0_1_0.INITVAL_13 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ram_0_1_0.INITVAL_14 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ram_0_1_0.INITVAL_15 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ram_0_1_0.INITVAL_16 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ram_0_1_0.INITVAL_17 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ram_0_1_0.INITVAL_18 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ram_0_1_0.INITVAL_19 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ram_0_1_0.INITVAL_1A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ram_0_1_0.INITVAL_1B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ram_0_1_0.INITVAL_1C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ram_0_1_0.INITVAL_1D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ram_0_1_0.INITVAL_1E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ram_0_1_0.INITVAL_1F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    DP8KC ram_0_0_1 (.DIA0(ram_in[0]), .DIA1(ram_in[1]), .DIA2(ram_in[2]), 
          .DIA3(ram_in[3]), .DIA4(ram_in[4]), .DIA5(ram_in[5]), .DIA6(ram_in[6]), 
          .DIA7(ram_in[7]), .DIA8(ram_in[8]), .ADA0(VCC_net), .ADA1(GND_net), 
          .ADA2(GND_net), .ADA3(PC[0]), .ADA4(PC[1]), .ADA5(PC[2]), 
          .ADA6(PC[3]), .ADA7(PC[4]), .ADA8(PC[5]), .ADA9(PC[6]), .ADA10(PC[7]), 
          .ADA11(PC[8]), .ADA12(PC[9]), .CEA(VCC_net), .OCEA(VCC_net), 
          .CLKA(clk_pll), .WEA(ram_we), .CSA0(GND_net), .CSA1(GND_net), 
          .CSA2(GND_net), .RSTA(GND_net), .DIB0(GND_net), .DIB1(GND_net), 
          .DIB2(GND_net), .DIB3(GND_net), .DIB4(GND_net), .DIB5(GND_net), 
          .DIB6(GND_net), .DIB7(GND_net), .DIB8(GND_net), .ADB0(GND_net), 
          .ADB1(GND_net), .ADB2(GND_net), .ADB3(GND_net), .ADB4(GND_net), 
          .ADB5(GND_net), .ADB6(GND_net), .ADB7(GND_net), .ADB8(GND_net), 
          .ADB9(GND_net), .ADB10(GND_net), .ADB11(GND_net), .ADB12(GND_net), 
          .CEB(VCC_net), .OCEB(VCC_net), .CLKB(GND_net), .WEB(GND_net), 
          .CSB0(GND_net), .CSB1(GND_net), .CSB2(GND_net), .RSTB(GND_net), 
          .DOA0(ram_out[0]), .DOA1(ram_out[1]), .DOA2(ram_out[2]), .DOA3(ram_out[3]), 
          .DOA4(ram_out[4]), .DOA5(ram_out[5]), .DOA6(ram_out[6]), .DOA7(ram_out[7]), 
          .DOA8(ram_out[8])) /* synthesis MEM_LPC_FILE="ram.lpc", MEM_INIT_FILE="ram.mem", syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=46, LSE_RLINE=54 */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(46[5] 54[2])
    defparam ram_0_0_1.DATA_WIDTH_A = 9;
    defparam ram_0_0_1.DATA_WIDTH_B = 9;
    defparam ram_0_0_1.REGMODE_A = "NOREG";
    defparam ram_0_0_1.REGMODE_B = "NOREG";
    defparam ram_0_0_1.CSDECODE_A = "0b000";
    defparam ram_0_0_1.CSDECODE_B = "0b111";
    defparam ram_0_0_1.WRITEMODE_A = "NORMAL";
    defparam ram_0_0_1.WRITEMODE_B = "NORMAL";
    defparam ram_0_0_1.GSR = "ENABLED";
    defparam ram_0_0_1.RESETMODE = "ASYNC";
    defparam ram_0_0_1.ASYNC_RESET_RELEASE = "SYNC";
    defparam ram_0_0_1.INIT_DATA = "DYNAMIC";
    defparam ram_0_0_1.INITVAL_00 = "0x018150181201613018121FE050241301832000120260501612154050260C0250000A120080006000";
    defparam ram_0_0_1.INITVAL_01 = "0x0263A0003F008150260C0240100A12000050360D0000A00A2B0000C0181201C120140000A0D01405";
    defparam ram_0_0_1.INITVAL_02 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000001";
    defparam ram_0_0_1.INITVAL_03 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ram_0_0_1.INITVAL_04 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ram_0_0_1.INITVAL_05 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ram_0_0_1.INITVAL_06 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ram_0_0_1.INITVAL_07 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ram_0_0_1.INITVAL_08 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ram_0_0_1.INITVAL_09 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ram_0_0_1.INITVAL_0A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ram_0_0_1.INITVAL_0B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ram_0_0_1.INITVAL_0C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ram_0_0_1.INITVAL_0D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ram_0_0_1.INITVAL_0E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ram_0_0_1.INITVAL_0F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ram_0_0_1.INITVAL_10 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ram_0_0_1.INITVAL_11 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ram_0_0_1.INITVAL_12 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ram_0_0_1.INITVAL_13 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ram_0_0_1.INITVAL_14 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ram_0_0_1.INITVAL_15 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ram_0_0_1.INITVAL_16 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ram_0_0_1.INITVAL_17 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ram_0_0_1.INITVAL_18 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ram_0_0_1.INITVAL_19 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ram_0_0_1.INITVAL_1A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ram_0_0_1.INITVAL_1B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ram_0_0_1.INITVAL_1C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ram_0_0_1.INITVAL_1D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ram_0_0_1.INITVAL_1E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ram_0_0_1.INITVAL_1F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    
endmodule
//
// Verilog Description of module ALU
//

module ALU (alu_a, \alu_type[2] , alu_b, \alu_type[0] , alu_c, alu_co, 
            \alu_type[1] , GND_net, alu_cin) /* synthesis syn_module_defined=1 */ ;
    input [15:0]alu_a;
    input \alu_type[2] ;
    input [15:0]alu_b;
    input \alu_type[0] ;
    output [15:0]alu_c;
    output alu_co;
    input \alu_type[1] ;
    input GND_net;
    input alu_cin;
    
    wire R_15__N_442 /* synthesis is_clock=1, SET_AS_NETWORK=\ALU_M/R_15__N_442 */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4_alu.v(5[21:22])
    wire Co_N_448 /* synthesis is_clock=1, SET_AS_NETWORK=\ALU_M/Co_N_448 */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4_alu.v(6[19:21])
    
    wire n9163, R_15__N_438;
    wire [15:0]add_c;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4_alu.v(13[14:19])
    
    wire n9171, Co_N_443, R_15__N_434, n9162, n9166, n9165, R_15__N_430, 
        R_15__N_426, R_15__N_422, R_15__N_418, R_15__N_414, R_15__N_410, 
        R_15__N_406, R_15__N_402, R_15__N_398, R_15__N_394, R_15__N_390, 
        R_15__N_386, R_15__N_382, R_15__N_369, n9169, n9168, n9175, 
        n9172, n9174, n9078, n9192, n9196, n9181, n9180, n29, 
        n27, n23, n24, n2901, n25;
    wire [15:0]n2883;
    
    wire n20, n8424, n9195, n9184, n9183, n5, n6, n9079, n9190, 
        n9189, n9193, add_co, n3, n9159, n9160, n9156, n9157, 
        n9153, n9154, n7795, n2900, n7794, n7793, n7792, n7791, 
        n9150, n9151, n7790, n7789, n9147, n9148, n7788;
    
    LUT4 mux_861_i1_4_lut_then_4_lut (.A(alu_a[10]), .B(\alu_type[2] ), 
         .C(alu_b[10]), .D(\alu_type[0] ), .Z(n9163)) /* synthesis lut_function=(!(A (B+!(C+(D)))+!A (B+!(C (D))))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4_alu.v(30[2] 59[10])
    defparam mux_861_i1_4_lut_then_4_lut.init = 16'h3220;
    FD1S1A R_15__I_0_i1 (.D(R_15__N_438), .CK(R_15__N_442), .Q(alu_c[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=56, LSE_RLINE=63 */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4_alu.v(29[1] 60[4])
    defparam R_15__I_0_i1.GSR = "DISABLED";
    LUT4 mux_939_i1_4_lut_else_4_lut (.A(add_c[7]), .B(alu_a[7]), .C(\alu_type[2] ), 
         .D(\alu_type[0] ), .Z(n9171)) /* synthesis lut_function=(!(A (B (C)+!B (D))+!A (B (C+!(D))+!B ((D)+!C)))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4_alu.v(30[2] 59[10])
    defparam mux_939_i1_4_lut_else_4_lut.init = 16'h0c3a;
    FD1S1A Co_I_0 (.D(Co_N_443), .CK(Co_N_448), .Q(alu_co)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=56, LSE_RLINE=63 */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4_alu.v(29[1] 60[4])
    defparam Co_I_0.GSR = "DISABLED";
    FD1S1A R_15__I_0_i2 (.D(R_15__N_434), .CK(R_15__N_442), .Q(alu_c[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=56, LSE_RLINE=63 */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4_alu.v(29[1] 60[4])
    defparam R_15__I_0_i2.GSR = "DISABLED";
    LUT4 mux_861_i1_4_lut_else_4_lut (.A(add_c[10]), .B(alu_a[10]), .C(\alu_type[2] ), 
         .D(\alu_type[0] ), .Z(n9162)) /* synthesis lut_function=(!(A (B (C)+!B (D))+!A (B (C+!(D))+!B ((D)+!C)))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4_alu.v(30[2] 59[10])
    defparam mux_861_i1_4_lut_else_4_lut.init = 16'h0c3a;
    LUT4 mux_887_i1_4_lut_then_4_lut (.A(alu_a[9]), .B(\alu_type[2] ), .C(alu_b[9]), 
         .D(\alu_type[0] ), .Z(n9166)) /* synthesis lut_function=(!(A (B+!(C+(D)))+!A (B+!(C (D))))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4_alu.v(30[2] 59[10])
    defparam mux_887_i1_4_lut_then_4_lut.init = 16'h3220;
    LUT4 mux_887_i1_4_lut_else_4_lut (.A(add_c[9]), .B(alu_a[9]), .C(\alu_type[2] ), 
         .D(\alu_type[0] ), .Z(n9165)) /* synthesis lut_function=(!(A (B (C)+!B (D))+!A (B (C+!(D))+!B ((D)+!C)))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4_alu.v(30[2] 59[10])
    defparam mux_887_i1_4_lut_else_4_lut.init = 16'h0c3a;
    FD1S1A R_15__I_0_i3 (.D(R_15__N_430), .CK(R_15__N_442), .Q(alu_c[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=56, LSE_RLINE=63 */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4_alu.v(29[1] 60[4])
    defparam R_15__I_0_i3.GSR = "DISABLED";
    FD1S1A R_15__I_0_i4 (.D(R_15__N_426), .CK(R_15__N_442), .Q(alu_c[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=56, LSE_RLINE=63 */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4_alu.v(29[1] 60[4])
    defparam R_15__I_0_i4.GSR = "DISABLED";
    FD1S1A R_15__I_0_i5 (.D(R_15__N_422), .CK(R_15__N_442), .Q(alu_c[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=56, LSE_RLINE=63 */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4_alu.v(29[1] 60[4])
    defparam R_15__I_0_i5.GSR = "DISABLED";
    FD1S1A R_15__I_0_i6 (.D(R_15__N_418), .CK(R_15__N_442), .Q(alu_c[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=56, LSE_RLINE=63 */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4_alu.v(29[1] 60[4])
    defparam R_15__I_0_i6.GSR = "DISABLED";
    FD1S1A R_15__I_0_i7 (.D(R_15__N_414), .CK(R_15__N_442), .Q(alu_c[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=56, LSE_RLINE=63 */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4_alu.v(29[1] 60[4])
    defparam R_15__I_0_i7.GSR = "DISABLED";
    FD1S1A R_15__I_0_i8 (.D(R_15__N_410), .CK(R_15__N_442), .Q(alu_c[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=56, LSE_RLINE=63 */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4_alu.v(29[1] 60[4])
    defparam R_15__I_0_i8.GSR = "DISABLED";
    FD1S1A R_15__I_0_i9 (.D(R_15__N_406), .CK(R_15__N_442), .Q(alu_c[8])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=56, LSE_RLINE=63 */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4_alu.v(29[1] 60[4])
    defparam R_15__I_0_i9.GSR = "DISABLED";
    FD1S1A R_15__I_0_i10 (.D(R_15__N_402), .CK(R_15__N_442), .Q(alu_c[9])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=56, LSE_RLINE=63 */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4_alu.v(29[1] 60[4])
    defparam R_15__I_0_i10.GSR = "DISABLED";
    FD1S1A R_15__I_0_i11 (.D(R_15__N_398), .CK(R_15__N_442), .Q(alu_c[10])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=56, LSE_RLINE=63 */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4_alu.v(29[1] 60[4])
    defparam R_15__I_0_i11.GSR = "DISABLED";
    FD1S1A R_15__I_0_i12 (.D(R_15__N_394), .CK(R_15__N_442), .Q(alu_c[11])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=56, LSE_RLINE=63 */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4_alu.v(29[1] 60[4])
    defparam R_15__I_0_i12.GSR = "DISABLED";
    FD1S1A R_15__I_0_i13 (.D(R_15__N_390), .CK(R_15__N_442), .Q(alu_c[12])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=56, LSE_RLINE=63 */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4_alu.v(29[1] 60[4])
    defparam R_15__I_0_i13.GSR = "DISABLED";
    FD1S1A R_15__I_0_i14 (.D(R_15__N_386), .CK(R_15__N_442), .Q(alu_c[13])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=56, LSE_RLINE=63 */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4_alu.v(29[1] 60[4])
    defparam R_15__I_0_i14.GSR = "DISABLED";
    FD1S1A R_15__I_0_i15 (.D(R_15__N_382), .CK(R_15__N_442), .Q(alu_c[14])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=56, LSE_RLINE=63 */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4_alu.v(29[1] 60[4])
    defparam R_15__I_0_i15.GSR = "DISABLED";
    FD1S1A R_15__I_0_i16 (.D(R_15__N_369), .CK(R_15__N_442), .Q(alu_c[15])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=56, LSE_RLINE=63 */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4_alu.v(29[1] 60[4])
    defparam R_15__I_0_i16.GSR = "DISABLED";
    LUT4 mux_913_i1_4_lut_then_4_lut (.A(alu_a[8]), .B(\alu_type[2] ), .C(alu_b[8]), 
         .D(\alu_type[0] ), .Z(n9169)) /* synthesis lut_function=(!(A (B+!(C+(D)))+!A (B+!(C (D))))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4_alu.v(30[2] 59[10])
    defparam mux_913_i1_4_lut_then_4_lut.init = 16'h3220;
    LUT4 mux_913_i1_4_lut_else_4_lut (.A(add_c[8]), .B(alu_a[8]), .C(\alu_type[2] ), 
         .D(\alu_type[0] ), .Z(n9168)) /* synthesis lut_function=(!(A (B (C)+!B (D))+!A (B (C+!(D))+!B ((D)+!C)))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4_alu.v(30[2] 59[10])
    defparam mux_913_i1_4_lut_else_4_lut.init = 16'h0c3a;
    LUT4 mux_965_i1_4_lut_then_4_lut (.A(alu_a[6]), .B(\alu_type[2] ), .C(alu_b[6]), 
         .D(\alu_type[0] ), .Z(n9175)) /* synthesis lut_function=(!(A (B+!(C+(D)))+!A (B+!(C (D))))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4_alu.v(30[2] 59[10])
    defparam mux_965_i1_4_lut_then_4_lut.init = 16'h3220;
    LUT4 mux_939_i1_4_lut_then_4_lut (.A(alu_a[7]), .B(\alu_type[2] ), .C(alu_b[7]), 
         .D(\alu_type[0] ), .Z(n9172)) /* synthesis lut_function=(!(A (B+!(C+(D)))+!A (B+!(C (D))))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4_alu.v(30[2] 59[10])
    defparam mux_939_i1_4_lut_then_4_lut.init = 16'h3220;
    LUT4 mux_965_i1_4_lut_else_4_lut (.A(add_c[6]), .B(alu_a[6]), .C(\alu_type[2] ), 
         .D(\alu_type[0] ), .Z(n9174)) /* synthesis lut_function=(!(A (B (C)+!B (D))+!A (B (C+!(D))+!B ((D)+!C)))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4_alu.v(30[2] 59[10])
    defparam mux_965_i1_4_lut_else_4_lut.init = 16'h0c3a;
    LUT4 mux_1121_i1_4_lut_else_4_lut (.A(add_c[0]), .B(alu_a[0]), .C(\alu_type[2] ), 
         .D(\alu_type[0] ), .Z(n9078)) /* synthesis lut_function=(!(A (B (C)+!B (D))+!A (B (C+!(D))+!B ((D)+!C)))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4_alu.v(30[2] 59[10])
    defparam mux_1121_i1_4_lut_else_4_lut.init = 16'h0c3a;
    LUT4 mux_1069_i1_4_lut_else_4_lut (.A(add_c[2]), .B(alu_a[2]), .C(\alu_type[2] ), 
         .D(\alu_type[0] ), .Z(n9192)) /* synthesis lut_function=(!(A (B (C)+!B (D))+!A (B (C+!(D))+!B ((D)+!C)))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4_alu.v(30[2] 59[10])
    defparam mux_1069_i1_4_lut_else_4_lut.init = 16'h0c3a;
    LUT4 mux_1095_i1_4_lut_then_4_lut (.A(alu_a[1]), .B(\alu_type[2] ), 
         .C(alu_b[1]), .D(\alu_type[0] ), .Z(n9196)) /* synthesis lut_function=(!(A (B+!(C+(D)))+!A (B+!(C (D))))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4_alu.v(30[2] 59[10])
    defparam mux_1095_i1_4_lut_then_4_lut.init = 16'h3220;
    LUT4 mux_991_i1_4_lut_then_4_lut (.A(alu_a[5]), .B(\alu_type[2] ), .C(alu_b[5]), 
         .D(\alu_type[0] ), .Z(n9181)) /* synthesis lut_function=(!(A (B+!(C+(D)))+!A (B+!(C (D))))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4_alu.v(30[2] 59[10])
    defparam mux_991_i1_4_lut_then_4_lut.init = 16'h3220;
    LUT4 mux_991_i1_4_lut_else_4_lut (.A(add_c[5]), .B(alu_a[5]), .C(\alu_type[2] ), 
         .D(\alu_type[0] ), .Z(n9180)) /* synthesis lut_function=(!(A (B (C)+!B (D))+!A (B (C+!(D))+!B ((D)+!C)))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4_alu.v(30[2] 59[10])
    defparam mux_991_i1_4_lut_else_4_lut.init = 16'h0c3a;
    LUT4 i15_4_lut (.A(n29), .B(n27), .C(n23), .D(n24), .Z(n2901)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i15_4_lut.init = 16'hfffe;
    LUT4 i13_4_lut (.A(n25), .B(n2883[7]), .C(n20), .D(n2883[2]), .Z(n29)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i13_4_lut.init = 16'hfffe;
    LUT4 i11_4_lut (.A(n2883[5]), .B(n2883[13]), .C(n2883[3]), .D(n2883[8]), 
         .Z(n27)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i11_4_lut.init = 16'hfffe;
    LUT4 i7_2_lut (.A(n2883[4]), .B(n2883[1]), .Z(n23)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i7_2_lut.init = 16'heeee;
    LUT4 i8_2_lut (.A(n2883[6]), .B(n2883[0]), .Z(n24)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i8_2_lut.init = 16'heeee;
    LUT4 i9_4_lut (.A(n2883[15]), .B(n2883[14]), .C(n2883[9]), .D(n2883[11]), 
         .Z(n25)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i9_4_lut.init = 16'hfffe;
    LUT4 i4_2_lut (.A(n2883[12]), .B(n2883[10]), .Z(n20)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i4_2_lut.init = 16'heeee;
    LUT4 i6288_2_lut (.A(\alu_type[2] ), .B(\alu_type[1] ), .Z(n8424)) /* synthesis lut_function=(!(A (B))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4_alu.v(30[2] 59[10])
    defparam i6288_2_lut.init = 16'h7777;
    LUT4 mux_1095_i1_4_lut_else_4_lut (.A(add_c[1]), .B(alu_a[1]), .C(\alu_type[2] ), 
         .D(\alu_type[0] ), .Z(n9195)) /* synthesis lut_function=(!(A (B (C)+!B (D))+!A (B (C+!(D))+!B ((D)+!C)))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4_alu.v(30[2] 59[10])
    defparam mux_1095_i1_4_lut_else_4_lut.init = 16'h0c3a;
    LUT4 mux_1017_i1_4_lut_then_4_lut (.A(alu_a[4]), .B(\alu_type[2] ), 
         .C(alu_b[4]), .D(\alu_type[0] ), .Z(n9184)) /* synthesis lut_function=(!(A (B+!(C+(D)))+!A (B+!(C (D))))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4_alu.v(30[2] 59[10])
    defparam mux_1017_i1_4_lut_then_4_lut.init = 16'h3220;
    LUT4 mux_1017_i1_4_lut_else_4_lut (.A(add_c[4]), .B(alu_a[4]), .C(\alu_type[2] ), 
         .D(\alu_type[0] ), .Z(n9183)) /* synthesis lut_function=(!(A (B (C)+!B (D))+!A (B (C+!(D))+!B ((D)+!C)))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4_alu.v(30[2] 59[10])
    defparam mux_1017_i1_4_lut_else_4_lut.init = 16'h0c3a;
    PFUMX mux_1138_Mux_0_i7 (.BLUT(n5), .ALUT(n6), .C0(n8424), .Z(Co_N_443));
    PFUMX i6518 (.BLUT(n9078), .ALUT(n9079), .C0(\alu_type[1] ), .Z(R_15__N_438));
    LUT4 mux_1043_i1_4_lut_then_4_lut (.A(alu_a[3]), .B(\alu_type[2] ), 
         .C(alu_b[3]), .D(\alu_type[0] ), .Z(n9190)) /* synthesis lut_function=(!(A (B+!(C+(D)))+!A (B+!(C (D))))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4_alu.v(30[2] 59[10])
    defparam mux_1043_i1_4_lut_then_4_lut.init = 16'h3220;
    LUT4 mux_1043_i1_4_lut_else_4_lut (.A(add_c[3]), .B(alu_a[3]), .C(\alu_type[2] ), 
         .D(\alu_type[0] ), .Z(n9189)) /* synthesis lut_function=(!(A (B (C)+!B (D))+!A (B (C+!(D))+!B ((D)+!C)))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4_alu.v(30[2] 59[10])
    defparam mux_1043_i1_4_lut_else_4_lut.init = 16'h0c3a;
    LUT4 mux_1069_i1_4_lut_then_4_lut (.A(alu_a[2]), .B(\alu_type[2] ), 
         .C(alu_b[2]), .D(\alu_type[0] ), .Z(n9193)) /* synthesis lut_function=(!(A (B+!(C+(D)))+!A (B+!(C (D))))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4_alu.v(30[2] 59[10])
    defparam mux_1069_i1_4_lut_then_4_lut.init = 16'h3220;
    PFUMX i6596 (.BLUT(n9195), .ALUT(n9196), .C0(\alu_type[1] ), .Z(R_15__N_434));
    PFUMX i6594 (.BLUT(n9192), .ALUT(n9193), .C0(\alu_type[1] ), .Z(R_15__N_430));
    PFUMX i6592 (.BLUT(n9189), .ALUT(n9190), .C0(\alu_type[1] ), .Z(R_15__N_426));
    PFUMX i6588 (.BLUT(n9183), .ALUT(n9184), .C0(\alu_type[1] ), .Z(R_15__N_422));
    PFUMX i6586 (.BLUT(n9180), .ALUT(n9181), .C0(\alu_type[1] ), .Z(R_15__N_418));
    PFUMX i6582 (.BLUT(n9174), .ALUT(n9175), .C0(\alu_type[1] ), .Z(R_15__N_414));
    PFUMX i6580 (.BLUT(n9171), .ALUT(n9172), .C0(\alu_type[1] ), .Z(R_15__N_410));
    PFUMX i6578 (.BLUT(n9168), .ALUT(n9169), .C0(\alu_type[1] ), .Z(R_15__N_406));
    LUT4 i6243_2_lut_3_lut (.A(\alu_type[0] ), .B(\alu_type[1] ), .C(\alu_type[2] ), 
         .Z(R_15__N_442)) /* synthesis lut_function=(!(A (C)+!A (B (C)))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4_alu.v(30[2] 59[10])
    defparam i6243_2_lut_3_lut.init = 16'h1f1f;
    LUT4 i4328_2_lut_3_lut (.A(\alu_type[0] ), .B(\alu_type[1] ), .C(add_co), 
         .Z(n3)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4_alu.v(30[2] 59[10])
    defparam i4328_2_lut_3_lut.init = 16'h1010;
    PFUMX i6576 (.BLUT(n9165), .ALUT(n9166), .C0(\alu_type[1] ), .Z(R_15__N_402));
    LUT4 i6237_2_lut_3_lut (.A(\alu_type[0] ), .B(\alu_type[1] ), .C(\alu_type[2] ), 
         .Z(Co_N_448)) /* synthesis lut_function=(A (C)+!A (B (C)+!B !(C))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4_alu.v(30[2] 59[10])
    defparam i6237_2_lut_3_lut.init = 16'he1e1;
    PFUMX i6574 (.BLUT(n9162), .ALUT(n9163), .C0(\alu_type[1] ), .Z(R_15__N_398));
    PFUMX i6572 (.BLUT(n9159), .ALUT(n9160), .C0(\alu_type[1] ), .Z(R_15__N_394));
    PFUMX i6570 (.BLUT(n9156), .ALUT(n9157), .C0(\alu_type[1] ), .Z(R_15__N_390));
    PFUMX i6568 (.BLUT(n9153), .ALUT(n9154), .C0(\alu_type[1] ), .Z(R_15__N_386));
    CCU2D add_694_17 (.A0(alu_b[15]), .B0(alu_a[15]), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n7795), 
          .S0(n2883[15]), .S1(n2900));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4_alu.v(48[9:14])
    defparam add_694_17.INIT0 = 16'h5999;
    defparam add_694_17.INIT1 = 16'h0000;
    defparam add_694_17.INJECT1_0 = "NO";
    defparam add_694_17.INJECT1_1 = "NO";
    CCU2D add_694_15 (.A0(alu_b[13]), .B0(alu_a[13]), .C0(GND_net), .D0(GND_net), 
          .A1(alu_b[14]), .B1(alu_a[14]), .C1(GND_net), .D1(GND_net), 
          .CIN(n7794), .COUT(n7795), .S0(n2883[13]), .S1(n2883[14]));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4_alu.v(48[9:14])
    defparam add_694_15.INIT0 = 16'h5999;
    defparam add_694_15.INIT1 = 16'h5999;
    defparam add_694_15.INJECT1_0 = "NO";
    defparam add_694_15.INJECT1_1 = "NO";
    CCU2D add_694_13 (.A0(alu_b[11]), .B0(alu_a[11]), .C0(GND_net), .D0(GND_net), 
          .A1(alu_b[12]), .B1(alu_a[12]), .C1(GND_net), .D1(GND_net), 
          .CIN(n7793), .COUT(n7794), .S0(n2883[11]), .S1(n2883[12]));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4_alu.v(48[9:14])
    defparam add_694_13.INIT0 = 16'h5999;
    defparam add_694_13.INIT1 = 16'h5999;
    defparam add_694_13.INJECT1_0 = "NO";
    defparam add_694_13.INJECT1_1 = "NO";
    CCU2D add_694_11 (.A0(alu_b[9]), .B0(alu_a[9]), .C0(GND_net), .D0(GND_net), 
          .A1(alu_b[10]), .B1(alu_a[10]), .C1(GND_net), .D1(GND_net), 
          .CIN(n7792), .COUT(n7793), .S0(n2883[9]), .S1(n2883[10]));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4_alu.v(48[9:14])
    defparam add_694_11.INIT0 = 16'h5999;
    defparam add_694_11.INIT1 = 16'h5999;
    defparam add_694_11.INJECT1_0 = "NO";
    defparam add_694_11.INJECT1_1 = "NO";
    CCU2D add_694_9 (.A0(alu_b[7]), .B0(alu_a[7]), .C0(GND_net), .D0(GND_net), 
          .A1(alu_b[8]), .B1(alu_a[8]), .C1(GND_net), .D1(GND_net), 
          .CIN(n7791), .COUT(n7792), .S0(n2883[7]), .S1(n2883[8]));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4_alu.v(48[9:14])
    defparam add_694_9.INIT0 = 16'h5999;
    defparam add_694_9.INIT1 = 16'h5999;
    defparam add_694_9.INJECT1_0 = "NO";
    defparam add_694_9.INJECT1_1 = "NO";
    PFUMX i6566 (.BLUT(n9150), .ALUT(n9151), .C0(\alu_type[1] ), .Z(R_15__N_382));
    CCU2D add_694_7 (.A0(alu_b[5]), .B0(alu_a[5]), .C0(GND_net), .D0(GND_net), 
          .A1(alu_b[6]), .B1(alu_a[6]), .C1(GND_net), .D1(GND_net), 
          .CIN(n7790), .COUT(n7791), .S0(n2883[5]), .S1(n2883[6]));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4_alu.v(48[9:14])
    defparam add_694_7.INIT0 = 16'h5999;
    defparam add_694_7.INIT1 = 16'h5999;
    defparam add_694_7.INJECT1_0 = "NO";
    defparam add_694_7.INJECT1_1 = "NO";
    CCU2D add_694_5 (.A0(alu_b[3]), .B0(alu_a[3]), .C0(GND_net), .D0(GND_net), 
          .A1(alu_b[4]), .B1(alu_a[4]), .C1(GND_net), .D1(GND_net), 
          .CIN(n7789), .COUT(n7790), .S0(n2883[3]), .S1(n2883[4]));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4_alu.v(48[9:14])
    defparam add_694_5.INIT0 = 16'h5999;
    defparam add_694_5.INIT1 = 16'h5999;
    defparam add_694_5.INJECT1_0 = "NO";
    defparam add_694_5.INJECT1_1 = "NO";
    PFUMX i6564 (.BLUT(n9147), .ALUT(n9148), .C0(\alu_type[1] ), .Z(R_15__N_369));
    CCU2D add_694_3 (.A0(alu_b[1]), .B0(alu_a[1]), .C0(GND_net), .D0(GND_net), 
          .A1(alu_b[2]), .B1(alu_a[2]), .C1(GND_net), .D1(GND_net), 
          .CIN(n7788), .COUT(n7789), .S0(n2883[1]), .S1(n2883[2]));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4_alu.v(48[9:14])
    defparam add_694_3.INIT0 = 16'h5999;
    defparam add_694_3.INIT1 = 16'h5999;
    defparam add_694_3.INJECT1_0 = "NO";
    defparam add_694_3.INJECT1_1 = "NO";
    CCU2D add_694_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(alu_b[0]), .B1(alu_a[0]), .C1(GND_net), .D1(GND_net), 
          .COUT(n7788), .S1(n2883[0]));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4_alu.v(48[9:14])
    defparam add_694_1.INIT0 = 16'h0000;
    defparam add_694_1.INIT1 = 16'h5999;
    defparam add_694_1.INJECT1_0 = "NO";
    defparam add_694_1.INJECT1_1 = "NO";
    LUT4 i6233_3_lut_4_lut (.A(n2900), .B(\alu_type[0] ), .C(\alu_type[2] ), 
         .D(n3), .Z(n6)) /* synthesis lut_function=(!(A (C+!(D))+!A !(B (C+(D))+!B !(C+!(D))))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4_alu.v(30[2] 59[10])
    defparam i6233_3_lut_4_lut.init = 16'h4f40;
    LUT4 mux_731_i1_4_lut_then_4_lut (.A(alu_a[15]), .B(\alu_type[2] ), 
         .C(alu_b[15]), .D(\alu_type[0] ), .Z(n9148)) /* synthesis lut_function=(!(A (B+!(C+(D)))+!A (B+!(C (D))))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4_alu.v(30[2] 59[10])
    defparam mux_731_i1_4_lut_then_4_lut.init = 16'h3220;
    LUT4 mux_731_i1_4_lut_else_4_lut (.A(add_c[15]), .B(alu_a[15]), .C(\alu_type[2] ), 
         .D(\alu_type[0] ), .Z(n9147)) /* synthesis lut_function=(!(A (B (C)+!B (D))+!A (B (C+!(D))+!B ((D)+!C)))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4_alu.v(30[2] 59[10])
    defparam mux_731_i1_4_lut_else_4_lut.init = 16'h0c3a;
    LUT4 mux_757_i1_4_lut_then_4_lut (.A(alu_a[14]), .B(\alu_type[2] ), 
         .C(alu_b[14]), .D(\alu_type[0] ), .Z(n9151)) /* synthesis lut_function=(!(A (B+!(C+(D)))+!A (B+!(C (D))))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4_alu.v(30[2] 59[10])
    defparam mux_757_i1_4_lut_then_4_lut.init = 16'h3220;
    LUT4 mux_757_i1_4_lut_else_4_lut (.A(add_c[14]), .B(alu_a[14]), .C(\alu_type[2] ), 
         .D(\alu_type[0] ), .Z(n9150)) /* synthesis lut_function=(!(A (B (C)+!B (D))+!A (B (C+!(D))+!B ((D)+!C)))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4_alu.v(30[2] 59[10])
    defparam mux_757_i1_4_lut_else_4_lut.init = 16'h0c3a;
    LUT4 mux_1138_Mux_0_i5_3_lut (.A(n2901), .B(\alu_type[0] ), .C(n2900), 
         .Z(n5)) /* synthesis lut_function=(!(A (B+!(C))+!A !(B))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4_alu.v(30[2] 59[10])
    defparam mux_1138_Mux_0_i5_3_lut.init = 16'h6464;
    LUT4 mux_783_i1_4_lut_then_4_lut (.A(alu_a[13]), .B(\alu_type[2] ), 
         .C(alu_b[13]), .D(\alu_type[0] ), .Z(n9154)) /* synthesis lut_function=(!(A (B+!(C+(D)))+!A (B+!(C (D))))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4_alu.v(30[2] 59[10])
    defparam mux_783_i1_4_lut_then_4_lut.init = 16'h3220;
    LUT4 mux_783_i1_4_lut_else_4_lut (.A(add_c[13]), .B(alu_a[13]), .C(\alu_type[2] ), 
         .D(\alu_type[0] ), .Z(n9153)) /* synthesis lut_function=(!(A (B (C)+!B (D))+!A (B (C+!(D))+!B ((D)+!C)))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4_alu.v(30[2] 59[10])
    defparam mux_783_i1_4_lut_else_4_lut.init = 16'h0c3a;
    LUT4 mux_809_i1_4_lut_then_4_lut (.A(alu_a[12]), .B(\alu_type[2] ), 
         .C(alu_b[12]), .D(\alu_type[0] ), .Z(n9157)) /* synthesis lut_function=(!(A (B+!(C+(D)))+!A (B+!(C (D))))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4_alu.v(30[2] 59[10])
    defparam mux_809_i1_4_lut_then_4_lut.init = 16'h3220;
    LUT4 mux_809_i1_4_lut_else_4_lut (.A(add_c[12]), .B(alu_a[12]), .C(\alu_type[2] ), 
         .D(\alu_type[0] ), .Z(n9156)) /* synthesis lut_function=(!(A (B (C)+!B (D))+!A (B (C+!(D))+!B ((D)+!C)))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4_alu.v(30[2] 59[10])
    defparam mux_809_i1_4_lut_else_4_lut.init = 16'h0c3a;
    LUT4 mux_835_i1_4_lut_then_4_lut (.A(alu_a[11]), .B(\alu_type[2] ), 
         .C(alu_b[11]), .D(\alu_type[0] ), .Z(n9160)) /* synthesis lut_function=(!(A (B+!(C+(D)))+!A (B+!(C (D))))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4_alu.v(30[2] 59[10])
    defparam mux_835_i1_4_lut_then_4_lut.init = 16'h3220;
    LUT4 mux_835_i1_4_lut_else_4_lut (.A(add_c[11]), .B(alu_a[11]), .C(\alu_type[2] ), 
         .D(\alu_type[0] ), .Z(n9159)) /* synthesis lut_function=(!(A (B (C)+!B (D))+!A (B (C+!(D))+!B ((D)+!C)))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4_alu.v(30[2] 59[10])
    defparam mux_835_i1_4_lut_else_4_lut.init = 16'h0c3a;
    LUT4 mux_1121_i1_4_lut_then_4_lut (.A(alu_a[0]), .B(\alu_type[2] ), 
         .C(alu_b[0]), .D(\alu_type[0] ), .Z(n9079)) /* synthesis lut_function=(!(A (B+!(C+(D)))+!A (B+!(C (D))))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4_alu.v(30[2] 59[10])
    defparam mux_1121_i1_4_lut_then_4_lut.init = 16'h3220;
    add ADD_M (.alu_a({alu_a}), .alu_b({alu_b}), .alu_cin(alu_cin), .add_c({add_c}), 
        .add_co(add_co), .GND_net(GND_net)) /* synthesis NGD_DRC_MASK=1, syn_module_defined=1 */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4_alu.v(17[5] 23[2])
    
endmodule
//
// Verilog Description of module add
//

module add (alu_a, alu_b, alu_cin, add_c, add_co, GND_net) /* synthesis NGD_DRC_MASK=1, syn_module_defined=1 */ ;
    input [15:0]alu_a;
    input [15:0]alu_b;
    input alu_cin;
    output [15:0]add_c;
    output add_co;
    input GND_net;
    
    
    wire precin, co0, co1, co2, co3, co4, co5, co6, co7;
    
    FADD2B addsub_0 (.A0(alu_cin), .A1(alu_a[0]), .B0(alu_cin), .B1(alu_b[0]), 
           .CI(precin), .COUT(co0), .S1(add_c[0])) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=17, LSE_RLINE=23 */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4_alu.v(17[5] 23[2])
    FADD2B addsub_1 (.A0(alu_a[1]), .A1(alu_a[2]), .B0(alu_b[1]), .B1(alu_b[2]), 
           .CI(co0), .COUT(co1), .S0(add_c[1]), .S1(add_c[2])) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=17, LSE_RLINE=23 */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4_alu.v(17[5] 23[2])
    FADD2B addsub_2 (.A0(alu_a[3]), .A1(alu_a[4]), .B0(alu_b[3]), .B1(alu_b[4]), 
           .CI(co1), .COUT(co2), .S0(add_c[3]), .S1(add_c[4])) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=17, LSE_RLINE=23 */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4_alu.v(17[5] 23[2])
    FADD2B addsub_3 (.A0(alu_a[5]), .A1(alu_a[6]), .B0(alu_b[5]), .B1(alu_b[6]), 
           .CI(co2), .COUT(co3), .S0(add_c[5]), .S1(add_c[6])) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=17, LSE_RLINE=23 */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4_alu.v(17[5] 23[2])
    FADD2B addsub_4 (.A0(alu_a[7]), .A1(alu_a[8]), .B0(alu_b[7]), .B1(alu_b[8]), 
           .CI(co3), .COUT(co4), .S0(add_c[7]), .S1(add_c[8])) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=17, LSE_RLINE=23 */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4_alu.v(17[5] 23[2])
    FADD2B addsub_5 (.A0(alu_a[9]), .A1(alu_a[10]), .B0(alu_b[9]), .B1(alu_b[10]), 
           .CI(co4), .COUT(co5), .S0(add_c[9]), .S1(add_c[10])) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=17, LSE_RLINE=23 */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4_alu.v(17[5] 23[2])
    FADD2B addsub_6 (.A0(alu_a[11]), .A1(alu_a[12]), .B0(alu_b[11]), .B1(alu_b[12]), 
           .CI(co5), .COUT(co6), .S0(add_c[11]), .S1(add_c[12])) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=17, LSE_RLINE=23 */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4_alu.v(17[5] 23[2])
    FADD2B addsub_7 (.A0(alu_a[13]), .A1(alu_a[14]), .B0(alu_b[13]), .B1(alu_b[14]), 
           .CI(co6), .COUT(co7), .S0(add_c[13]), .S1(add_c[14])) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=17, LSE_RLINE=23 */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4_alu.v(17[5] 23[2])
    FADD2B addsub_8 (.A0(alu_a[15]), .A1(GND_net), .B0(alu_b[15]), .B1(GND_net), 
           .CI(co7), .S0(add_c[15]), .S1(add_co)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=17, LSE_RLINE=23 */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4_alu.v(17[5] 23[2])
    FADD2B precin_inst53 (.A0(GND_net), .A1(GND_net), .B0(GND_net), .B1(GND_net), 
           .CI(GND_net), .COUT(precin)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=17, LSE_RLINE=23 */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4_alu.v(17[5] 23[2])
    
endmodule
//
// Verilog Description of module PLL
//

module PLL (clk_c, clk_pll, GND_net) /* synthesis NGD_DRC_MASK=1, syn_module_defined=1 */ ;
    input clk_c;
    output clk_pll;
    input GND_net;
    
    wire clk_c /* synthesis is_clock=1 */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(4[9:12])
    wire clk_pll /* synthesis is_clock=1, SET_AS_NETWORK=clk_pll */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(39[6:13])
    
    EHXPLLJ PLLInst_0 (.CLKI(clk_c), .CLKFB(clk_pll), .PHASESEL0(GND_net), 
            .PHASESEL1(GND_net), .PHASEDIR(GND_net), .PHASESTEP(GND_net), 
            .LOADREG(GND_net), .STDBY(GND_net), .PLLWAKESYNC(GND_net), 
            .RST(GND_net), .RESETC(GND_net), .RESETD(GND_net), .RESETM(GND_net), 
            .ENCLKOP(GND_net), .ENCLKOS(GND_net), .ENCLKOS2(GND_net), 
            .ENCLKOS3(GND_net), .PLLCLK(GND_net), .PLLRST(GND_net), .PLLSTB(GND_net), 
            .PLLWE(GND_net), .PLLDATI0(GND_net), .PLLDATI1(GND_net), .PLLDATI2(GND_net), 
            .PLLDATI3(GND_net), .PLLDATI4(GND_net), .PLLDATI5(GND_net), 
            .PLLDATI6(GND_net), .PLLDATI7(GND_net), .PLLADDR0(GND_net), 
            .PLLADDR1(GND_net), .PLLADDR2(GND_net), .PLLADDR3(GND_net), 
            .PLLADDR4(GND_net), .CLKOP(clk_pll)) /* synthesis FREQUENCY_PIN_CLKOP="49.000000", FREQUENCY_PIN_CLKI="7.000000", ICP_CURRENT="8", LPF_RESISTOR="8", syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=41, LSE_RLINE=44 */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(41[5] 44[2])
    defparam PLLInst_0.CLKI_DIV = 1;
    defparam PLLInst_0.CLKFB_DIV = 7;
    defparam PLLInst_0.CLKOP_DIV = 11;
    defparam PLLInst_0.CLKOS_DIV = 1;
    defparam PLLInst_0.CLKOS2_DIV = 1;
    defparam PLLInst_0.CLKOS3_DIV = 1;
    defparam PLLInst_0.CLKOP_ENABLE = "ENABLED";
    defparam PLLInst_0.CLKOS_ENABLE = "DISABLED";
    defparam PLLInst_0.CLKOS2_ENABLE = "DISABLED";
    defparam PLLInst_0.CLKOS3_ENABLE = "DISABLED";
    defparam PLLInst_0.VCO_BYPASS_A0 = "DISABLED";
    defparam PLLInst_0.VCO_BYPASS_B0 = "DISABLED";
    defparam PLLInst_0.VCO_BYPASS_C0 = "DISABLED";
    defparam PLLInst_0.VCO_BYPASS_D0 = "DISABLED";
    defparam PLLInst_0.CLKOP_CPHASE = 10;
    defparam PLLInst_0.CLKOS_CPHASE = 0;
    defparam PLLInst_0.CLKOS2_CPHASE = 0;
    defparam PLLInst_0.CLKOS3_CPHASE = 0;
    defparam PLLInst_0.CLKOP_FPHASE = 0;
    defparam PLLInst_0.CLKOS_FPHASE = 0;
    defparam PLLInst_0.CLKOS2_FPHASE = 0;
    defparam PLLInst_0.CLKOS3_FPHASE = 0;
    defparam PLLInst_0.FEEDBK_PATH = "CLKOP";
    defparam PLLInst_0.FRACN_ENABLE = "DISABLED";
    defparam PLLInst_0.FRACN_DIV = 0;
    defparam PLLInst_0.CLKOP_TRIM_POL = "RISING";
    defparam PLLInst_0.CLKOP_TRIM_DELAY = 0;
    defparam PLLInst_0.CLKOS_TRIM_POL = "FALLING";
    defparam PLLInst_0.CLKOS_TRIM_DELAY = 0;
    defparam PLLInst_0.PLL_USE_WB = "DISABLED";
    defparam PLLInst_0.PREDIVIDER_MUXA1 = 0;
    defparam PLLInst_0.PREDIVIDER_MUXB1 = 0;
    defparam PLLInst_0.PREDIVIDER_MUXC1 = 0;
    defparam PLLInst_0.PREDIVIDER_MUXD1 = 0;
    defparam PLLInst_0.OUTDIVIDER_MUXA2 = "DIVA";
    defparam PLLInst_0.OUTDIVIDER_MUXB2 = "DIVB";
    defparam PLLInst_0.OUTDIVIDER_MUXC2 = "DIVC";
    defparam PLLInst_0.OUTDIVIDER_MUXD2 = "DIVD";
    defparam PLLInst_0.PLL_LOCK_MODE = 0;
    defparam PLLInst_0.STDBY_ENABLE = "DISABLED";
    defparam PLLInst_0.DPHASE_SOURCE = "DISABLED";
    defparam PLLInst_0.PLLRST_ENA = "DISABLED";
    defparam PLLInst_0.MRST_ENA = "DISABLED";
    defparam PLLInst_0.DCRST_ENA = "DISABLED";
    defparam PLLInst_0.DDRST_ENA = "DISABLED";
    defparam PLLInst_0.INTFB_WAKE = "DISABLED";
    
endmodule
//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

//
// Verilog Description of module TSALL
// module not written out since it is a black-box. 
//

