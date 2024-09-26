module BBqM(clk , reset , up , down , Tcount , leds_pcount , leds_Wtime1 , leds_Wtime2 , full_flag , empty_flag);
	input clk, reset , up , down ;
	input  [1:0] Tcount;
	output [6:0] leds_pcount ;
	output [6:0] leds_Wtime1 ;
	output [6:0] leds_Wtime2 ;
	output full_flag , empty_flag ;
	wire [3:0] Pcount ;
	wire [3:0] Wtime1 ; 
	wire [3:0] Wtime2 ; 
	wire slow_clk , debounced_up , debounced_down , debounced_clk ;
	
	clock_divider clk_div (clk , reset , slow_clk);
	FF ff1 (slow_clk , up , debounced_up);
	FF ff2 (slow_clk , down , debounced_down);
	clk_gen gen (debounced_up , debounced_down , debounced_clk);
	
	counter cnt (debounced_clk , reset , up , down , Pcount);
	
	flags fla(Pcount , full_flag , empty_flag);
	
	ROM1 rom(Tcount , Pcount , Wtime1 , Wtime2);
	
	sevenSegments Pcount_7seg (Pcount , leds_pcount);
	sevenSegments Wtime1_7seg (Wtime1 , leds_Wtime1);
	sevenSegments wtime2_7seg (Wtime2 , leds_Wtime2);
	
endmodule