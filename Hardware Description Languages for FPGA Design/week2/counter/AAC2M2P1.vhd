LIBRARY ieee;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity AAC2M2P1 is port (                 	
   CP: 	in std_logic; 	-- clock
   SR:  in std_logic;  -- Active low, synchronous reset
   P:    in std_logic_vector(3 downto 0);  -- Parallel input
   PE:   in std_logic;  -- Parallel Enable (Load)
   CEP: in std_logic;  -- Count enable parallel input
   CET:  in std_logic; -- Count enable trickle input
   Q:   out std_logic_vector(3 downto 0);            			
    TC:  out std_logic  -- Terminal Count
);  
end AAC2M2P1;
Architecture arch1 of  AAC2M2P1 is
signal get_out:std_logic_vector(3 downto 0); 
begin 
count_label : process(CP,SR,CEP,CET)
 begin 
   if(SR='0') then get_out<=(others=>'0');
	elsif rising_edge(CP)then
	    if(PE='0')then get_out<=P ;
		    elsif(CET='1' and CEP='1') then get_out<=get_out+1;
			 if(get_out="1111" and CET='1') then TC <='1';
			 else TC<='0';
			 end if; 
			 
		 end if;
	end if;
			  
end process;  
Q <=get_out;   		
end arch1;