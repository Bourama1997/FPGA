module Adder_1bit( A,B,Cin,Sum,Cout);                	
    input  A, B; 
    input Cin; 			
    output Sum;
    output Cout;

      wire  A, B;
      wire Cin ;
      reg  Sum;
      reg Cout ;

 always @(A or B or Cin)
  begin 
   Sum = A ^ B ^ Cin; 
   Cout = A&B | (A^B) & Cin; 
  end 
endmodule
