library ieee;
use ieee.std_logic_1164.all;

entity FSM is
port (In1: in std_logic;
   RST: in std_logic; 
   CLK: in std_logic;
   Out1 : inout std_logic);
end FSM;
Architecture arch1 of FSM is
type etat is (A,B,C) ;
signal next_etat,Current_etat :etat:=A ;
begin 
  
  process(next_etat,Current_etat,In1,out1) 
       begin
		   case Current_etat is
			  when A => Out1<='0'; 
			               if(In1='1')then
			               next_etat<=B;
								Out1<='0' ;
								else 
								 next_etat<=A ;
								 
							 end if;
				when B => if(In1='0' )then
				             next_etat<=C ;
								  Out1<='0';
							 else
							   next_etat<=B;
								Out1<='0';
							 end if;
				when C => if(In1='1') then
				            next_etat<=A;
								Out1 <= '0';
							 else
							    next_etat <= C ;
								 Out1<='1';
							 end if;
			  end case ;
	end process ;
   process(clk)
	    begin
		 if(RST='1')then Current_etat<=A ;
		 elsif(rising_edge(CLK))then 
		  Current_etat<= next_etat ;
		  end if;
		end process;
end arch1;
