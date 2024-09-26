module counter(clk , reset ,up ,down ,Pcount );
input clk , reset , up , down ;
output reg [3:0]Pcount ;
always@(posedge clk or posedge reset)
	if(reset)
			Pcount<=0;
	else if(~up && Pcount<7)
			Pcount <= Pcount + 1 ;
	else if(~down && Pcount>0)
			Pcount <= Pcount - 1 ;
	else 
			Pcount<=Pcount;
			
endmodule