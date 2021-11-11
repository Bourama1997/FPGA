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
    a1<= not B(0)and A(0);
	 a2<=not A(0) and  B(0);
	 a3<= not B(1)and A(1);
	 a4<=not A(1) and  B(1);
	 b2<=a1 xor a2 ;
	 b3<=not b2;
	 b4<=a3 xor a4 ;
	 b5<=not b4;	
    Equals<=b3 and b5;
	 
end arch;



    