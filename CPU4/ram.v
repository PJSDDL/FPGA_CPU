/* Verilog netlist generated by SCUBA Diamond (64-bit) 3.12.0.240.2 */
/* Module Version: 7.5 */
/* D:\Diamond\diamond\3.12\ispfpga\bin\nt64\scuba.exe -w -n ram -lang verilog -synth lse -bus_exp 7 -bb -arch xo2c00 -type bram -wp 10 -rp 1000 -addr_width 10 -data_width 16 -num_rows 1024 -cascade -1 -memfile d:/a_step_fpga_project/cpu4.5/cpu4/ram.mem -memformat bin -init_data DYNAMIC -writemode NORMAL  */
/* Sun Jul 21 17:17:41 2024 */


`timescale 1 ns / 1 ps
module ram (Clock, ClockEn, Reset, WE, Address, Data, Q)/* synthesis NGD_DRC_MASK=1 */;
    input wire Clock;
    input wire ClockEn;
    input wire Reset;
    input wire WE;
    input wire [9:0] Address;
    input wire [15:0] Data;
    output wire [15:0] Q;

    wire scuba_vhi;
    wire scuba_vlo;

    defparam ram_0_0_1.INIT_DATA = "DYNAMIC" ;
    defparam ram_0_0_1.ASYNC_RESET_RELEASE = "SYNC" ;
    defparam ram_0_0_1.INITVAL_1F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam ram_0_0_1.INITVAL_1E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam ram_0_0_1.INITVAL_1D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam ram_0_0_1.INITVAL_1C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam ram_0_0_1.INITVAL_1B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam ram_0_0_1.INITVAL_1A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam ram_0_0_1.INITVAL_19 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam ram_0_0_1.INITVAL_18 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam ram_0_0_1.INITVAL_17 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam ram_0_0_1.INITVAL_16 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam ram_0_0_1.INITVAL_15 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam ram_0_0_1.INITVAL_14 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam ram_0_0_1.INITVAL_13 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam ram_0_0_1.INITVAL_12 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam ram_0_0_1.INITVAL_11 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam ram_0_0_1.INITVAL_10 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam ram_0_0_1.INITVAL_0F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam ram_0_0_1.INITVAL_0E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam ram_0_0_1.INITVAL_0D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam ram_0_0_1.INITVAL_0C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam ram_0_0_1.INITVAL_0B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam ram_0_0_1.INITVAL_0A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam ram_0_0_1.INITVAL_09 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam ram_0_0_1.INITVAL_08 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam ram_0_0_1.INITVAL_07 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam ram_0_0_1.INITVAL_06 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam ram_0_0_1.INITVAL_05 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam ram_0_0_1.INITVAL_04 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam ram_0_0_1.INITVAL_03 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam ram_0_0_1.INITVAL_02 = "0x0000000000000000000000000000000000000000002130920009C0402A1301812002050250000A01" ;
    defparam ram_0_0_1.INITVAL_01 = "0x010010264001E0100A3F01E0800A11000350081301812000050243F01E153FE050181207E0E08200" ;
    defparam ram_0_0_1.INITVAL_00 = "0x0242200A130180D0300A0181200A0B0244001C1B01A0001405012000121100012012050080001E00" ;
    defparam ram_0_0_1.CSDECODE_B = "0b111" ;
    defparam ram_0_0_1.CSDECODE_A = "0b000" ;
    defparam ram_0_0_1.WRITEMODE_B = "NORMAL" ;
    defparam ram_0_0_1.WRITEMODE_A = "NORMAL" ;
    defparam ram_0_0_1.GSR = "ENABLED" ;
    defparam ram_0_0_1.RESETMODE = "ASYNC" ;
    defparam ram_0_0_1.REGMODE_B = "NOREG" ;
    defparam ram_0_0_1.REGMODE_A = "NOREG" ;
    defparam ram_0_0_1.DATA_WIDTH_B = 9 ;
    defparam ram_0_0_1.DATA_WIDTH_A = 9 ;
    DP8KC ram_0_0_1 (.DIA8(Data[8]), .DIA7(Data[7]), .DIA6(Data[6]), .DIA5(Data[5]), 
        .DIA4(Data[4]), .DIA3(Data[3]), .DIA2(Data[2]), .DIA1(Data[1]), 
        .DIA0(Data[0]), .ADA12(Address[9]), .ADA11(Address[8]), .ADA10(Address[7]), 
        .ADA9(Address[6]), .ADA8(Address[5]), .ADA7(Address[4]), .ADA6(Address[3]), 
        .ADA5(Address[2]), .ADA4(Address[1]), .ADA3(Address[0]), .ADA2(scuba_vlo), 
        .ADA1(scuba_vlo), .ADA0(scuba_vhi), .CEA(ClockEn), .OCEA(ClockEn), 
        .CLKA(Clock), .WEA(WE), .CSA2(scuba_vlo), .CSA1(scuba_vlo), .CSA0(scuba_vlo), 
        .RSTA(Reset), .DIB8(scuba_vlo), .DIB7(scuba_vlo), .DIB6(scuba_vlo), 
        .DIB5(scuba_vlo), .DIB4(scuba_vlo), .DIB3(scuba_vlo), .DIB2(scuba_vlo), 
        .DIB1(scuba_vlo), .DIB0(scuba_vlo), .ADB12(scuba_vlo), .ADB11(scuba_vlo), 
        .ADB10(scuba_vlo), .ADB9(scuba_vlo), .ADB8(scuba_vlo), .ADB7(scuba_vlo), 
        .ADB6(scuba_vlo), .ADB5(scuba_vlo), .ADB4(scuba_vlo), .ADB3(scuba_vlo), 
        .ADB2(scuba_vlo), .ADB1(scuba_vlo), .ADB0(scuba_vlo), .CEB(scuba_vhi), 
        .OCEB(scuba_vhi), .CLKB(scuba_vlo), .WEB(scuba_vlo), .CSB2(scuba_vlo), 
        .CSB1(scuba_vlo), .CSB0(scuba_vlo), .RSTB(scuba_vlo), .DOA8(Q[8]), 
        .DOA7(Q[7]), .DOA6(Q[6]), .DOA5(Q[5]), .DOA4(Q[4]), .DOA3(Q[3]), 
        .DOA2(Q[2]), .DOA1(Q[1]), .DOA0(Q[0]), .DOB8(), .DOB7(), .DOB6(), 
        .DOB5(), .DOB4(), .DOB3(), .DOB2(), .DOB1(), .DOB0())
             /* synthesis MEM_LPC_FILE="ram.lpc" */
             /* synthesis MEM_INIT_FILE="ram.mem" */;

    VHI scuba_vhi_inst (.Z(scuba_vhi));

    VLO scuba_vlo_inst (.Z(scuba_vlo));

    defparam ram_0_1_0.INIT_DATA = "DYNAMIC" ;
    defparam ram_0_1_0.ASYNC_RESET_RELEASE = "SYNC" ;
    defparam ram_0_1_0.INITVAL_1F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam ram_0_1_0.INITVAL_1E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam ram_0_1_0.INITVAL_1D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam ram_0_1_0.INITVAL_1C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam ram_0_1_0.INITVAL_1B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam ram_0_1_0.INITVAL_1A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam ram_0_1_0.INITVAL_19 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam ram_0_1_0.INITVAL_18 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam ram_0_1_0.INITVAL_17 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam ram_0_1_0.INITVAL_16 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam ram_0_1_0.INITVAL_15 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam ram_0_1_0.INITVAL_14 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam ram_0_1_0.INITVAL_13 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam ram_0_1_0.INITVAL_12 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam ram_0_1_0.INITVAL_11 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam ram_0_1_0.INITVAL_10 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam ram_0_1_0.INITVAL_0F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam ram_0_1_0.INITVAL_0E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam ram_0_1_0.INITVAL_0D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam ram_0_1_0.INITVAL_0C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam ram_0_1_0.INITVAL_0B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam ram_0_1_0.INITVAL_0A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam ram_0_1_0.INITVAL_09 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam ram_0_1_0.INITVAL_08 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam ram_0_1_0.INITVAL_07 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam ram_0_1_0.INITVAL_06 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam ram_0_1_0.INITVAL_05 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam ram_0_1_0.INITVAL_04 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam ram_0_1_0.INITVAL_03 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000" ;
    defparam ram_0_1_0.INITVAL_02 = "0x00000000000000000000000000000000000000000000000040000400000000000000400007F08000" ;
    defparam ram_0_1_0.INITVAL_01 = "0x0000000000080000800008000080000800008000000000004000000080000FE40000000004000040" ;
    defparam ram_0_1_0.INITVAL_00 = "0x00000080000000000000000000800000000080000000000000000400000008000000400004000040" ;
    defparam ram_0_1_0.CSDECODE_B = "0b111" ;
    defparam ram_0_1_0.CSDECODE_A = "0b000" ;
    defparam ram_0_1_0.WRITEMODE_B = "NORMAL" ;
    defparam ram_0_1_0.WRITEMODE_A = "NORMAL" ;
    defparam ram_0_1_0.GSR = "ENABLED" ;
    defparam ram_0_1_0.RESETMODE = "ASYNC" ;
    defparam ram_0_1_0.REGMODE_B = "NOREG" ;
    defparam ram_0_1_0.REGMODE_A = "NOREG" ;
    defparam ram_0_1_0.DATA_WIDTH_B = 9 ;
    defparam ram_0_1_0.DATA_WIDTH_A = 9 ;
    DP8KC ram_0_1_0 (.DIA8(scuba_vlo), .DIA7(scuba_vlo), .DIA6(Data[15]), 
        .DIA5(Data[14]), .DIA4(Data[13]), .DIA3(Data[12]), .DIA2(Data[11]), 
        .DIA1(Data[10]), .DIA0(Data[9]), .ADA12(Address[9]), .ADA11(Address[8]), 
        .ADA10(Address[7]), .ADA9(Address[6]), .ADA8(Address[5]), .ADA7(Address[4]), 
        .ADA6(Address[3]), .ADA5(Address[2]), .ADA4(Address[1]), .ADA3(Address[0]), 
        .ADA2(scuba_vlo), .ADA1(scuba_vlo), .ADA0(scuba_vhi), .CEA(ClockEn), 
        .OCEA(ClockEn), .CLKA(Clock), .WEA(WE), .CSA2(scuba_vlo), .CSA1(scuba_vlo), 
        .CSA0(scuba_vlo), .RSTA(Reset), .DIB8(scuba_vlo), .DIB7(scuba_vlo), 
        .DIB6(scuba_vlo), .DIB5(scuba_vlo), .DIB4(scuba_vlo), .DIB3(scuba_vlo), 
        .DIB2(scuba_vlo), .DIB1(scuba_vlo), .DIB0(scuba_vlo), .ADB12(scuba_vlo), 
        .ADB11(scuba_vlo), .ADB10(scuba_vlo), .ADB9(scuba_vlo), .ADB8(scuba_vlo), 
        .ADB7(scuba_vlo), .ADB6(scuba_vlo), .ADB5(scuba_vlo), .ADB4(scuba_vlo), 
        .ADB3(scuba_vlo), .ADB2(scuba_vlo), .ADB1(scuba_vlo), .ADB0(scuba_vlo), 
        .CEB(scuba_vhi), .OCEB(scuba_vhi), .CLKB(scuba_vlo), .WEB(scuba_vlo), 
        .CSB2(scuba_vlo), .CSB1(scuba_vlo), .CSB0(scuba_vlo), .RSTB(scuba_vlo), 
        .DOA8(), .DOA7(), .DOA6(Q[15]), .DOA5(Q[14]), .DOA4(Q[13]), .DOA3(Q[12]), 
        .DOA2(Q[11]), .DOA1(Q[10]), .DOA0(Q[9]), .DOB8(), .DOB7(), .DOB6(), 
        .DOB5(), .DOB4(), .DOB3(), .DOB2(), .DOB1(), .DOB0())
             /* synthesis MEM_LPC_FILE="ram.lpc" */
             /* synthesis MEM_INIT_FILE="ram.mem" */;



    // exemplar begin
    // exemplar attribute ram_0_0_1 MEM_LPC_FILE ram.lpc
    // exemplar attribute ram_0_0_1 MEM_INIT_FILE ram.mem
    // exemplar attribute ram_0_1_0 MEM_LPC_FILE ram.lpc
    // exemplar attribute ram_0_1_0 MEM_INIT_FILE ram.mem
    // exemplar end

endmodule
