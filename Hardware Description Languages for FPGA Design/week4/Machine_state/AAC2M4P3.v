module FSM( input In1, RST, CLK, output reg Out1);

reg current_state,next_state;

parameter a=2'b00, b=2'b01, c=2'b10;

always @(posedge CLK or negedge RST) 
begin
if (!RST) 
current_state <= current_state; 
 else
current_state <= next_state ;
end 
always@(current_state ,In1)
begin
case (current_state)

   a: if (In1==1'b1) next_state = b;else next_state = a; 
   b: if (In1==0) next_state = c; else  next_state = b;
   c: if (In1==0) next_state = a;  else next_state = c; 

endcase 
end 

always@(current_state)
begin
 case(current_state)
   a : Out1=1'b0 ;
	b:  Out1=1'b0;
	c: Out1=1'b1;
endcase
end
endmodule