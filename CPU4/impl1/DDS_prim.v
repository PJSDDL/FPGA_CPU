// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.12.0.240.2
// Netlist written on Tue Jul 02 22:07:31 2024
//
// Verilog Description of module DDS
//

module DDS (clk, rst, key, led, P, led_dig) /* synthesis syn_module_defined=1 */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(3[8:11])
    input clk;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(4[9:12])
    input rst /* synthesis syn_force_pads=1 */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(5[9:12])
    input key /* synthesis syn_force_pads=1 */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(6[9:12])
    output [15:0]led;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(7[20:23])
    output [11:0]P;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(8[20:21])
    output [1:0]led_dig;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(10[20:27])
    
    wire clk_c /* synthesis is_clock=1 */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(4[9:12])
    wire rst_c /* synthesis syn_force_pads=1 */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(5[9:12])
    wire key_c /* synthesis syn_force_pads=1 */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(6[9:12])
    wire clk_pll /* synthesis is_clock=1, SET_AS_NETWORK=clk_pll */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(39[6:13])
    
    wire GND_net, VCC_net, n1151, n1150, n1149, n1148, n1147, 
        P_c_11, P_c_10, P_c_9, P_c_8, P_c_7, P_c_6, P_c_5, P_c_4, 
        P_c_3, P_c_2, P_c_1, P_c_0;
    wire [11:0]A;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(17[20:21])
    wire [11:0]B;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(18[20:21])
    wire [11:0]SP;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(19[20:22])
    
    wire flag, IRQ_EN;
    wire [9:0]PC;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(22[25:27])
    wire [9:0]PC_temp;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(23[26:33])
    
    wire n6987;
    wire [11:0]prog;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(28[20:24])
    wire [11:0]ram_in;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(30[20:26])
    wire [11:0]ram_out;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(31[21:28])
    
    wire ram_we;
    wire [11:0]alu_a;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(33[20:25])
    wire [11:0]alu_b;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(34[20:25])
    
    wire alu_cin;
    wire [11:0]alu_c;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(36[21:26])
    wire [3:0]alu_type;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(37[11:19])
    
    wire alu_co, n28, n2912;
    wire [9:0]PC_9__N_145;
    
    wire n281, n282, n283, n284, n285, n286, n287, n288, n289, 
        n290, n291, n2916, n321, n322, n323, n324, n325, n326, 
        n327, n328, n329, n330, n331, n361, n7586, n364, n26;
    wire [9:0]PC_9__N_135;
    
    wire n7481, n7487, n7486, n2066, n2067, n2069, n2071, n2075, 
        n2076, n6, n7522, n521, n522, n523, n524, n525, n526, 
        n527, n528, n529, n530;
    wire [9:0]PC_9__N_125;
    
    wire n7476, n7473;
    wire [11:0]A_11__N_183;
    wire [11:0]B_11__N_195;
    
    wire n30, n6931, n2412, n2411, n2410, n2409, n2408, n2407, 
        n2406, n2405, n2404, n2402, n2399, n2403, n31, n3524, 
        n6877, n3526, n30_adj_370, n15, n11, n1154, n7432, n7431, 
        n7430, n1152, n1161, n1420, n1422, n1419, n1428, n1429, 
        n1455, n1454, n1448, n1446, n1445, n1444, n9, n24, n7524, 
        n31_adj_371, clk_pll_enable_106, n67, n7523, n1896, n26_adj_372, 
        n3528, n6319, clk_pll_enable_69, n6993, n6999, n3532, n2311, 
        n2312, n7472, n2396, n2395, n6322, n7245, n2394, n2379, 
        n2378, n2377, n2376, n2375, n2374, n2065, n2373, n2372, 
        n2371, n2370, n2369, n2108, n2393, n2392, n2391, n2390, 
        n2389, n2388, n2387, n2386, n2385, n2383, n6325, clk_pll_enable_118, 
        clk_pll_enable_78, n7240, n7367, n7366, n7239, clk_pll_enable_58, 
        n7238, n7813, n28_adj_373, n7365, n7364, n7363, n26_adj_374, 
        n14, n28_adj_375, n7505, n3032, n3031, n3030, n3028, n3027, 
        n3026, n3025, n6984, n3024, n3023, n3022, n7504, n7546, 
        n2939, n17, n18, n7502, n5516, n9_adj_376, n7, clk_pll_enable_36, 
        n7500, n10, n11_adj_377, n7499, n7478, n7471, n4039, n7498, 
        clk_pll_enable_10, n6321, clk_pll_enable_86, n6835, n24_adj_378, 
        n7501, n7466, clk_pll_enable_97, n7465, n9_adj_379, clk_pll_enable_76, 
        n4, n6337, n6879, n6320, n6336, n20, clk_pll_enable_47, 
        clk_pll_enable_87, n4304, n5335, n4_adj_380, n5, n7_adj_381, 
        n15_adj_382, n17_adj_383, n30_adj_384, n7648, n15_adj_385, 
        n7463, n17_adj_386, n3797, n30_adj_387, n7647, n7646, n7002, 
        n15_adj_388, n17_adj_389, n18_adj_390, n7645, n6925, n7496, 
        n7_adj_391, n10_adj_392, n13, n14_adj_393, n15_adj_394, n17_adj_395, 
        n18_adj_396, n3, n7644, n5493, n7005, n15_adj_397, n17_adj_398, 
        n18_adj_399, n7008, n15_adj_400, n17_adj_401, n18_adj_402, 
        n1, n7011, n15_adj_403, n17_adj_404, n18_adj_405, n6318, 
        n7495, n7014, n15_adj_406, n17_adj_407, n18_adj_408, n6316, 
        n15_adj_409, n17_adj_410, n18_adj_411, n4528, n7307, n7493, 
        n6_adj_412, n7207, n7_adj_413, clk_pll_enable_117, n7306, 
        n6922, n7305, clk_pll_enable_79, n6335, n7492, n7304, n7491, 
        n7303, n7490, n6634, n1_adj_414, n10_adj_415, clk_pll_enable_9, 
        n4_adj_416, n6_adj_417, n7_adj_418, clk_pll_enable_116, n7470, 
        n1_adj_419, n6334, n6918, n6333, n3533, n4_adj_420, n3531, 
        n3529, n3527, n3525, n6_adj_421, n7016, n7015, n7_adj_422, 
        n7013, n7469, n7820, n6_adj_423, n1_adj_424, n7012, n7010, 
        n7009, n4_adj_425, n7822, n7007, n6_adj_426, n7006, n7_adj_427, 
        n7004, n7003, n7468, n5654, n6324, n6323, n7001, n7000, 
        n7477, n3370, n1_adj_428, n6995, n6994, n7489, n7559, 
        n6989, n6988, clk_pll_enable_8, n6986, n6985, n6317, n7558, 
        n7590, n7557, n7589, n7556, n7588, n6846, n7555, n7587, 
        n5_adj_429, n3285, n6829, n7814, n7583, n6_adj_430, n4_adj_431, 
        n6_adj_432, n6_adj_433, n5_adj_434, n6_adj_435, n6_adj_436, 
        n17_adj_437, clk_pll_enable_11, n6869, n6_adj_438, n5_adj_439, 
        n6_adj_440, n7547, n6_adj_441, n6_adj_442, n5_adj_443, n6800, 
        n7265, n1_adj_444, n7483;
    
    VHI i2 (.Z(VCC_net));
    LUT4 n18_bdd_3_lut (.A(n18_adj_408), .B(n7589), .C(n6922), .Z(n7590)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n18_bdd_3_lut.init = 16'hcaca;
    PFUMX i5343 (.BLUT(n7489), .ALUT(n7490), .C0(prog[0]), .Z(n7491));
    LUT4 mux_39_Mux_3_i15_4_lut (.A(ram_out[3]), .B(n7010), .C(prog[3]), 
         .D(n7468), .Z(n15_adj_403)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(100[5] 240[13])
    defparam mux_39_Mux_3_i15_4_lut.init = 16'hcac0;
    LUT4 i3284_4_lut (.A(PC[0]), .B(n5335), .C(n3022), .D(PC_9__N_145[0]), 
         .Z(n3023)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;
    defparam i3284_4_lut.init = 16'hca0a;
    ram RAM_M (.clk_pll(clk_pll), .VCC_net(VCC_net), .GND_net(GND_net), 
        .ram_we(ram_we), .PC({PC}), .ram_in({ram_in}), .ram_out({ram_out})) /* synthesis NGD_DRC_MASK=1, syn_module_defined=1 */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(46[5] 54[2])
    LUT4 i58_3_lut (.A(PC[7]), .B(alu_c[7]), .C(prog[0]), .Z(n28_adj_375)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(287[5] 305[12])
    defparam i58_3_lut.init = 16'hcaca;
    LUT4 i5101_2_lut (.A(n1149), .B(prog[1]), .Z(n6931)) /* synthesis lut_function=(!(A (B))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(100[5] 240[13])
    defparam i5101_2_lut.init = 16'h7777;
    LUT4 n2312_bdd_4_lut_5397 (.A(n2312), .B(n529), .C(n2311), .D(PC_temp[1]), 
         .Z(n7555)) /* synthesis lut_function=(A (B (C+(D))+!B (D))+!A (B (C))) */ ;
    defparam n2312_bdd_4_lut_5397.init = 16'heac0;
    CCU2D add_174_7 (.A0(SP[5]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(SP[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n6323), 
          .COUT(n6324), .S0(n286), .S1(n285));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(191[13:19])
    defparam add_174_7.INIT0 = 16'h5aaa;
    defparam add_174_7.INIT1 = 16'h5aaa;
    defparam add_174_7.INJECT1_0 = "NO";
    defparam add_174_7.INJECT1_1 = "NO";
    LUT4 i1_2_lut_3_lut_4_lut (.A(prog[4]), .B(prog[3]), .C(n7476), .D(prog[2]), 
         .Z(n1_adj_444)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;
    defparam i1_2_lut_3_lut_4_lut.init = 16'h4000;
    IB rst_pad (.I(rst), .O(rst_c));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(5[9:12])
    IB clk_pad (.I(clk), .O(clk_c));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(4[9:12])
    OB led_dig_pad_0 (.I(GND_net), .O(led_dig[0]));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(10[20:27])
    OB led_dig_pad_1 (.I(GND_net), .O(led_dig[1]));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(10[20:27])
    PFUMX i5398 (.BLUT(n7588), .ALUT(n7587), .C0(n1147), .Z(n7589));
    OB P_pad_0 (.I(P_c_0), .O(P[0]));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(8[20:21])
    LUT4 i1_2_lut (.A(n2312), .B(PC_temp[7]), .Z(n26_adj_374)) /* synthesis lut_function=(A (B)) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(287[5] 305[12])
    defparam i1_2_lut.init = 16'h8888;
    LUT4 mux_39_Mux_2_i15_4_lut (.A(ram_out[2]), .B(n7013), .C(prog[3]), 
         .D(n7468), .Z(n15_adj_406)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(100[5] 240[13])
    defparam mux_39_Mux_2_i15_4_lut.init = 16'hcac0;
    LUT4 mux_77_i8_3_lut (.A(PC_9__N_145[7]), .B(ram_out[7]), .C(alu_co), 
         .Z(n523)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(296[7:23])
    defparam mux_77_i8_3_lut.init = 16'hcaca;
    OB P_pad_1 (.I(P_c_1), .O(P[1]));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(8[20:21])
    OB P_pad_2 (.I(P_c_2), .O(P[2]));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(8[20:21])
    OB P_pad_3 (.I(P_c_3), .O(P[3]));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(8[20:21])
    OB P_pad_4 (.I(P_c_4), .O(P[4]));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(8[20:21])
    FD1P3AX alu_a_i0_i0 (.D(A[0]), .SP(clk_pll_enable_36), .CK(clk_pll), 
            .Q(alu_a[0]));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(75[11] 310[5])
    defparam alu_a_i0_i0.GSR = "DISABLED";
    OB P_pad_5 (.I(P_c_5), .O(P[5]));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(8[20:21])
    FD1P3AX alu_b_i0_i0 (.D(B[0]), .SP(clk_pll_enable_47), .CK(clk_pll), 
            .Q(alu_b[0]));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(75[11] 310[5])
    defparam alu_b_i0_i0.GSR = "DISABLED";
    FD1P3AX ram_in_i0_i0 (.D(n2396), .SP(clk_pll_enable_58), .CK(clk_pll), 
            .Q(ram_in[0]));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(75[11] 310[5])
    defparam ram_in_i0_i0.GSR = "DISABLED";
    OB P_pad_6 (.I(P_c_6), .O(P[6]));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(8[20:21])
    FD1P3AX P_i0_i1 (.D(A[0]), .SP(clk_pll_enable_69), .CK(clk_pll), .Q(P_c_0));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(75[11] 310[5])
    defparam P_i0_i1.GSR = "DISABLED";
    OB P_pad_7 (.I(P_c_7), .O(P[7]));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(8[20:21])
    FD1P3AX PC_i0_i0 (.D(n7648), .SP(clk_pll_enable_76), .CK(clk_pll), 
            .Q(PC[0]));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(75[11] 310[5])
    defparam PC_i0_i0.GSR = "ENABLED";
    OB P_pad_8 (.I(P_c_8), .O(P[8]));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(8[20:21])
    FD1P3AX alu_type_i0_i0 (.D(n364), .SP(clk_pll_enable_79), .CK(clk_pll), 
            .Q(alu_type[0]));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(75[11] 310[5])
    defparam alu_type_i0_i0.GSR = "DISABLED";
    OB P_pad_9 (.I(P_c_9), .O(P[9]));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(8[20:21])
    FD1S3JX statu_FSM_i1 (.D(n1154), .CK(clk_pll), .PD(n1147), .Q(n1152));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(76[3] 309[11])
    defparam statu_FSM_i1.GSR = "ENABLED";
    IB key_pad (.I(key), .O(key_c));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(6[9:12])
    OB P_pad_10 (.I(P_c_10), .O(P[10]));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(8[20:21])
    ALU ALU_M (.alu_a({alu_a}), .alu_type({alu_type}), .alu_b({alu_b}), 
        .alu_c({alu_c}), .alu_co(alu_co), .GND_net(GND_net), .alu_cin(alu_cin)) /* synthesis syn_module_defined=1 */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(56[5] 63[2])
    LUT4 i30_4_lut_4_lut (.A(prog[0]), .B(prog[3]), .C(prog[1]), .D(prog[4]), 
         .Z(n24)) /* synthesis lut_function=(A (B (D)+!B !(D))+!A (B (C+(D))+!B !(D))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(100[5] 240[13])
    defparam i30_4_lut_4_lut.init = 16'hcc73;
    LUT4 mux_39_Mux_9_i17_3_lut (.A(SP[9]), .B(n322), .C(prog[0]), .Z(n17_adj_383)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(100[5] 240[13])
    defparam mux_39_Mux_9_i17_3_lut.init = 16'hcaca;
    LUT4 mux_39_Mux_0_i18_3_lut (.A(B[0]), .B(n17), .C(prog[1]), .Z(n18)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(100[5] 240[13])
    defparam mux_39_Mux_0_i18_3_lut.init = 16'hcaca;
    LUT4 prog_2__bdd_2_lut_5190 (.A(prog[2]), .B(prog[4]), .Z(n7239)) /* synthesis lut_function=(!(A+!(B))) */ ;
    defparam prog_2__bdd_2_lut_5190.init = 16'h4444;
    OB P_pad_11 (.I(P_c_11), .O(P[11]));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(8[20:21])
    OB led_pad_0 (.I(GND_net), .O(led[0]));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(7[20:23])
    LUT4 i5105_4_lut_rep_44_then_4_lut_4_lut (.A(prog[0]), .B(prog[1]), 
         .C(prog[3]), .D(prog[2]), .Z(n7487)) /* synthesis lut_function=(!(A ((C+(D))+!B)+!A (B+(C+(D))))) */ ;
    defparam i5105_4_lut_rep_44_then_4_lut_4_lut.init = 16'h0009;
    LUT4 i2_4_lut (.A(n6846), .B(n31), .C(n7_adj_381), .D(PC_9__N_145[0]), 
         .Z(n6_adj_423)) /* synthesis lut_function=(A (B (D))+!A (B (C+(D))+!B (C))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(287[5] 305[12])
    defparam i2_4_lut.init = 16'hdc50;
    LUT4 i1_3_lut (.A(n1149), .B(n7524), .C(n1147), .Z(clk_pll_enable_9)) /* synthesis lut_function=(A (B)+!A (B (C))) */ ;
    defparam i1_3_lut.init = 16'hc8c8;
    OB led_pad_1 (.I(GND_net), .O(led[1]));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(7[20:23])
    PLL pll_m (.clk_c(clk_c), .clk_pll(clk_pll), .GND_net(GND_net)) /* synthesis NGD_DRC_MASK=1, syn_module_defined=1 */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(41[5] 44[2])
    LUT4 mux_39_Mux_4_i18_3_lut (.A(B[4]), .B(n17_adj_401), .C(prog[1]), 
         .Z(n18_adj_402)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(100[5] 240[13])
    defparam mux_39_Mux_4_i18_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut_3_lut_4_lut_adj_4 (.A(prog[0]), .B(prog[1]), .C(ram_out[6]), 
         .D(prog[2]), .Z(n7_adj_391)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_4.init = 16'h0010;
    LUT4 i1_3_lut_4_lut_4_lut_3_lut (.A(n7822), .B(prog[1]), .C(n7820), 
         .Z(n5_adj_429)) /* synthesis lut_function=(!(A (B+!(C))+!A (B+(C)))) */ ;
    defparam i1_3_lut_4_lut_4_lut_3_lut.init = 16'h2121;
    LUT4 n9_bdd_4_lut_5448 (.A(n9_adj_379), .B(PC_9__N_145[0]), .C(n1149), 
         .D(n1151), .Z(n7646)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A !((C+!(D))+!B)) */ ;
    defparam n9_bdd_4_lut_5448.init = 16'haca0;
    LUT4 n1_bdd_4_lut_3_lut (.A(n7822), .B(prog[3]), .C(n7820), .Z(n7245)) /* synthesis lut_function=(!(A (B+!(C))+!A ((C)+!B))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(100[5] 240[13])
    defparam n1_bdd_4_lut_3_lut.init = 16'h2424;
    LUT4 prog_3__bdd_3_lut (.A(prog[4]), .B(prog[1]), .C(prog[0]), .Z(n7430)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;
    defparam prog_3__bdd_3_lut.init = 16'h2020;
    LUT4 n18_bdd_3_lut_adj_5 (.A(n18_adj_411), .B(n7558), .C(n6922), .Z(n7559)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n18_bdd_3_lut_adj_5.init = 16'hcaca;
    LUT4 i5140_3_lut (.A(n1149), .B(n24), .C(n4), .Z(clk_pll_enable_116)) /* synthesis lut_function=(!((B+(C))+!A)) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(76[3] 309[11])
    defparam i5140_3_lut.init = 16'h0202;
    LUT4 i2470_1_lut (.A(n1151), .Z(n4528)) /* synthesis lut_function=(!(A)) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(76[3] 309[11])
    defparam i2470_1_lut.init = 16'h5555;
    FD1P3AX prog__0__i1 (.D(ram_out[0]), .SP(clk_pll_enable_118), .CK(clk_pll), 
            .Q(prog[0]));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(75[11] 310[5])
    defparam prog__0__i1.GSR = "DISABLED";
    LUT4 i333_1_lut (.A(n1147), .Z(n1896)) /* synthesis lut_function=(!(A)) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(76[3] 309[11])
    defparam i333_1_lut.init = 16'h5555;
    OB led_pad_2 (.I(GND_net), .O(led[2]));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(7[20:23])
    FD1P3AX IRQ_EN_141 (.D(n3285), .SP(clk_pll_enable_8), .CK(clk_pll), 
            .Q(IRQ_EN));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(75[11] 310[5])
    defparam IRQ_EN_141.GSR = "ENABLED";
    OB led_pad_3 (.I(GND_net), .O(led[3]));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(7[20:23])
    OB led_pad_4 (.I(GND_net), .O(led[4]));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(7[20:23])
    OB led_pad_5 (.I(GND_net), .O(led[5]));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(7[20:23])
    LUT4 i1483_4_lut (.A(PC_9__N_135[9]), .B(n5_adj_439), .C(n1147), .D(n6_adj_438), 
         .Z(n3532)) /* synthesis lut_function=(A (B+((D)+!C))+!A (B (C)+!B (C (D)))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(76[3] 309[11])
    defparam i1483_4_lut.init = 16'hfaca;
    OB led_pad_6 (.I(GND_net), .O(led[6]));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(7[20:23])
    OB led_pad_7 (.I(GND_net), .O(led[7]));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(7[20:23])
    LUT4 i1_2_lut_3_lut_4_lut_adj_6 (.A(prog[1]), .B(prog[2]), .C(prog[4]), 
         .D(prog[3]), .Z(n6846)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(281[5:13])
    defparam i1_2_lut_3_lut_4_lut_adj_6.init = 16'hfffe;
    OB led_pad_8 (.I(GND_net), .O(led[8]));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(7[20:23])
    LUT4 mux_39_Mux_9_i15_4_lut (.A(ram_out[9]), .B(n6989), .C(prog[3]), 
         .D(n7468), .Z(n15_adj_382)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(100[5] 240[13])
    defparam mux_39_Mux_9_i15_4_lut.init = 16'hcac0;
    LUT4 mux_39_Mux_7_i18_3_lut (.A(B[7]), .B(n17_adj_389), .C(prog[1]), 
         .Z(n18_adj_390)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(100[5] 240[13])
    defparam mux_39_Mux_7_i18_3_lut.init = 16'hcaca;
    OB led_pad_9 (.I(GND_net), .O(led[9]));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(7[20:23])
    OB led_pad_10 (.I(GND_net), .O(led[10]));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(7[20:23])
    LUT4 mux_594_i1_3_lut (.A(A[0]), .B(n2412), .C(n11), .Z(n2379)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(76[3] 309[11])
    defparam mux_594_i1_3_lut.init = 16'hcaca;
    LUT4 mux_39_Mux_5_i18_3_lut (.A(B[5]), .B(n17_adj_398), .C(prog[1]), 
         .Z(n18_adj_399)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(100[5] 240[13])
    defparam mux_39_Mux_5_i18_3_lut.init = 16'hcaca;
    LUT4 mux_603_i1_3_lut (.A(n291), .B(n331), .C(n2399), .Z(n2412)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(76[3] 309[11])
    defparam mux_603_i1_3_lut.init = 16'hcaca;
    LUT4 mux_39_Mux_1_i18_3_lut (.A(B[1]), .B(n17_adj_410), .C(prog[1]), 
         .Z(n18_adj_411)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(100[5] 240[13])
    defparam mux_39_Mux_1_i18_3_lut.init = 16'hcaca;
    OB led_pad_11 (.I(GND_net), .O(led[11]));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(7[20:23])
    LUT4 i5145_4_lut_then_4_lut (.A(prog[4]), .B(prog[3]), .C(prog[1]), 
         .D(prog[0]), .Z(n7547)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;
    defparam i5145_4_lut_then_4_lut.init = 16'h0001;
    LUT4 i3533_2_lut_rep_55 (.A(n7822), .B(prog[1]), .Z(n7476)) /* synthesis lut_function=(A (B)) */ ;
    defparam i3533_2_lut_rep_55.init = 16'h8888;
    LUT4 n7583_bdd_4_lut_4_lut (.A(prog[3]), .B(prog[1]), .C(prog[0]), 
         .D(n7583), .Z(n7813)) /* synthesis lut_function=(!(A (B+(C+!(D)))+!A !(B (C)+!B !(C+!(D))))) */ ;
    defparam n7583_bdd_4_lut_4_lut.init = 16'h4340;
    OB led_pad_12 (.I(GND_net), .O(led[12]));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(7[20:23])
    OB led_pad_13 (.I(GND_net), .O(led[13]));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(7[20:23])
    LUT4 i5145_4_lut_else_4_lut (.A(prog[4]), .B(prog[3]), .C(prog[1]), 
         .Z(n7546)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i5145_4_lut_else_4_lut.init = 16'h1010;
    LUT4 mux_39_Mux_3_i18_3_lut (.A(B[3]), .B(n17_adj_404), .C(prog[1]), 
         .Z(n18_adj_405)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(100[5] 240[13])
    defparam mux_39_Mux_3_i18_3_lut.init = 16'hcaca;
    OB led_pad_14 (.I(GND_net), .O(led[14]));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(7[20:23])
    LUT4 i4974_4_lut_4_lut (.A(prog[0]), .B(prog[1]), .C(ram_out[3]), 
         .D(n328), .Z(n7009)) /* synthesis lut_function=(A (B (C))+!A (B (C)+!B (D))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(100[5] 240[13])
    defparam i4974_4_lut_4_lut.init = 16'hd1c0;
    LUT4 mux_39_Mux_2_i18_3_lut (.A(B[2]), .B(n17_adj_407), .C(prog[1]), 
         .Z(n18_adj_408)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(100[5] 240[13])
    defparam mux_39_Mux_2_i18_3_lut.init = 16'hcaca;
    LUT4 i36_4_lut_4_lut (.A(prog[0]), .B(prog[1]), .C(prog[3]), .D(prog[4]), 
         .Z(n31_adj_371)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C+!(D)))+!A (B (C (D)+!C !(D))+!B (C+!(D)))) */ ;
    defparam i36_4_lut_4_lut.init = 16'hf83f;
    LUT4 i4968_4_lut_4_lut (.A(prog[0]), .B(prog[1]), .C(ram_out[5]), 
         .D(n326), .Z(n7003)) /* synthesis lut_function=(A (B (C))+!A (B (C)+!B (D))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(100[5] 240[13])
    defparam i4968_4_lut_4_lut.init = 16'hd1c0;
    LUT4 n4045_bdd_4_lut (.A(n7476), .B(n7820), .C(prog[4]), .D(prog[3]), 
         .Z(n7265)) /* synthesis lut_function=((B (C+!(D))+!B !(C (D)))+!A) */ ;
    defparam n4045_bdd_4_lut.init = 16'hd7ff;
    LUT4 mux_1000_i2_4_lut (.A(PC[1]), .B(PC_9__N_145[1]), .C(n3022), 
         .D(n5335), .Z(n3024)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(76[3] 309[11])
    defparam mux_1000_i2_4_lut.init = 16'hca0a;
    LUT4 i4967_4_lut (.A(ram_out[5]), .B(SP[5]), .C(prog[1]), .D(prog[0]), 
         .Z(n7002)) /* synthesis lut_function=(A (B (C+(D))+!B !(C (D)+!C !(D)))+!A (B (C (D)))) */ ;
    defparam i4967_4_lut.init = 16'hcaa0;
    LUT4 i1_4_lut (.A(rst_c), .B(n7466), .C(n2108), .D(n1147), .Z(clk_pll_enable_87)) /* synthesis lut_function=(A (B (C+!(D))+!B (C (D)))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(76[3] 309[11])
    defparam i1_4_lut.init = 16'ha088;
    LUT4 i3_4_lut (.A(n2312), .B(n6_adj_432), .C(n10_adj_415), .D(PC_temp[5]), 
         .Z(PC_9__N_125[5])) /* synthesis lut_function=(A (B+(C+(D)))+!A (B+(C))) */ ;
    defparam i3_4_lut.init = 16'hfefc;
    LUT4 i3287_3_lut (.A(PC[0]), .B(alu_c[0]), .C(n7822), .Z(n7_adj_381)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(28[20:24])
    defparam i3287_3_lut.init = 16'hcaca;
    PFUMX i4978 (.BLUT(n7011), .ALUT(n7012), .C0(n7820), .Z(n7013));
    LUT4 ram_out_7__bdd_4_lut (.A(ram_out[7]), .B(n2108), .C(n1422), .D(n1147), 
         .Z(B_11__N_195[7])) /* synthesis lut_function=(A (B (C+(D))+!B !((D)+!C))+!A !((D)+!C)) */ ;
    defparam ram_out_7__bdd_4_lut.init = 16'h88f0;
    LUT4 n2108_bdd_4_lut_5534 (.A(n2108), .B(ram_out[2]), .C(n4_adj_425), 
         .D(n1147), .Z(B_11__N_195[2])) /* synthesis lut_function=(A (B (C+(D))+!B !((D)+!C))+!A !((D)+!C)) */ ;
    defparam n2108_bdd_4_lut_5534.init = 16'h88f0;
    LUT4 i3658_2_lut (.A(flag), .B(prog[3]), .Z(n30)) /* synthesis lut_function=(A (B)) */ ;
    defparam i3658_2_lut.init = 16'h8888;
    LUT4 i316_2_lut (.A(n1151), .B(rst_c), .Z(clk_pll_enable_118)) /* synthesis lut_function=(A (B)) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(75[11] 310[5])
    defparam i316_2_lut.init = 16'h8888;
    LUT4 i3606_3_lut_4_lut (.A(prog[0]), .B(prog[1]), .C(SP[6]), .D(ram_out[6]), 
         .Z(n5493)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;
    defparam i3606_3_lut_4_lut.init = 16'hf780;
    PFUMX i5232 (.BLUT(n18_adj_405), .ALUT(n7306), .C0(n6922), .Z(n7307));
    LUT4 mux_39_Mux_6_i17_3_lut (.A(SP[6]), .B(n325), .C(prog[0]), .Z(n17_adj_395)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(100[5] 240[13])
    defparam mux_39_Mux_6_i17_3_lut.init = 16'hcaca;
    LUT4 ram_out_5__bdd_4_lut (.A(ram_out[5]), .B(n2108), .C(n7_adj_413), 
         .D(n1147), .Z(B_11__N_195[5])) /* synthesis lut_function=(A (B (C+(D))+!B !((D)+!C))+!A !((D)+!C)) */ ;
    defparam ram_out_5__bdd_4_lut.init = 16'h88f0;
    LUT4 i6_1_lut_rep_56 (.A(prog[3]), .Z(n7477)) /* synthesis lut_function=(!(A)) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(100[5] 240[13])
    defparam i6_1_lut_rep_56.init = 16'h5555;
    LUT4 mux_39_Mux_8_i17_3_lut (.A(SP[8]), .B(n323), .C(prog[0]), .Z(n17_adj_386)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(100[5] 240[13])
    defparam mux_39_Mux_8_i17_3_lut.init = 16'hcaca;
    LUT4 i3288_3_lut (.A(PC_9__N_145[0]), .B(ram_out[0]), .C(alu_co), 
         .Z(n530)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(38[6:12])
    defparam i3288_3_lut.init = 16'hcaca;
    LUT4 i4950_4_lut_4_lut (.A(prog[0]), .B(prog[1]), .C(ram_out[0]), 
         .D(n331), .Z(n6985)) /* synthesis lut_function=(A (B (C))+!A (B (C)+!B (D))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(100[5] 240[13])
    defparam i4950_4_lut_4_lut.init = 16'hd1c0;
    LUT4 i5056_3_lut_4_lut (.A(n1151), .B(PC_9__N_145[5]), .C(n1147), 
         .D(PC_9__N_125[5]), .Z(PC_9__N_135[5])) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(76[3] 309[11])
    defparam i5056_3_lut_4_lut.init = 16'hf808;
    PFUMX mux_39_Mux_9_i31 (.BLUT(n30_adj_384), .ALUT(n2939), .C0(n7481), 
          .Z(PC_9__N_135[9]));
    LUT4 i2_4_lut_adj_7 (.A(n28_adj_373), .B(PC_9__N_145[1]), .C(n6846), 
         .D(n31), .Z(n6_adj_441)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (D))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(287[5] 305[12])
    defparam i2_4_lut_adj_7.init = 16'hce0a;
    LUT4 i58_3_lut_adj_8 (.A(PC[1]), .B(alu_c[1]), .C(prog[0]), .Z(n28_adj_373)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(287[5] 305[12])
    defparam i58_3_lut_adj_8.init = 16'hcaca;
    LUT4 n2108_bdd_4_lut_5535 (.A(n2108), .B(ram_out[3]), .C(n4_adj_420), 
         .D(n1147), .Z(B_11__N_195[3])) /* synthesis lut_function=(A (B (C+(D))+!B !((D)+!C))+!A !((D)+!C)) */ ;
    defparam n2108_bdd_4_lut_5535.init = 16'h88f0;
    LUT4 mux_599_i2_3_lut (.A(B[1]), .B(A[1]), .C(n2383), .Z(n2395)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(76[3] 309[11])
    defparam mux_599_i2_3_lut.init = 16'hcaca;
    PFUMX i4972 (.BLUT(n7005), .ALUT(n7006), .C0(n7820), .Z(n7007));
    LUT4 mux_77_i2_3_lut (.A(PC_9__N_145[1]), .B(ram_out[1]), .C(alu_co), 
         .Z(n529)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(296[7:23])
    defparam mux_77_i2_3_lut.init = 16'hcaca;
    PFUMX i4981 (.BLUT(n7014), .ALUT(n7015), .C0(n7820), .Z(n7016));
    LUT4 n2108_bdd_4_lut_5537 (.A(n2108), .B(ram_out[6]), .C(n5), .D(n1147), 
         .Z(B_11__N_195[6])) /* synthesis lut_function=(A (B (C+(D))+!B !((D)+!C))+!A !((D)+!C)) */ ;
    defparam n2108_bdd_4_lut_5537.init = 16'h88f0;
    LUT4 mux_599_i3_3_lut (.A(B[2]), .B(A[2]), .C(n2383), .Z(n2394)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(76[3] 309[11])
    defparam mux_599_i3_3_lut.init = 16'hcaca;
    LUT4 i2337_3_lut_3_lut (.A(prog[2]), .B(prog[0]), .C(prog[1]), .Z(n4)) /* synthesis lut_function=(A (B+(C))+!A !(C)) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(76[3] 309[11])
    defparam i2337_3_lut_3_lut.init = 16'hadad;
    LUT4 mux_599_i4_3_lut (.A(B[3]), .B(A[3]), .C(n2383), .Z(n2393)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(76[3] 309[11])
    defparam mux_599_i4_3_lut.init = 16'hcaca;
    LUT4 mux_599_i5_3_lut (.A(B[4]), .B(A[4]), .C(n2383), .Z(n2392)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(76[3] 309[11])
    defparam mux_599_i5_3_lut.init = 16'hcaca;
    LUT4 n7644_bdd_2_lut (.A(n7644), .B(n6_adj_423), .Z(n7645)) /* synthesis lut_function=(A+(B)) */ ;
    defparam n7644_bdd_2_lut.init = 16'heeee;
    LUT4 mux_599_i6_3_lut (.A(B[5]), .B(A[5]), .C(n2383), .Z(n2391)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(76[3] 309[11])
    defparam mux_599_i6_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut_rep_57 (.A(n1149), .B(rst_c), .Z(n7478)) /* synthesis lut_function=(A (B)) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(76[3] 309[11])
    defparam i1_2_lut_rep_57.init = 16'h8888;
    LUT4 i3312_4_lut (.A(PC[2]), .B(n5335), .C(n3022), .D(PC_9__N_145[2]), 
         .Z(n3025)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;
    defparam i3312_4_lut.init = 16'hca0a;
    PFUMX i4954 (.BLUT(n6987), .ALUT(n6988), .C0(prog[2]), .Z(n6989));
    LUT4 i4837_2_lut (.A(prog[4]), .B(prog[3]), .Z(n6869)) /* synthesis lut_function=(A (B)) */ ;
    defparam i4837_2_lut.init = 16'h8888;
    LUT4 i4965_4_lut_4_lut (.A(prog[0]), .B(prog[1]), .C(ram_out[7]), 
         .D(n324), .Z(n7000)) /* synthesis lut_function=(A (B (C))+!A (B (C)+!B (D))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(100[5] 240[13])
    defparam i4965_4_lut_4_lut.init = 16'hd1c0;
    LUT4 mux_599_i7_3_lut (.A(B[6]), .B(A[6]), .C(n2383), .Z(n2390)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(76[3] 309[11])
    defparam mux_599_i7_3_lut.init = 16'hcaca;
    LUT4 led_dig_c_bdd_2_lut_5180_3_lut (.A(n1149), .B(rst_c), .C(n7491), 
         .Z(clk_pll_enable_47)) /* synthesis lut_function=(A (B (C))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(76[3] 309[11])
    defparam led_dig_c_bdd_2_lut_5180_3_lut.init = 16'h8080;
    LUT4 i3657_4_lut (.A(n1152), .B(n1149), .C(IRQ_EN), .D(key_c), .Z(n3285)) /* synthesis lut_function=(A (B+(C (D)))+!A (B+(C))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(75[11] 310[5])
    defparam i3657_4_lut.init = 16'hfcdc;
    FD1P3AX ram_we_140 (.D(n1896), .SP(clk_pll_enable_9), .CK(clk_pll), 
            .Q(ram_we));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(75[11] 310[5])
    defparam ram_we_140.GSR = "ENABLED";
    FD1P3AX alu_cin_148 (.D(n30), .SP(clk_pll_enable_10), .CK(clk_pll), 
            .Q(alu_cin));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(75[11] 310[5])
    defparam alu_cin_148.GSR = "DISABLED";
    LUT4 i3344_4_lut (.A(PC[3]), .B(n5335), .C(n3022), .D(PC_9__N_145[3]), 
         .Z(n3026)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;
    defparam i3344_4_lut.init = 16'hca0a;
    FD1P3AX flag_145 (.D(alu_co), .SP(clk_pll_enable_11), .CK(clk_pll), 
            .Q(flag));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(75[11] 310[5])
    defparam flag_145.GSR = "DISABLED";
    FD1P3AX A_i0_i0 (.D(A_11__N_183[0]), .SP(clk_pll_enable_97), .CK(clk_pll), 
            .Q(A[0]));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(75[11] 310[5])
    defparam A_i0_i0.GSR = "DISABLED";
    LUT4 n6_bdd_4_lut_4_lut_then_4_lut (.A(prog[4]), .B(prog[0]), .C(prog[3]), 
         .D(prog[1]), .Z(n7523)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(100[5] 240[13])
    defparam n6_bdd_4_lut_4_lut_then_4_lut.init = 16'h4000;
    LUT4 i2_3_lut_4_lut (.A(prog[4]), .B(rst_c), .C(n14), .D(n1149), 
         .Z(clk_pll_enable_10)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(75[11] 310[5])
    defparam i2_3_lut_4_lut.init = 16'h8000;
    FD1P3IX PC_temp__i0 (.D(n3023), .SP(clk_pll_enable_106), .CD(GND_net), 
            .CK(clk_pll), .Q(PC_temp[0]));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(75[11] 310[5])
    defparam PC_temp__i0.GSR = "DISABLED";
    LUT4 i2_4_lut_adj_9 (.A(n6846), .B(n31), .C(n1_adj_428), .D(PC_9__N_145[2]), 
         .Z(n6_adj_440)) /* synthesis lut_function=(A (B (D))+!A (B (C+(D))+!B (C))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(287[5] 305[12])
    defparam i2_4_lut_adj_9.init = 16'hdc50;
    OB led_pad_15 (.I(GND_net), .O(led[15]));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(7[20:23])
    LUT4 i3315_3_lut (.A(PC[2]), .B(alu_c[2]), .C(n7822), .Z(n1_adj_428)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(28[20:24])
    defparam i3315_3_lut.init = 16'hcaca;
    LUT4 n2108_bdd_4_lut_5536 (.A(n2108), .B(ram_out[4]), .C(n4_adj_416), 
         .D(n1147), .Z(B_11__N_195[4])) /* synthesis lut_function=(A (B (C+(D))+!B !((D)+!C))+!A !((D)+!C)) */ ;
    defparam n2108_bdd_4_lut_5536.init = 16'h88f0;
    PFUMX i5230 (.BLUT(n7304), .ALUT(n7303), .C0(n1147), .Z(n7305));
    FD1P3AX SP_i0_i0 (.D(n2379), .SP(clk_pll_enable_116), .CK(clk_pll), 
            .Q(SP[0]));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(75[11] 310[5])
    defparam SP_i0_i0.GSR = "ENABLED";
    FD1P3AX B_i0_i1 (.D(B_11__N_195[1]), .SP(clk_pll_enable_87), .CK(clk_pll), 
            .Q(B[1]));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(75[11] 310[5])
    defparam B_i0_i1.GSR = "DISABLED";
    LUT4 i3316_3_lut (.A(PC_9__N_145[2]), .B(ram_out[2]), .C(alu_co), 
         .Z(n528)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(38[6:12])
    defparam i3316_3_lut.init = 16'hcaca;
    LUT4 i2_3_lut_4_lut_adj_10 (.A(prog[4]), .B(rst_c), .C(n14), .D(n1148), 
         .Z(clk_pll_enable_11)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(75[11] 310[5])
    defparam i2_3_lut_4_lut_adj_10.init = 16'h8000;
    PFUMX mux_39_Mux_8_i31 (.BLUT(n30_adj_387), .ALUT(n7), .C0(n7481), 
          .Z(PC_9__N_135[8]));
    LUT4 i3561_3_lut_3_lut_4_lut (.A(prog[0]), .B(prog[1]), .C(prog[2]), 
         .D(prog[3]), .Z(n15)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (D))+!A (B (D)+!B ((D)+!C)))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(100[5] 240[13])
    defparam i3561_3_lut_3_lut_4_lut.init = 16'h00f6;
    LUT4 mux_599_i8_3_lut (.A(B[7]), .B(A[7]), .C(n2383), .Z(n2389)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(76[3] 309[11])
    defparam mux_599_i8_3_lut.init = 16'hcaca;
    LUT4 mux_599_i9_3_lut (.A(B[8]), .B(A[8]), .C(n2383), .Z(n2388)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(76[3] 309[11])
    defparam mux_599_i9_3_lut.init = 16'hcaca;
    LUT4 mux_599_i10_3_lut (.A(B[9]), .B(A[9]), .C(n2383), .Z(n2387)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(76[3] 309[11])
    defparam mux_599_i10_3_lut.init = 16'hcaca;
    LUT4 prog_3__bdd_4_lut_5400 (.A(prog[3]), .B(prog[4]), .C(prog[2]), 
         .D(alu_type[1]), .Z(n7583)) /* synthesis lut_function=(A (B)+!A (B (D)+!B (C+(D)))) */ ;
    defparam prog_3__bdd_4_lut_5400.init = 16'hdd98;
    FD1P3AX B_i0_i2 (.D(B_11__N_195[2]), .SP(clk_pll_enable_87), .CK(clk_pll), 
            .Q(B[2]));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(75[11] 310[5])
    defparam B_i0_i2.GSR = "DISABLED";
    FD1P3AX B_i0_i3 (.D(B_11__N_195[3]), .SP(clk_pll_enable_87), .CK(clk_pll), 
            .Q(B[3]));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(75[11] 310[5])
    defparam B_i0_i3.GSR = "DISABLED";
    FD1P3AX B_i0_i4 (.D(B_11__N_195[4]), .SP(clk_pll_enable_87), .CK(clk_pll), 
            .Q(B[4]));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(75[11] 310[5])
    defparam B_i0_i4.GSR = "DISABLED";
    FD1P3AX B_i0_i5 (.D(B_11__N_195[5]), .SP(clk_pll_enable_87), .CK(clk_pll), 
            .Q(B[5]));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(75[11] 310[5])
    defparam B_i0_i5.GSR = "DISABLED";
    FD1P3AX B_i0_i6 (.D(B_11__N_195[6]), .SP(clk_pll_enable_87), .CK(clk_pll), 
            .Q(B[6]));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(75[11] 310[5])
    defparam B_i0_i6.GSR = "DISABLED";
    FD1P3AX B_i0_i7 (.D(B_11__N_195[7]), .SP(clk_pll_enable_87), .CK(clk_pll), 
            .Q(B[7]));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(75[11] 310[5])
    defparam B_i0_i7.GSR = "DISABLED";
    FD1P3AX B_i0_i8 (.D(B_11__N_195[8]), .SP(clk_pll_enable_87), .CK(clk_pll), 
            .Q(B[8]));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(75[11] 310[5])
    defparam B_i0_i8.GSR = "DISABLED";
    FD1P3AX B_i0_i9 (.D(B_11__N_195[9]), .SP(clk_pll_enable_87), .CK(clk_pll), 
            .Q(B[9]));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(75[11] 310[5])
    defparam B_i0_i9.GSR = "DISABLED";
    FD1P3AX B_i0_i10 (.D(B_11__N_195[10]), .SP(clk_pll_enable_87), .CK(clk_pll), 
            .Q(B[10]));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(75[11] 310[5])
    defparam B_i0_i10.GSR = "DISABLED";
    FD1P3AX B_i0_i11 (.D(B_11__N_195[11]), .SP(clk_pll_enable_87), .CK(clk_pll), 
            .Q(B[11]));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(75[11] 310[5])
    defparam B_i0_i11.GSR = "DISABLED";
    FD1P3AX alu_a_i0_i1 (.D(A[1]), .SP(clk_pll_enable_36), .CK(clk_pll), 
            .Q(alu_a[1]));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(75[11] 310[5])
    defparam alu_a_i0_i1.GSR = "DISABLED";
    FD1P3AX alu_a_i0_i2 (.D(A[2]), .SP(clk_pll_enable_36), .CK(clk_pll), 
            .Q(alu_a[2]));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(75[11] 310[5])
    defparam alu_a_i0_i2.GSR = "DISABLED";
    FD1P3AX alu_a_i0_i3 (.D(A[3]), .SP(clk_pll_enable_36), .CK(clk_pll), 
            .Q(alu_a[3]));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(75[11] 310[5])
    defparam alu_a_i0_i3.GSR = "DISABLED";
    FD1P3AX alu_a_i0_i4 (.D(A[4]), .SP(clk_pll_enable_36), .CK(clk_pll), 
            .Q(alu_a[4]));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(75[11] 310[5])
    defparam alu_a_i0_i4.GSR = "DISABLED";
    FD1P3AX alu_a_i0_i5 (.D(A[5]), .SP(clk_pll_enable_36), .CK(clk_pll), 
            .Q(alu_a[5]));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(75[11] 310[5])
    defparam alu_a_i0_i5.GSR = "DISABLED";
    FD1P3AX alu_a_i0_i6 (.D(A[6]), .SP(clk_pll_enable_36), .CK(clk_pll), 
            .Q(alu_a[6]));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(75[11] 310[5])
    defparam alu_a_i0_i6.GSR = "DISABLED";
    FD1P3AX alu_a_i0_i7 (.D(A[7]), .SP(clk_pll_enable_36), .CK(clk_pll), 
            .Q(alu_a[7]));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(75[11] 310[5])
    defparam alu_a_i0_i7.GSR = "DISABLED";
    FD1P3AX alu_a_i0_i8 (.D(A[8]), .SP(clk_pll_enable_36), .CK(clk_pll), 
            .Q(alu_a[8]));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(75[11] 310[5])
    defparam alu_a_i0_i8.GSR = "DISABLED";
    FD1P3AX alu_a_i0_i9 (.D(A[9]), .SP(clk_pll_enable_36), .CK(clk_pll), 
            .Q(alu_a[9]));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(75[11] 310[5])
    defparam alu_a_i0_i9.GSR = "DISABLED";
    FD1P3AX alu_a_i0_i10 (.D(A[10]), .SP(clk_pll_enable_36), .CK(clk_pll), 
            .Q(alu_a[10]));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(75[11] 310[5])
    defparam alu_a_i0_i10.GSR = "DISABLED";
    FD1P3AX alu_a_i0_i11 (.D(A[11]), .SP(clk_pll_enable_36), .CK(clk_pll), 
            .Q(alu_a[11]));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(75[11] 310[5])
    defparam alu_a_i0_i11.GSR = "DISABLED";
    FD1P3AX alu_b_i0_i1 (.D(B[1]), .SP(clk_pll_enable_47), .CK(clk_pll), 
            .Q(alu_b[1]));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(75[11] 310[5])
    defparam alu_b_i0_i1.GSR = "DISABLED";
    FD1P3AX alu_b_i0_i2 (.D(B[2]), .SP(clk_pll_enable_47), .CK(clk_pll), 
            .Q(alu_b[2]));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(75[11] 310[5])
    defparam alu_b_i0_i2.GSR = "DISABLED";
    FD1P3AX alu_b_i0_i3 (.D(B[3]), .SP(clk_pll_enable_47), .CK(clk_pll), 
            .Q(alu_b[3]));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(75[11] 310[5])
    defparam alu_b_i0_i3.GSR = "DISABLED";
    FD1P3AX alu_b_i0_i4 (.D(B[4]), .SP(clk_pll_enable_47), .CK(clk_pll), 
            .Q(alu_b[4]));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(75[11] 310[5])
    defparam alu_b_i0_i4.GSR = "DISABLED";
    FD1P3AX alu_b_i0_i5 (.D(B[5]), .SP(clk_pll_enable_47), .CK(clk_pll), 
            .Q(alu_b[5]));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(75[11] 310[5])
    defparam alu_b_i0_i5.GSR = "DISABLED";
    FD1P3AX alu_b_i0_i6 (.D(B[6]), .SP(clk_pll_enable_47), .CK(clk_pll), 
            .Q(alu_b[6]));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(75[11] 310[5])
    defparam alu_b_i0_i6.GSR = "DISABLED";
    FD1P3AX alu_b_i0_i7 (.D(B[7]), .SP(clk_pll_enable_47), .CK(clk_pll), 
            .Q(alu_b[7]));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(75[11] 310[5])
    defparam alu_b_i0_i7.GSR = "DISABLED";
    FD1P3AX alu_b_i0_i8 (.D(B[8]), .SP(clk_pll_enable_47), .CK(clk_pll), 
            .Q(alu_b[8]));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(75[11] 310[5])
    defparam alu_b_i0_i8.GSR = "DISABLED";
    FD1P3AX alu_b_i0_i9 (.D(B[9]), .SP(clk_pll_enable_47), .CK(clk_pll), 
            .Q(alu_b[9]));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(75[11] 310[5])
    defparam alu_b_i0_i9.GSR = "DISABLED";
    FD1P3AX alu_b_i0_i10 (.D(B[10]), .SP(clk_pll_enable_47), .CK(clk_pll), 
            .Q(alu_b[10]));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(75[11] 310[5])
    defparam alu_b_i0_i10.GSR = "DISABLED";
    FD1P3AX alu_b_i0_i11 (.D(B[11]), .SP(clk_pll_enable_47), .CK(clk_pll), 
            .Q(alu_b[11]));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(75[11] 310[5])
    defparam alu_b_i0_i11.GSR = "DISABLED";
    FD1P3AX ram_in_i0_i1 (.D(n2395), .SP(clk_pll_enable_58), .CK(clk_pll), 
            .Q(ram_in[1]));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(75[11] 310[5])
    defparam ram_in_i0_i1.GSR = "DISABLED";
    FD1P3AX ram_in_i0_i2 (.D(n2394), .SP(clk_pll_enable_58), .CK(clk_pll), 
            .Q(ram_in[2]));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(75[11] 310[5])
    defparam ram_in_i0_i2.GSR = "DISABLED";
    FD1P3AX ram_in_i0_i3 (.D(n2393), .SP(clk_pll_enable_58), .CK(clk_pll), 
            .Q(ram_in[3]));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(75[11] 310[5])
    defparam ram_in_i0_i3.GSR = "DISABLED";
    FD1P3AX ram_in_i0_i4 (.D(n2392), .SP(clk_pll_enable_58), .CK(clk_pll), 
            .Q(ram_in[4]));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(75[11] 310[5])
    defparam ram_in_i0_i4.GSR = "DISABLED";
    FD1P3AX ram_in_i0_i5 (.D(n2391), .SP(clk_pll_enable_58), .CK(clk_pll), 
            .Q(ram_in[5]));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(75[11] 310[5])
    defparam ram_in_i0_i5.GSR = "DISABLED";
    FD1P3AX ram_in_i0_i6 (.D(n2390), .SP(clk_pll_enable_58), .CK(clk_pll), 
            .Q(ram_in[6]));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(75[11] 310[5])
    defparam ram_in_i0_i6.GSR = "DISABLED";
    FD1P3AX ram_in_i0_i7 (.D(n2389), .SP(clk_pll_enable_58), .CK(clk_pll), 
            .Q(ram_in[7]));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(75[11] 310[5])
    defparam ram_in_i0_i7.GSR = "DISABLED";
    FD1P3AX ram_in_i0_i8 (.D(n2388), .SP(clk_pll_enable_58), .CK(clk_pll), 
            .Q(ram_in[8]));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(75[11] 310[5])
    defparam ram_in_i0_i8.GSR = "DISABLED";
    FD1P3AX ram_in_i0_i9 (.D(n2387), .SP(clk_pll_enable_58), .CK(clk_pll), 
            .Q(ram_in[9]));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(75[11] 310[5])
    defparam ram_in_i0_i9.GSR = "DISABLED";
    FD1P3AX ram_in_i0_i10 (.D(n2386), .SP(clk_pll_enable_58), .CK(clk_pll), 
            .Q(ram_in[10]));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(75[11] 310[5])
    defparam ram_in_i0_i10.GSR = "DISABLED";
    FD1P3AX ram_in_i0_i11 (.D(n2385), .SP(clk_pll_enable_58), .CK(clk_pll), 
            .Q(ram_in[11]));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(75[11] 310[5])
    defparam ram_in_i0_i11.GSR = "DISABLED";
    FD1P3AX P_i0_i2 (.D(A[1]), .SP(clk_pll_enable_69), .CK(clk_pll), .Q(P_c_1));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(75[11] 310[5])
    defparam P_i0_i2.GSR = "DISABLED";
    FD1P3AX P_i0_i3 (.D(A[2]), .SP(clk_pll_enable_69), .CK(clk_pll), .Q(P_c_2));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(75[11] 310[5])
    defparam P_i0_i3.GSR = "DISABLED";
    FD1P3AX P_i0_i4 (.D(A[3]), .SP(clk_pll_enable_69), .CK(clk_pll), .Q(P_c_3));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(75[11] 310[5])
    defparam P_i0_i4.GSR = "DISABLED";
    FD1P3AX P_i0_i5 (.D(A[4]), .SP(clk_pll_enable_69), .CK(clk_pll), .Q(P_c_4));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(75[11] 310[5])
    defparam P_i0_i5.GSR = "DISABLED";
    FD1P3AX P_i0_i6 (.D(A[5]), .SP(clk_pll_enable_69), .CK(clk_pll), .Q(P_c_5));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(75[11] 310[5])
    defparam P_i0_i6.GSR = "DISABLED";
    FD1P3AX P_i0_i7 (.D(A[6]), .SP(clk_pll_enable_69), .CK(clk_pll), .Q(P_c_6));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(75[11] 310[5])
    defparam P_i0_i7.GSR = "DISABLED";
    FD1P3AX P_i0_i8 (.D(A[7]), .SP(clk_pll_enable_69), .CK(clk_pll), .Q(P_c_7));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(75[11] 310[5])
    defparam P_i0_i8.GSR = "DISABLED";
    FD1P3AX P_i0_i9 (.D(A[8]), .SP(clk_pll_enable_69), .CK(clk_pll), .Q(P_c_8));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(75[11] 310[5])
    defparam P_i0_i9.GSR = "DISABLED";
    FD1P3AX P_i0_i10 (.D(A[9]), .SP(clk_pll_enable_69), .CK(clk_pll), 
            .Q(P_c_9));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(75[11] 310[5])
    defparam P_i0_i10.GSR = "DISABLED";
    FD1P3AX P_i0_i11 (.D(A[10]), .SP(clk_pll_enable_69), .CK(clk_pll), 
            .Q(P_c_10));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(75[11] 310[5])
    defparam P_i0_i11.GSR = "DISABLED";
    FD1P3AX P_i0_i12 (.D(A[11]), .SP(clk_pll_enable_69), .CK(clk_pll), 
            .Q(P_c_11));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(75[11] 310[5])
    defparam P_i0_i12.GSR = "DISABLED";
    FD1P3AY PC_i0_i1 (.D(n7559), .SP(clk_pll_enable_76), .CK(clk_pll), 
            .Q(PC[1]));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(75[11] 310[5])
    defparam PC_i0_i1.GSR = "ENABLED";
    FD1P3AX PC_i0_i2 (.D(n7590), .SP(clk_pll_enable_76), .CK(clk_pll), 
            .Q(PC[2]));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(75[11] 310[5])
    defparam PC_i0_i2.GSR = "ENABLED";
    FD1P3AX PC_i0_i3 (.D(n7307), .SP(clk_pll_enable_76), .CK(clk_pll), 
            .Q(PC[3]));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(75[11] 310[5])
    defparam PC_i0_i3.GSR = "ENABLED";
    FD1P3AX PC_i0_i4 (.D(n7367), .SP(clk_pll_enable_76), .CK(clk_pll), 
            .Q(PC[4]));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(75[11] 310[5])
    defparam PC_i0_i4.GSR = "ENABLED";
    FD1P3AX PC_i0_i5 (.D(n3525), .SP(clk_pll_enable_76), .CK(clk_pll), 
            .Q(PC[5]));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(75[11] 310[5])
    defparam PC_i0_i5.GSR = "ENABLED";
    FD1P3AX PC_i0_i6 (.D(n3527), .SP(clk_pll_enable_76), .CK(clk_pll), 
            .Q(PC[6]));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(75[11] 310[5])
    defparam PC_i0_i6.GSR = "ENABLED";
    FD1P3AX PC_i0_i7 (.D(n3529), .SP(clk_pll_enable_76), .CK(clk_pll), 
            .Q(PC[7]));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(75[11] 310[5])
    defparam PC_i0_i7.GSR = "ENABLED";
    FD1P3AX PC_i0_i8 (.D(n3531), .SP(clk_pll_enable_78), .CK(clk_pll), 
            .Q(PC[8]));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(75[11] 310[5])
    defparam PC_i0_i8.GSR = "ENABLED";
    FD1P3AX PC_i0_i9 (.D(n3533), .SP(clk_pll_enable_78), .CK(clk_pll), 
            .Q(PC[9]));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(75[11] 310[5])
    defparam PC_i0_i9.GSR = "ENABLED";
    FD1P3AX alu_type_i0_i2 (.D(n7432), .SP(clk_pll_enable_79), .CK(clk_pll), 
            .Q(alu_type[2]));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(75[11] 310[5])
    defparam alu_type_i0_i2.GSR = "DISABLED";
    FD1S3AX statu_FSM_i2 (.D(n2912), .CK(clk_pll), .Q(n1151));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(76[3] 309[11])
    defparam statu_FSM_i2.GSR = "ENABLED";
    FD1S3AX statu_FSM_i4 (.D(n1161), .CK(clk_pll), .Q(n1149));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(76[3] 309[11])
    defparam statu_FSM_i4.GSR = "ENABLED";
    FD1S3AX statu_FSM_i5 (.D(n1149), .CK(clk_pll), .Q(n1148));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(76[3] 309[11])
    defparam statu_FSM_i5.GSR = "ENABLED";
    FD1S3AX statu_FSM_i6 (.D(n1148), .CK(clk_pll), .Q(n1147));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(76[3] 309[11])
    defparam statu_FSM_i6.GSR = "ENABLED";
    FD1P3AX prog__0__i2 (.D(ram_out[1]), .SP(clk_pll_enable_118), .CK(clk_pll), 
            .Q(prog[1]));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(75[11] 310[5])
    defparam prog__0__i2.GSR = "DISABLED";
    FD1P3AX prog__0__i3 (.D(ram_out[2]), .SP(clk_pll_enable_118), .CK(clk_pll), 
            .Q(prog[2]));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(75[11] 310[5])
    defparam prog__0__i3.GSR = "DISABLED";
    FD1P3AX prog__0__i4 (.D(ram_out[3]), .SP(clk_pll_enable_118), .CK(clk_pll), 
            .Q(prog[3]));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(75[11] 310[5])
    defparam prog__0__i4.GSR = "DISABLED";
    FD1P3AX prog__0__i5 (.D(ram_out[4]), .SP(clk_pll_enable_118), .CK(clk_pll), 
            .Q(prog[4]));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(75[11] 310[5])
    defparam prog__0__i5.GSR = "DISABLED";
    FD1P3AX A_i0_i1 (.D(A_11__N_183[1]), .SP(clk_pll_enable_97), .CK(clk_pll), 
            .Q(A[1]));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(75[11] 310[5])
    defparam A_i0_i1.GSR = "DISABLED";
    LUT4 n6_bdd_4_lut_4_lut_else_4_lut (.A(prog[4]), .B(prog[0]), .C(prog[3]), 
         .D(prog[1]), .Z(n7522)) /* synthesis lut_function=(!(A (B (C+(D))+!B (C+!(D)))+!A !(C (D)))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(100[5] 240[13])
    defparam n6_bdd_4_lut_4_lut_else_4_lut.init = 16'h5208;
    LUT4 i2020_4_lut (.A(n4039), .B(n7478), .C(n3797), .D(prog[4]), 
         .Z(clk_pll_enable_36)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(75[11] 310[5])
    defparam i2020_4_lut.init = 16'hc088;
    LUT4 n2312_bdd_4_lut_5447 (.A(n2312), .B(n2311), .C(n530), .D(PC_temp[0]), 
         .Z(n7644)) /* synthesis lut_function=(A (B (C+(D))+!B (D))+!A (B (C))) */ ;
    defparam n2312_bdd_4_lut_5447.init = 16'heac0;
    LUT4 mux_599_i11_3_lut (.A(B[10]), .B(A[10]), .C(n2383), .Z(n2386)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(76[3] 309[11])
    defparam mux_599_i11_3_lut.init = 16'hcaca;
    LUT4 n18_bdd_3_lut_adj_11 (.A(n18), .B(n7647), .C(n6922), .Z(n7648)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n18_bdd_3_lut_adj_11.init = 16'hcaca;
    LUT4 ram_out_10__bdd_4_lut (.A(ram_out[10]), .B(n2108), .C(n1419), 
         .D(n1147), .Z(B_11__N_195[10])) /* synthesis lut_function=(A (B (C+(D))+!B !((D)+!C))+!A !((D)+!C)) */ ;
    defparam ram_out_10__bdd_4_lut.init = 16'h88f0;
    VLO i1 (.Z(GND_net));
    LUT4 i4959_4_lut_4_lut (.A(prog[0]), .B(prog[1]), .C(ram_out[8]), 
         .D(n323), .Z(n6994)) /* synthesis lut_function=(A (B (C))+!A (B (C)+!B (D))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(100[5] 240[13])
    defparam i4959_4_lut_4_lut.init = 16'hd1c0;
    LUT4 mux_599_i12_3_lut (.A(B[11]), .B(A[11]), .C(n2383), .Z(n2385)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(76[3] 309[11])
    defparam mux_599_i12_3_lut.init = 16'hcaca;
    LUT4 i3524_2_lut (.A(ram_out[0]), .B(n7465), .Z(n2076)) /* synthesis lut_function=(A (B)) */ ;
    defparam i3524_2_lut.init = 16'h8888;
    LUT4 i3376_4_lut (.A(PC[4]), .B(n5335), .C(n3022), .D(PC_9__N_145[4]), 
         .Z(n3027)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;
    defparam i3376_4_lut.init = 16'hca0a;
    LUT4 i3399_4_lut (.A(PC[5]), .B(n5335), .C(n3022), .D(PC_9__N_145[5]), 
         .Z(n3028)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;
    defparam i3399_4_lut.init = 16'hca0a;
    PFUMX i4960 (.BLUT(n6993), .ALUT(n6994), .C0(prog[2]), .Z(n6995));
    LUT4 i4953_4_lut_4_lut (.A(prog[0]), .B(prog[1]), .C(ram_out[9]), 
         .D(n322), .Z(n6988)) /* synthesis lut_function=(A (B (C))+!A (B (C)+!B (D))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(100[5] 240[13])
    defparam i4953_4_lut_4_lut.init = 16'hd1c0;
    LUT4 i2_4_lut_adj_12 (.A(n6846), .B(n31), .C(n1_adj_424), .D(PC_9__N_145[3]), 
         .Z(n6_adj_435)) /* synthesis lut_function=(A (B (D))+!A (B (C+(D))+!B (C))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(287[5] 305[12])
    defparam i2_4_lut_adj_12.init = 16'hdc50;
    LUT4 i1143_1_lut_rep_60 (.A(n1149), .Z(n7481)) /* synthesis lut_function=(!(A)) */ ;
    defparam i1143_1_lut_rep_60.init = 16'h5555;
    LUT4 i3347_3_lut (.A(PC[3]), .B(alu_c[3]), .C(n7822), .Z(n1_adj_424)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(28[20:24])
    defparam i3347_3_lut.init = 16'hcaca;
    LUT4 i1478_3_lut (.A(n15_adj_394), .B(n3526), .C(n6918), .Z(n3527)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(76[3] 309[11])
    defparam i1478_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut_adj_13 (.A(n2312), .B(PC_temp[3]), .Z(n26)) /* synthesis lut_function=(A (B)) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(287[5] 305[12])
    defparam i1_2_lut_adj_13.init = 16'h8888;
    LUT4 i26_4_lut (.A(PC[6]), .B(PC_9__N_145[6]), .C(n3022), .D(n5335), 
         .Z(n6634)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;
    defparam i26_4_lut.init = 16'hca0a;
    LUT4 i3348_3_lut (.A(PC_9__N_145[3]), .B(ram_out[3]), .C(alu_co), 
         .Z(n527)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(38[6:12])
    defparam i3348_3_lut.init = 16'hcaca;
    LUT4 mux_39_Mux_6_i18_4_lut_4_lut (.A(n1149), .B(PC_9__N_145[6]), .C(n1151), 
         .D(B[6]), .Z(n18_adj_396)) /* synthesis lut_function=(A (D)+!A (B (C))) */ ;
    defparam mux_39_Mux_6_i18_4_lut_4_lut.init = 16'hea40;
    LUT4 i3440_4_lut (.A(PC_9__N_135[6]), .B(n5_adj_443), .C(n1147), .D(n6_adj_442), 
         .Z(n3526)) /* synthesis lut_function=(A (B+((D)+!C))+!A (B (C)+!B (C (D)))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(76[3] 309[11])
    defparam i3440_4_lut.init = 16'hfaca;
    PFUMX i4966 (.BLUT(n6999), .ALUT(n7000), .C0(prog[2]), .Z(n7001));
    CCU2D add_174_5 (.A0(SP[3]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(SP[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n6322), 
          .COUT(n6323), .S0(n288), .S1(n287));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(191[13:19])
    defparam add_174_5.INIT0 = 16'h5aaa;
    defparam add_174_5.INIT1 = 16'h5aaa;
    defparam add_174_5.INJECT1_0 = "NO";
    defparam add_174_5.INJECT1_1 = "NO";
    LUT4 i2_4_lut_adj_14 (.A(n6846), .B(n31), .C(n1_adj_419), .D(PC_9__N_145[4]), 
         .Z(n6_adj_436)) /* synthesis lut_function=(A (B (D))+!A (B (C+(D))+!B (C))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(287[5] 305[12])
    defparam i2_4_lut_adj_14.init = 16'hdc50;
    LUT4 i3379_3_lut (.A(PC[4]), .B(alu_c[4]), .C(n7822), .Z(n1_adj_419)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(28[20:24])
    defparam i3379_3_lut.init = 16'hcaca;
    LUT4 i1_4_lut_adj_15 (.A(n2311), .B(n2312), .C(n524), .D(PC_temp[6]), 
         .Z(n5_adj_443)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(287[5] 305[12])
    defparam i1_4_lut_adj_15.init = 16'heca0;
    CCU2D add_174_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(SP[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .COUT(n6321), 
          .S1(n291));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(191[13:19])
    defparam add_174_1.INIT0 = 16'hF000;
    defparam add_174_1.INIT1 = 16'h5555;
    defparam add_174_1.INJECT1_0 = "NO";
    defparam add_174_1.INJECT1_1 = "NO";
    LUT4 ram_out_0__bdd_4_lut (.A(ram_out[0]), .B(n2108), .C(n1429), .D(n1147), 
         .Z(B_11__N_195[0])) /* synthesis lut_function=(A (B (C+(D))+!B !((D)+!C))+!A !((D)+!C)) */ ;
    defparam ram_out_0__bdd_4_lut.init = 16'h88f0;
    PFUMX i3309 (.BLUT(n6_adj_426), .ALUT(n7_adj_427), .C0(n1147), .Z(A_11__N_183[2]));
    PFUMX i3341 (.BLUT(n6_adj_421), .ALUT(n7_adj_422), .C0(n1147), .Z(A_11__N_183[3]));
    LUT4 i1_2_lut_adj_16 (.A(n2312), .B(PC_temp[4]), .Z(n26_adj_372)) /* synthesis lut_function=(A (B)) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(287[5] 305[12])
    defparam i1_2_lut_adj_16.init = 16'h8888;
    LUT4 equal_81_i6_2_lut_rep_65 (.A(prog[0]), .B(prog[1]), .Z(n7814)) /* synthesis lut_function=(A+!(B)) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(292[5:13])
    defparam equal_81_i6_2_lut_rep_65.init = 16'hbbbb;
    LUT4 i2_3_lut_4_lut_4_lut (.A(n1149), .B(n7473), .C(n7483), .D(n7820), 
         .Z(n11)) /* synthesis lut_function=((B+(C+!(D)))+!A) */ ;
    defparam i2_3_lut_4_lut_4_lut.init = 16'hfdff;
    PFUMX i3373 (.BLUT(n6_adj_417), .ALUT(n7_adj_418), .C0(n1147), .Z(A_11__N_183[4]));
    PFUMX i3401 (.BLUT(n6_adj_412), .ALUT(n2071), .C0(n1147), .Z(A_11__N_183[5]));
    LUT4 i3380_3_lut (.A(PC_9__N_145[4]), .B(ram_out[4]), .C(alu_co), 
         .Z(n526)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(38[6:12])
    defparam i3380_3_lut.init = 16'hcaca;
    LUT4 i4971_4_lut_4_lut (.A(prog[0]), .B(prog[1]), .C(ram_out[4]), 
         .D(n327), .Z(n7006)) /* synthesis lut_function=(A (B (C))+!A (B (C)+!B (D))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(100[5] 240[13])
    defparam i4971_4_lut_4_lut.init = 16'hd1c0;
    LUT4 i1_4_lut_adj_17 (.A(rst_c), .B(n3370), .C(n7465), .D(n1147), 
         .Z(clk_pll_enable_97)) /* synthesis lut_function=(A (B (C+!(D))+!B (C (D)))) */ ;
    defparam i1_4_lut_adj_17.init = 16'ha088;
    LUT4 mux_39_Mux_6_i13_4_lut_4_lut (.A(prog[0]), .B(prog[1]), .C(ram_out[6]), 
         .D(n325), .Z(n13)) /* synthesis lut_function=(A (B (C))+!A (B (C)+!B (D))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(100[5] 240[13])
    defparam mux_39_Mux_6_i13_4_lut_4_lut.init = 16'hd1c0;
    PFUMX i3431 (.BLUT(n3), .ALUT(n4_adj_380), .C0(n1147), .Z(A_11__N_183[6]));
    LUT4 ram_out_1__bdd_4_lut (.A(ram_out[1]), .B(n2108), .C(n1428), .D(n1147), 
         .Z(B_11__N_195[1])) /* synthesis lut_function=(A (B (C+(D))+!B !((D)+!C))+!A !((D)+!C)) */ ;
    defparam ram_out_1__bdd_4_lut.init = 16'h88f0;
    L6MUX21 mux_39_Mux_6_i15 (.D0(n10_adj_392), .D1(n14_adj_393), .SD(n6925), 
            .Z(n15_adj_394));
    PFUMX i3481 (.BLUT(n9_adj_376), .ALUT(n10), .C0(n1147), .Z(A_11__N_183[8]));
    PFUMX mux_241_i12 (.BLUT(n1444), .ALUT(n2065), .C0(n1147), .Z(A_11__N_183[11]));
    LUT4 i2_4_lut_adj_18 (.A(n2311), .B(n6846), .C(n525), .D(n1_adj_414), 
         .Z(n6_adj_432)) /* synthesis lut_function=(A (B (C)+!B (C+(D)))+!A !(B+!(D))) */ ;
    defparam i2_4_lut_adj_18.init = 16'hb3a0;
    LUT4 i4980_4_lut_4_lut (.A(prog[0]), .B(prog[1]), .C(ram_out[1]), 
         .D(n330), .Z(n7015)) /* synthesis lut_function=(A (B (C))+!A (B (C)+!B (D))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(100[5] 240[13])
    defparam i4980_4_lut_4_lut.init = 16'hd1c0;
    PFUMX mux_241_i11 (.BLUT(n1445), .ALUT(n2066), .C0(n1147), .Z(A_11__N_183[10]));
    LUT4 i4977_4_lut_4_lut (.A(prog[0]), .B(prog[1]), .C(ram_out[2]), 
         .D(n329), .Z(n7012)) /* synthesis lut_function=(A (B (C))+!A (B (C)+!B (D))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(100[5] 240[13])
    defparam i4977_4_lut_4_lut.init = 16'hd1c0;
    LUT4 i3412_3_lut (.A(PC_9__N_145[5]), .B(ram_out[5]), .C(alu_co), 
         .Z(n525)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(38[6:12])
    defparam i3412_3_lut.init = 16'hcaca;
    LUT4 i3404_3_lut (.A(PC[5]), .B(alu_c[5]), .C(n7822), .Z(n1_adj_414)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(28[20:24])
    defparam i3404_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut_adj_19 (.A(n31), .B(PC_9__N_145[5]), .Z(n10_adj_415)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_adj_19.init = 16'h8888;
    CCU2D sub_176_add_2_3 (.A0(SP[1]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(SP[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n6333), 
          .COUT(n6334), .S0(n330), .S1(n329));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(196[13:19])
    defparam sub_176_add_2_3.INIT0 = 16'h5555;
    defparam sub_176_add_2_3.INIT1 = 16'h5555;
    defparam sub_176_add_2_3.INJECT1_0 = "NO";
    defparam sub_176_add_2_3.INJECT1_1 = "NO";
    PFUMX mux_241_i10 (.BLUT(n1446), .ALUT(n2067), .C0(n1147), .Z(A_11__N_183[9]));
    LUT4 i2_4_lut_adj_20 (.A(n28_adj_375), .B(PC_9__N_145[7]), .C(n6846), 
         .D(n31), .Z(n6_adj_430)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (D))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(287[5] 305[12])
    defparam i2_4_lut_adj_20.init = 16'hce0a;
    PFUMX mux_241_i8 (.BLUT(n1448), .ALUT(n2069), .C0(n1147), .Z(A_11__N_183[7]));
    LUT4 mux_1000_i8_4_lut (.A(PC[7]), .B(PC_9__N_145[7]), .C(n3022), 
         .D(n5335), .Z(n3030)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(76[3] 309[11])
    defparam mux_1000_i8_4_lut.init = 16'hca0a;
    PFUMX mux_241_i2 (.BLUT(n1454), .ALUT(n2075), .C0(n1147), .Z(A_11__N_183[1]));
    LUT4 i5105_4_lut_rep_44_else_4_lut_4_lut (.A(prog[0]), .B(prog[1]), 
         .C(prog[2]), .D(prog[3]), .Z(n7486)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(292[5:13])
    defparam i5105_4_lut_rep_44_else_4_lut_4_lut.init = 16'h4000;
    LUT4 i3487_4_lut (.A(PC[8]), .B(n5335), .C(n3022), .D(PC_9__N_145[8]), 
         .Z(n3031)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;
    defparam i3487_4_lut.init = 16'hca0a;
    PFUMX mux_241_i1 (.BLUT(n1455), .ALUT(n2076), .C0(n1147), .Z(A_11__N_183[0]));
    LUT4 i5111_4_lut_4_lut (.A(n7465), .B(n4304), .C(n7265), .D(n9), 
         .Z(n2312)) /* synthesis lut_function=(A+!(B (C (D)))) */ ;
    defparam i5111_4_lut_4_lut.init = 16'hbfff;
    LUT4 i1_2_lut_adj_21 (.A(alu_c[0]), .B(n3370), .Z(n1455)) /* synthesis lut_function=(A (B)) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(292[5:13])
    defparam i1_2_lut_adj_21.init = 16'h8888;
    LUT4 i3566_2_lut (.A(ram_out[1]), .B(n7465), .Z(n2075)) /* synthesis lut_function=(A (B)) */ ;
    defparam i3566_2_lut.init = 16'h8888;
    PFUMX i4969 (.BLUT(n7002), .ALUT(n7003), .C0(n7820), .Z(n7004));
    LUT4 mux_1000_i10_4_lut (.A(PC[9]), .B(PC_9__N_145[9]), .C(n3022), 
         .D(n5335), .Z(n3032)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(76[3] 309[11])
    defparam mux_1000_i10_4_lut.init = 16'hca0a;
    LUT4 i1_4_lut_adj_22 (.A(n7478), .B(n7207), .C(prog[4]), .D(n6879), 
         .Z(clk_pll_enable_86)) /* synthesis lut_function=(A (B+!(C+(D)))) */ ;
    defparam i1_4_lut_adj_22.init = 16'h888a;
    LUT4 mux_594_i2_3_lut (.A(A[1]), .B(n2411), .C(n11), .Z(n2378)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(76[3] 309[11])
    defparam mux_594_i2_3_lut.init = 16'hcaca;
    LUT4 n15_bdd_4_lut (.A(n15_adj_406), .B(PC_9__N_145[2]), .C(n1149), 
         .D(n1151), .Z(n7588)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A !((C+!(D))+!B)) */ ;
    defparam n15_bdd_4_lut.init = 16'haca0;
    LUT4 mux_603_i2_3_lut (.A(n290), .B(n330), .C(n2399), .Z(n2411)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(76[3] 309[11])
    defparam mux_603_i2_3_lut.init = 16'hcaca;
    LUT4 i5129_3_lut (.A(n1147), .B(n1149), .C(prog[4]), .Z(n6918)) /* synthesis lut_function=(A+((C)+!B)) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(76[3] 309[11])
    defparam i5129_3_lut.init = 16'hfbfb;
    LUT4 i2_4_lut_adj_23 (.A(n6846), .B(PC_9__N_145[6]), .C(n1), .D(n31), 
         .Z(n6_adj_442)) /* synthesis lut_function=(A (B (D))+!A (B (C+(D))+!B (C))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(287[5] 305[12])
    defparam i2_4_lut_adj_23.init = 16'hdc50;
    LUT4 i1_4_lut_adj_24 (.A(n1148), .B(prog[1]), .C(n7500), .D(n7245), 
         .Z(n3370)) /* synthesis lut_function=(A (B (C)+!B (C+(D)))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(292[5:13])
    defparam i1_4_lut_adj_24.init = 16'ha2a0;
    LUT4 n7204_bdd_3_lut_then_4_lut (.A(prog[4]), .B(prog[3]), .C(prog[1]), 
         .D(prog[2]), .Z(n7490)) /* synthesis lut_function=(!(A (B (C+(D))+!B !(D))+!A (B+!(C+(D))))) */ ;
    defparam n7204_bdd_3_lut_then_4_lut.init = 16'h3318;
    LUT4 mux_594_i3_3_lut (.A(A[2]), .B(n2410), .C(n11), .Z(n2377)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(76[3] 309[11])
    defparam mux_594_i3_3_lut.init = 16'hcaca;
    FD1P3AX prog__0__i1_rep_68 (.D(ram_out[0]), .SP(clk_pll_enable_118), 
            .CK(clk_pll), .Q(n7822));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(75[11] 310[5])
    defparam prog__0__i1_rep_68.GSR = "DISABLED";
    LUT4 i3443_3_lut (.A(PC[6]), .B(alu_c[6]), .C(n7822), .Z(n1)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(28[20:24])
    defparam i3443_3_lut.init = 16'hcaca;
    LUT4 mux_603_i3_3_lut (.A(n289), .B(n329), .C(n2399), .Z(n2410)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(76[3] 309[11])
    defparam mux_603_i3_3_lut.init = 16'hcaca;
    LUT4 i3656_2_lut_4_lut (.A(n1148), .B(prog[2]), .C(n17_adj_437), .D(alu_c[1]), 
         .Z(n1428)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(76[3] 309[11])
    defparam i3656_2_lut_4_lut.init = 16'h8000;
    LUT4 mux_594_i4_3_lut (.A(A[3]), .B(n2409), .C(n11), .Z(n2376)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(76[3] 309[11])
    defparam mux_594_i4_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut_adj_25 (.A(prog[3]), .B(prog[1]), .Z(n6829)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i1_2_lut_adj_25.init = 16'h2222;
    LUT4 n4045_bdd_4_lut_5203 (.A(n7476), .B(prog[2]), .C(prog[4]), .D(prog[3]), 
         .Z(n7207)) /* synthesis lut_function=(!(A ((D)+!B)+!A (B (D)+!B !(C (D))))) */ ;
    defparam n4045_bdd_4_lut_5203.init = 16'h10cc;
    LUT4 i3649_2_lut (.A(alu_c[1]), .B(n3370), .Z(n1454)) /* synthesis lut_function=(A (B)) */ ;
    defparam i3649_2_lut.init = 16'h8888;
    LUT4 mux_603_i4_3_lut (.A(n288), .B(n328), .C(n2399), .Z(n2409)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(76[3] 309[11])
    defparam mux_603_i4_3_lut.init = 16'hcaca;
    LUT4 i3614_2_lut_rep_62 (.A(n7822), .B(prog[1]), .Z(n7483)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i3614_2_lut_rep_62.init = 16'heeee;
    LUT4 i44_2_lut_3_lut_4_lut (.A(n7822), .B(prog[1]), .C(prog[3]), .D(n7820), 
         .Z(n20)) /* synthesis lut_function=(!(A (C)+!A (B (C)+!B (C (D)+!C !(D))))) */ ;
    defparam i44_2_lut_3_lut_4_lut.init = 16'h0f1e;
    LUT4 i5142_4_lut (.A(n7471), .B(n6800), .C(n6), .D(n1149), .Z(clk_pll_enable_76)) /* synthesis lut_function=(!(A (B)+!A (B+!(C+!(D))))) */ ;
    defparam i5142_4_lut.init = 16'h3233;
    LUT4 i1_2_lut_4_lut (.A(n1148), .B(prog[2]), .C(n17_adj_437), .D(alu_c[0]), 
         .Z(n1429)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(76[3] 309[11])
    defparam i1_2_lut_4_lut.init = 16'h8000;
    LUT4 i3568_2_lut (.A(ram_out[7]), .B(n7465), .Z(n2069)) /* synthesis lut_function=(A (B)) */ ;
    defparam i3568_2_lut.init = 16'h8888;
    LUT4 i2_2_lut (.A(n1147), .B(prog[4]), .Z(n6)) /* synthesis lut_function=(A+!(B)) */ ;
    defparam i2_2_lut.init = 16'hbbbb;
    LUT4 i1_3_lut_rep_45 (.A(n1148), .B(prog[2]), .C(n17_adj_437), .Z(n7466)) /* synthesis lut_function=(A (B (C))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(76[3] 309[11])
    defparam i1_3_lut_rep_45.init = 16'h8080;
    LUT4 i3447_3_lut (.A(PC_9__N_145[6]), .B(ram_out[6]), .C(alu_co), 
         .Z(n524)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(38[6:12])
    defparam i3447_3_lut.init = 16'hcaca;
    LUT4 i3664_2_lut_2_lut_3_lut (.A(prog[0]), .B(prog[1]), .C(prog[3]), 
         .Z(n30_adj_370)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i3664_2_lut_2_lut_3_lut.init = 16'h1010;
    LUT4 prog_2__bdd_4_lut_5189 (.A(prog[2]), .B(prog[0]), .C(prog[1]), 
         .D(prog[4]), .Z(n7238)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (D))+!A (B (D)+!B ((D)+!C)))) */ ;
    defparam prog_2__bdd_4_lut_5189.init = 16'h00f6;
    LUT4 n7204_bdd_3_lut_else_4_lut (.A(prog[4]), .B(prog[3]), .C(prog[1]), 
         .D(prog[2]), .Z(n7489)) /* synthesis lut_function=(!(A (B (D)+!B !(C (D)))+!A (B (C+(D))+!B (C (D)+!C !(D))))) */ ;
    defparam n7204_bdd_3_lut_else_4_lut.init = 16'h219c;
    LUT4 i1_2_lut_4_lut_adj_26 (.A(n1148), .B(prog[2]), .C(n17_adj_437), 
         .D(alu_c[6]), .Z(n5)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(76[3] 309[11])
    defparam i1_2_lut_4_lut_adj_26.init = 16'h8000;
    LUT4 i5115_2_lut (.A(prog[3]), .B(prog[2]), .Z(n6925)) /* synthesis lut_function=((B)+!A) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(100[5] 240[13])
    defparam i5115_2_lut.init = 16'hdddd;
    LUT4 i3648_2_lut (.A(alu_c[7]), .B(n3370), .Z(n1448)) /* synthesis lut_function=(A (B)) */ ;
    defparam i3648_2_lut.init = 16'h8888;
    LUT4 prog_3__bdd_4_lut_5394 (.A(prog[4]), .B(prog[1]), .C(prog[0]), 
         .D(prog[2]), .Z(n7431)) /* synthesis lut_function=(!(A+!(B (C+!(D))+!B !(C+!(D))))) */ ;
    defparam prog_3__bdd_4_lut_5394.init = 16'h4144;
    LUT4 i1_4_lut_adj_27 (.A(rst_c), .B(n1154), .C(n7240), .D(n1149), 
         .Z(clk_pll_enable_106)) /* synthesis lut_function=(A (B (C+!(D))+!B (C (D)))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(5[9:12])
    defparam i1_4_lut_adj_27.init = 16'ha088;
    LUT4 mux_594_i5_3_lut (.A(A[4]), .B(n2408), .C(n11), .Z(n2375)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(76[3] 309[11])
    defparam mux_594_i5_3_lut.init = 16'hcaca;
    LUT4 i4847_2_lut_3_lut_4_lut (.A(prog[0]), .B(prog[1]), .C(prog[3]), 
         .D(prog[2]), .Z(n6879)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (C (D)))) */ ;
    defparam i4847_2_lut_3_lut_4_lut.init = 16'hf0e0;
    LUT4 i1_4_lut_adj_28 (.A(n7469), .B(n2916), .C(n4039), .D(prog[4]), 
         .Z(n4_adj_431)) /* synthesis lut_function=(A (B)+!A (B+!((D)+!C))) */ ;
    defparam i1_4_lut_adj_28.init = 16'hccdc;
    LUT4 mux_603_i5_3_lut (.A(n287), .B(n327), .C(n2399), .Z(n2408)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(76[3] 309[11])
    defparam mux_603_i5_3_lut.init = 16'hcaca;
    CCU2D add_29_7 (.A0(PC[5]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(PC[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n6318), 
          .COUT(n6319), .S0(PC_9__N_145[5]), .S1(PC_9__N_145[6]));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(194[18:27])
    defparam add_29_7.INIT0 = 16'h5aaa;
    defparam add_29_7.INIT1 = 16'h5aaa;
    defparam add_29_7.INJECT1_0 = "NO";
    defparam add_29_7.INJECT1_1 = "NO";
    LUT4 i4845_2_lut_3_lut_4_lut (.A(prog[0]), .B(prog[1]), .C(rst_c), 
         .D(n1149), .Z(n6877)) /* synthesis lut_function=(A (C (D))+!A (B (C (D)))) */ ;
    defparam i4845_2_lut_3_lut_4_lut.init = 16'he000;
    LUT4 i5138_2_lut_rep_47_3_lut (.A(n7822), .B(prog[1]), .C(prog[2]), 
         .Z(n7468)) /* synthesis lut_function=(!(A+(B+(C)))) */ ;
    defparam i5138_2_lut_rep_47_3_lut.init = 16'h0101;
    LUT4 i1990_2_lut_3_lut_4_lut (.A(prog[0]), .B(prog[1]), .C(prog[3]), 
         .D(prog[2]), .Z(n4039)) /* synthesis lut_function=(!(A (C)+!A (B (C)+!B (C+!(D))))) */ ;
    defparam i1990_2_lut_3_lut_4_lut.init = 16'h0f0e;
    LUT4 mux_594_i6_3_lut (.A(A[5]), .B(n2407), .C(n11), .Z(n2374)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(76[3] 309[11])
    defparam mux_594_i6_3_lut.init = 16'hcaca;
    PFUMX i4975 (.BLUT(n7008), .ALUT(n7009), .C0(n7820), .Z(n7010));
    FD1P3AX alu_type_i0_i1 (.D(n7813), .SP(clk_pll_enable_86), .CK(clk_pll), 
            .Q(alu_type[1]));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(75[11] 310[5])
    defparam alu_type_i0_i1.GSR = "DISABLED";
    PFUMX mux_39_Mux_6_i31 (.BLUT(n17_adj_395), .ALUT(n18_adj_396), .C0(n6931), 
          .Z(PC_9__N_135[6]));
    LUT4 i3569_2_lut (.A(ram_out[9]), .B(n7465), .Z(n2067)) /* synthesis lut_function=(A (B)) */ ;
    defparam i3569_2_lut.init = 16'h8888;
    LUT4 i3646_2_lut (.A(alu_c[9]), .B(n3370), .Z(n1446)) /* synthesis lut_function=(A (B)) */ ;
    defparam i3646_2_lut.init = 16'h8888;
    LUT4 mux_603_i6_3_lut (.A(n286), .B(n326), .C(n2399), .Z(n2407)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(76[3] 309[11])
    defparam mux_603_i6_3_lut.init = 16'hcaca;
    LUT4 mux_594_i7_3_lut (.A(A[6]), .B(n2406), .C(n11), .Z(n2373)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(76[3] 309[11])
    defparam mux_594_i7_3_lut.init = 16'hcaca;
    FD1P3AX B_i0_i0 (.D(B_11__N_195[0]), .SP(clk_pll_enable_87), .CK(clk_pll), 
            .Q(B[0]));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(75[11] 310[5])
    defparam B_i0_i0.GSR = "DISABLED";
    LUT4 mux_603_i7_3_lut (.A(n285), .B(n325), .C(n2399), .Z(n2406)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(76[3] 309[11])
    defparam mux_603_i7_3_lut.init = 16'hcaca;
    PFUMX i5381 (.BLUT(n7546), .ALUT(n7547), .C0(prog[2]), .Z(n2311));
    PFUMX mux_39_Mux_6_i14 (.BLUT(n13), .ALUT(n7_adj_391), .C0(n7477), 
          .Z(n14_adj_393));
    FD1S3IX statu_FSM_i3 (.D(ram_out[11]), .CK(clk_pll), .CD(n4528), .Q(n1150));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(76[3] 309[11])
    defparam statu_FSM_i3.GSR = "ENABLED";
    LUT4 mux_594_i8_3_lut (.A(A[7]), .B(n2405), .C(n11), .Z(n2372)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(76[3] 309[11])
    defparam mux_594_i8_3_lut.init = 16'hcaca;
    LUT4 i3570_2_lut (.A(ram_out[10]), .B(n7465), .Z(n2066)) /* synthesis lut_function=(A (B)) */ ;
    defparam i3570_2_lut.init = 16'h8888;
    LUT4 mux_603_i8_3_lut (.A(n284), .B(n324), .C(n2399), .Z(n2405)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(76[3] 309[11])
    defparam mux_603_i8_3_lut.init = 16'hcaca;
    LUT4 mux_594_i9_3_lut (.A(A[8]), .B(n2404), .C(n11), .Z(n2371)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(76[3] 309[11])
    defparam mux_594_i9_3_lut.init = 16'hcaca;
    PFUMX i5320 (.BLUT(n7431), .ALUT(n7430), .C0(prog[3]), .Z(n7432));
    LUT4 i3645_2_lut (.A(alu_c[10]), .B(n3370), .Z(n1445)) /* synthesis lut_function=(A (B)) */ ;
    defparam i3645_2_lut.init = 16'h8888;
    LUT4 i1_2_lut_4_lut_adj_29 (.A(n1148), .B(prog[2]), .C(n17_adj_437), 
         .D(alu_c[5]), .Z(n7_adj_413)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(76[3] 309[11])
    defparam i1_2_lut_4_lut_adj_29.init = 16'h8000;
    LUT4 i3_4_lut_adj_30 (.A(n1148), .B(n7470), .C(n1150), .D(n2912), 
         .Z(n2916)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i3_4_lut_adj_30.init = 16'hfffe;
    LUT4 i1_2_lut_4_lut_adj_31 (.A(n1148), .B(prog[2]), .C(n17_adj_437), 
         .D(alu_c[8]), .Z(n11_adj_377)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(76[3] 309[11])
    defparam i1_2_lut_4_lut_adj_31.init = 16'h8000;
    LUT4 i3571_2_lut (.A(ram_out[11]), .B(n7465), .Z(n2065)) /* synthesis lut_function=(A (B)) */ ;
    defparam i3571_2_lut.init = 16'h8888;
    LUT4 i1_2_lut_adj_32 (.A(prog[3]), .B(prog[4]), .Z(n6835)) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(75[11] 310[5])
    defparam i1_2_lut_adj_32.init = 16'h2222;
    LUT4 i3650_2_lut_4_lut (.A(n1148), .B(prog[2]), .C(n17_adj_437), .D(alu_c[10]), 
         .Z(n1419)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(76[3] 309[11])
    defparam i3650_2_lut_4_lut.init = 16'h8000;
    LUT4 i1_2_lut_4_lut_adj_33 (.A(n1148), .B(prog[2]), .C(n17_adj_437), 
         .D(alu_c[11]), .Z(n67)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(76[3] 309[11])
    defparam i1_2_lut_4_lut_adj_33.init = 16'h8000;
    LUT4 ram_out_9__bdd_4_lut (.A(ram_out[9]), .B(n2108), .C(n1420), .D(n1147), 
         .Z(B_11__N_195[9])) /* synthesis lut_function=(A (B (C+(D))+!B !((D)+!C))+!A !((D)+!C)) */ ;
    defparam ram_out_9__bdd_4_lut.init = 16'h88f0;
    LUT4 i1_2_lut_adj_34 (.A(alu_c[11]), .B(n3370), .Z(n1444)) /* synthesis lut_function=(A (B)) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(292[5:13])
    defparam i1_2_lut_adj_34.init = 16'h8888;
    LUT4 i1_2_lut_4_lut_adj_35 (.A(n1148), .B(prog[2]), .C(n17_adj_437), 
         .D(alu_c[3]), .Z(n4_adj_420)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(76[3] 309[11])
    defparam i1_2_lut_4_lut_adj_35.init = 16'h8000;
    LUT4 mux_603_i9_3_lut (.A(n283), .B(n323), .C(n2399), .Z(n2404)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(76[3] 309[11])
    defparam mux_603_i9_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut_adj_36 (.A(n7465), .B(ram_out[8]), .Z(n10)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_adj_36.init = 16'h8888;
    LUT4 i1_2_lut_4_lut_adj_37 (.A(n1148), .B(prog[2]), .C(n17_adj_437), 
         .D(alu_c[4]), .Z(n4_adj_416)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(76[3] 309[11])
    defparam i1_2_lut_4_lut_adj_37.init = 16'h8000;
    LUT4 i1_2_lut_adj_38 (.A(n3370), .B(alu_c[8]), .Z(n9_adj_376)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_adj_38.init = 16'h8888;
    LUT4 i1_4_lut_adj_39 (.A(n7478), .B(n20), .C(n7463), .D(prog[4]), 
         .Z(clk_pll_enable_79)) /* synthesis lut_function=(A (B (C+!(D))+!B (C (D)))) */ ;
    defparam i1_4_lut_adj_39.init = 16'ha088;
    LUT4 i3651_2_lut_4_lut (.A(n1148), .B(prog[2]), .C(n17_adj_437), .D(alu_c[9]), 
         .Z(n1420)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(76[3] 309[11])
    defparam i3651_2_lut_4_lut.init = 16'h8000;
    LUT4 i1_2_lut_adj_40 (.A(n7465), .B(ram_out[6]), .Z(n4_adj_380)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_adj_40.init = 16'h8888;
    CCU2D add_29_11 (.A0(PC[9]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n6320), 
          .S0(PC_9__N_145[9]));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(194[18:27])
    defparam add_29_11.INIT0 = 16'h5aaa;
    defparam add_29_11.INIT1 = 16'h0000;
    defparam add_29_11.INJECT1_0 = "NO";
    defparam add_29_11.INJECT1_1 = "NO";
    LUT4 i1_2_lut_adj_41 (.A(n3370), .B(alu_c[6]), .Z(n3)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_adj_41.init = 16'h8888;
    LUT4 i3_4_lut_adj_42 (.A(n7478), .B(n7472), .C(prog[4]), .D(n6829), 
         .Z(clk_pll_enable_69)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(75[11] 310[5])
    defparam i3_4_lut_adj_42.init = 16'h0800;
    LUT4 mux_594_i10_3_lut (.A(A[9]), .B(n2403), .C(n11), .Z(n2370)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(76[3] 309[11])
    defparam mux_594_i10_3_lut.init = 16'hcaca;
    LUT4 mux_603_i10_3_lut (.A(n282), .B(n322), .C(n2399), .Z(n2403)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(76[3] 309[11])
    defparam mux_603_i10_3_lut.init = 16'hcaca;
    CCU2D sub_176_add_2_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(SP[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .COUT(n6333), 
          .S1(n331));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(196[13:19])
    defparam sub_176_add_2_1.INIT0 = 16'hF000;
    defparam sub_176_add_2_1.INIT1 = 16'h5555;
    defparam sub_176_add_2_1.INJECT1_0 = "NO";
    defparam sub_176_add_2_1.INJECT1_1 = "NO";
    LUT4 i3567_2_lut (.A(ram_out[5]), .B(n7465), .Z(n2071)) /* synthesis lut_function=(A (B)) */ ;
    defparam i3567_2_lut.init = 16'h8888;
    PFUMX i5341 (.BLUT(n7486), .ALUT(n7487), .C0(prog[4]), .Z(n7465));
    LUT4 i1_2_lut_adj_43 (.A(n3370), .B(alu_c[5]), .Z(n6_adj_412)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_adj_43.init = 16'h8888;
    PFUMX i5365 (.BLUT(n7522), .ALUT(n7523), .C0(prog[2]), .Z(n7524));
    CCU2D sub_176_add_2_11 (.A0(SP[9]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(SP[10]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n6337), 
          .S0(n322), .S1(n321));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(196[13:19])
    defparam sub_176_add_2_11.INIT0 = 16'h5555;
    defparam sub_176_add_2_11.INIT1 = 16'h5555;
    defparam sub_176_add_2_11.INJECT1_0 = "NO";
    defparam sub_176_add_2_11.INJECT1_1 = "NO";
    LUT4 i5132_3_lut_3_lut_4_lut (.A(n7471), .B(prog[4]), .C(n6800), .D(n7469), 
         .Z(clk_pll_enable_78)) /* synthesis lut_function=(!(A (C)+!A (B (C+!(D))+!B (C)))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(75[11] 310[5])
    defparam i5132_3_lut_3_lut_4_lut.init = 16'h0f0b;
    LUT4 mux_594_i11_3_lut (.A(A[10]), .B(n2402), .C(n11), .Z(n2369)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(76[3] 309[11])
    defparam mux_594_i11_3_lut.init = 16'hcaca;
    LUT4 mux_603_i11_3_lut (.A(n281), .B(n321), .C(n2399), .Z(n2402)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(76[3] 309[11])
    defparam mux_603_i11_3_lut.init = 16'hcaca;
    LUT4 i1957_4_lut_4_lut_4_lut (.A(n7822), .B(prog[1]), .C(n7820), .D(prog[3]), 
         .Z(n3797)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B (C+!(D))))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(100[5] 240[13])
    defparam i1957_4_lut_4_lut_4_lut.init = 16'h07e0;
    LUT4 n1149_bdd_4_lut (.A(n1149), .B(prog[3]), .C(n7820), .D(prog[4]), 
         .Z(n3022)) /* synthesis lut_function=(!((B (D)+!B (C+!(D)))+!A)) */ ;
    defparam n1149_bdd_4_lut.init = 16'h0288;
    LUT4 n6_bdd_4_lut_4_lut (.A(prog[0]), .B(prog[1]), .C(prog[3]), .D(prog[2]), 
         .Z(n7463)) /* synthesis lut_function=(!(A (B (C+!(D))+!B (C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B ((D)+!C)))) */ ;
    defparam n6_bdd_4_lut_4_lut.init = 16'h0e70;
    LUT4 i5093_3_lut_4_lut (.A(prog[2]), .B(n7483), .C(n6869), .D(n1149), 
         .Z(clk_pll_enable_8)) /* synthesis lut_function=(!(A (B (D)+!B !(C+!(D)))+!A (D))) */ ;
    defparam i5093_3_lut_4_lut.init = 16'h20ff;
    LUT4 i5121_2_lut_rep_48 (.A(n1147), .B(n1149), .Z(n7469)) /* synthesis lut_function=(A+!(B)) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(76[3] 309[11])
    defparam i5121_2_lut_rep_48.init = 16'hbbbb;
    LUT4 i5073_3_lut_4_lut (.A(n1147), .B(n1149), .C(PC_9__N_135[7]), 
         .D(n15_adj_388), .Z(n3528)) /* synthesis lut_function=(A (C)+!A (B (D)+!B (C))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(76[3] 309[11])
    defparam i5073_3_lut_4_lut.init = 16'hf4b0;
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    FD1P3AX A_i0_i2 (.D(A_11__N_183[2]), .SP(clk_pll_enable_97), .CK(clk_pll), 
            .Q(A[2]));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(75[11] 310[5])
    defparam A_i0_i2.GSR = "DISABLED";
    FD1P3AX A_i0_i3 (.D(A_11__N_183[3]), .SP(clk_pll_enable_97), .CK(clk_pll), 
            .Q(A[3]));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(75[11] 310[5])
    defparam A_i0_i3.GSR = "DISABLED";
    FD1P3AX A_i0_i4 (.D(A_11__N_183[4]), .SP(clk_pll_enable_97), .CK(clk_pll), 
            .Q(A[4]));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(75[11] 310[5])
    defparam A_i0_i4.GSR = "DISABLED";
    FD1P3AX A_i0_i5 (.D(A_11__N_183[5]), .SP(clk_pll_enable_97), .CK(clk_pll), 
            .Q(A[5]));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(75[11] 310[5])
    defparam A_i0_i5.GSR = "DISABLED";
    FD1P3AX A_i0_i6 (.D(A_11__N_183[6]), .SP(clk_pll_enable_97), .CK(clk_pll), 
            .Q(A[6]));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(75[11] 310[5])
    defparam A_i0_i6.GSR = "DISABLED";
    FD1P3AX A_i0_i7 (.D(A_11__N_183[7]), .SP(clk_pll_enable_97), .CK(clk_pll), 
            .Q(A[7]));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(75[11] 310[5])
    defparam A_i0_i7.GSR = "DISABLED";
    FD1P3AX A_i0_i8 (.D(A_11__N_183[8]), .SP(clk_pll_enable_97), .CK(clk_pll), 
            .Q(A[8]));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(75[11] 310[5])
    defparam A_i0_i8.GSR = "DISABLED";
    FD1P3AX A_i0_i9 (.D(A_11__N_183[9]), .SP(clk_pll_enable_97), .CK(clk_pll), 
            .Q(A[9]));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(75[11] 310[5])
    defparam A_i0_i9.GSR = "DISABLED";
    FD1P3AX A_i0_i10 (.D(A_11__N_183[10]), .SP(clk_pll_enable_97), .CK(clk_pll), 
            .Q(A[10]));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(75[11] 310[5])
    defparam A_i0_i10.GSR = "DISABLED";
    FD1P3AX A_i0_i11 (.D(A_11__N_183[11]), .SP(clk_pll_enable_97), .CK(clk_pll), 
            .Q(A[11]));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(75[11] 310[5])
    defparam A_i0_i11.GSR = "DISABLED";
    FD1P3IX PC_temp__i1 (.D(n3024), .SP(clk_pll_enable_106), .CD(GND_net), 
            .CK(clk_pll), .Q(PC_temp[1]));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(75[11] 310[5])
    defparam PC_temp__i1.GSR = "DISABLED";
    LUT4 i1_2_lut_4_lut_adj_44 (.A(n1148), .B(prog[2]), .C(n17_adj_437), 
         .D(alu_c[2]), .Z(n4_adj_425)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(76[3] 309[11])
    defparam i1_2_lut_4_lut_adj_44.init = 16'h8000;
    CCU2D add_174_11 (.A0(SP[9]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(SP[10]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n6325), 
          .S0(n282), .S1(n281));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(191[13:19])
    defparam add_174_11.INIT0 = 16'h5aaa;
    defparam add_174_11.INIT1 = 16'h5aaa;
    defparam add_174_11.INJECT1_0 = "NO";
    defparam add_174_11.INJECT1_1 = "NO";
    LUT4 i1_2_lut_adj_45 (.A(n7465), .B(ram_out[4]), .Z(n7_adj_418)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_adj_45.init = 16'h8888;
    CCU2D sub_176_add_2_9 (.A0(SP[7]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(SP[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n6336), 
          .COUT(n6337), .S0(n324), .S1(n323));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(196[13:19])
    defparam sub_176_add_2_9.INIT0 = 16'h5555;
    defparam sub_176_add_2_9.INIT1 = 16'h5555;
    defparam sub_176_add_2_9.INJECT1_0 = "NO";
    defparam sub_176_add_2_9.INJECT1_1 = "NO";
    LUT4 i1_2_lut_adj_46 (.A(n3370), .B(alu_c[4]), .Z(n6_adj_417)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_adj_46.init = 16'h8888;
    CCU2D add_174_9 (.A0(SP[7]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(SP[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n6324), 
          .COUT(n6325), .S0(n284), .S1(n283));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(191[13:19])
    defparam add_174_9.INIT0 = 16'h5aaa;
    defparam add_174_9.INIT1 = 16'h5aaa;
    defparam add_174_9.INJECT1_0 = "NO";
    defparam add_174_9.INJECT1_1 = "NO";
    CCU2D add_174_3 (.A0(SP[1]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(SP[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n6321), 
          .COUT(n6322), .S0(n290), .S1(n289));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(191[13:19])
    defparam add_174_3.INIT0 = 16'h5aaa;
    defparam add_174_3.INIT1 = 16'h5aaa;
    defparam add_174_3.INJECT1_0 = "NO";
    defparam add_174_3.INJECT1_1 = "NO";
    CCU2D sub_176_add_2_7 (.A0(SP[5]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(SP[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n6335), 
          .COUT(n6336), .S0(n326), .S1(n325));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(196[13:19])
    defparam sub_176_add_2_7.INIT0 = 16'h5555;
    defparam sub_176_add_2_7.INIT1 = 16'h5555;
    defparam sub_176_add_2_7.INJECT1_0 = "NO";
    defparam sub_176_add_2_7.INJECT1_1 = "NO";
    LUT4 i5075_3_lut_4_lut (.A(n1147), .B(n1149), .C(PC_9__N_135[5]), 
         .D(n15_adj_397), .Z(n3524)) /* synthesis lut_function=(A (C)+!A (B (D)+!B (C))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(76[3] 309[11])
    defparam i5075_3_lut_4_lut.init = 16'hf4b0;
    LUT4 i1_2_lut_adj_47 (.A(n7465), .B(ram_out[3]), .Z(n7_adj_422)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_adj_47.init = 16'h8888;
    LUT4 i1_2_lut_adj_48 (.A(n3370), .B(alu_c[3]), .Z(n6_adj_421)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_adj_48.init = 16'h8888;
    CCU2D add_29_5 (.A0(PC[3]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(PC[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n6317), 
          .COUT(n6318), .S0(PC_9__N_145[3]), .S1(PC_9__N_145[4]));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(194[18:27])
    defparam add_29_5.INIT0 = 16'h5aaa;
    defparam add_29_5.INIT1 = 16'h5aaa;
    defparam add_29_5.INJECT1_0 = "NO";
    defparam add_29_5.INJECT1_1 = "NO";
    LUT4 i1_2_lut_adj_49 (.A(n7465), .B(ram_out[2]), .Z(n7_adj_427)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_adj_49.init = 16'h8888;
    CCU2D add_29_9 (.A0(PC[7]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(PC[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n6319), 
          .COUT(n6320), .S0(PC_9__N_145[7]), .S1(PC_9__N_145[8]));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(194[18:27])
    defparam add_29_9.INIT0 = 16'h5aaa;
    defparam add_29_9.INIT1 = 16'h5aaa;
    defparam add_29_9.INJECT1_0 = "NO";
    defparam add_29_9.INJECT1_1 = "NO";
    CCU2D sub_176_add_2_5 (.A0(SP[3]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(SP[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n6334), 
          .COUT(n6335), .S0(n328), .S1(n327));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(196[13:19])
    defparam sub_176_add_2_5.INIT0 = 16'h5555;
    defparam sub_176_add_2_5.INIT1 = 16'h5555;
    defparam sub_176_add_2_5.INJECT1_0 = "NO";
    defparam sub_176_add_2_5.INJECT1_1 = "NO";
    LUT4 i1_4_lut_4_lut_4_lut (.A(prog[3]), .B(prog[4]), .C(n7822), .D(prog[1]), 
         .Z(n17_adj_437)) /* synthesis lut_function=(!(A+(B (C+!(D))+!B !(D)))) */ ;
    defparam i1_4_lut_4_lut_4_lut.init = 16'h1500;
    LUT4 i1_2_lut_adj_50 (.A(n3370), .B(alu_c[2]), .Z(n6_adj_426)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_adj_50.init = 16'h8888;
    LUT4 i3640_4_lut (.A(B[9]), .B(n7471), .C(n17_adj_383), .D(prog[1]), 
         .Z(n30_adj_384)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(100[5] 240[13])
    defparam i3640_4_lut.init = 16'hc088;
    LUT4 n15_bdd_3_lut_4_lut (.A(n1147), .B(n1149), .C(n7305), .D(n15_adj_403), 
         .Z(n7306)) /* synthesis lut_function=(A (C)+!A (B (D)+!B (C))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(76[3] 309[11])
    defparam n15_bdd_3_lut_4_lut.init = 16'hf4b0;
    LUT4 n26_bdd_4_lut (.A(n26_adj_372), .B(n6_adj_436), .C(n526), .D(n2311), 
         .Z(n7363)) /* synthesis lut_function=(A+(B+(C (D)))) */ ;
    defparam n26_bdd_4_lut.init = 16'hfeee;
    PFUMX i5187 (.BLUT(n7239), .ALUT(n7238), .C0(prog[3]), .Z(n7240));
    LUT4 i3469_4_lut (.A(PC_9__N_135[8]), .B(n5_adj_434), .C(n1147), .D(n6_adj_433), 
         .Z(n5516)) /* synthesis lut_function=(A (B+((D)+!C))+!A (B (C)+!B (C (D)))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(76[3] 309[11])
    defparam i3469_4_lut.init = 16'hfaca;
    LUT4 i27_4_lut_4_lut_4_lut (.A(n7822), .B(prog[1]), .C(prog[3]), .D(n7820), 
         .Z(n14)) /* synthesis lut_function=(!(A (B+(C+!(D)))+!A ((C (D)+!C !(D))+!B))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(100[5] 240[13])
    defparam i27_4_lut_4_lut_4_lut.init = 16'h0640;
    CCU2D add_29_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(PC[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .COUT(n6316), 
          .S1(PC_9__N_145[0]));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(194[18:27])
    defparam add_29_1.INIT0 = 16'hF000;
    defparam add_29_1.INIT1 = 16'h5555;
    defparam add_29_1.INJECT1_0 = "NO";
    defparam add_29_1.INJECT1_1 = "NO";
    FD1P3IX PC_temp__i2 (.D(n3025), .SP(clk_pll_enable_106), .CD(GND_net), 
            .CK(clk_pll), .Q(PC_temp[2]));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(75[11] 310[5])
    defparam PC_temp__i2.GSR = "DISABLED";
    FD1P3IX PC_temp__i3 (.D(n3026), .SP(clk_pll_enable_106), .CD(GND_net), 
            .CK(clk_pll), .Q(PC_temp[3]));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(75[11] 310[5])
    defparam PC_temp__i3.GSR = "DISABLED";
    FD1P3IX PC_temp__i4 (.D(n3027), .SP(clk_pll_enable_106), .CD(GND_net), 
            .CK(clk_pll), .Q(PC_temp[4]));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(75[11] 310[5])
    defparam PC_temp__i4.GSR = "DISABLED";
    FD1P3IX PC_temp__i5 (.D(n3028), .SP(clk_pll_enable_106), .CD(GND_net), 
            .CK(clk_pll), .Q(PC_temp[5]));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(75[11] 310[5])
    defparam PC_temp__i5.GSR = "DISABLED";
    FD1P3IX PC_temp__i6 (.D(n6634), .SP(clk_pll_enable_106), .CD(GND_net), 
            .CK(clk_pll), .Q(PC_temp[6]));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(75[11] 310[5])
    defparam PC_temp__i6.GSR = "DISABLED";
    FD1P3IX PC_temp__i7 (.D(n3030), .SP(clk_pll_enable_106), .CD(GND_net), 
            .CK(clk_pll), .Q(PC_temp[7]));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(75[11] 310[5])
    defparam PC_temp__i7.GSR = "DISABLED";
    FD1P3IX PC_temp__i8 (.D(n3031), .SP(clk_pll_enable_106), .CD(GND_net), 
            .CK(clk_pll), .Q(PC_temp[8]));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(75[11] 310[5])
    defparam PC_temp__i8.GSR = "DISABLED";
    FD1P3IX PC_temp__i9 (.D(n3032), .SP(clk_pll_enable_106), .CD(GND_net), 
            .CK(clk_pll), .Q(PC_temp[9]));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(75[11] 310[5])
    defparam PC_temp__i9.GSR = "DISABLED";
    FD1P3AX SP_i0_i1 (.D(n2378), .SP(clk_pll_enable_116), .CK(clk_pll), 
            .Q(SP[1]));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(75[11] 310[5])
    defparam SP_i0_i1.GSR = "ENABLED";
    FD1P3AX SP_i0_i2 (.D(n2377), .SP(clk_pll_enable_116), .CK(clk_pll), 
            .Q(SP[2]));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(75[11] 310[5])
    defparam SP_i0_i2.GSR = "ENABLED";
    FD1P3AX SP_i0_i3 (.D(n2376), .SP(clk_pll_enable_116), .CK(clk_pll), 
            .Q(SP[3]));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(75[11] 310[5])
    defparam SP_i0_i3.GSR = "ENABLED";
    FD1P3AX SP_i0_i4 (.D(n2375), .SP(clk_pll_enable_116), .CK(clk_pll), 
            .Q(SP[4]));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(75[11] 310[5])
    defparam SP_i0_i4.GSR = "ENABLED";
    FD1P3AX SP_i0_i5 (.D(n2374), .SP(clk_pll_enable_116), .CK(clk_pll), 
            .Q(SP[5]));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(75[11] 310[5])
    defparam SP_i0_i5.GSR = "ENABLED";
    FD1P3AX SP_i0_i6 (.D(n2373), .SP(clk_pll_enable_116), .CK(clk_pll), 
            .Q(SP[6]));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(75[11] 310[5])
    defparam SP_i0_i6.GSR = "ENABLED";
    FD1P3AX SP_i0_i7 (.D(n2372), .SP(clk_pll_enable_116), .CK(clk_pll), 
            .Q(SP[7]));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(75[11] 310[5])
    defparam SP_i0_i7.GSR = "ENABLED";
    FD1P3AY SP_i0_i8 (.D(n2371), .SP(clk_pll_enable_116), .CK(clk_pll), 
            .Q(SP[8]));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(75[11] 310[5])
    defparam SP_i0_i8.GSR = "ENABLED";
    FD1P3AY SP_i0_i9 (.D(n2370), .SP(clk_pll_enable_116), .CK(clk_pll), 
            .Q(SP[9]));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(75[11] 310[5])
    defparam SP_i0_i9.GSR = "ENABLED";
    FD1P3AX SP_i0_i10 (.D(n2369), .SP(clk_pll_enable_116), .CK(clk_pll), 
            .Q(SP[10]));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(75[11] 310[5])
    defparam SP_i0_i10.GSR = "ENABLED";
    PFUMX i5275 (.BLUT(n18_adj_402), .ALUT(n7366), .C0(n6922), .Z(n7367));
    GSR GSR_INST (.GSR(rst_c));
    LUT4 i4964_4_lut (.A(ram_out[7]), .B(SP[7]), .C(prog[1]), .D(prog[0]), 
         .Z(n6999)) /* synthesis lut_function=(A (B (C+(D))+!B !(C (D)+!C !(D)))+!A (B (C (D)))) */ ;
    defparam i4964_4_lut.init = 16'hcaa0;
    CCU2D add_29_3 (.A0(PC[1]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(PC[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n6316), 
          .COUT(n6317), .S0(PC_9__N_145[1]), .S1(PC_9__N_145[2]));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(194[18:27])
    defparam add_29_3.INIT0 = 16'h5aaa;
    defparam add_29_3.INIT1 = 16'h5aaa;
    defparam add_29_3.INJECT1_0 = "NO";
    defparam add_29_3.INJECT1_1 = "NO";
    LUT4 n2108_bdd_4_lut (.A(n2108), .B(ram_out[8]), .C(n11_adj_377), 
         .D(n1147), .Z(B_11__N_195[8])) /* synthesis lut_function=(A (B (C+(D))+!B !((D)+!C))+!A !((D)+!C)) */ ;
    defparam n2108_bdd_4_lut.init = 16'h88f0;
    FD1P3AX alu_type_i0_i3 (.D(n361), .SP(clk_pll_enable_117), .CK(clk_pll), 
            .Q(alu_type[3]));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(75[11] 310[5])
    defparam alu_type_i0_i3.GSR = "DISABLED";
    LUT4 i1_4_lut_then_4_lut (.A(n1149), .B(n7483), .C(prog[4]), .D(prog[2]), 
         .Z(n7493)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;
    defparam i1_4_lut_then_4_lut.init = 16'h0200;
    LUT4 ram_out_11__bdd_4_lut (.A(ram_out[11]), .B(n2108), .C(n67), .D(n1147), 
         .Z(B_11__N_195[11])) /* synthesis lut_function=(A (B (C+(D))+!B !((D)+!C))+!A !((D)+!C)) */ ;
    defparam ram_out_11__bdd_4_lut.init = 16'h88f0;
    PFUMX i5422 (.BLUT(n7646), .ALUT(n7645), .C0(n1147), .Z(n7647));
    LUT4 i4958_4_lut (.A(prog[0]), .B(SP[8]), .C(prog[1]), .D(ram_out[8]), 
         .Z(n6993)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (C (D))) */ ;
    defparam i4958_4_lut.init = 16'hda80;
    PFUMX i1476 (.BLUT(n18_adj_399), .ALUT(n3524), .C0(n6922), .Z(n3525));
    PFUMX i1480 (.BLUT(n18_adj_390), .ALUT(n3528), .C0(n6922), .Z(n3529));
    LUT4 i1_4_lut_adj_51 (.A(n7478), .B(n20), .C(n3797), .D(prog[4]), 
         .Z(clk_pll_enable_117)) /* synthesis lut_function=(A (B (C+!(D))+!B (C (D)))) */ ;
    defparam i1_4_lut_adj_51.init = 16'ha088;
    PFUMX i1484 (.BLUT(n15_adj_382), .ALUT(n3532), .C0(n6918), .Z(n3533));
    LUT4 i3609_4_lut (.A(prog[1]), .B(prog[4]), .C(prog[3]), .D(n7472), 
         .Z(n361)) /* synthesis lut_function=(!(A (B+!(C+(D)))+!A (B+!(C)))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(100[5] 240[13])
    defparam i3609_4_lut.init = 16'h3230;
    LUT4 n15_bdd_3_lut_4_lut_adj_52 (.A(n1147), .B(n1149), .C(n7365), 
         .D(n15_adj_400), .Z(n7366)) /* synthesis lut_function=(A (C)+!A (B (D)+!B (C))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(76[3] 309[11])
    defparam n15_bdd_3_lut_4_lut_adj_52.init = 16'hf4b0;
    LUT4 mux_39_Mux_2_i17_3_lut (.A(SP[2]), .B(n329), .C(n7822), .Z(n17_adj_407)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(100[5] 240[13])
    defparam mux_39_Mux_2_i17_3_lut.init = 16'hcaca;
    LUT4 i5147_3_lut (.A(n1147), .B(n1149), .C(prog[4]), .Z(n6922)) /* synthesis lut_function=(A+!(B (C))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(76[3] 309[11])
    defparam i5147_3_lut.init = 16'hbfbf;
    LUT4 mux_39_Mux_3_i17_3_lut (.A(SP[3]), .B(n328), .C(prog[0]), .Z(n17_adj_404)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(100[5] 240[13])
    defparam mux_39_Mux_3_i17_3_lut.init = 16'hcaca;
    LUT4 i958_2_lut_3_lut (.A(IRQ_EN), .B(key_c), .C(n1152), .Z(n2912)) /* synthesis lut_function=(A (B (C))+!A (C)) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(78[8:37])
    defparam i958_2_lut_3_lut.init = 16'hd0d0;
    LUT4 mux_39_Mux_1_i17_3_lut (.A(SP[1]), .B(n330), .C(n7822), .Z(n17_adj_410)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(100[5] 240[13])
    defparam mux_39_Mux_1_i17_3_lut.init = 16'hcaca;
    LUT4 mux_39_Mux_8_i15_4_lut (.A(n7468), .B(n6995), .C(prog[3]), .D(ram_out[8]), 
         .Z(n15_adj_385)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(100[5] 240[13])
    defparam mux_39_Mux_8_i15_4_lut.init = 16'hcac0;
    PFUMX i5273 (.BLUT(n7364), .ALUT(n7363), .C0(n1147), .Z(n7365));
    LUT4 i3607_2_lut (.A(prog[1]), .B(ram_out[6]), .Z(n5654)) /* synthesis lut_function=(A (B)) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(28[20:24])
    defparam i3607_2_lut.init = 16'h8888;
    LUT4 mux_39_Mux_5_i17_3_lut (.A(SP[5]), .B(n326), .C(prog[0]), .Z(n17_adj_398)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(100[5] 240[13])
    defparam mux_39_Mux_5_i17_3_lut.init = 16'hcaca;
    LUT4 i1_4_lut_else_4_lut (.A(n1149), .B(n7476), .C(prog[4]), .D(prog[2]), 
         .Z(n7492)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i1_4_lut_else_4_lut.init = 16'h0080;
    LUT4 mux_39_Mux_7_i17_3_lut (.A(SP[7]), .B(n324), .C(prog[0]), .Z(n17_adj_389)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(100[5] 240[13])
    defparam mux_39_Mux_7_i17_3_lut.init = 16'hcaca;
    LUT4 i1_4_lut_adj_53 (.A(n2311), .B(n2312), .C(n521), .D(PC_temp[9]), 
         .Z(n5_adj_439)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(287[5] 305[12])
    defparam i1_4_lut_adj_53.init = 16'heca0;
    PFUMX i5386 (.BLUT(n7557), .ALUT(n7556), .C0(n1147), .Z(n7558));
    LUT4 mux_77_i10_3_lut (.A(PC_9__N_145[9]), .B(ram_out[9]), .C(alu_co), 
         .Z(n521)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(296[7:23])
    defparam mux_77_i10_3_lut.init = 16'hcaca;
    LUT4 i196_2_lut_3_lut (.A(IRQ_EN), .B(key_c), .C(n1152), .Z(n1154)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(78[8:37])
    defparam i196_2_lut_3_lut.init = 16'h2020;
    LUT4 i2_4_lut_adj_54 (.A(n28), .B(PC_9__N_145[9]), .C(n6846), .D(n31), 
         .Z(n6_adj_438)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (D))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(287[5] 305[12])
    defparam i2_4_lut_adj_54.init = 16'hce0a;
    LUT4 i58_3_lut_adj_55 (.A(PC[9]), .B(alu_c[9]), .C(n7822), .Z(n28)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(287[5] 305[12])
    defparam i58_3_lut_adj_55.init = 16'hcaca;
    PFUMX i5353 (.BLUT(n7504), .ALUT(n7505), .C0(n7820), .Z(n31));
    LUT4 i3655_2_lut_4_lut (.A(n1148), .B(prog[2]), .C(n17_adj_437), .D(alu_c[7]), 
         .Z(n1422)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(76[3] 309[11])
    defparam i3655_2_lut_4_lut.init = 16'h8000;
    LUT4 mux_39_Mux_4_i17_3_lut (.A(SP[4]), .B(n327), .C(prog[0]), .Z(n17_adj_401)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(100[5] 240[13])
    defparam mux_39_Mux_4_i17_3_lut.init = 16'hcaca;
    LUT4 mux_39_Mux_0_i17_3_lut (.A(SP[0]), .B(n331), .C(prog[0]), .Z(n17)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(100[5] 240[13])
    defparam mux_39_Mux_0_i17_3_lut.init = 16'hcaca;
    LUT4 i1_4_lut_adj_56 (.A(PC_9__N_145[8]), .B(n6846), .C(n31), .D(n24_adj_378), 
         .Z(n5_adj_434)) /* synthesis lut_function=(A (B (C)+!B (C+(D)))+!A !(B+!(D))) */ ;
    defparam i1_4_lut_adj_56.init = 16'hb3a0;
    LUT4 i960_2_lut_rep_49 (.A(n1151), .B(ram_out[11]), .Z(n7470)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i960_2_lut_rep_49.init = 16'h2222;
    LUT4 n15_bdd_4_lut_5480 (.A(n15_adj_409), .B(PC_9__N_145[1]), .C(n1149), 
         .D(n1151), .Z(n7557)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A !((C+!(D))+!B)) */ ;
    defparam n15_bdd_4_lut_5480.init = 16'haca0;
    LUT4 reduce_or_202_i1_2_lut_3_lut (.A(n1151), .B(ram_out[11]), .C(n1150), 
         .Z(n1161)) /* synthesis lut_function=(A ((C)+!B)+!A (C)) */ ;
    defparam reduce_or_202_i1_2_lut_3_lut.init = 16'hf2f2;
    LUT4 i40_3_lut (.A(PC[8]), .B(alu_c[8]), .C(n7822), .Z(n24_adj_378)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i40_3_lut.init = 16'hcaca;
    PFUMX i4951 (.BLUT(n6984), .ALUT(n6985), .C0(n7820), .Z(n6986));
    LUT4 i5098_2_lut_rep_50 (.A(n7820), .B(prog[3]), .Z(n7471)) /* synthesis lut_function=(!(A+(B))) */ ;
    defparam i5098_2_lut_rep_50.init = 16'h1111;
    PFUMX i5351 (.BLUT(n7501), .ALUT(n7502), .C0(n7822), .Z(n2108));
    LUT4 i2_4_lut_adj_57 (.A(n2311), .B(n2312), .C(n522), .D(PC_temp[8]), 
         .Z(n6_adj_433)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;
    defparam i2_4_lut_adj_57.init = 16'heca0;
    LUT4 i12_4_lut (.A(n7468), .B(n6986), .C(prog[3]), .D(ram_out[0]), 
         .Z(n9_adj_379)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(28[20:24])
    defparam i12_4_lut.init = 16'hcac0;
    LUT4 mux_39_Mux_5_i15_4_lut (.A(ram_out[5]), .B(n7004), .C(prog[3]), 
         .D(n7468), .Z(n15_adj_397)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(100[5] 240[13])
    defparam mux_39_Mux_5_i15_4_lut.init = 16'hcac0;
    LUT4 i2_4_lut_then_2_lut (.A(prog[1]), .B(prog[0]), .Z(n7496)) /* synthesis lut_function=(A+!(B)) */ ;
    defparam i2_4_lut_then_2_lut.init = 16'hbbbb;
    LUT4 i3488_3_lut (.A(PC_9__N_145[8]), .B(ram_out[8]), .C(alu_co), 
         .Z(n522)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(38[6:12])
    defparam i3488_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut_adj_58 (.A(n1151), .B(PC_9__N_145[8]), .Z(n7)) /* synthesis lut_function=(A (B)) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(76[3] 309[11])
    defparam i1_2_lut_adj_58.init = 16'h8888;
    PFUMX i5349 (.BLUT(n7498), .ALUT(n7499), .C0(prog[2]), .Z(n7500));
    LUT4 i3637_4_lut (.A(B[8]), .B(n7471), .C(n17_adj_386), .D(prog[1]), 
         .Z(n30_adj_387)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(100[5] 240[13])
    defparam i3637_4_lut.init = 16'hc088;
    LUT4 i2_4_lut_else_2_lut (.A(prog[1]), .B(prog[4]), .C(prog[3]), .D(prog[0]), 
         .Z(n7495)) /* synthesis lut_function=(A+(B ((D)+!C)+!B (D))) */ ;
    defparam i2_4_lut_else_2_lut.init = 16'hffae;
    LUT4 mux_39_Mux_4_i15_4_lut (.A(ram_out[4]), .B(n7007), .C(prog[3]), 
         .D(n7468), .Z(n15_adj_400)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(100[5] 240[13])
    defparam mux_39_Mux_4_i15_4_lut.init = 16'hcac0;
    LUT4 i1_4_lut_then_3_lut (.A(prog[4]), .B(prog[0]), .C(prog[3]), .Z(n7499)) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(292[5:13])
    defparam i1_4_lut_then_3_lut.init = 16'h0808;
    LUT4 i1_4_lut_else_3_lut (.A(prog[4]), .B(prog[0]), .C(prog[1]), .D(prog[3]), 
         .Z(n7498)) /* synthesis lut_function=(!((B (C+!(D))+!B !(D))+!A)) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(292[5:13])
    defparam i1_4_lut_else_3_lut.init = 16'h2a00;
    FD1P3AX prog__0__i3_rep_66 (.D(ram_out[2]), .SP(clk_pll_enable_118), 
            .CK(clk_pll), .Q(n7820));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(75[11] 310[5])
    defparam prog__0__i3_rep_66.GSR = "DISABLED";
    PFUMX mux_36_Mux_0_i31 (.BLUT(n15), .ALUT(n30_adj_370), .C0(prog[4]), 
          .Z(n364));
    LUT4 i1_2_lut_rep_51 (.A(n7822), .B(n7820), .Z(n7472)) /* synthesis lut_function=(A (B)) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(75[11] 310[5])
    defparam i1_2_lut_rep_51.init = 16'h8888;
    PFUMX i5347 (.BLUT(n7495), .ALUT(n7496), .C0(n7820), .Z(n5335));
    LUT4 n2312_bdd_4_lut_5421 (.A(n2312), .B(n528), .C(n2311), .D(PC_temp[2]), 
         .Z(n7586)) /* synthesis lut_function=(A (B (C+(D))+!B (D))+!A (B (C))) */ ;
    defparam n2312_bdd_4_lut_5421.init = 16'heac0;
    LUT4 n7586_bdd_2_lut (.A(n7586), .B(n6_adj_440), .Z(n7587)) /* synthesis lut_function=(A+(B)) */ ;
    defparam n7586_bdd_2_lut.init = 16'heeee;
    LUT4 i5108_4_lut_4_lut_then_4_lut (.A(prog[3]), .B(prog[4]), .C(prog[2]), 
         .D(prog[1]), .Z(n7502)) /* synthesis lut_function=(!((B+(C+(D)))+!A)) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(100[5] 240[13])
    defparam i5108_4_lut_4_lut_then_4_lut.init = 16'h0002;
    LUT4 n26_bdd_2_lut (.A(PC_9__N_145[3]), .B(n1151), .Z(n7304)) /* synthesis lut_function=(A (B)) */ ;
    defparam n26_bdd_2_lut.init = 16'h8888;
    LUT4 n26_bdd_2_lut_adj_59 (.A(PC_9__N_145[4]), .B(n1151), .Z(n7364)) /* synthesis lut_function=(A (B)) */ ;
    defparam n26_bdd_2_lut_adj_59.init = 16'h8888;
    LUT4 i5060_3_lut_4_lut (.A(PC_9__N_145[7]), .B(n1151), .C(n1147), 
         .D(PC_9__N_125[7]), .Z(PC_9__N_135[7])) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(76[3] 309[11])
    defparam i5060_3_lut_4_lut.init = 16'hf808;
    PFUMX i5345 (.BLUT(n7492), .ALUT(n7493), .C0(prog[3]), .Z(n2399));
    LUT4 i4970_4_lut (.A(ram_out[4]), .B(SP[4]), .C(prog[1]), .D(prog[0]), 
         .Z(n7005)) /* synthesis lut_function=(A (B (C+(D))+!B !(C (D)+!C !(D)))+!A (B (C (D)))) */ ;
    defparam i4970_4_lut.init = 16'hcaa0;
    LUT4 i4952_4_lut (.A(ram_out[9]), .B(SP[9]), .C(prog[1]), .D(prog[0]), 
         .Z(n6987)) /* synthesis lut_function=(A (B (C+(D))+!B !(C (D)+!C !(D)))+!A (B (C (D)))) */ ;
    defparam i4952_4_lut.init = 16'hcaa0;
    LUT4 n26_bdd_4_lut_adj_60 (.A(n26), .B(n6_adj_435), .C(n527), .D(n2311), 
         .Z(n7303)) /* synthesis lut_function=(A+(B+(C (D)))) */ ;
    defparam n26_bdd_4_lut_adj_60.init = 16'hfeee;
    LUT4 i5108_4_lut_4_lut_else_4_lut (.A(prog[3]), .B(prog[4]), .C(prog[2]), 
         .D(prog[1]), .Z(n7501)) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(100[5] 240[13])
    defparam i5108_4_lut_4_lut_else_4_lut.init = 16'h0020;
    LUT4 i3654_2_lut (.A(PC_9__N_145[9]), .B(n1151), .Z(n2939)) /* synthesis lut_function=(A (B)) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(76[3] 309[11])
    defparam i3654_2_lut.init = 16'h8888;
    LUT4 i2_4_lut_4_lut (.A(n7469), .B(n6835), .C(n5_adj_429), .D(n4_adj_431), 
         .Z(n6800)) /* synthesis lut_function=(A (D)+!A (B (C+(D))+!B (D))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(76[3] 309[11])
    defparam i2_4_lut_4_lut.init = 16'hff40;
    LUT4 i1_2_lut_rep_52 (.A(prog[3]), .B(prog[4]), .Z(n7473)) /* synthesis lut_function=(A+!(B)) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(76[3] 309[11])
    defparam i1_2_lut_rep_52.init = 16'hbbbb;
    LUT4 i1_4_lut_then_4_lut_adj_61 (.A(prog[3]), .B(prog[1]), .C(prog[0]), 
         .D(prog[4]), .Z(n7505)) /* synthesis lut_function=(A ((D)+!B)+!A (B+(C+(D)))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(287[5] 305[12])
    defparam i1_4_lut_then_4_lut_adj_61.init = 16'hff76;
    LUT4 prog_4__I_0_168_i9_2_lut_3_lut_4_lut (.A(prog[3]), .B(prog[4]), 
         .C(n7814), .D(prog[2]), .Z(n9)) /* synthesis lut_function=(A+((C+(D))+!B)) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(76[3] 309[11])
    defparam prog_4__I_0_168_i9_2_lut_3_lut_4_lut.init = 16'hfffb;
    PFUMX i3446 (.BLUT(n5654), .ALUT(n5493), .C0(prog[0]), .Z(n10_adj_392));
    PFUMX i10 (.BLUT(n15_adj_385), .ALUT(n5516), .C0(n6918), .Z(n3531));
    LUT4 mux_599_i1_3_lut (.A(B[0]), .B(A[0]), .C(n2383), .Z(n2396)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(76[3] 309[11])
    defparam mux_599_i1_3_lut.init = 16'hcaca;
    LUT4 i1_4_lut_else_4_lut_adj_62 (.A(prog[3]), .B(prog[1]), .C(prog[0]), 
         .D(prog[4]), .Z(n7504)) /* synthesis lut_function=(!((B (C (D)))+!A)) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(287[5] 305[12])
    defparam i1_4_lut_else_4_lut_adj_62.init = 16'h2aaa;
    TSALL TSALL_INST (.TSALL(GND_net));
    LUT4 mux_39_Mux_7_i15_4_lut (.A(ram_out[7]), .B(n7001), .C(prog[3]), 
         .D(n7468), .Z(n15_adj_388)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(100[5] 240[13])
    defparam mux_39_Mux_7_i15_4_lut.init = 16'hcac0;
    LUT4 i4949_4_lut (.A(ram_out[0]), .B(SP[0]), .C(prog[1]), .D(prog[0]), 
         .Z(n6984)) /* synthesis lut_function=(A (B (C+(D))+!B !(C (D)+!C !(D)))+!A (B (C (D)))) */ ;
    defparam i4949_4_lut.init = 16'hcaa0;
    LUT4 i1_4_lut_adj_63 (.A(n7478), .B(n4304), .C(n1_adj_444), .D(n9), 
         .Z(n2383)) /* synthesis lut_function=(A ((C+!(D))+!B)) */ ;
    defparam i1_4_lut_adj_63.init = 16'ha2aa;
    LUT4 i3_4_lut_adj_64 (.A(n2311), .B(n6_adj_430), .C(n26_adj_374), 
         .D(n523), .Z(PC_9__N_125[7])) /* synthesis lut_function=(A (B+(C+(D)))+!A (B+(C))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(287[5] 305[12])
    defparam i3_4_lut_adj_64.init = 16'hfefc;
    LUT4 n7555_bdd_2_lut (.A(n7555), .B(n6_adj_441), .Z(n7556)) /* synthesis lut_function=(A+(B)) */ ;
    defparam n7555_bdd_2_lut.init = 16'heeee;
    LUT4 i5127_4_lut (.A(n31_adj_371), .B(n6877), .C(prog[2]), .D(n7476), 
         .Z(clk_pll_enable_58)) /* synthesis lut_function=(!(A+!(B ((D)+!C)))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(76[3] 309[11])
    defparam i5127_4_lut.init = 16'h4404;
    LUT4 i4976_4_lut (.A(ram_out[2]), .B(SP[2]), .C(prog[1]), .D(prog[0]), 
         .Z(n7011)) /* synthesis lut_function=(A (B (C+(D))+!B !(C (D)+!C !(D)))+!A (B (C (D)))) */ ;
    defparam i4976_4_lut.init = 16'hcaa0;
    LUT4 mux_39_Mux_1_i15_4_lut (.A(ram_out[1]), .B(n7016), .C(prog[3]), 
         .D(n7468), .Z(n15_adj_409)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(100[5] 240[13])
    defparam mux_39_Mux_1_i15_4_lut.init = 16'hcac0;
    LUT4 i2_3_lut_4_lut_adj_65 (.A(n7820), .B(n7473), .C(prog[1]), .D(n7822), 
         .Z(n4304)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(301[5:13])
    defparam i2_3_lut_4_lut_adj_65.init = 16'hfeff;
    LUT4 i4973_4_lut (.A(ram_out[3]), .B(SP[3]), .C(prog[1]), .D(prog[0]), 
         .Z(n7008)) /* synthesis lut_function=(A (B (C+(D))+!B !(C (D)+!C !(D)))+!A (B (C (D)))) */ ;
    defparam i4973_4_lut.init = 16'hcaa0;
    LUT4 i4979_4_lut (.A(ram_out[1]), .B(SP[1]), .C(prog[1]), .D(prog[0]), 
         .Z(n7014)) /* synthesis lut_function=(A (B (C+(D))+!B !(C (D)+!C !(D)))+!A (B (C (D)))) */ ;
    defparam i4979_4_lut.init = 16'hcaa0;
    
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
    input [11:0]ram_in;
    output [11:0]ram_out;
    
    wire clk_pll /* synthesis is_clock=1, SET_AS_NETWORK=clk_pll */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(39[6:13])
    
    DP8KC ram_0_1_0 (.DIA0(ram_in[9]), .DIA1(ram_in[10]), .DIA2(ram_in[11]), 
          .DIA3(GND_net), .DIA4(GND_net), .DIA5(GND_net), .DIA6(GND_net), 
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
          .DOA0(ram_out[9]), .DOA1(ram_out[10]), .DOA2(ram_out[11])) /* synthesis MEM_LPC_FILE="ram.lpc", MEM_INIT_FILE="ram.mem", syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=46, LSE_RLINE=54 */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4.v(46[5] 54[2])
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
    defparam ram_0_1_0.INITVAL_00 = "0x00004000040000000000000040000000800000040000000000000040000000800000040000400004";
    defparam ram_0_1_0.INITVAL_01 = "0x00000000000000000000000000000000000000000000000000000000000000000008000080000800";
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
    defparam ram_0_0_1.INITVAL_00 = "0x00407002050180C0180B008070160200E0B002070261302612008050240200A12002050080005000";
    defparam ram_0_0_1.INITVAL_01 = "0x00000000000000000000000000000000000000000000000000000000001B0AA270122801C2801416";
    defparam ram_0_0_1.INITVAL_02 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
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

module ALU (alu_a, alu_type, alu_b, alu_c, alu_co, GND_net, alu_cin) /* synthesis syn_module_defined=1 */ ;
    input [11:0]alu_a;
    input [3:0]alu_type;
    input [11:0]alu_b;
    output [11:0]alu_c;
    output alu_co;
    input GND_net;
    input alu_cin;
    
    wire R_11__N_363 /* synthesis is_clock=1, SET_AS_NETWORK=\ALU_M/R_11__N_363 */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4_alu.v(5[28:29])
    
    wire n7508, n7538;
    wire [11:0]add_c;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4_alu.v(15[21:26])
    
    wire n7507, R_11__N_359, n7536, R_11__N_347, n7533, R_11__N_343, 
        Co_N_369;
    wire [0:0]n2897;
    
    wire n6328;
    wire [11:0]n2426;
    
    wire n6329, n7530, R_11__N_339, R_11__N_355, n7511, n7537, n7541, 
        n7540, n7544, n7527, R_11__N_335, R_11__N_351, R_11__N_331, 
        R_11__N_327, R_11__N_323, R_11__N_319, R_11__N_306, n7543, 
        n7521, n7526, n7518, n7515, n7512, n7509, n2443, n2439, 
        n5, add_co, n3, n7510, n7514, n7513, n7517, n7516, n7520, 
        n7519, n7525, n7529, n6327, n7528, n7532, n7531, n7535, 
        n7534, n7545, n7542, n7539, n6332, n17, n22, n19, n16, 
        n6331, n6330, n6, n6901;
    
    LUT4 mux_641_i1_4_lut_then_4_lut (.A(alu_a[11]), .B(alu_type[2]), .C(alu_b[11]), 
         .D(alu_type[0]), .Z(n7508)) /* synthesis lut_function=(!(A (B+!(C+(D)))+!A (B+!(C (D))))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4_alu.v(32[2] 61[10])
    defparam mux_641_i1_4_lut_then_4_lut.init = 16'h3220;
    LUT4 mux_875_i1_4_lut_then_4_lut (.A(alu_a[2]), .B(alu_type[2]), .C(alu_b[2]), 
         .D(alu_type[0]), .Z(n7538)) /* synthesis lut_function=(!(A (B+!(C+(D)))+!A (B+!(C (D))))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4_alu.v(32[2] 61[10])
    defparam mux_875_i1_4_lut_then_4_lut.init = 16'h3220;
    LUT4 mux_641_i1_4_lut_else_4_lut (.A(add_c[11]), .B(alu_a[11]), .C(alu_type[2]), 
         .D(alu_type[0]), .Z(n7507)) /* synthesis lut_function=(!(A (B (C)+!B (D))+!A (B (C+!(D))+!B ((D)+!C)))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4_alu.v(32[2] 61[10])
    defparam mux_641_i1_4_lut_else_4_lut.init = 16'h0c3a;
    FD1S1A R_11__I_0_i1 (.D(R_11__N_359), .CK(R_11__N_363), .Q(alu_c[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=56, LSE_RLINE=63 */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4_alu.v(31[1] 62[4])
    defparam R_11__I_0_i1.GSR = "DISABLED";
    LUT4 mux_851_i1_3_lut (.A(n7536), .B(alu_b[3]), .C(alu_type[3]), .Z(R_11__N_347)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4_alu.v(32[2] 61[10])
    defparam mux_851_i1_3_lut.init = 16'hcaca;
    LUT4 mux_825_i1_3_lut (.A(n7533), .B(alu_b[4]), .C(alu_type[3]), .Z(R_11__N_343)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4_alu.v(32[2] 61[10])
    defparam mux_825_i1_3_lut.init = 16'hcaca;
    FD1S1I Co_I_0 (.D(n2897[0]), .CK(Co_N_369), .CD(alu_type[3]), .Q(alu_co)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=56, LSE_RLINE=63 */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4_alu.v(31[1] 62[4])
    defparam Co_I_0.GSR = "DISABLED";
    CCU2D add_605_5 (.A0(alu_b[3]), .B0(alu_a[3]), .C0(GND_net), .D0(GND_net), 
          .A1(alu_b[4]), .B1(alu_a[4]), .C1(GND_net), .D1(GND_net), 
          .CIN(n6328), .COUT(n6329), .S0(n2426[3]), .S1(n2426[4]));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4_alu.v(50[9:14])
    defparam add_605_5.INIT0 = 16'h5999;
    defparam add_605_5.INIT1 = 16'h5999;
    defparam add_605_5.INJECT1_0 = "NO";
    defparam add_605_5.INJECT1_1 = "NO";
    LUT4 mux_799_i1_3_lut (.A(n7530), .B(alu_b[5]), .C(alu_type[3]), .Z(R_11__N_339)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4_alu.v(32[2] 61[10])
    defparam mux_799_i1_3_lut.init = 16'hcaca;
    FD1S1A R_11__I_0_i2 (.D(R_11__N_355), .CK(R_11__N_363), .Q(alu_c[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=56, LSE_RLINE=63 */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4_alu.v(31[1] 62[4])
    defparam R_11__I_0_i2.GSR = "DISABLED";
    LUT4 mux_667_i1_4_lut_then_4_lut (.A(alu_a[10]), .B(alu_type[2]), .C(alu_b[10]), 
         .D(alu_type[0]), .Z(n7511)) /* synthesis lut_function=(!(A (B+!(C+(D)))+!A (B+!(C (D))))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4_alu.v(32[2] 61[10])
    defparam mux_667_i1_4_lut_then_4_lut.init = 16'h3220;
    LUT4 mux_875_i1_4_lut_else_4_lut (.A(add_c[2]), .B(alu_a[2]), .C(alu_type[2]), 
         .D(alu_type[0]), .Z(n7537)) /* synthesis lut_function=(!(A (B (C)+!B (D))+!A (B (C+!(D))+!B ((D)+!C)))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4_alu.v(32[2] 61[10])
    defparam mux_875_i1_4_lut_else_4_lut.init = 16'h0c3a;
    LUT4 mux_901_i1_4_lut_then_4_lut (.A(alu_a[1]), .B(alu_type[2]), .C(alu_b[1]), 
         .D(alu_type[0]), .Z(n7541)) /* synthesis lut_function=(!(A (B+!(C+(D)))+!A (B+!(C (D))))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4_alu.v(32[2] 61[10])
    defparam mux_901_i1_4_lut_then_4_lut.init = 16'h3220;
    LUT4 mux_901_i1_4_lut_else_4_lut (.A(add_c[1]), .B(alu_a[1]), .C(alu_type[2]), 
         .D(alu_type[0]), .Z(n7540)) /* synthesis lut_function=(!(A (B (C)+!B (D))+!A (B (C+!(D))+!B ((D)+!C)))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4_alu.v(32[2] 61[10])
    defparam mux_901_i1_4_lut_else_4_lut.init = 16'h0c3a;
    LUT4 mux_927_i1_4_lut_then_4_lut (.A(alu_a[0]), .B(alu_type[2]), .C(alu_b[0]), 
         .D(alu_type[0]), .Z(n7544)) /* synthesis lut_function=(!(A (B+!(C+(D)))+!A (B+!(C (D))))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4_alu.v(32[2] 61[10])
    defparam mux_927_i1_4_lut_then_4_lut.init = 16'h3220;
    LUT4 mux_773_i1_3_lut (.A(n7527), .B(alu_b[6]), .C(alu_type[3]), .Z(R_11__N_335)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4_alu.v(32[2] 61[10])
    defparam mux_773_i1_3_lut.init = 16'hcaca;
    FD1S1A R_11__I_0_i3 (.D(R_11__N_351), .CK(R_11__N_363), .Q(alu_c[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=56, LSE_RLINE=63 */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4_alu.v(31[1] 62[4])
    defparam R_11__I_0_i3.GSR = "DISABLED";
    FD1S1A R_11__I_0_i4 (.D(R_11__N_347), .CK(R_11__N_363), .Q(alu_c[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=56, LSE_RLINE=63 */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4_alu.v(31[1] 62[4])
    defparam R_11__I_0_i4.GSR = "DISABLED";
    FD1S1A R_11__I_0_i5 (.D(R_11__N_343), .CK(R_11__N_363), .Q(alu_c[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=56, LSE_RLINE=63 */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4_alu.v(31[1] 62[4])
    defparam R_11__I_0_i5.GSR = "DISABLED";
    FD1S1A R_11__I_0_i6 (.D(R_11__N_339), .CK(R_11__N_363), .Q(alu_c[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=56, LSE_RLINE=63 */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4_alu.v(31[1] 62[4])
    defparam R_11__I_0_i6.GSR = "DISABLED";
    FD1S1A R_11__I_0_i7 (.D(R_11__N_335), .CK(R_11__N_363), .Q(alu_c[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=56, LSE_RLINE=63 */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4_alu.v(31[1] 62[4])
    defparam R_11__I_0_i7.GSR = "DISABLED";
    FD1S1A R_11__I_0_i8 (.D(R_11__N_331), .CK(R_11__N_363), .Q(alu_c[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=56, LSE_RLINE=63 */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4_alu.v(31[1] 62[4])
    defparam R_11__I_0_i8.GSR = "DISABLED";
    FD1S1A R_11__I_0_i9 (.D(R_11__N_327), .CK(R_11__N_363), .Q(alu_c[8])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=56, LSE_RLINE=63 */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4_alu.v(31[1] 62[4])
    defparam R_11__I_0_i9.GSR = "DISABLED";
    FD1S1A R_11__I_0_i10 (.D(R_11__N_323), .CK(R_11__N_363), .Q(alu_c[9])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=56, LSE_RLINE=63 */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4_alu.v(31[1] 62[4])
    defparam R_11__I_0_i10.GSR = "DISABLED";
    FD1S1A R_11__I_0_i11 (.D(R_11__N_319), .CK(R_11__N_363), .Q(alu_c[10])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=56, LSE_RLINE=63 */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4_alu.v(31[1] 62[4])
    defparam R_11__I_0_i11.GSR = "DISABLED";
    FD1S1A R_11__I_0_i12 (.D(R_11__N_306), .CK(R_11__N_363), .Q(alu_c[11])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=56, LSE_RLINE=63 */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4_alu.v(31[1] 62[4])
    defparam R_11__I_0_i12.GSR = "DISABLED";
    LUT4 mux_927_i1_4_lut_else_4_lut (.A(add_c[0]), .B(alu_a[0]), .C(alu_type[2]), 
         .D(alu_type[0]), .Z(n7543)) /* synthesis lut_function=(!(A (B (C)+!B (D))+!A (B (C+!(D))+!B ((D)+!C)))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4_alu.v(32[2] 61[10])
    defparam mux_927_i1_4_lut_else_4_lut.init = 16'h0c3a;
    LUT4 mux_747_i1_3_lut (.A(n7521), .B(alu_b[7]), .C(alu_type[3]), .Z(R_11__N_331)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4_alu.v(32[2] 61[10])
    defparam mux_747_i1_3_lut.init = 16'hcaca;
    LUT4 mux_771_i1_4_lut_then_4_lut (.A(alu_a[6]), .B(alu_type[2]), .C(alu_b[6]), 
         .D(alu_type[0]), .Z(n7526)) /* synthesis lut_function=(!(A (B+!(C+(D)))+!A (B+!(C (D))))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4_alu.v(32[2] 61[10])
    defparam mux_771_i1_4_lut_then_4_lut.init = 16'h3220;
    LUT4 mux_721_i1_3_lut (.A(n7518), .B(alu_b[8]), .C(alu_type[3]), .Z(R_11__N_327)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4_alu.v(32[2] 61[10])
    defparam mux_721_i1_3_lut.init = 16'hcaca;
    LUT4 mux_695_i1_3_lut (.A(n7515), .B(alu_b[9]), .C(alu_type[3]), .Z(R_11__N_323)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4_alu.v(32[2] 61[10])
    defparam mux_695_i1_3_lut.init = 16'hcaca;
    LUT4 mux_669_i1_3_lut (.A(n7512), .B(alu_b[10]), .C(alu_type[3]), 
         .Z(R_11__N_319)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4_alu.v(32[2] 61[10])
    defparam mux_669_i1_3_lut.init = 16'hcaca;
    LUT4 mux_643_i1_3_lut (.A(n7509), .B(alu_b[11]), .C(alu_type[3]), 
         .Z(R_11__N_306)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4_alu.v(32[2] 61[10])
    defparam mux_643_i1_3_lut.init = 16'hcaca;
    LUT4 i5150_3_lut_4_lut (.A(alu_type[0]), .B(alu_type[1]), .C(alu_type[3]), 
         .D(alu_type[2]), .Z(R_11__N_363)) /* synthesis lut_function=(A (C+!(D))+!A ((C+!(D))+!B)) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4_alu.v(32[2] 61[10])
    defparam i5150_3_lut_4_lut.init = 16'hf1ff;
    LUT4 mux_944_Mux_0_i5_3_lut (.A(n2443), .B(alu_type[0]), .C(n2439), 
         .Z(n5)) /* synthesis lut_function=(!(A (B+!(C))+!A !(B))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4_alu.v(32[2] 61[10])
    defparam mux_944_Mux_0_i5_3_lut.init = 16'h6464;
    LUT4 i3644_2_lut_3_lut (.A(alu_type[0]), .B(alu_type[1]), .C(add_co), 
         .Z(n3)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4_alu.v(32[2] 61[10])
    defparam i3644_2_lut_3_lut.init = 16'h1010;
    LUT4 i1_3_lut_4_lut (.A(alu_type[0]), .B(alu_type[1]), .C(alu_type[2]), 
         .D(alu_type[3]), .Z(Co_N_369)) /* synthesis lut_function=(!(A ((D)+!C)+!A (B ((D)+!C)+!B (C+(D))))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4_alu.v(32[2] 61[10])
    defparam i1_3_lut_4_lut.init = 16'h00e1;
    LUT4 mux_667_i1_4_lut_else_4_lut (.A(add_c[10]), .B(alu_a[10]), .C(alu_type[2]), 
         .D(alu_type[0]), .Z(n7510)) /* synthesis lut_function=(!(A (B (C)+!B (D))+!A (B (C+!(D))+!B ((D)+!C)))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4_alu.v(32[2] 61[10])
    defparam mux_667_i1_4_lut_else_4_lut.init = 16'h0c3a;
    LUT4 mux_693_i1_4_lut_then_4_lut (.A(alu_a[9]), .B(alu_type[2]), .C(alu_b[9]), 
         .D(alu_type[0]), .Z(n7514)) /* synthesis lut_function=(!(A (B+!(C+(D)))+!A (B+!(C (D))))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4_alu.v(32[2] 61[10])
    defparam mux_693_i1_4_lut_then_4_lut.init = 16'h3220;
    LUT4 mux_693_i1_4_lut_else_4_lut (.A(add_c[9]), .B(alu_a[9]), .C(alu_type[2]), 
         .D(alu_type[0]), .Z(n7513)) /* synthesis lut_function=(!(A (B (C)+!B (D))+!A (B (C+!(D))+!B ((D)+!C)))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4_alu.v(32[2] 61[10])
    defparam mux_693_i1_4_lut_else_4_lut.init = 16'h0c3a;
    LUT4 mux_719_i1_4_lut_then_4_lut (.A(alu_a[8]), .B(alu_type[2]), .C(alu_b[8]), 
         .D(alu_type[0]), .Z(n7517)) /* synthesis lut_function=(!(A (B+!(C+(D)))+!A (B+!(C (D))))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4_alu.v(32[2] 61[10])
    defparam mux_719_i1_4_lut_then_4_lut.init = 16'h3220;
    LUT4 mux_719_i1_4_lut_else_4_lut (.A(add_c[8]), .B(alu_a[8]), .C(alu_type[2]), 
         .D(alu_type[0]), .Z(n7516)) /* synthesis lut_function=(!(A (B (C)+!B (D))+!A (B (C+!(D))+!B ((D)+!C)))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4_alu.v(32[2] 61[10])
    defparam mux_719_i1_4_lut_else_4_lut.init = 16'h0c3a;
    LUT4 mux_745_i1_4_lut_then_4_lut (.A(alu_a[7]), .B(alu_type[2]), .C(alu_b[7]), 
         .D(alu_type[0]), .Z(n7520)) /* synthesis lut_function=(!(A (B+!(C+(D)))+!A (B+!(C (D))))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4_alu.v(32[2] 61[10])
    defparam mux_745_i1_4_lut_then_4_lut.init = 16'h3220;
    LUT4 mux_745_i1_4_lut_else_4_lut (.A(add_c[7]), .B(alu_a[7]), .C(alu_type[2]), 
         .D(alu_type[0]), .Z(n7519)) /* synthesis lut_function=(!(A (B (C)+!B (D))+!A (B (C+!(D))+!B ((D)+!C)))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4_alu.v(32[2] 61[10])
    defparam mux_745_i1_4_lut_else_4_lut.init = 16'h0c3a;
    LUT4 mux_771_i1_4_lut_else_4_lut (.A(add_c[6]), .B(alu_a[6]), .C(alu_type[2]), 
         .D(alu_type[0]), .Z(n7525)) /* synthesis lut_function=(!(A (B (C)+!B (D))+!A (B (C+!(D))+!B ((D)+!C)))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4_alu.v(32[2] 61[10])
    defparam mux_771_i1_4_lut_else_4_lut.init = 16'h0c3a;
    LUT4 mux_797_i1_4_lut_then_4_lut (.A(alu_a[5]), .B(alu_type[2]), .C(alu_b[5]), 
         .D(alu_type[0]), .Z(n7529)) /* synthesis lut_function=(!(A (B+!(C+(D)))+!A (B+!(C (D))))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4_alu.v(32[2] 61[10])
    defparam mux_797_i1_4_lut_then_4_lut.init = 16'h3220;
    CCU2D add_605_3 (.A0(alu_b[1]), .B0(alu_a[1]), .C0(GND_net), .D0(GND_net), 
          .A1(alu_b[2]), .B1(alu_a[2]), .C1(GND_net), .D1(GND_net), 
          .CIN(n6327), .COUT(n6328), .S0(n2426[1]), .S1(n2426[2]));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4_alu.v(50[9:14])
    defparam add_605_3.INIT0 = 16'h5999;
    defparam add_605_3.INIT1 = 16'h5999;
    defparam add_605_3.INJECT1_0 = "NO";
    defparam add_605_3.INJECT1_1 = "NO";
    CCU2D add_605_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(alu_b[0]), .B1(alu_a[0]), .C1(GND_net), .D1(GND_net), 
          .COUT(n6327), .S1(n2426[0]));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4_alu.v(50[9:14])
    defparam add_605_1.INIT0 = 16'h0000;
    defparam add_605_1.INIT1 = 16'h5999;
    defparam add_605_1.INJECT1_0 = "NO";
    defparam add_605_1.INJECT1_1 = "NO";
    LUT4 mux_797_i1_4_lut_else_4_lut (.A(add_c[5]), .B(alu_a[5]), .C(alu_type[2]), 
         .D(alu_type[0]), .Z(n7528)) /* synthesis lut_function=(!(A (B (C)+!B (D))+!A (B (C+!(D))+!B ((D)+!C)))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4_alu.v(32[2] 61[10])
    defparam mux_797_i1_4_lut_else_4_lut.init = 16'h0c3a;
    LUT4 mux_823_i1_4_lut_then_4_lut (.A(alu_a[4]), .B(alu_type[2]), .C(alu_b[4]), 
         .D(alu_type[0]), .Z(n7532)) /* synthesis lut_function=(!(A (B+!(C+(D)))+!A (B+!(C (D))))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4_alu.v(32[2] 61[10])
    defparam mux_823_i1_4_lut_then_4_lut.init = 16'h3220;
    LUT4 mux_823_i1_4_lut_else_4_lut (.A(add_c[4]), .B(alu_a[4]), .C(alu_type[2]), 
         .D(alu_type[0]), .Z(n7531)) /* synthesis lut_function=(!(A (B (C)+!B (D))+!A (B (C+!(D))+!B ((D)+!C)))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4_alu.v(32[2] 61[10])
    defparam mux_823_i1_4_lut_else_4_lut.init = 16'h0c3a;
    LUT4 mux_849_i1_4_lut_then_4_lut (.A(alu_a[3]), .B(alu_type[2]), .C(alu_b[3]), 
         .D(alu_type[0]), .Z(n7535)) /* synthesis lut_function=(!(A (B+!(C+(D)))+!A (B+!(C (D))))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4_alu.v(32[2] 61[10])
    defparam mux_849_i1_4_lut_then_4_lut.init = 16'h3220;
    LUT4 mux_849_i1_4_lut_else_4_lut (.A(add_c[3]), .B(alu_a[3]), .C(alu_type[2]), 
         .D(alu_type[0]), .Z(n7534)) /* synthesis lut_function=(!(A (B (C)+!B (D))+!A (B (C+!(D))+!B ((D)+!C)))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4_alu.v(32[2] 61[10])
    defparam mux_849_i1_4_lut_else_4_lut.init = 16'h0c3a;
    PFUMX i5379 (.BLUT(n7543), .ALUT(n7544), .C0(alu_type[1]), .Z(n7545));
    PFUMX i5377 (.BLUT(n7540), .ALUT(n7541), .C0(alu_type[1]), .Z(n7542));
    PFUMX i5375 (.BLUT(n7537), .ALUT(n7538), .C0(alu_type[1]), .Z(n7539));
    PFUMX i5373 (.BLUT(n7534), .ALUT(n7535), .C0(alu_type[1]), .Z(n7536));
    PFUMX i5371 (.BLUT(n7531), .ALUT(n7532), .C0(alu_type[1]), .Z(n7533));
    PFUMX i5369 (.BLUT(n7528), .ALUT(n7529), .C0(alu_type[1]), .Z(n7530));
    PFUMX i5367 (.BLUT(n7525), .ALUT(n7526), .C0(alu_type[1]), .Z(n7527));
    CCU2D add_605_13 (.A0(alu_b[11]), .B0(alu_a[11]), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n6332), 
          .S0(n2426[11]), .S1(n2439));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4_alu.v(50[9:14])
    defparam add_605_13.INIT0 = 16'h5999;
    defparam add_605_13.INIT1 = 16'h0000;
    defparam add_605_13.INJECT1_0 = "NO";
    defparam add_605_13.INJECT1_1 = "NO";
    LUT4 i11_4_lut (.A(n17), .B(n22), .C(n2426[2]), .D(n2426[0]), .Z(n2443)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i11_4_lut.init = 16'hfffe;
    LUT4 i5_2_lut (.A(n2426[10]), .B(n2426[9]), .Z(n17)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i5_2_lut.init = 16'heeee;
    LUT4 i10_4_lut (.A(n19), .B(n2426[7]), .C(n16), .D(n2426[1]), .Z(n22)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i10_4_lut.init = 16'hfffe;
    PFUMX i5363 (.BLUT(n7519), .ALUT(n7520), .C0(alu_type[1]), .Z(n7521));
    CCU2D add_605_11 (.A0(alu_b[9]), .B0(alu_a[9]), .C0(GND_net), .D0(GND_net), 
          .A1(alu_b[10]), .B1(alu_a[10]), .C1(GND_net), .D1(GND_net), 
          .CIN(n6331), .COUT(n6332), .S0(n2426[9]), .S1(n2426[10]));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4_alu.v(50[9:14])
    defparam add_605_11.INIT0 = 16'h5999;
    defparam add_605_11.INIT1 = 16'h5999;
    defparam add_605_11.INJECT1_0 = "NO";
    defparam add_605_11.INJECT1_1 = "NO";
    CCU2D add_605_9 (.A0(alu_b[7]), .B0(alu_a[7]), .C0(GND_net), .D0(GND_net), 
          .A1(alu_b[8]), .B1(alu_a[8]), .C1(GND_net), .D1(GND_net), 
          .CIN(n6330), .COUT(n6331), .S0(n2426[7]), .S1(n2426[8]));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4_alu.v(50[9:14])
    defparam add_605_9.INIT0 = 16'h5999;
    defparam add_605_9.INIT1 = 16'h5999;
    defparam add_605_9.INJECT1_0 = "NO";
    defparam add_605_9.INJECT1_1 = "NO";
    LUT4 i7_4_lut (.A(n2426[5]), .B(n2426[8]), .C(n2426[3]), .D(n2426[6]), 
         .Z(n19)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i7_4_lut.init = 16'hfffe;
    PFUMX i5361 (.BLUT(n7516), .ALUT(n7517), .C0(alu_type[1]), .Z(n7518));
    CCU2D add_605_7 (.A0(alu_b[5]), .B0(alu_a[5]), .C0(GND_net), .D0(GND_net), 
          .A1(alu_b[6]), .B1(alu_a[6]), .C1(GND_net), .D1(GND_net), 
          .CIN(n6329), .COUT(n6330), .S0(n2426[5]), .S1(n2426[6]));   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4_alu.v(50[9:14])
    defparam add_605_7.INIT0 = 16'h5999;
    defparam add_605_7.INIT1 = 16'h5999;
    defparam add_605_7.INJECT1_0 = "NO";
    defparam add_605_7.INJECT1_1 = "NO";
    LUT4 i4_2_lut (.A(n2426[11]), .B(n2426[4]), .Z(n16)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i4_2_lut.init = 16'heeee;
    PFUMX i5359 (.BLUT(n7513), .ALUT(n7514), .C0(alu_type[1]), .Z(n7515));
    PFUMX i5357 (.BLUT(n7510), .ALUT(n7511), .C0(alu_type[1]), .Z(n7512));
    PFUMX mux_944_Mux_0_i7 (.BLUT(n5), .ALUT(n6), .C0(n6901), .Z(n2897[0]));
    LUT4 i5124_2_lut (.A(alu_type[2]), .B(alu_type[1]), .Z(n6901)) /* synthesis lut_function=(!(A (B))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4_alu.v(32[2] 61[10])
    defparam i5124_2_lut.init = 16'h7777;
    PFUMX i5355 (.BLUT(n7507), .ALUT(n7508), .C0(alu_type[1]), .Z(n7509));
    LUT4 mux_929_i1_3_lut (.A(n7545), .B(alu_b[0]), .C(alu_type[3]), .Z(R_11__N_359)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4_alu.v(32[2] 61[10])
    defparam mux_929_i1_3_lut.init = 16'hcaca;
    LUT4 i5083_3_lut_4_lut (.A(n2439), .B(alu_type[0]), .C(alu_type[2]), 
         .D(n3), .Z(n6)) /* synthesis lut_function=(!(A (C+!(D))+!A !(B (C+(D))+!B !(C+!(D))))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4_alu.v(32[2] 61[10])
    defparam i5083_3_lut_4_lut.init = 16'h4f40;
    LUT4 mux_903_i1_3_lut (.A(n7542), .B(alu_b[1]), .C(alu_type[3]), .Z(R_11__N_355)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4_alu.v(32[2] 61[10])
    defparam mux_903_i1_3_lut.init = 16'hcaca;
    LUT4 mux_877_i1_3_lut (.A(n7539), .B(alu_b[2]), .C(alu_type[3]), .Z(R_11__N_351)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4_alu.v(32[2] 61[10])
    defparam mux_877_i1_3_lut.init = 16'hcaca;
    add ADD_M (.alu_a({alu_a}), .alu_b({alu_b}), .alu_cin(alu_cin), .add_c({add_c}), 
        .add_co(add_co), .GND_net(GND_net)) /* synthesis NGD_DRC_MASK=1, syn_module_defined=1 */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4_alu.v(19[5] 25[2])
    
endmodule
//
// Verilog Description of module add
//

module add (alu_a, alu_b, alu_cin, add_c, add_co, GND_net) /* synthesis NGD_DRC_MASK=1, syn_module_defined=1 */ ;
    input [11:0]alu_a;
    input [11:0]alu_b;
    input alu_cin;
    output [11:0]add_c;
    output add_co;
    input GND_net;
    
    
    wire precin, co0, co1, co2, co3, co4, co5;
    
    FADD2B addsub_0 (.A0(alu_cin), .A1(alu_a[0]), .B0(alu_cin), .B1(alu_b[0]), 
           .CI(precin), .COUT(co0), .S1(add_c[0])) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=19, LSE_RLINE=25 */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4_alu.v(19[5] 25[2])
    FADD2B addsub_1 (.A0(alu_a[1]), .A1(alu_a[2]), .B0(alu_b[1]), .B1(alu_b[2]), 
           .CI(co0), .COUT(co1), .S0(add_c[1]), .S1(add_c[2])) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=19, LSE_RLINE=25 */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4_alu.v(19[5] 25[2])
    FADD2B addsub_2 (.A0(alu_a[3]), .A1(alu_a[4]), .B0(alu_b[3]), .B1(alu_b[4]), 
           .CI(co1), .COUT(co2), .S0(add_c[3]), .S1(add_c[4])) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=19, LSE_RLINE=25 */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4_alu.v(19[5] 25[2])
    FADD2B addsub_3 (.A0(alu_a[5]), .A1(alu_a[6]), .B0(alu_b[5]), .B1(alu_b[6]), 
           .CI(co2), .COUT(co3), .S0(add_c[5]), .S1(add_c[6])) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=19, LSE_RLINE=25 */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4_alu.v(19[5] 25[2])
    FADD2B addsub_4 (.A0(alu_a[7]), .A1(alu_a[8]), .B0(alu_b[7]), .B1(alu_b[8]), 
           .CI(co3), .COUT(co4), .S0(add_c[7]), .S1(add_c[8])) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=19, LSE_RLINE=25 */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4_alu.v(19[5] 25[2])
    FADD2B addsub_5 (.A0(alu_a[9]), .A1(alu_a[10]), .B0(alu_b[9]), .B1(alu_b[10]), 
           .CI(co4), .COUT(co5), .S0(add_c[9]), .S1(add_c[10])) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=19, LSE_RLINE=25 */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4_alu.v(19[5] 25[2])
    FADD2B addsub_6 (.A0(alu_a[11]), .A1(GND_net), .B0(alu_b[11]), .B1(GND_net), 
           .CI(co5), .S0(add_c[11]), .S1(add_co)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=19, LSE_RLINE=25 */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4_alu.v(19[5] 25[2])
    FADD2B precin_inst41 (.A0(GND_net), .A1(GND_net), .B0(GND_net), .B1(GND_net), 
           .CI(GND_net), .COUT(precin)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=19, LSE_RLINE=25 */ ;   // d:/a_step_fpga_project/cpu4.5/cpu4/cpu4_alu.v(19[5] 25[2])
    
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

