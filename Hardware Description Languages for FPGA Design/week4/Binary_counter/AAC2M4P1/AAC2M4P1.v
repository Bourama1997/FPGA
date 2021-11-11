module LS161a(
    input [3:0] D,        // Parallel Input
    input CLK,            // Clock
    input CLR_n,          // Active Low Asynchronous Reset
    input LOAD_n,         // Enable Parallel Input
    input ENP,            // Count Enable Parallel
    input ENT,            // Count Enable Trickle
    output [3:0]Q,        // Parallel Output 	
    output reg RCO            // Ripple Carry Output (Terminal Count)
); 
reg     [3:0] cnt;
 always@(posedge CLK)
 begin
    if(CLR_n==1'b0)
	     cnt<=4'b0000;
	 else
	    if(LOAD_n==1'b0)
		    cnt = D ;
		    if(ENP==1'b1 && ENT==1'b1)
			   cnt<=cnt +1 ;
				 if(cnt==4'b1111 && ENT==1'b1)
				  RCO = 1'b1 ;
				 else
				  RCO =1'b0 ;
	end
	assign Q=cnt	;	
			    

endmodule