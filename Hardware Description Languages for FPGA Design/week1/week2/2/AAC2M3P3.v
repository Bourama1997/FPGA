module find_errors (
         input [0:3]a,
         output [3:0]b,
          input [5:0]c );

     reg [3:0]bw;
     wire [5:0]creg;
	  wire [0:3]aw; 
     assign b = bw;
	  assign aw = a;
     assign creg = c;
 always@(creg)

 begin
   if (creg == 6'b111111)
         bw <= aw;
   else
         bw <= 4'b0101;
    end
endmodule