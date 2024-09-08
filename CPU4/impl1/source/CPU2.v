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

parameter RAM_Add_Width = 10;  //�ڴ��ַλ��

//CPU�Ĵ���
reg [11:0] A;
reg [11:0] B;
reg [11:0] C;
reg flag;
reg IRQ_EN;
reg [RAM_Add_Width-1:0] PC;
reg [11:0] PC_temp;

assign led_dig = 2'b00;

//CPU״̬���Լ����ߡ����ɶ�д�Ĵ���
reg [11:0] prog; 	//�ݴ����
reg [2:0] statu;	//״̬�Ĵ���
reg [11:0] ram_in;		//RAM����
wire [11:0] ram_out;		//RAM���
reg ram_we;		//RAM��д
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
		if(statu == 3'h0) begin		//�ȴ�ָ��ȡ��
			if(IRQ_EN == 1'b1 && key == 1'b0) begin 	//�����ж�
				IRQ_EN <= 1'b0;
				PC_temp <= PC; 	//�ݴ����λ��
				PC <= 12'b0000_0000_0000; 	//�ж����
				statu <= 3'h0;
			end else begin
				statu <= 3'h5;
			end
			
		end else if(statu == 3'h5) begin	//ȡָ��
			prog <= ram_out;
			if (ram_out[11] == 1'b1) begin 	//������������
				statu <= 3'h1;
				PC <= PC + 1'b1;	//ȡ��������PC�Ĵ���+1
			end else begin
				statu <= 3'h4;
			end
			
		end else if (statu == 3'h1) begin		//�ȴ�������ȡ��
			statu <= 3'h4;
			
		end else if (statu == 3'h4) begin		//ָ������
			if(prog[4:0] == 5'b00000) begin 	//JMP����������ת
				PC <= ram_out;
				statu <= 3'h0;
			end	else if (prog[4:0] == 5'b00001) begin		//READA����ȡ�ڴ����ݵ�A�Ĵ������ڴ��ַΪ������
				PC_temp <= PC + 1'b1;
				PC <= ram_out;
				statu <= 3'h6;
			end else if (prog[4:0] == 5'b00010) begin		//ADD���Ĵ���A = �Ĵ���A + �Ĵ���B
				add_a <= A;
				add_b <= B;
				add_cin <= 1'b0;
				statu <= 3'h7; 
			end else if (prog[4:0] == 5'b00011) begin		//ADDF���Ĵ���A = �Ĵ���A + �Ĵ���B + ��λ
				add_a <= A;
				add_b <= B;
				add_cin <= flag;
				statu <= 3'h7; 
			end else if (prog[4:0] == 5'b00100) begin		//SAVE���Ĵ���A���ݱ��浽�ڴ棬�ڴ��ַΪ������
				PC_temp <= PC + 1'b1;
				PC <= ram_out;
				ram_in <= A;
				ram_we <= 1'b1;
				statu <= 3'h6;
			end else if (prog[4:0] == 5'b00101) begin		//READFC����ȡ�ڴ����ݵ�A�Ĵ������ڴ��ַΪ�Ĵ���C�ڵ�ֵ
				PC_temp <= PC + 1'b1;
				PC <= C;
				statu <= 3'h6;
			end else if (prog[4:0] == 5'b00110) begin		//SAVETC���Ĵ���A���ݱ��浽�ڴ棬�ڴ��ַΪ�Ĵ���C�ڵ�ֵ
				PC_temp <= PC + 1'b1;
				PC <= C;
				ram_in <= A;
				ram_we <= 1'b1;
				statu <= 3'h6;
			end else if (prog[4:0] == 5'b00111) begin		//MOVCA���Ĵ���C = �Ĵ���A
				C <= A;
				PC <= PC + 1'b1;
				statu <= 3'h0;
			end else if (prog[4:0] == 5'b01000) begin		//MOVAC���Ĵ���A = �Ĵ���C
				A <= C;
				PC <= PC + 1'b1;
				statu <= 3'h0;
			end else if (prog[4:0] == 5'b01001) begin		//MOVBA���Ĵ���B = �Ĵ���A
				B <= A;
				PC <= PC + 1'b1;
				statu <= 3'h0;
			end else if (prog[4:0] == 5'b01010) begin		//MOVAB���Ĵ���A = �Ĵ���B
				A <= B;
				PC <= PC + 1'b1;
				statu <= 3'h0;
			end else if (prog[4:0] == 5'b01011) begin		//JZ���Ĵ���AΪ����ת
				statu <= 3'h7;
			end else if (prog[4:0] == 5'b01100) begin		//CMP���Ĵ���A���ڼĴ���B��ת
				statu <= 3'h7;
			end else if (prog[4:0] == 5'b01101) begin		//OUT��LED���
				led <= A;
				PC <= PC + 1;
				statu <= 3'h0;
			end else if (prog[4:0] == 5'b01110) begin		//NAND���Ĵ���A = �Ĵ���A ��� �Ĵ���B
				statu <= 3'h7;
			end else if (prog[4:0] == 5'b01111) begin		//ADDNUMC���Ĵ���C = �Ĵ���C + ������
				add_a <= C;
				add_b <= ram_out;
				add_cin <= 1'b0;
				statu <= 3'h7;
			end else if (prog[4:0] == 5'b10000) begin		//RR���Ĵ���A = �Ĵ���A >> 1
				statu <= 3'h7;
			end else if (prog[4:0] == 5'b10001) begin		//RET�������жϳ�����ת��֮ǰ��λ��
				PC <= PC_temp;
				statu <= 3'h0;
			end else if (prog[4:0] == 5'b10010) begin		//IEN�������ж�
				IRQ_EN <= 1'b1;
				PC <= PC + 1;
				statu <= 3'h0;
			end	else if (prog[4:0] == 5'b10011) begin		//READB����ȡ�ڴ����ݵ�B�Ĵ������ڴ��ַΪ������
				PC_temp <= PC + 1'b1;
				PC <= ram_out;
				statu <= 3'h6;
			end else if (prog[4:0] == 5'b10100) begin		//MOVC���Ĵ���C = ������
				C <= ram_out;
				PC <= PC + 1'b1;
				statu <= 3'h0;
			end else if (prog[4:0] == 5'b10101) begin		//MOVPA������Ĵ���P = �Ĵ���A
				P <= A;
				PC <= PC + 1'b1;
				statu <= 3'h0;
			end else if (prog[4:0] == 5'b10110) begin		//JMPA����ת��A�Ĵ����洢�ĵ�ַ
				PC <= C;
				statu <= 3'h0;
			end else if (prog[4:0] == 5'b10111) begin		//MOVAP���Ĵ���A = ����Ĵ���P
				A <= P;
				PC <= PC + 1'b1;
				statu <= 3'h0;
			end 
			
		end else if (statu == 3'h6) begin		//��д�ڴ棺�ȴ��ڴ���Ӧ
			statu <= 3'h3;
			
		end else if (statu == 3'h3) begin		//��д�ڴ棺�����Ĵ���			
			if (prog[4:0] == 5'b00001) begin		//��ȡ�ڴ����ݵ�A�Ĵ���
				A <= ram_out;
			end else if (prog[4:0] == 5'b10011) begin		//READB
				B <= ram_out;
			end else if (prog[4:0] == 5'b00101) begin		//READFC����ȡ�ڴ����ݵ�A�Ĵ������ڴ��ַΪ�Ĵ���C�ڵ�ֵ
				A <= ram_out;
			end else begin		//SAVE��SAVETC�����¶�ȡRAM
				ram_we <= 1'b0;
			end 
			
			PC <= PC_temp;		//��д�ڴ棺�ָ�PC��ֵ
			statu <= 4'h0;
			
		end else if (statu == 3'h7) begin		//�������߼�����
			if (prog[4:0] == 5'b00010) begin	//�ӷ�	
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
			end else if (prog[4:0] == 5'b01011) begin  //��ת
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
			end else if (prog[4:0] == 5'b01110) begin  //���
				A <= ~(A & B); 
				PC <= PC + 1'b1;
			end else if (prog[4:0] == 5'b10000) begin  //�߼�����
				A <= A >> 1; 
				PC <= PC + 1'b1;
			end
			
			statu <= 4'h0;
		end
	end	
		
end


endmodule