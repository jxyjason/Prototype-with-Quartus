-- Copyright (C) 1991-2008 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- ***************************************************************************
-- This file contains a Vhdl test bench template that is freely editable to   
-- suit user's needs .Comments are provided in each section to help the user  
-- fill out necessary details.                                                
-- ***************************************************************************
-- Generated on "03/12/2022 23:46:05"
                                                            
-- Vhdl Test Bench template for design  :  counter_8
-- 
-- Simulation tool : ModelSim (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;

module tb();                                

ENTITY counter_8_vhd_tst IS
END counter_8_vhd_tst;
ARCHITECTURE counter_8_arch OF counter_8_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL CLRN : STD_LOGIC;
SIGNAL CP : STD_LOGIC;
SIGNAL PRN : STD_LOGIC;
SIGNAL Q0 : STD_LOGIC;
SIGNAL Q1 : STD_LOGIC;
SIGNAL Q2 : STD_LOGIC;
COMPONENT counter_8
	PORT (
	CLRN : IN STD_LOGIC;
	CP : IN STD_LOGIC;
	PRN : IN STD_LOGIC;
	Q0 : OUT STD_LOGIC;
	Q1 : OUT STD_LOGIC;
	Q2 : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : counter_8
	PORT MAP (
-- list connections between master ports and signals
	CLRN => CLRN,
	CP => CP,
	PRN => PRN,
	Q0 => Q0,
	Q1 => Q1,
	Q2 => Q2
	);
init : PROCESS                                               
-- variable declarations                                     
BEGIN                                                        
        -- code that executes only once                      
WAIT;                                                       
END PROCESS init;                                           
always : PROCESS                                              
-- optional sensitivity list                                  
-- (        )                                                 
-- variable declarations                                      
BEGIN                                                         
        -- code executes for every event on sensitivity list  
WAIT;                                                        
END PROCESS always;                                          
END counter_8_arch;
