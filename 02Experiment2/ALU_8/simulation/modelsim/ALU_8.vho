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

-- DATE "03/16/2022 20:38:21"

-- 
-- Device: Altera EP2C8Q208C8 Package PQFP208
-- 

-- 
-- This VHDL file should be used for ModelSim (VHDL) only
-- 

LIBRARY IEEE, cycloneii;
USE IEEE.std_logic_1164.all;
USE cycloneii.cycloneii_components.all;

ENTITY 	ALU_8 IS
    PORT (
	C0 : OUT std_logic;
	B0 : IN std_logic;
	A0 : IN std_logic;
	A1 : IN std_logic;
	B1 : IN std_logic;
	A3 : IN std_logic;
	B2 : IN std_logic;
	A2 : IN std_logic;
	B3 : IN std_logic;
	C1 : OUT std_logic;
	C2 : OUT std_logic;
	C3 : OUT std_logic;
	C4 : OUT std_logic;
	B4 : IN std_logic;
	A4 : IN std_logic;
	A5 : IN std_logic;
	B5 : IN std_logic;
	A7 : IN std_logic;
	B6 : IN std_logic;
	A6 : IN std_logic;
	B7 : IN std_logic;
	C5 : OUT std_logic;
	C6 : OUT std_logic;
	C7 : OUT std_logic
	);
END ALU_8;

ARCHITECTURE structure OF ALU_8 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_C0 : std_logic;
SIGNAL ww_B0 : std_logic;
SIGNAL ww_A0 : std_logic;
SIGNAL ww_A1 : std_logic;
SIGNAL ww_B1 : std_logic;
SIGNAL ww_A3 : std_logic;
SIGNAL ww_B2 : std_logic;
SIGNAL ww_A2 : std_logic;
SIGNAL ww_B3 : std_logic;
SIGNAL ww_C1 : std_logic;
SIGNAL ww_C2 : std_logic;
SIGNAL ww_C3 : std_logic;
SIGNAL ww_C4 : std_logic;
SIGNAL ww_B4 : std_logic;
SIGNAL ww_A4 : std_logic;
SIGNAL ww_A5 : std_logic;
SIGNAL ww_B5 : std_logic;
SIGNAL ww_A7 : std_logic;
SIGNAL ww_B6 : std_logic;
SIGNAL ww_A6 : std_logic;
SIGNAL ww_B7 : std_logic;
SIGNAL ww_C5 : std_logic;
SIGNAL ww_C6 : std_logic;
SIGNAL ww_C7 : std_logic;
SIGNAL \B0~combout\ : std_logic;
SIGNAL \A0~combout\ : std_logic;
SIGNAL \inst3|53~2_combout\ : std_logic;
SIGNAL \B1~combout\ : std_logic;
SIGNAL \A1~combout\ : std_logic;
SIGNAL \inst3|81~35_combout\ : std_logic;
SIGNAL \inst3|77~127_combout\ : std_logic;
SIGNAL \B2~combout\ : std_logic;
SIGNAL \A2~combout\ : std_logic;
SIGNAL \inst3|82~combout\ : std_logic;
SIGNAL \B3~combout\ : std_logic;
SIGNAL \A3~combout\ : std_logic;
SIGNAL \inst3|77~128_combout\ : std_logic;
SIGNAL \inst3|77~129_combout\ : std_logic;
SIGNAL \B4~combout\ : std_logic;
SIGNAL \inst3|63~265_combout\ : std_logic;
SIGNAL \inst3|63~263_combout\ : std_logic;
SIGNAL \inst3|63~262_combout\ : std_logic;
SIGNAL \inst3|63~264_combout\ : std_logic;
SIGNAL \A4~combout\ : std_logic;
SIGNAL \inst2|80~combout\ : std_logic;
SIGNAL \inst2|66~2_combout\ : std_logic;
SIGNAL \inst2|43~15_combout\ : std_logic;
SIGNAL \B5~combout\ : std_logic;
SIGNAL \A5~combout\ : std_logic;
SIGNAL \inst2|81~combout\ : std_logic;
SIGNAL \inst2|82~175_combout\ : std_logic;
SIGNAL \inst2|82~176_combout\ : std_logic;
SIGNAL \B6~combout\ : std_logic;
SIGNAL \A6~combout\ : std_logic;
SIGNAL \inst2|82~177_combout\ : std_logic;
SIGNAL \inst2|77~178_combout\ : std_logic;
SIGNAL \B7~combout\ : std_logic;
SIGNAL \A7~combout\ : std_logic;
SIGNAL \inst2|77~177_combout\ : std_logic;
SIGNAL \inst2|77~179_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_82~combout\ : std_logic;
SIGNAL \inst2|ALT_INV_80~combout\ : std_logic;
SIGNAL \inst2|ALT_INV_81~combout\ : std_logic;
SIGNAL \inst2|ALT_INV_82~177_combout\ : std_logic;

BEGIN

C0 <= ww_C0;
ww_B0 <= B0;
ww_A0 <= A0;
ww_A1 <= A1;
ww_B1 <= B1;
ww_A3 <= A3;
ww_B2 <= B2;
ww_A2 <= A2;
ww_B3 <= B3;
C1 <= ww_C1;
C2 <= ww_C2;
C3 <= ww_C3;
C4 <= ww_C4;
ww_B4 <= B4;
ww_A4 <= A4;
ww_A5 <= A5;
ww_B5 <= B5;
ww_A7 <= A7;
ww_B6 <= B6;
ww_A6 <= A6;
ww_B7 <= B7;
C5 <= ww_C5;
C6 <= ww_C6;
C7 <= ww_C7;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\inst3|ALT_INV_82~combout\ <= NOT \inst3|82~combout\;
\inst2|ALT_INV_80~combout\ <= NOT \inst2|80~combout\;
\inst2|ALT_INV_81~combout\ <= NOT \inst2|81~combout\;
\inst2|ALT_INV_82~177_combout\ <= NOT \inst2|82~177_combout\;

\B0~I\ : cycloneii_io
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
	padio => ww_B0,
	combout => \B0~combout\);

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

\inst3|53~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|53~2_combout\ = \B0~combout\ $ \A0~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B0~combout\,
	datac => \A0~combout\,
	combout => \inst3|53~2_combout\);

\B1~I\ : cycloneii_io
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
	padio => ww_B1,
	combout => \B1~combout\);

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

\inst3|81~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|81~35_combout\ = \B1~combout\ $ \A1~combout\ $ (\A0~combout\ & \B0~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B1~combout\,
	datab => \A0~combout\,
	datac => \A1~combout\,
	datad => \B0~combout\,
	combout => \inst3|81~35_combout\);

\inst3|77~127\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|77~127_combout\ = \B1~combout\ & (\A1~combout\ # \A0~combout\ & \B0~combout\) # !\B1~combout\ & \A0~combout\ & \A1~combout\ & \B0~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B1~combout\,
	datab => \A0~combout\,
	datac => \A1~combout\,
	datad => \B0~combout\,
	combout => \inst3|77~127_combout\);

\B2~I\ : cycloneii_io
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
	padio => ww_B2,
	combout => \B2~combout\);

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

\inst3|82\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|82~combout\ = \inst3|77~127_combout\ $ \B2~combout\ $ !\A2~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|77~127_combout\,
	datac => \B2~combout\,
	datad => \A2~combout\,
	combout => \inst3|82~combout\);

\B3~I\ : cycloneii_io
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
	padio => ww_B3,
	combout => \B3~combout\);

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

\inst3|77~128\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|77~128_combout\ = \B3~combout\ $ \A3~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B3~combout\,
	datac => \A3~combout\,
	combout => \inst3|77~128_combout\);

\inst3|77~129\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|77~129_combout\ = \inst3|77~128_combout\ $ (\A2~combout\ & (\B2~combout\ # \inst3|77~127_combout\) # !\A2~combout\ & \B2~combout\ & \inst3|77~127_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A2~combout\,
	datab => \inst3|77~128_combout\,
	datac => \B2~combout\,
	datad => \inst3|77~127_combout\,
	combout => \inst3|77~129_combout\);

\B4~I\ : cycloneii_io
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
	padio => ww_B4,
	combout => \B4~combout\);

\inst3|63~265\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|63~265_combout\ = \A3~combout\ & !\B3~combout\ & !\B2~combout\ & !\A2~combout\ # !\A3~combout\ & (!\B2~combout\ & !\A2~combout\ # !\B3~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A3~combout\,
	datab => \B3~combout\,
	datac => \B2~combout\,
	datad => \A2~combout\,
	combout => \inst3|63~265_combout\);

\inst3|63~263\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|63~263_combout\ = !\B0~combout\ & !\A0~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B0~combout\,
	datac => \A0~combout\,
	combout => \inst3|63~263_combout\);

\inst3|63~262\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|63~262_combout\ = \A3~combout\ & !\B3~combout\ & (!\A2~combout\ # !\B2~combout\) # !\A3~combout\ & (!\A2~combout\ # !\B2~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A3~combout\,
	datab => \B3~combout\,
	datac => \B2~combout\,
	datad => \A2~combout\,
	combout => \inst3|63~262_combout\);

\inst3|63~264\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|63~264_combout\ = \inst3|63~262_combout\ & (\B1~combout\ & \inst3|63~263_combout\ & !\A1~combout\ # !\B1~combout\ & (\inst3|63~263_combout\ # !\A1~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B1~combout\,
	datab => \inst3|63~263_combout\,
	datac => \A1~combout\,
	datad => \inst3|63~262_combout\,
	combout => \inst3|63~264_combout\);

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

\inst2|80\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|80~combout\ = \B4~combout\ $ \A4~combout\ $ (\inst3|63~265_combout\ # \inst3|63~264_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100101010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B4~combout\,
	datab => \inst3|63~265_combout\,
	datac => \inst3|63~264_combout\,
	datad => \A4~combout\,
	combout => \inst2|80~combout\);

\inst2|66~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|66~2_combout\ = \B4~combout\ & !\A4~combout\ & (\inst3|63~265_combout\ # \inst3|63~264_combout\) # !\B4~combout\ & (\inst3|63~265_combout\ # \inst3|63~264_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B4~combout\,
	datab => \inst3|63~265_combout\,
	datac => \inst3|63~264_combout\,
	datad => \A4~combout\,
	combout => \inst2|66~2_combout\);

\inst2|43~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|43~15_combout\ = \B4~combout\ # \A4~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B4~combout\,
	datad => \A4~combout\,
	combout => \inst2|43~15_combout\);

\B5~I\ : cycloneii_io
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
	padio => ww_B5,
	combout => \B5~combout\);

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

\inst2|81\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|81~combout\ = \B5~combout\ $ \A5~combout\ $ (\inst2|66~2_combout\ # !\inst2|43~15_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010001001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|66~2_combout\,
	datab => \inst2|43~15_combout\,
	datac => \B5~combout\,
	datad => \A5~combout\,
	combout => \inst2|81~combout\);

\inst2|82~175\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|82~175_combout\ = \B4~combout\ & !\A4~combout\ & (\inst3|63~265_combout\ # \inst3|63~264_combout\) # !\B4~combout\ & (\inst3|63~265_combout\ # \inst3|63~264_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B4~combout\,
	datab => \inst3|63~265_combout\,
	datac => \inst3|63~264_combout\,
	datad => \A4~combout\,
	combout => \inst2|82~175_combout\);

\inst2|82~176\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|82~176_combout\ = \B5~combout\ & (\A5~combout\ # \inst2|43~15_combout\ & !\inst2|82~175_combout\) # !\B5~combout\ & \inst2|43~15_combout\ & !\inst2|82~175_combout\ & \A5~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B5~combout\,
	datab => \inst2|43~15_combout\,
	datac => \inst2|82~175_combout\,
	datad => \A5~combout\,
	combout => \inst2|82~176_combout\);

\B6~I\ : cycloneii_io
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
	padio => ww_B6,
	combout => \B6~combout\);

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

\inst2|82~177\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|82~177_combout\ = \inst2|82~176_combout\ $ \B6~combout\ $ !\A6~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|82~176_combout\,
	datab => \B6~combout\,
	datac => \A6~combout\,
	combout => \inst2|82~177_combout\);

\inst2|77~178\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|77~178_combout\ = \B5~combout\ & (\A5~combout\ # \inst2|43~15_combout\ & !\inst2|66~2_combout\) # !\B5~combout\ & \inst2|43~15_combout\ & !\inst2|66~2_combout\ & \A5~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|43~15_combout\,
	datab => \B5~combout\,
	datac => \inst2|66~2_combout\,
	datad => \A5~combout\,
	combout => \inst2|77~178_combout\);

\B7~I\ : cycloneii_io
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
	padio => ww_B7,
	combout => \B7~combout\);

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

\inst2|77~177\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|77~177_combout\ = \B7~combout\ $ \A7~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B7~combout\,
	datad => \A7~combout\,
	combout => \inst2|77~177_combout\);

\inst2|77~179\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|77~179_combout\ = \inst2|77~177_combout\ $ (\inst2|77~178_combout\ & (\A6~combout\ # \B6~combout\) # !\inst2|77~178_combout\ & \A6~combout\ & \B6~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|77~178_combout\,
	datab => \inst2|77~177_combout\,
	datac => \A6~combout\,
	datad => \B6~combout\,
	combout => \inst2|77~179_combout\);

\C0~I\ : cycloneii_io
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
	datain => \inst3|53~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_C0);

\C1~I\ : cycloneii_io
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
	datain => \inst3|81~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_C1);

\C2~I\ : cycloneii_io
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
	datain => \inst3|ALT_INV_82~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_C2);

\C3~I\ : cycloneii_io
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
	datain => \inst3|77~129_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_C3);

\C4~I\ : cycloneii_io
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
	datain => \inst2|ALT_INV_80~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_C4);

\C5~I\ : cycloneii_io
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
	datain => \inst2|ALT_INV_81~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_C5);

\C6~I\ : cycloneii_io
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
	datain => \inst2|ALT_INV_82~177_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_C6);

\C7~I\ : cycloneii_io
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
	datain => \inst2|77~179_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_C7);
END structure;


