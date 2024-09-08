`timescale 1 ns / 1 ps

module sim();
reg clk;
reg rst;
reg key;
reg [15:0] rx;
wire [15:0] LED;

GSR GSR_INST (.GSR(1'b1));  
PUR PUR_INST (.PUR(1'b1));	

CPU4 uut(
	.clk(clk),
	.rst(rst),
	.P(LED),
	.key(key),
	.rx(rx),
	.led_dig()
);

initial 
begin
	clk = 0;
	rst = 0;
	key = 1;
	
	#100
	rst = 1;
	
	#1000 key = 0;
	#1000 key = 1;
	#1000 key = 0;
	
	#200 rx = 16'haaaa;
	#200 rx = 16'h1234;
end

always begin
	#1 clk = ~clk;
end
	
endmodule