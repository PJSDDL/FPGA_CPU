`timescale 1 ns / 1 ps

module CPU4(
	input  clk,  /* synthesis syn_force_pads = 1 */
	input  rst,  /* synthesis syn_force_pads = 1 */
	input  key,		//�жϴ���Դ
	input  [15:0] rx,
	output reg [15:0] P,  
	//P[2],OLED_DC;P[6],OLED_SCL;P[8],OLED_SDA;P[9],OLED_RES;
	output wire [1:0] led_dig
);

parameter RAM_Add_Width = 10;  //�ڴ��ַλ��
`define    IRQ     1'b1		//ɾ������䲻�����ж�ģ��

//CPU�Ĵ���
reg [15: 0] A;
reg [15: 0] B;
reg [15: 0] SP;
reg flag;
reg IRQ_EN;
reg [RAM_Add_Width-1: 0] PC;
reg [RAM_Add_Width-1: 0] PC_temp;

assign led_dig = 2'b00;

//CPU״̬���Լ����ߡ����ɶ�д�Ĵ���
reg [15: 0] prog; 	//�ݴ����
reg [2:0] statu;	//״̬�Ĵ���
reg [15: 0] ram_in;		//RAM����
wire [15: 0] ram_out;		//RAM���
reg ram_we;		//RAM��д
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
			3'h0: begin	 //�жϡ��ȴ�ȡָ��
				`ifdef IRQ
				if(IRQ_EN == 1'b1 && key == 1'b0) begin 	//�����ж�
					IRQ_EN <= 1'b0;
					PC_temp <= PC; 	//�ݴ����λ��
					PC <= 12'b0000_0000_0000; 	//�ж����
					statu <= 3'h0;
				end else begin
					statu <= 3'h1;  //�ȴ��ڴ��ȡ
				end
				`else
					statu <= 3'h1;
				`endif
			end
			3'h1: begin  //����ָ��ж��Ƿ�ȡ������
				prog <= ram_out;
				if (ram_out[15] == 1'b1) begin 	//������������
					statu <= 3'h2;
					PC <= PC + 1'b1;	//ȡ��������PC�Ĵ���+1
				end else begin
					statu <= 3'h3;
				end
			end
			3'h2: begin  //�ȴ�ȡ������
				statu <= 3'h3;
			end
			3'h3: begin  //ָ�����롢�ڴ���ALU�ź�����
				case(prog[4:0])
					5'b00000: begin 	//JMP����������ת
						PC <= ram_out;
					end
					5'b00001: begin 	//JTA����ת��A�Ĵ�����Ӧ��λ��
						alu_a <= A;
						alu_b <= B;
						alu_cin <= 0;
						alu_type <= 4'b0001;
					end
					5'b00010: begin 	//JB���Ĵ���A > �Ĵ���B����ת����������Ӧ��λ��
						alu_a <= A;
						alu_b <= B;
						alu_cin <= 0;
						alu_type <= 4'b0101;
					end
					5'b00011: begin 	//JS���Ĵ���A < �Ĵ���B����ת����������Ӧ��λ��
						alu_a <= A;
						alu_b <= B;
						alu_cin <= 0;
						alu_type <= 4'b0110;
					end
					5'b00100: begin 	//JZ���Ĵ���A = �Ĵ���B����ת����������Ӧ��λ��
						alu_a <= A;
						alu_b <= B;
						alu_cin <= 0;
						alu_type <= 4'b0111;
					end
					5'b00101: begin 	//MOVA���Ĵ���A = ������
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
					5'b01001: begin 	//IN,�Ĵ���A = rx
						A <= rx;
					end
					5'b01010: begin 	//MOVAP���Ĵ���A = �Ĵ���P����ָ��ܶ�ȡIO��ֻ�ܶ�ȡ����д��IO������
						A <= P;
					end
					
					5'b01011: begin 	//PUSHB���Ĵ���B��ջ
						PC_temp <= PC + 1'b1;
						PC <= SP;
						ram_in <= B;
						ram_we <= 1'b1;
						SP <= SP + 1;
					end
					5'b01100: begin 	//POPB����ջ�����浽�Ĵ���B
						PC_temp <= PC + 1'b1;
						PC <= SP - 1;
						SP <= SP - 1;
					end
					5'b01101: begin 	//MOVPA���Ĵ���P = �Ĵ���A
						P <= A;
					end
					5'b01110: begin 	//READA����ȡ�ڴ����ݵ�A�Ĵ������ڴ��ַΪ������
						PC_temp <= PC + 1'b1;
						PC <= ram_out;
					end
					5'b01111: begin 	//SAVEA������A�Ĵ������ݵ��ڴ棬�ڴ��ַΪ������
						PC_temp <= PC + 1'b1;
						PC <= ram_out;
						ram_in <= A;
						ram_we <= 1'b1;
					end
					5'b10000: begin 	//READFB����ȡ�ڴ����ݵ�A�Ĵ������ڴ��ַΪ�Ĵ���B��ֵ
						PC_temp <= PC + 1'b1;
						PC <= B;
					end
					5'b10001: begin 	//SAVETB������A�Ĵ������ݵ��ڴ棬�ڴ��ַΪ�Ĵ���B��ֵ
						PC_temp <= PC + 1'b1;
						PC <= B;
						ram_in <= A;
						ram_we <= 1'b1;
					end
					5'b10010: begin 	//PUSHA���Ĵ���A��ջ
						PC_temp <= PC + 1'b1;
						PC <= SP;
						ram_in <= A;
						ram_we <= 1'b1;
						SP <= SP + 1;
					end
					5'b10011: begin 	//POPA����ջ�����浽�Ĵ���A
						PC_temp <= PC + 1'b1;
						PC <= SP - 1;
						SP <= SP - 1;
					end
					5'b10100: begin 	//SP���Ĵ���SP = �Ĵ���A
						SP <= A;
					end
					5'b10101: begin 	//ADD���Ĵ���A = �Ĵ���A + �Ĵ���B
						alu_a <= A;
						alu_b <= B;
						alu_cin <= 0;
						alu_type <= 4'b0000;
					end
					5'b10110: begin 	//ADDB���Ĵ���B = �Ĵ���A + �Ĵ���B
						alu_a <= A;
						alu_b <= B;
						alu_cin <= 0;
						alu_type <= 4'b0000;
					end
					5'b10111: begin 	//AND���Ĵ���A = �Ĵ���A AND �Ĵ���B
						alu_a <= A;
						alu_b <= B;
						alu_cin <= 0;
						alu_type <= 4'b0010;
					end
					5'b11000: begin 	//OR���Ĵ���A = �Ĵ���A OR �Ĵ���B
						alu_a <= A;
						alu_b <= B;
						alu_cin <= 0;
						alu_type <= 4'b0011;
					end
					5'b11001: begin 	//NOT���Ĵ���A = NOT �Ĵ���A
						alu_a <= A;
						alu_b <= B;
						alu_cin <= 0;
						alu_type <= 4'b0100;
					end
					5'b11010: begin 	//ADDF���Ĵ���A = �Ĵ���A + �Ĵ���B + FLAG
						alu_a <= A;
						alu_b <= B;
						alu_cin <= flag;
						alu_type <= 4'b0000;
					end
					
					`ifdef IRQ
					5'b11011: begin		//RETI�������жϳ�����ת��֮ǰ��λ��
						
					end
					5'b11100: begin		//IEN�������ж�
						IRQ_EN <= 1'b1;
					end
					`endif
					endcase
					
				statu <= 3'h4;
			end
			3'h4: begin  //ALU���������桢�ڴ��д
				case(prog[4:0]) 	//��д�ڴ�ͬʱ�����߼�����
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
			3'h5: begin  //�ڴ��д��������ڴ��źŻָ���PC�Ĵ�������
				//�ڴ����
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
				
				//��дPC
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
				
				//�ڴ��дָ��ָ�PC
				//�жϻָ�PC
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