--------------------------------------------------------------------------------
--                                                                            --
--               Application Assignment Problem 1 Module 1 Course 2           --
--                                                                            --
--------------------------------------------------------------------------------
--
-- 
-- @file AAC2M1P1.vhd
-- @brief Application Assignment 2-001 Example code with errors to be found
-- @version: 1.0 
-- Date of current revision:  @date 2018-08-08  
-- Target FPGA: [Intel Altera MAX10] 
-- Tools used: [Quartus Prime 16.1] for editing and synthesis 
--             [Modeltech ModelSIM 10.4a Student Edition] for simulation 
--             [Quartus Prime 16.1]  for place and route if applied
--             
--  Functional Description:  This file contains the entity VHDL code for a 
--              2-bit comparator.  The architecture is to be completed by the
--              student. 
--  Hierarchy:  Only 1 level for this simple device 
--  
--  Designed for: Coursera 
--                
--  Designed by:  @author Tim Scherr
--                University of Colorado
--
--      Copyright (c) 2018 by Tim Scherr
--
-- Redistribution, modification or use of this software in source or binary
-- forms is permitted as long as the files maintain this copyright. Users are
-- permitted to modify this and use it to learn about the field of HDl code.
-- Tim Scherr and the University of Colorado are not liable for any misuse
-- of this material.
------------------------------------------------------------------------------
-- 

library ieee;                                	
use ieee.std_logic_1164.all;           	
                                             		
entity comparator2 is port (                 	
    A, B: in std_logic_vector(1 downto 0); 
    Equals: out std_logic);            		
end comparator2;                             	

architecture arch of comparator2 is
signal a1,a2,a3,a4,a5 :std_logic ;
signal b1,b2,b3,b4,b5 :std_logic;

begin
    a1<= B(0)and B(1)and a5;
	 a2<=not A(0) and not A(1) and a5;
	 a3 <=not A(0) and B(0);
	 b1<=A(1)xor B(1);
	 b2<=A(0) xor B(0);
	 a5<=b1 or b2 ;
	 b3<=not a1 and not a2 and not a3;
	 b4<=not(a5);
	 b5<=(b4 or b3);
    Equals<=not b5;
	 
end arch;



    