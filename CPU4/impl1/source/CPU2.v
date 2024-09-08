`timescale 1 ns / 1 ps

module DDS(
	input  clk,  /* synthesis syn_force_pads = 1 */
	input  rst,  /* synthesis syn_force_pads = 1 */
	input  key,
	output reg [15:0] led,
	output reg [11:0] P,  
	//P[2],OLED_DC;P[6],OLED_SCL;P[8],OLED_SDA;P[9],OLED_RES;;
	output wire [1:0] led_dig
);

parameter RAM_Add_Width = 10;  //内存地址位宽

//CPU寄存器
reg [11:0] A;
reg [11:0] B;
reg [11:0] C;
reg flag;
reg IRQ_EN;
reg [RAM_Add_Width-1:0] PC;
reg [11:0] PC_temp;

assign led_dig = 2'b00;

//CPU状态机以及连线、不可读写寄存器
reg [11:0] prog; 	//暂存程序
reg [2:0] statu;	//状态寄存器
reg [11:0] ram_in;		//RAM输入
wire [11:0] ram_out;		//RAM输出
reg ram_we;		//RAM读写
reg [11:0] add_a;
reg [11:0] add_b;
reg add_cin;
wire [11:0] add_c;
wire add_co; 
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

add ADD_M(
	.DataA(add_a),
	.DataB(add_b),
	.Cin(add_cin),
	.Result(add_c),
	.Cout(add_co)
);


always@(posedge clk_pll or negedge rst)
begin
	if(rst == 0) begin
		PC <= 12'b0000_0000_0010;
		statu <= 12'b0;
		ram_we <= 1'b0;
		IRQ_EN <= 1'b0;
		
	end else begin
		if(statu == 3'h0) begin		//等待指令取出
			if(IRQ_EN == 1'b1 && key == 1'b0) begin 	//处理中断
				IRQ_EN <= 1'b0;
				PC_temp <= PC; 	//暂存程序位置
				PC <= 12'b0000_0000_0000; 	//中断入口
				statu <= 3'h0;
			end else begin
				statu <= 3'h5;
			end
			
		end else if(statu == 3'h5) begin	//取指令
			prog <= ram_out;
			if (ram_out[11] == 1'b1) begin 	//看有无立即数
				statu <= 3'h1;
				PC <= PC + 1'b1;	//取立即数：PC寄存器+1
			end else begin
				statu <= 3'h4;
			end
			
		end else if (statu == 3'h1) begin		//等待立即数取出
			statu <= 3'h4;
			
		end else if (statu == 3'h4) begin		//指令译码
			if(prog[4:0] == 5'b00000) begin 	//JMP，无条件跳转
				PC <= ram_out;
				statu <= 3'h0;
			end	else if (prog[4:0] == 5'b00001) begin		//READA，读取内存数据到A寄存器，内存地址为立即数
				PC_temp <= PC + 1'b1;
				PC <= ram_out;
				statu <= 3'h6;
			end else if (prog[4:0] == 5'b00010) begin		//ADD，寄存器A = 寄存器A + 寄存器B
				add_a <= A;
				add_b <= B;
				add_cin <= 1'b0;
				statu <= 3'h7; 
			end else if (prog[4:0] == 5'b00011) begin		//ADDF，寄存器A = 寄存器A + 寄存器B + 进位
				add_a <= A;
				add_b <= B;
				add_cin <= flag;
				statu <= 3'h7; 
			end else if (prog[4:0] == 5'b00100) begin		//SAVE，寄存器A数据保存到内存，内存地址为立即数
				PC_temp <= PC + 1'b1;
				PC <= ram_out;
				ram_in <= A;
				ram_we <= 1'b1;
				statu <= 3'h6;
			end else if (prog[4:0] == 5'b00101) begin		//READFC，读取内存数据到A寄存器，内存地址为寄存器C内的值
				PC_temp <= PC + 1'b1;
				PC <= C;
				statu <= 3'h6;
			end else if (prog[4:0] == 5'b00110) begin		//SAVETC，寄存器A数据保存到内存，内存地址为寄存器C内的值
				PC_temp <= PC + 1'b1;
				PC <= C;
				ram_in <= A;
				ram_we <= 1'b1;
				statu <= 3'h6;
			end else if (prog[4:0] == 5'b00111) begin		//MOVCA，寄存器C = 寄存器A
				C <= A;
				PC <= PC + 1'b1;
				statu <= 3'h0;
			end else if (prog[4:0] == 5'b01000) begin		//MOVAC，寄存器A = 寄存器C
				A <= C;
				PC <= PC + 1'b1;
				statu <= 3'h0;
			end else if (prog[4:0] == 5'b01001) begin		//MOVBA，寄存器B = 寄存器A
				B <= A;
				PC <= PC + 1'b1;
				statu <= 3'h0;
			end else if (prog[4:0] == 5'b01010) begin		//MOVAB，寄存器A = 寄存器B
				A <= B;
				PC <= PC + 1'b1;
				statu <= 3'h0;
			end else if (prog[4:0] == 5'b01011) begin		//JZ，寄存器A为零跳转
				statu <= 3'h7;
			end else if (prog[4:0] == 5'b01100) begin		//CMP，寄存器A大于寄存器B跳转
				statu <= 3'h7;
			end else if (prog[4:0] == 5'b01101) begin		//OUT，LED输出
				led <= A;
				PC <= PC + 1;
				statu <= 3'h0;
			end else if (prog[4:0] == 5'b01110) begin		//NAND，寄存器A = 寄存器A 与非 寄存器B
				statu <= 3'h7;
			end else if (prog[4:0] == 5'b01111) begin		//ADDNUMC，寄存器C = 寄存器C + 立即数
				add_a <= C;
				add_b <= ram_out;
				add_cin <= 1'b0;
				statu <= 3'h7;
			end else if (prog[4:0] == 5'b10000) begin		//RR，寄存器A = 寄存器A >> 1
				statu <= 3'h7;
			end else if (prog[4:0] == 5'b10001) begin		//RET，结束中断程序，跳转回之前的位置
				PC <= PC_temp;
				statu <= 3'h0;
			end else if (prog[4:0] == 5'b10010) begin		//IEN，允许中断
				IRQ_EN <= 1'b1;
				PC <= PC + 1;
				statu <= 3'h0;
			end	else if (prog[4:0] == 5'b10011) begin		//READB，读取内存数据到B寄存器，内存地址为立即数
				PC_temp <= PC + 1'b1;
				PC <= ram_out;
				statu <= 3'h6;
			end else if (prog[4:0] == 5'b10100) begin		//MOVC，寄存器C = 立即数
				C <= ram_out;
				PC <= PC + 1'b1;
				statu <= 3'h0;
			end else if (prog[4:0] == 5'b10101) begin		//MOVPA，输出寄存器P = 寄存器A
				P <= A;
				PC <= PC + 1'b1;
				statu <= 3'h0;
			end else if (prog[4:0] == 5'b10110) begin		//JMPA，跳转到A寄存器存储的地址
				PC <= C;
				statu <= 3'h0;
			end else if (prog[4:0] == 5'b10111) begin		//MOVAP，寄存器A = 输出寄存器P
				A <= P;
				PC <= PC + 1'b1;
				statu <= 3'h0;
			end 
			
		end else if (statu == 3'h6) begin		//读写内存：等待内存响应
			statu <= 3'h3;
			
		end else if (statu == 3'h3) begin		//读写内存：操作寄存器			
			if (prog[4:0] == 5'b00001) begin		//读取内存数据到A寄存器
				A <= ram_out;
			end else if (prog[4:0] == 5'b10011) begin		//READB
				B <= ram_out;
			end else if (prog[4:0] == 5'b00101) begin		//READFC，读取内存数据到A寄存器，内存地址为寄存器C内的值
				A <= ram_out;
			end else begin		//SAVE与SAVETC，重新读取RAM
				ram_we <= 1'b0;
			end 
			
			PC <= PC_temp;		//读写内存：恢复PC的值
			statu <= 4'h0;
			
		end else if (statu == 3'h7) begin		//算数与逻辑处理
			if (prog[4:0] == 5'b00010) begin	//加法	
				A <= add_c;
				flag <= add_co;
				PC <= PC + 1'b1;
			end else if (prog[4:0] == 5'b00011) begin
				A <= add_c;
				flag <= add_co;
				PC <= PC + 1'b1;
			end else if (prog[4:0] == 5'b01111) begin
				C <= add_c;
				flag <= add_co;
				PC <= PC + 1'b1;
			end else if (prog[4:0] == 5'b01011) begin  //跳转
				if(A == 12'b0) begin
					PC <= ram_out;
				end else begin
					PC <= PC + 1'b1;
				end
			end else if (prog[4:0] == 5'b01100) begin  
				if(A > B) begin
					PC <= ram_out;
				end else begin
					PC <= PC + 1'b1;
				end
			end else if (prog[4:0] == 5'b01110) begin  //与非
				A <= ~(A & B); 
				PC <= PC + 1'b1;
			end else if (prog[4:0] == 5'b10000) begin  //逻辑右移
				A <= A >> 1; 
				PC <= PC + 1'b1;
			end
			
			statu <= 4'h0;
		end
	end	
		
end


endmodule