module flags(Pcount , led1 , led2);
input [3:0]Pcount ;
output reg led1 , led2 ;
always @(*)
	if(Pcount==7)
		led1<=1;
	else if(Pcount==0)
		led2 <=1 ;
	else
		begin
			led1<=0;
			led2<=0;
		end
endmodule