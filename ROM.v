module ROM1(Tcount , Pcount , Wtime1 , Wtime2);
  input [1:0]Tcount;
  input[3:0]Pcount;
  output reg [3:0] Wtime1;
  output reg [3:0] Wtime2;
     always @(*)
  begin    
      case ({Tcount,Pcount})
               6'b010001:
		                    begin
                        	     Wtime1<=4'b0011;     //3
		                     Wtime2<=4'b0000;
	                     	end
               6'b010010:
		                    begin
                        	    Wtime1<=4'b0110;    //6
		                     Wtime2<=4'b0000;
	                     	end
               6'b010011:
		                    begin
                      		     Wtime1<=4'b1001;     //9
		                     Wtime2<=4'b0000;
	                     	end
               6'b010100:
		                    begin
                   	             Wtime1<=4'b0010;     //12
		                     Wtime2<=4'b0001;
	                     	end
               6'b010101:
		                    begin
                       		     Wtime1<=4'b0101;     //15
		                     Wtime2<=4'b0001;
	                     	end
               6'b010110:
		                    begin
                        	     Wtime1<=4'b1000;     //18
		                     Wtime2<=4'b0001;
	                     	end
               6'b010111:
		                    begin
                        	     Wtime1<=4'b0001;     //21
		                     Wtime2<=4'b0010;
	                     	end
                                      6'b100001: 
		                                          begin
                                              		     Wtime1<=4'b0011;
		                                             Wtime2<=4'b0000;
	                                           	end//3
                                      6'b100010: 
		                                          begin
                                               		     Wtime1<=4'b0100;
		                                             Wtime2<=4'b0000;
	                                           	end//4
                                      6'b100011: 
		                                          begin
                                              		     Wtime1<=4'b0110;
		                                             Wtime2<=4'b0000;
	                                           	end//6
                                      6'b100100: 
		                                          begin
                                              		     Wtime1<=4'b0111;
		                                             Wtime2<=4'b0000;
	                                           	end//7
                                      6'b100101: 
		                                          begin
                                               		     Wtime1<=4'b1001;
		                                             Wtime2<=4'b0000;
	                                           	end//9
                                      6'b100110: 
		                                          begin
                                             		     Wtime1<=4'b0000;
		                                             Wtime2<=4'b0001;
	                                           	end//10
                                      6'b100111: 
		                                          begin
                                             		     Wtime1<=4'b0010;
		                                             Wtime2<=4'b0001;
	                                           	end//12
                  6'b110001:
		                    begin
                        	     Wtime1<=4'b0011;     
		                     Wtime2<=4'b0000;
	                     	end//3
                 6'b110010:
		                    begin
                        	     Wtime1<=4'b0100;     
		                     Wtime2<=4'b0000;
	                     	end//4
                 6'b110011:
		                    begin
                         	     Wtime1<=4'b0101;     
		                     Wtime2<=4'b0000;
	                     	end//5
                 6'b110100:
		                    begin
                         Wtime1<=4'b0110;     
		                     Wtime2<=4'b0000;
	                     	end//6
                 6'b110101:
		                    begin
                        	     Wtime1<=4'b0111;     
		                     Wtime2<=4'b0000;
	                     	end//7
                 6'b110110:
		                    begin
                      		     Wtime1<=4'b1000;     
		                     Wtime2<=4'b0000;
	                     	end//8
                 6'b110111:
		                    begin
                       		     Wtime1<=4'b1001;     
		                     Wtime2<=4'b0000;
	                     	end//9
		  default : 
		                    begin
                       		     Wtime1<=4'b0000;     
		                     Wtime2<=4'b0000;
	                     	end
   endcase                       
  end            
 endmodule
   
