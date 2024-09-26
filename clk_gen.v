module clk_gen( Up, Down, clk);
	input Up, Down;
	output clk;
	assign clk= ~Up | ~Down;
endmodule
/*****************************/
module sevenSegments_tb;
 reg  [3:0] bcd;
 wire [6:0] dec;
 sevenSegments sevenSegments_dut(bcd , dec);
initial
 begin 


 end
endmodule