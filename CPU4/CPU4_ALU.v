module ALU(
	input [15: 0] A,
	input [15: 0] B,
	input        Ci,
	output reg [15: 0] R,
	output reg       Co,
	input [3:0] type
);


wire [15: 0] add_a;
wire [15: 0] add_b;
wire [15: 0] add_c;
wire	add_cin;
wire	add_co;

add ADD_M(
	.DataA(add_a),
	.DataB(add_b),
	.Cin(add_cin),
	.Result(add_c),
	.Cout(add_co)
);

assign add_a = A;
assign add_b = B;
assign add_cin = Ci;

always @(*) begin
	case(type) 
		4'b0000: begin		//加法
			R = add_c;
			Co = add_co;
		end
		4'b0001: begin		//输出A
			R = A;
		end
		4'b0010: begin		//与
			R = A&B;
		end
		4'b0011: begin		//或
			R = A|B;
		end
		4'b0100: begin		//非
			R = ~A;
		end	
		4'b0101: begin		//判断大于
			Co = A > B ? 1'b1 : 1'b0;
		end	
		4'b0110: begin		//判断小于
			Co = A < B ? 1'b1 : 1'b0;
		end
		4'b0111: begin		//判断等于
			Co = A == B ? 1'b1 : 1'b0;
		end
		default: begin		//输出B
			R = B;
		end
		endcase
end

endmodule