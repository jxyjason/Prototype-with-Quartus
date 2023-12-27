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

-- VENDOR "Altera"
-- PROGRAM "Quartus II"
-- VERSION "Version 8.1 Build 163 10/28/2008 SJ Web Edition"

-- DATE "03/16/2022 00:13:53"

-- 
-- Device: Altera EP2C8Q208C8 Package PQFP208
-- 

-- 
-- This VHDL file should be used for ModelSim (VHDL) only
-- 

LIBRARY IEEE, cycloneii;
USE IEEE.std_logic_1164.all;
USE cycloneii.cycloneii_components.all;

ENTITY 	shifter_16 IS
    PORT (
	Q15 : OUT std_logic;
	RI : IN std_logic;
	A15 : IN std_logic;
	A14 : IN std_logic;
	A13 : IN std_logic;
	A12 : IN std_logic;
	LM : IN std_logic;
	DM : IN std_logic;
	RM : IN std_logic;
	A11 : IN std_logic;
	A10 : IN std_logic;
	A9 : IN std_logic;
	A8 : IN std_logic;
	A7 : IN std_logic;
	A6 : IN std_logic;
	A5 : IN std_logic;
	A4 : IN std_logic;
	A3 : IN std_logic;
	A2 : IN std_logic;
	A1 : IN std_logic;
	A0 : IN std_logic;
	LI : IN std_logic;
	Q14 : OUT std_logic;
	Q13 : OUT std_logic;
	Q12 : OUT std_logic;
	Q11 : OUT std_logic;
	Q10 : OUT std_logic;
	Q9 : OUT std_logic;
	Q8 : OUT std_logic;
	Q7 : OUT std_logic;
	Q6 : OUT std_logic;
	Q5 : OUT std_logic;
	Q4 : OUT std_logic;
	Q3 : OUT std_logic;
	Q2 : OUT std_logic;
	Q0 : OUT std_logic;
	Q1 : OUT std_logic;
	LO : OUT std_logic;
	RO : OUT std_logic
	);
END shifter_16;

ARCHITECTURE structure OF shifter_16 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Q15 : std_logic;
SIGNAL ww_RI : std_logic;
SIGNAL ww_A15 : std_logic;
SIGNAL ww_A14 : std_logic;
SIGNAL ww_A13 : std_logic;
SIGNAL ww_A12 : std_logic;
SIGNAL ww_LM : std_logic;
SIGNAL ww_DM : std_logic;
SIGNAL ww_RM : std_logic;
SIGNAL ww_A11 : std_logic;
SIGNAL ww_A10 : std_logic;
SIGNAL ww_A9 : std_logic;
SIGNAL ww_A8 : std_logic;
SIGNAL ww_A7 : std_logic;
SIGNAL ww_A6 : std_logic;
SIGNAL ww_A5 : std_logic;
SIGNAL ww_A4 : std_logic;
SIGNAL ww_A3 : std_logic;
SIGNAL ww_A2 : std_logic;
SIGNAL ww_A1 : std_logic;
SIGNAL ww_A0 : std_logic;
SIGNAL ww_LI : std_logic;
SIGNAL ww_Q14 : std_logic;
SIGNAL ww_Q13 : std_logic;
SIGNAL ww_Q12 : std_logic;
SIGNAL ww_Q11 : std_logic;
SIGNAL ww_Q10 : std_logic;
SIGNAL ww_Q9 : std_logic;
SIGNAL ww_Q8 : std_logic;
SIGNAL ww_Q7 : std_logic;
SIGNAL ww_Q6 : std_logic;
SIGNAL ww_Q5 : std_logic;
SIGNAL ww_Q4 : std_logic;
SIGNAL ww_Q3 : std_logic;
SIGNAL ww_Q2 : std_logic;
SIGNAL ww_Q0 : std_logic;
SIGNAL ww_Q1 : std_logic;
SIGNAL ww_LO : std_logic;
SIGNAL ww_RO : std_logic;
SIGNAL \LI~combout\ : std_logic;
SIGNAL \RM~combout\ : std_logic;
SIGNAL \RI~combout\ : std_logic;
SIGNAL \A14~combout\ : std_logic;
SIGNAL \LM~combout\ : std_logic;
SIGNAL \A15~combout\ : std_logic;
SIGNAL \inst|inst3~6_combout\ : std_logic;
SIGNAL \inst|inst3~combout\ : std_logic;
SIGNAL \A13~combout\ : std_logic;
SIGNAL \DM~combout\ : std_logic;
SIGNAL \inst|inst7~6_combout\ : std_logic;
SIGNAL \inst|inst7~combout\ : std_logic;
SIGNAL \A12~combout\ : std_logic;
SIGNAL \inst|inst11~6_combout\ : std_logic;
SIGNAL \inst|inst11~combout\ : std_logic;
SIGNAL \A11~combout\ : std_logic;
SIGNAL \inst|inst15~6_combout\ : std_logic;
SIGNAL \inst|inst15~combout\ : std_logic;
SIGNAL \A10~combout\ : std_logic;
SIGNAL \inst1|inst3~6_combout\ : std_logic;
SIGNAL \inst1|inst3~combout\ : std_logic;
SIGNAL \A9~combout\ : std_logic;
SIGNAL \inst1|inst7~6_combout\ : std_logic;
SIGNAL \inst1|inst7~combout\ : std_logic;
SIGNAL \A8~combout\ : std_logic;
SIGNAL \inst1|inst11~6_combout\ : std_logic;
SIGNAL \inst1|inst11~combout\ : std_logic;
SIGNAL \A7~combout\ : std_logic;
SIGNAL \inst1|inst15~6_combout\ : std_logic;
SIGNAL \inst1|inst15~combout\ : std_logic;
SIGNAL \A6~combout\ : std_logic;
SIGNAL \inst2|inst3~6_combout\ : std_logic;
SIGNAL \inst2|inst3~combout\ : std_logic;
SIGNAL \A5~combout\ : std_logic;
SIGNAL \inst2|inst7~6_combout\ : std_logic;
SIGNAL \inst2|inst7~combout\ : std_logic;
SIGNAL \A4~combout\ : std_logic;
SIGNAL \inst2|inst11~6_combout\ : std_logic;
SIGNAL \inst2|inst11~combout\ : std_logic;
SIGNAL \inst2|inst15~6_combout\ : std_logic;
SIGNAL \inst2|inst15~combout\ : std_logic;
SIGNAL \A2~combout\ : std_logic;
SIGNAL \inst3|inst3~6_combout\ : std_logic;
SIGNAL \inst3|inst3~combout\ : std_logic;
SIGNAL \A1~combout\ : std_logic;
SIGNAL \inst3|inst7~6_combout\ : std_logic;
SIGNAL \A3~combout\ : std_logic;
SIGNAL \inst3|inst7~combout\ : std_logic;
SIGNAL \A0~combout\ : std_logic;
SIGNAL \inst3|inst15~6_combout\ : std_logic;
SIGNAL \inst3|inst15~combout\ : std_logic;
SIGNAL \inst3|inst11~6_combout\ : std_logic;
SIGNAL \inst3|inst11~combout\ : std_logic;
SIGNAL \inst|inst16~combout\ : std_logic;
SIGNAL \inst3|inst18~combout\ : std_logic;

BEGIN

Q15 <= ww_Q15;
ww_RI <= RI;
ww_A15 <= A15;
ww_A14 <= A14;
ww_A13 <= A13;
ww_A12 <= A12;
ww_LM <= LM;
ww_DM <= DM;
ww_RM <= RM;
ww_A11 <= A11;
ww_A10 <= A10;
ww_A9 <= A9;
ww_A8 <= A8;
ww_A7 <= A7;
ww_A6 <= A6;
ww_A5 <= A5;
ww_A4 <= A4;
ww_A3 <= A3;
ww_A2 <= A2;
ww_A1 <= A1;
ww_A0 <= A0;
ww_LI <= LI;
Q14 <= ww_Q14;
Q13 <= ww_Q13;
Q12 <= ww_Q12;
Q11 <= ww_Q11;
Q10 <= ww_Q10;
Q9 <= ww_Q9;
Q8 <= ww_Q8;
Q7 <= ww_Q7;
Q6 <= ww_Q6;
Q5 <= ww_Q5;
Q4 <= ww_Q4;
Q3 <= ww_Q3;
Q2 <= ww_Q2;
Q0 <= ww_Q0;
Q1 <= ww_Q1;
LO <= ww_LO;
RO <= ww_RO;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\LI~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_LI,
	combout => \LI~combout\);

\RM~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_RM,
	combout => \RM~combout\);

\RI~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_RI,
	combout => \RI~combout\);

\A14~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_A14,
	combout => \A14~combout\);

\LM~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_LM,
	combout => \LM~combout\);

\A15~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_A15,
	combout => \A15~combout\);

\inst|inst3~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst3~6_combout\ = \DM~combout\ & (\A15~combout\ # \A14~combout\ & \LM~combout\) # !\DM~combout\ & \A14~combout\ & \LM~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DM~combout\,
	datab => \A14~combout\,
	datac => \LM~combout\,
	datad => \A15~combout\,
	combout => \inst|inst3~6_combout\);

\inst|inst3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst3~combout\ = \inst|inst3~6_combout\ # \RM~combout\ & \RI~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RM~combout\,
	datac => \RI~combout\,
	datad => \inst|inst3~6_combout\,
	combout => \inst|inst3~combout\);

\A13~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_A13,
	combout => \A13~combout\);

\DM~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_DM,
	combout => \DM~combout\);

\inst|inst7~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst7~6_combout\ = \LM~combout\ & (\A13~combout\ # \A14~combout\ & \DM~combout\) # !\LM~combout\ & \A14~combout\ & (\DM~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LM~combout\,
	datab => \A14~combout\,
	datac => \A13~combout\,
	datad => \DM~combout\,
	combout => \inst|inst7~6_combout\);

\inst|inst7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst7~combout\ = \inst|inst7~6_combout\ # \RM~combout\ & \A15~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RM~combout\,
	datab => \inst|inst7~6_combout\,
	datad => \A15~combout\,
	combout => \inst|inst7~combout\);

\A12~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_A12,
	combout => \A12~combout\);

\inst|inst11~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst11~6_combout\ = \DM~combout\ & (\A13~combout\ # \LM~combout\ & \A12~combout\) # !\DM~combout\ & (\LM~combout\ & \A12~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DM~combout\,
	datab => \A13~combout\,
	datac => \LM~combout\,
	datad => \A12~combout\,
	combout => \inst|inst11~6_combout\);

\inst|inst11\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst11~combout\ = \inst|inst11~6_combout\ # \RM~combout\ & \A14~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RM~combout\,
	datab => \inst|inst11~6_combout\,
	datad => \A14~combout\,
	combout => \inst|inst11~combout\);

\A11~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_A11,
	combout => \A11~combout\);

\inst|inst15~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst15~6_combout\ = \DM~combout\ & (\A12~combout\ # \LM~combout\ & \A11~combout\) # !\DM~combout\ & (\LM~combout\ & \A11~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DM~combout\,
	datab => \A12~combout\,
	datac => \LM~combout\,
	datad => \A11~combout\,
	combout => \inst|inst15~6_combout\);

\inst|inst15\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst15~combout\ = \inst|inst15~6_combout\ # \RM~combout\ & \A13~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RM~combout\,
	datac => \A13~combout\,
	datad => \inst|inst15~6_combout\,
	combout => \inst|inst15~combout\);

\A10~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_A10,
	combout => \A10~combout\);

\inst1|inst3~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst3~6_combout\ = \DM~combout\ & (\A11~combout\ # \A10~combout\ & \LM~combout\) # !\DM~combout\ & \A10~combout\ & \LM~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DM~combout\,
	datab => \A10~combout\,
	datac => \LM~combout\,
	datad => \A11~combout\,
	combout => \inst1|inst3~6_combout\);

\inst1|inst3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst3~combout\ = \inst1|inst3~6_combout\ # \RM~combout\ & \A12~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RM~combout\,
	datab => \A12~combout\,
	datad => \inst1|inst3~6_combout\,
	combout => \inst1|inst3~combout\);

\A9~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_A9,
	combout => \A9~combout\);

\inst1|inst7~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst7~6_combout\ = \DM~combout\ & (\A10~combout\ # \LM~combout\ & \A9~combout\) # !\DM~combout\ & (\LM~combout\ & \A9~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DM~combout\,
	datab => \A10~combout\,
	datac => \LM~combout\,
	datad => \A9~combout\,
	combout => \inst1|inst7~6_combout\);

\inst1|inst7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst7~combout\ = \inst1|inst7~6_combout\ # \RM~combout\ & \A11~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RM~combout\,
	datab => \inst1|inst7~6_combout\,
	datad => \A11~combout\,
	combout => \inst1|inst7~combout\);

\A8~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_A8,
	combout => \A8~combout\);

\inst1|inst11~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst11~6_combout\ = \DM~combout\ & (\A9~combout\ # \A8~combout\ & \LM~combout\) # !\DM~combout\ & \A8~combout\ & \LM~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DM~combout\,
	datab => \A8~combout\,
	datac => \LM~combout\,
	datad => \A9~combout\,
	combout => \inst1|inst11~6_combout\);

\inst1|inst11\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst11~combout\ = \inst1|inst11~6_combout\ # \RM~combout\ & \A10~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RM~combout\,
	datab => \A10~combout\,
	datac => \inst1|inst11~6_combout\,
	combout => \inst1|inst11~combout\);

\A7~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_A7,
	combout => \A7~combout\);

\inst1|inst15~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst15~6_combout\ = \DM~combout\ & (\A8~combout\ # \LM~combout\ & \A7~combout\) # !\DM~combout\ & (\LM~combout\ & \A7~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DM~combout\,
	datab => \A8~combout\,
	datac => \LM~combout\,
	datad => \A7~combout\,
	combout => \inst1|inst15~6_combout\);

\inst1|inst15\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst15~combout\ = \inst1|inst15~6_combout\ # \RM~combout\ & \A9~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RM~combout\,
	datab => \A9~combout\,
	datad => \inst1|inst15~6_combout\,
	combout => \inst1|inst15~combout\);

\A6~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_A6,
	combout => \A6~combout\);

\inst2|inst3~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|inst3~6_combout\ = \DM~combout\ & (\A7~combout\ # \LM~combout\ & \A6~combout\) # !\DM~combout\ & (\LM~combout\ & \A6~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DM~combout\,
	datab => \A7~combout\,
	datac => \LM~combout\,
	datad => \A6~combout\,
	combout => \inst2|inst3~6_combout\);

\inst2|inst3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|inst3~combout\ = \inst2|inst3~6_combout\ # \RM~combout\ & \A8~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RM~combout\,
	datac => \A8~combout\,
	datad => \inst2|inst3~6_combout\,
	combout => \inst2|inst3~combout\);

\A5~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_A5,
	combout => \A5~combout\);

\inst2|inst7~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|inst7~6_combout\ = \A6~combout\ & (\DM~combout\ # \LM~combout\ & \A5~combout\) # !\A6~combout\ & \LM~combout\ & \A5~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A6~combout\,
	datab => \LM~combout\,
	datac => \A5~combout\,
	datad => \DM~combout\,
	combout => \inst2|inst7~6_combout\);

\inst2|inst7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|inst7~combout\ = \inst2|inst7~6_combout\ # \RM~combout\ & \A7~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RM~combout\,
	datab => \inst2|inst7~6_combout\,
	datad => \A7~combout\,
	combout => \inst2|inst7~combout\);

\A4~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_A4,
	combout => \A4~combout\);

\inst2|inst11~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|inst11~6_combout\ = \A5~combout\ & (\DM~combout\ # \LM~combout\ & \A4~combout\) # !\A5~combout\ & \LM~combout\ & \A4~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A5~combout\,
	datab => \LM~combout\,
	datac => \A4~combout\,
	datad => \DM~combout\,
	combout => \inst2|inst11~6_combout\);

\inst2|inst11\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|inst11~combout\ = \inst2|inst11~6_combout\ # \RM~combout\ & \A6~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RM~combout\,
	datab => \inst2|inst11~6_combout\,
	datad => \A6~combout\,
	combout => \inst2|inst11~combout\);

\inst2|inst15~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|inst15~6_combout\ = \A3~combout\ & (\LM~combout\ # \DM~combout\ & \A4~combout\) # !\A3~combout\ & \DM~combout\ & \A4~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A3~combout\,
	datab => \DM~combout\,
	datac => \A4~combout\,
	datad => \LM~combout\,
	combout => \inst2|inst15~6_combout\);

\inst2|inst15\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|inst15~combout\ = \inst2|inst15~6_combout\ # \A5~combout\ & \RM~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst15~6_combout\,
	datac => \A5~combout\,
	datad => \RM~combout\,
	combout => \inst2|inst15~combout\);

\A2~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_A2,
	combout => \A2~combout\);

\inst3|inst3~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst3~6_combout\ = \A3~combout\ & (\DM~combout\ # \A2~combout\ & \LM~combout\) # !\A3~combout\ & (\A2~combout\ & \LM~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A3~combout\,
	datab => \DM~combout\,
	datac => \A2~combout\,
	datad => \LM~combout\,
	combout => \inst3|inst3~6_combout\);

\inst3|inst3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst3~combout\ = \inst3|inst3~6_combout\ # \RM~combout\ & \A4~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RM~combout\,
	datab => \A4~combout\,
	datac => \inst3|inst3~6_combout\,
	combout => \inst3|inst3~combout\);

\A1~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_A1,
	combout => \A1~combout\);

\inst3|inst7~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst7~6_combout\ = \LM~combout\ & (\A1~combout\ # \A2~combout\ & \DM~combout\) # !\LM~combout\ & \A2~combout\ & (\DM~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LM~combout\,
	datab => \A2~combout\,
	datac => \A1~combout\,
	datad => \DM~combout\,
	combout => \inst3|inst7~6_combout\);

\A3~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_A3,
	combout => \A3~combout\);

\inst3|inst7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst7~combout\ = \inst3|inst7~6_combout\ # \A3~combout\ & \RM~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst7~6_combout\,
	datac => \A3~combout\,
	datad => \RM~combout\,
	combout => \inst3|inst7~combout\);

\A0~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_A0,
	combout => \A0~combout\);

\inst3|inst15~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst15~6_combout\ = \LI~combout\ & (\LM~combout\ # \DM~combout\ & \A0~combout\) # !\LI~combout\ & \DM~combout\ & (\A0~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LI~combout\,
	datab => \DM~combout\,
	datac => \LM~combout\,
	datad => \A0~combout\,
	combout => \inst3|inst15~6_combout\);

\inst3|inst15\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst15~combout\ = \inst3|inst15~6_combout\ # \RM~combout\ & \A1~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RM~combout\,
	datab => \inst3|inst15~6_combout\,
	datac => \A1~combout\,
	combout => \inst3|inst15~combout\);

\inst3|inst11~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst11~6_combout\ = \LM~combout\ & (\A0~combout\ # \DM~combout\ & \A1~combout\) # !\LM~combout\ & \DM~combout\ & \A1~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LM~combout\,
	datab => \DM~combout\,
	datac => \A1~combout\,
	datad => \A0~combout\,
	combout => \inst3|inst11~6_combout\);

\inst3|inst11\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst11~combout\ = \inst3|inst11~6_combout\ # \RM~combout\ & \A2~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RM~combout\,
	datac => \A2~combout\,
	datad => \inst3|inst11~6_combout\,
	combout => \inst3|inst11~combout\);

\inst|inst16\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst16~combout\ = \LM~combout\ & \A15~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \LM~combout\,
	datad => \A15~combout\,
	combout => \inst|inst16~combout\);

\inst3|inst18\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst18~combout\ = \A0~combout\ & \RM~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A0~combout\,
	datac => \RM~combout\,
	combout => \inst3|inst18~combout\);

\Q15~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst|inst3~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Q15);

\Q14~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst|inst7~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Q14);

\Q13~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst|inst11~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Q13);

\Q12~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst|inst15~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Q12);

\Q11~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst1|inst3~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Q11);

\Q10~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst1|inst7~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Q10);

\Q9~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst1|inst11~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Q9);

\Q8~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst1|inst15~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Q8);

\Q7~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst2|inst3~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Q7);

\Q6~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst2|inst7~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Q6);

\Q5~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst2|inst11~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Q5);

\Q4~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst2|inst15~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Q4);

\Q3~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst3|inst3~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Q3);

\Q2~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst3|inst7~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Q2);

\Q0~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst3|inst15~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Q0);

\Q1~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst3|inst11~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Q1);

\LO~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst|inst16~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LO);

\RO~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst3|inst18~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RO);
END structure;


