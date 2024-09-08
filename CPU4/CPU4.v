`timescale 1 ns / 1 ps

module CPU4(
	input  clk,  /* synthesis syn_force_pads = 1 */
	input  rst,  /* synthesis syn_force_pads = 1 */
	input  key,		//中断触发源
	input  [15:0] rx,
	output reg [15:0] P,  
	//P[2],OLED_DC;P[6],OLED_SCL;P[8],OLED_SDA;P[9],OLED_RES;
	output wire [1:0] led_dig
);

parameter RAM_Add_Width = 10;  //内存地址位宽
`define    IRQ     1'b1		//删除该语句不生成中断模块

//CPU寄存器
reg [15: 0] A;
reg [15: 0] B;
reg [15: 0] SP;
reg flag;
reg IRQ_EN;
reg [RAM_Add_Width-1: 0] PC;
reg [RAM_Add_Width-1: 0] PC_temp;

assign led_dig = 2'b00;

//CPU状态机以及连线、不可读写寄存器
reg [15: 0] prog; 	//暂存程序
reg [2:0] statu;	//状态寄存器
reg [15: 0] ram_in;		//RAM输入
wire [15: 0] ram_out;		//RAM输出
reg ram_we;		//RAM读写
reg [15: 0] alu_a;
reg [15: 0] alu_b;
reg alu_cin;
wire [15: 0] alu_c;
reg [3:0] alu_type;
wire alu_co; 
wire clk_pll;

PLL pll_m(
	.CLKI(clk),
	.CLKOP(clk_pll)
);

ram RAM_M(
	.Reset(1'b0),
	.Address(PC),
    .Data(ram_in),
    .Clock(clk_pll), 
    .WE(ram_we),
    .ClockEn(1'b1),
    .Q(ram_out)
);
 
ALU ALU_M(
	.A(alu_a),
	.B(alu_b),
	.Ci(alu_cin),
	.R(alu_c),
	.Co(alu_co),
	.type(alu_type)
);


always@(posedge clk_pll or negedge rst)
begin
	if(rst == 0) begin
		PC <= 16'b0000_0000_0000_0010;
		statu <= 12'b0;
		ram_we <= 1'b0;
		IRQ_EN <= 1'b0;
		SP <= 16'b1111_1111_0000_0000;
		
	end else begin
		case(statu)
			3'h0: begin	 //中断、等待取指令
				`ifdef IRQ
				if(IRQ_EN == 1'b1 && key == 1'b0) begin 	//处理中断
					IRQ_EN <= 1'b0;
					PC_temp <= PC; 	//暂存程序位置
					PC <= 12'b0000_0000_0000; 	//中断入口
					statu <= 3'h0;
				end else begin
					statu <= 3'h1;  //等待内存读取
				end
				`else
					statu <= 3'h1;
				`endif
			end
			3'h1: begin  //保存指令，判断是否取立即数
				prog <= ram_out;
				if (ram_out[15] == 1'b1) begin 	//看有无立即数
					statu <= 3'h2;
					PC <= PC + 1'b1;	//取立即数：PC寄存器+1
				end else begin
					statu <= 3'h3;
				end
			end
			3'h2: begin  //等待取立即数
				statu <= 3'h3;
			end
			3'h3: begin  //指令译码、内存与ALU信号输入
				case(prog[4:0])
					5'b00000: begin 	//JMP，无条件跳转
						PC <= ram_out;
					end
					5'b00001: begin 	//JTA，跳转到A寄存器对应的位置
						alu_a <= A;
						alu_b <= B;
						alu_cin <= 0;
						alu_type <= 4'b0001;
					end
					5'b00010: begin 	//JB，寄存器A > 寄存器B，跳转到立即数对应的位置
						alu_a <= A;
						alu_b <= B;
						alu_cin <= 0;
						alu_type <= 4'b0101;
					end
					5'b00011: begin 	//JS，寄存器A < 寄存器B，跳转到立即数对应的位置
						alu_a <= A;
						alu_b <= B;
						alu_cin <= 0;
						alu_type <= 4'b0110;
					end
					5'b00100: begin 	//JZ，寄存器A = 寄存器B，跳转到立即数对应的位置
						alu_a <= A;
						alu_b <= B;
						alu_cin <= 0;
						alu_type <= 4'b0111;
					end
					5'b00101: begin 	//MOVA，寄存器A = 立即数
						alu_a <= ram_out;
						alu_b <= B;
						alu_cin <= 0;
						alu_type <= 4'b0001;
					end
					5'b00110: begin 	// 
						
					end
					5'b00111: begin 	//
						
					end
					5'b01000: begin 	// 
						
					end
					5'b01001: begin 	//IN,寄存器A = rx
						A <= rx;
					end
					5'b01010: begin 	//MOVAP，寄存器A = 寄存器P，该指令不能读取IO，只能读取曾经写入IO的数据
						A <= P;
					end
					
					5'b01011: begin 	//PUSHB，寄存器B入栈
						PC_temp <= PC + 1'b1;
						PC <= SP;
						ram_in <= B;
						ram_we <= 1'b1;
						SP <= SP + 1;
					end
					5'b01100: begin 	//POPB，出栈，保存到寄存器B
						PC_temp <= PC + 1'b1;
						PC <= SP - 1;
						SP <= SP - 1;
					end
					5'b01101: begin 	//MOVPA，寄存器P = 寄存器A
						P <= A;
					end
					5'b01110: begin 	//READA，读取内存数据到A寄存器，内存地址为立即数
						PC_temp <= PC + 1'b1;
						PC <= ram_out;
					end
					5'b01111: begin 	//SAVEA，保存A寄存器数据到内存，内存地址为立即数
						PC_temp <= PC + 1'b1;
						PC <= ram_out;
						ram_in <= A;
						ram_we <= 1'b1;
					end
					5'b10000: begin 	//READFB，读取内存数据到A寄存器，内存地址为寄存器B的值
						PC_temp <= PC + 1'b1;
						PC <= B;
					end
					5'b10001: begin 	//SAVETB，保存A寄存器数据到内存，内存地址为寄存器B的值
						PC_temp <= PC + 1'b1;
						PC <= B;
						ram_in <= A;
						ram_we <= 1'b1;
					end
					5'b10010: begin 	//PUSHA，寄存器A入栈
						PC_temp <= PC + 1'b1;
						PC <= SP;
						ram_in <= A;
						ram_we <= 1'b1;
						SP <= SP + 1;
					end
					5'b10011: begin 	//POPA，出栈，保存到寄存器A
						PC_temp <= PC + 1'b1;
						PC <= SP - 1;
						SP <= SP - 1;
					end
					5'b10100: begin 	//SP，寄存器SP = 寄存器A
						SP <= A;
					end
					5'b10101: begin 	//ADD，寄存器A = 寄存器A + 寄存器B
						alu_a <= A;
						alu_b <= B;
						alu_cin <= 0;
						alu_type <= 4'b0000;
					end
					5'b10110: begin 	//ADDB，寄存器B = 寄存器A + 寄存器B
						alu_a <= A;
						alu_b <= B;
						alu_cin <= 0;
						alu_type <= 4'b0000;
					end
					5'b10111: begin 	//AND，寄存器A = 寄存器A AND 寄存器B
						alu_a <= A;
						alu_b <= B;
						alu_cin <= 0;
						alu_type <= 4'b0010;
					end
					5'b11000: begin 	//OR，寄存器A = 寄存器A OR 寄存器B
						alu_a <= A;
						alu_b <= B;
						alu_cin <= 0;
						alu_type <= 4'b0011;
					end
					5'b11001: begin 	//NOT，寄存器A = NOT 寄存器A
						alu_a <= A;
						alu_b <= B;
						alu_cin <= 0;
						alu_type <= 4'b0100;
					end
					5'b11010: begin 	//ADDF，寄存器A = 寄存器A + 寄存器B + FLAG
						alu_a <= A;
						alu_b <= B;
						alu_cin <= flag;
						alu_type <= 4'b0000;
					end
					
					`ifdef IRQ
					5'b11011: begin		//RETI，结束中断程序，跳转回之前的位置
						
					end
					5'b11100: begin		//IEN，允许中断
						IRQ_EN <= 1'b1;
					end
					`endif
					endcase
					
				statu <= 3'h4;
			end
			3'h4: begin  //ALU运算结果保存、内存读写
				case(prog[4:0]) 	//读写内存同时进行逻辑运算
					5'b00101: begin 	//MOVA
						A <= alu_c;
					end
					5'b10101: begin		//ADD
						A <= alu_c;
						flag <= alu_co;
					end
					5'b10110: begin		//ADDB
						B <= alu_c;
						flag <= alu_co;
					end
					5'b10111, 5'b11000, 5'b11001: begin		//AND OR NOT
						A <= alu_c;
					end
					5'b11010: begin		//ADDF
						A <= alu_c;
						flag <= alu_co;
					end
				endcase
				
				statu <= 3'h5;
			end 
			3'h5: begin  //内存读写结果处理，内存信号恢复，PC寄存器更新
				//内存相关
				case(prog[4:0])	
				5'b01110, 5'b10000, 5'b10011: begin 	//READA READFB POPA
					A <= ram_out;
				end
				5'b01100: begin 	//READB POPB 
					B <= ram_out;
				end 
				//SAVEA SAVETB PUSHA PUSHB
				5'b01111, 5'b10001, 5'b10010, 5'b01011:	begin
					ram_we <= 1'b0;
				end
				endcase
				
				//回写PC
				case(prog[4:0])	 
				5'b00000:  begin//JMP
					PC <= PC;
				end
				5'b00001:  begin//JTA
					PC <= alu_c;
				end
				5'b00010, 5'b00011, 5'b00100:  begin//JB JS JZ
					if(alu_co == 1'b1) begin
						PC <= ram_out;
					end else begin
						PC <= PC + 1'b1;
					end
				end
				
				//内存读写指令，恢复PC
				//中断恢复PC
				5'b01110, 5'b10000, 5'b10011, 
				5'b01100,
				5'b01111, 5'b10001, 5'b10010, 5'b01011,
				5'b11011: begin
					PC <= PC_temp;
				end
				default: begin
					PC <= PC + 1'b1;
				end
				endcase
				
				statu <= 3'h0;
			end
			endcase
	end	
		 
end


endmodule