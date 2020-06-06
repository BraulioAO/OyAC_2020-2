-- Copyright (C) 2018  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 18.0.0 Build 614 04/24/2018 SJ Lite Edition"

-- DATE "05/03/2020 21:20:54"

-- 
-- Device: Altera 10M50DAF484C7G Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	pipeline IS
    PORT (
	n : OUT std_logic;
	RELOJ : IN std_logic;
	RESET : IN std_logic;
	z : OUT std_logic;
	v : OUT std_logic;
	c : OUT std_logic;
	h : OUT std_logic;
	i : OUT std_logic;
	branch : OUT std_logic;
	ACCA_D : OUT std_logic_vector(15 DOWNTO 0);
	ACCB_D : OUT std_logic_vector(15 DOWNTO 0);
	AUX_D : OUT std_logic_vector(15 DOWNTO 0);
	IX_D : OUT std_logic_vector(15 DOWNTO 0);
	IY_D : OUT std_logic_vector(15 DOWNTO 0);
	PC_D : OUT std_logic_vector(15 DOWNTO 0);
	SP_D : OUT std_logic_vector(15 DOWNTO 0)
	);
END pipeline;

ARCHITECTURE structure OF pipeline IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_n : std_logic;
SIGNAL ww_RELOJ : std_logic;
SIGNAL ww_RESET : std_logic;
SIGNAL ww_z : std_logic;
SIGNAL ww_v : std_logic;
SIGNAL ww_c : std_logic;
SIGNAL ww_h : std_logic;
SIGNAL ww_i : std_logic;
SIGNAL ww_branch : std_logic;
SIGNAL ww_ACCA_D : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_ACCB_D : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_AUX_D : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_IX_D : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_IY_D : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_PC_D : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_SP_D : std_logic_vector(15 DOWNTO 0);
SIGNAL \n~output_o\ : std_logic;
SIGNAL \z~output_o\ : std_logic;
SIGNAL \v~output_o\ : std_logic;
SIGNAL \c~output_o\ : std_logic;
SIGNAL \h~output_o\ : std_logic;
SIGNAL \i~output_o\ : std_logic;
SIGNAL \branch~output_o\ : std_logic;
SIGNAL \ACCA_D[15]~output_o\ : std_logic;
SIGNAL \ACCA_D[14]~output_o\ : std_logic;
SIGNAL \ACCA_D[13]~output_o\ : std_logic;
SIGNAL \ACCA_D[12]~output_o\ : std_logic;
SIGNAL \ACCA_D[11]~output_o\ : std_logic;
SIGNAL \ACCA_D[10]~output_o\ : std_logic;
SIGNAL \ACCA_D[9]~output_o\ : std_logic;
SIGNAL \ACCA_D[8]~output_o\ : std_logic;
SIGNAL \ACCA_D[7]~output_o\ : std_logic;
SIGNAL \ACCA_D[6]~output_o\ : std_logic;
SIGNAL \ACCA_D[5]~output_o\ : std_logic;
SIGNAL \ACCA_D[4]~output_o\ : std_logic;
SIGNAL \ACCA_D[3]~output_o\ : std_logic;
SIGNAL \ACCA_D[2]~output_o\ : std_logic;
SIGNAL \ACCA_D[1]~output_o\ : std_logic;
SIGNAL \ACCA_D[0]~output_o\ : std_logic;
SIGNAL \ACCB_D[15]~output_o\ : std_logic;
SIGNAL \ACCB_D[14]~output_o\ : std_logic;
SIGNAL \ACCB_D[13]~output_o\ : std_logic;
SIGNAL \ACCB_D[12]~output_o\ : std_logic;
SIGNAL \ACCB_D[11]~output_o\ : std_logic;
SIGNAL \ACCB_D[10]~output_o\ : std_logic;
SIGNAL \ACCB_D[9]~output_o\ : std_logic;
SIGNAL \ACCB_D[8]~output_o\ : std_logic;
SIGNAL \ACCB_D[7]~output_o\ : std_logic;
SIGNAL \ACCB_D[6]~output_o\ : std_logic;
SIGNAL \ACCB_D[5]~output_o\ : std_logic;
SIGNAL \ACCB_D[4]~output_o\ : std_logic;
SIGNAL \ACCB_D[3]~output_o\ : std_logic;
SIGNAL \ACCB_D[2]~output_o\ : std_logic;
SIGNAL \ACCB_D[1]~output_o\ : std_logic;
SIGNAL \ACCB_D[0]~output_o\ : std_logic;
SIGNAL \AUX_D[15]~output_o\ : std_logic;
SIGNAL \AUX_D[14]~output_o\ : std_logic;
SIGNAL \AUX_D[13]~output_o\ : std_logic;
SIGNAL \AUX_D[12]~output_o\ : std_logic;
SIGNAL \AUX_D[11]~output_o\ : std_logic;
SIGNAL \AUX_D[10]~output_o\ : std_logic;
SIGNAL \AUX_D[9]~output_o\ : std_logic;
SIGNAL \AUX_D[8]~output_o\ : std_logic;
SIGNAL \AUX_D[7]~output_o\ : std_logic;
SIGNAL \AUX_D[6]~output_o\ : std_logic;
SIGNAL \AUX_D[5]~output_o\ : std_logic;
SIGNAL \AUX_D[4]~output_o\ : std_logic;
SIGNAL \AUX_D[3]~output_o\ : std_logic;
SIGNAL \AUX_D[2]~output_o\ : std_logic;
SIGNAL \AUX_D[1]~output_o\ : std_logic;
SIGNAL \AUX_D[0]~output_o\ : std_logic;
SIGNAL \IX_D[15]~output_o\ : std_logic;
SIGNAL \IX_D[14]~output_o\ : std_logic;
SIGNAL \IX_D[13]~output_o\ : std_logic;
SIGNAL \IX_D[12]~output_o\ : std_logic;
SIGNAL \IX_D[11]~output_o\ : std_logic;
SIGNAL \IX_D[10]~output_o\ : std_logic;
SIGNAL \IX_D[9]~output_o\ : std_logic;
SIGNAL \IX_D[8]~output_o\ : std_logic;
SIGNAL \IX_D[7]~output_o\ : std_logic;
SIGNAL \IX_D[6]~output_o\ : std_logic;
SIGNAL \IX_D[5]~output_o\ : std_logic;
SIGNAL \IX_D[4]~output_o\ : std_logic;
SIGNAL \IX_D[3]~output_o\ : std_logic;
SIGNAL \IX_D[2]~output_o\ : std_logic;
SIGNAL \IX_D[1]~output_o\ : std_logic;
SIGNAL \IX_D[0]~output_o\ : std_logic;
SIGNAL \IY_D[15]~output_o\ : std_logic;
SIGNAL \IY_D[14]~output_o\ : std_logic;
SIGNAL \IY_D[13]~output_o\ : std_logic;
SIGNAL \IY_D[12]~output_o\ : std_logic;
SIGNAL \IY_D[11]~output_o\ : std_logic;
SIGNAL \IY_D[10]~output_o\ : std_logic;
SIGNAL \IY_D[9]~output_o\ : std_logic;
SIGNAL \IY_D[8]~output_o\ : std_logic;
SIGNAL \IY_D[7]~output_o\ : std_logic;
SIGNAL \IY_D[6]~output_o\ : std_logic;
SIGNAL \IY_D[5]~output_o\ : std_logic;
SIGNAL \IY_D[4]~output_o\ : std_logic;
SIGNAL \IY_D[3]~output_o\ : std_logic;
SIGNAL \IY_D[2]~output_o\ : std_logic;
SIGNAL \IY_D[1]~output_o\ : std_logic;
SIGNAL \IY_D[0]~output_o\ : std_logic;
SIGNAL \PC_D[15]~output_o\ : std_logic;
SIGNAL \PC_D[14]~output_o\ : std_logic;
SIGNAL \PC_D[13]~output_o\ : std_logic;
SIGNAL \PC_D[12]~output_o\ : std_logic;
SIGNAL \PC_D[11]~output_o\ : std_logic;
SIGNAL \PC_D[10]~output_o\ : std_logic;
SIGNAL \PC_D[9]~output_o\ : std_logic;
SIGNAL \PC_D[8]~output_o\ : std_logic;
SIGNAL \PC_D[7]~output_o\ : std_logic;
SIGNAL \PC_D[6]~output_o\ : std_logic;
SIGNAL \PC_D[5]~output_o\ : std_logic;
SIGNAL \PC_D[4]~output_o\ : std_logic;
SIGNAL \PC_D[3]~output_o\ : std_logic;
SIGNAL \PC_D[2]~output_o\ : std_logic;
SIGNAL \PC_D[1]~output_o\ : std_logic;
SIGNAL \PC_D[0]~output_o\ : std_logic;
SIGNAL \SP_D[15]~output_o\ : std_logic;
SIGNAL \SP_D[14]~output_o\ : std_logic;
SIGNAL \SP_D[13]~output_o\ : std_logic;
SIGNAL \SP_D[12]~output_o\ : std_logic;
SIGNAL \SP_D[11]~output_o\ : std_logic;
SIGNAL \SP_D[10]~output_o\ : std_logic;
SIGNAL \SP_D[9]~output_o\ : std_logic;
SIGNAL \SP_D[8]~output_o\ : std_logic;
SIGNAL \SP_D[7]~output_o\ : std_logic;
SIGNAL \SP_D[6]~output_o\ : std_logic;
SIGNAL \SP_D[5]~output_o\ : std_logic;
SIGNAL \SP_D[4]~output_o\ : std_logic;
SIGNAL \SP_D[3]~output_o\ : std_logic;
SIGNAL \SP_D[2]~output_o\ : std_logic;
SIGNAL \SP_D[1]~output_o\ : std_logic;
SIGNAL \SP_D[0]~output_o\ : std_logic;
SIGNAL \RELOJ~input_o\ : std_logic;
SIGNAL \RESET~input_o\ : std_logic;
SIGNAL \inst34|valor_interno[1]~16\ : std_logic;
SIGNAL \inst34|valor_interno[2]~17_combout\ : std_logic;
SIGNAL \inst700666|inst|D2[2]~13_combout\ : std_logic;
SIGNAL \inst1|mem~0_combout\ : std_logic;
SIGNAL \inst1|mem~2_combout\ : std_logic;
SIGNAL \inst1|mem~6_combout\ : std_logic;
SIGNAL \inst1|mem~7_combout\ : std_logic;
SIGNAL \inst206|Equal2~0_combout\ : std_logic;
SIGNAL \inst1|mem~5_combout\ : std_logic;
SIGNAL \inst1|mem~8_combout\ : std_logic;
SIGNAL \inst206|Equal2~1_combout\ : std_logic;
SIGNAL \inst206|Equal3~0_combout\ : std_logic;
SIGNAL \inst206|selfalgs[0]~0_combout\ : std_logic;
SIGNAL \inst206|Equal0~0_combout\ : std_logic;
SIGNAL \inst206|Equal0~1_combout\ : std_logic;
SIGNAL \inst202|Mux14~0_combout\ : std_logic;
SIGNAL \inst202|Mux13~0_combout\ : std_logic;
SIGNAL \inst206|WideOr0~0_combout\ : std_logic;
SIGNAL \inst24|valor_interno[2]~13_combout\ : std_logic;
SIGNAL \inst202|Mux14~1_combout\ : std_logic;
SIGNAL \inst24|valor_interno[1]~14_combout\ : std_logic;
SIGNAL \inst202|Mux15~0_combout\ : std_logic;
SIGNAL \inst202|Mux1~0_combout\ : std_logic;
SIGNAL \inst24|valor_interno[14]~1_combout\ : std_logic;
SIGNAL \inst202|Mux2~0_combout\ : std_logic;
SIGNAL \inst24|valor_interno[13]~2_combout\ : std_logic;
SIGNAL \inst202|Mux3~0_combout\ : std_logic;
SIGNAL \inst24|valor_interno[12]~3_combout\ : std_logic;
SIGNAL \inst202|Mux4~0_combout\ : std_logic;
SIGNAL \inst24|valor_interno[11]~4_combout\ : std_logic;
SIGNAL \inst202|Mux5~0_combout\ : std_logic;
SIGNAL \inst24|valor_interno[10]~5_combout\ : std_logic;
SIGNAL \inst202|Mux6~0_combout\ : std_logic;
SIGNAL \inst24|valor_interno[9]~6_combout\ : std_logic;
SIGNAL \inst202|Mux7~0_combout\ : std_logic;
SIGNAL \inst24|valor_interno[8]~7_combout\ : std_logic;
SIGNAL \inst202|Mux8~0_combout\ : std_logic;
SIGNAL \inst24|valor_interno[7]~8_combout\ : std_logic;
SIGNAL \inst202|Mux9~0_combout\ : std_logic;
SIGNAL \inst24|valor_interno[6]~9_combout\ : std_logic;
SIGNAL \inst202|Mux10~0_combout\ : std_logic;
SIGNAL \inst24|valor_interno[5]~10_combout\ : std_logic;
SIGNAL \inst202|Mux11~0_combout\ : std_logic;
SIGNAL \inst24|valor_interno[4]~11_combout\ : std_logic;
SIGNAL \inst202|Mux12~0_combout\ : std_logic;
SIGNAL \inst24|valor_interno[3]~12_combout\ : std_logic;
SIGNAL \inst33|Add0~7\ : std_logic;
SIGNAL \inst33|Add0~8_combout\ : std_logic;
SIGNAL \inst33|opres[3]~9_combout\ : std_logic;
SIGNAL \inst33|opres[3]~10_combout\ : std_logic;
SIGNAL \inst33|opres[16]~0_combout\ : std_logic;
SIGNAL \inst24|valor_interno[1]~16_combout\ : std_logic;
SIGNAL \inst700666|inst|D2[3]~12_combout\ : std_logic;
SIGNAL \inst33|Add0~9\ : std_logic;
SIGNAL \inst33|Add0~10_combout\ : std_logic;
SIGNAL \inst33|opres[4]~11_combout\ : std_logic;
SIGNAL \inst33|opres[4]~12_combout\ : std_logic;
SIGNAL \inst700666|inst|D2[4]~11_combout\ : std_logic;
SIGNAL \inst33|Add0~11\ : std_logic;
SIGNAL \inst33|Add0~12_combout\ : std_logic;
SIGNAL \inst33|opres[5]~13_combout\ : std_logic;
SIGNAL \inst33|opres[5]~14_combout\ : std_logic;
SIGNAL \inst700666|inst|D2[5]~10_combout\ : std_logic;
SIGNAL \inst33|Add0~13\ : std_logic;
SIGNAL \inst33|Add0~14_combout\ : std_logic;
SIGNAL \inst33|opres[6]~15_combout\ : std_logic;
SIGNAL \inst33|opres[6]~16_combout\ : std_logic;
SIGNAL \inst700666|inst|D2[6]~9_combout\ : std_logic;
SIGNAL \inst33|Add0~15\ : std_logic;
SIGNAL \inst33|Add0~16_combout\ : std_logic;
SIGNAL \inst33|opres[7]~17_combout\ : std_logic;
SIGNAL \inst33|opres[7]~18_combout\ : std_logic;
SIGNAL \inst700666|inst|D2[7]~8_combout\ : std_logic;
SIGNAL \inst33|Add0~17\ : std_logic;
SIGNAL \inst33|Add0~18_combout\ : std_logic;
SIGNAL \inst33|opres[8]~19_combout\ : std_logic;
SIGNAL \inst33|opres[8]~20_combout\ : std_logic;
SIGNAL \inst700666|inst|D2[8]~7_combout\ : std_logic;
SIGNAL \inst33|Add0~19\ : std_logic;
SIGNAL \inst33|Add0~20_combout\ : std_logic;
SIGNAL \inst33|opres[9]~21_combout\ : std_logic;
SIGNAL \inst33|opres[9]~22_combout\ : std_logic;
SIGNAL \inst700666|inst|D2[9]~6_combout\ : std_logic;
SIGNAL \inst33|Add0~21\ : std_logic;
SIGNAL \inst33|Add0~22_combout\ : std_logic;
SIGNAL \inst33|opres[10]~23_combout\ : std_logic;
SIGNAL \inst33|opres[10]~24_combout\ : std_logic;
SIGNAL \inst700666|inst|D2[10]~5_combout\ : std_logic;
SIGNAL \inst33|Add0~23\ : std_logic;
SIGNAL \inst33|Add0~24_combout\ : std_logic;
SIGNAL \inst33|opres[11]~25_combout\ : std_logic;
SIGNAL \inst33|opres[11]~26_combout\ : std_logic;
SIGNAL \inst700666|inst|D2[11]~4_combout\ : std_logic;
SIGNAL \inst33|Add0~25\ : std_logic;
SIGNAL \inst33|Add0~26_combout\ : std_logic;
SIGNAL \inst33|opres[12]~27_combout\ : std_logic;
SIGNAL \inst33|opres[12]~28_combout\ : std_logic;
SIGNAL \inst700666|inst|D2[12]~3_combout\ : std_logic;
SIGNAL \inst33|Add0~27\ : std_logic;
SIGNAL \inst33|Add0~28_combout\ : std_logic;
SIGNAL \inst33|opres[13]~29_combout\ : std_logic;
SIGNAL \inst33|opres[13]~30_combout\ : std_logic;
SIGNAL \inst700666|inst|D2[13]~2_combout\ : std_logic;
SIGNAL \inst33|Add0~29\ : std_logic;
SIGNAL \inst33|Add0~30_combout\ : std_logic;
SIGNAL \inst33|opres[14]~31_combout\ : std_logic;
SIGNAL \inst33|opres[14]~32_combout\ : std_logic;
SIGNAL \inst700666|inst|D2[14]~1_combout\ : std_logic;
SIGNAL \inst33|Add0~31\ : std_logic;
SIGNAL \inst33|Add0~33\ : std_logic;
SIGNAL \inst33|Add0~34_combout\ : std_logic;
SIGNAL \inst33|opres[16]~33_combout\ : std_logic;
SIGNAL \inst3|ci~q\ : std_logic;
SIGNAL \SENIALES_CONTROL|selc~q\ : std_logic;
SIGNAL \inst33|Add0~1_cout\ : std_logic;
SIGNAL \inst33|Add0~3\ : std_logic;
SIGNAL \inst33|Add0~4_combout\ : std_logic;
SIGNAL \inst33|opres[1]~3_combout\ : std_logic;
SIGNAL \inst33|opres[1]~4_combout\ : std_logic;
SIGNAL \inst202|Mux30~0_combout\ : std_logic;
SIGNAL \inst202|Mux30~1_combout\ : std_logic;
SIGNAL \inst33|Add0~5\ : std_logic;
SIGNAL \inst33|Add0~6_combout\ : std_logic;
SIGNAL \inst33|opres[2]~7_combout\ : std_logic;
SIGNAL \inst33|opres[2]~8_combout\ : std_logic;
SIGNAL \inst4|valor_interno~q\ : std_logic;
SIGNAL \inst34|valor_interno[2]~18\ : std_logic;
SIGNAL \inst34|valor_interno[3]~19_combout\ : std_logic;
SIGNAL \inst34|valor_interno[3]~20\ : std_logic;
SIGNAL \inst34|valor_interno[4]~21_combout\ : std_logic;
SIGNAL \inst34|valor_interno[4]~22\ : std_logic;
SIGNAL \inst34|valor_interno[5]~23_combout\ : std_logic;
SIGNAL \inst1|mem~3_combout\ : std_logic;
SIGNAL \inst1|mem~4_combout\ : std_logic;
SIGNAL \inst206|Equal4~0_combout\ : std_logic;
SIGNAL \inst700666|inst1000|Mux0~1_combout\ : std_logic;
SIGNAL \inst700666|inst|D2[0]~14_combout\ : std_logic;
SIGNAL \inst24|valor_interno[0]~15_combout\ : std_logic;
SIGNAL \inst33|Add0~2_combout\ : std_logic;
SIGNAL \inst33|opres[0]~5_combout\ : std_logic;
SIGNAL \inst33|opres[0]~6_combout\ : std_logic;
SIGNAL \inst34|valor_interno[0]~_wirecell_combout\ : std_logic;
SIGNAL \inst34|valor_interno[1]~15_combout\ : std_logic;
SIGNAL \inst1|mem~1_combout\ : std_logic;
SIGNAL \inst206|Equal1~0_combout\ : std_logic;
SIGNAL \inst206|Equal3~1_combout\ : std_logic;
SIGNAL \inst206|selregw[0]~0_combout\ : std_logic;
SIGNAL \inst700666|inst1000|Mux0~0_combout\ : std_logic;
SIGNAL \inst202|Mux0~0_combout\ : std_logic;
SIGNAL \inst24|valor_interno[15]~0_combout\ : std_logic;
SIGNAL \inst700666|inst|D2[15]~0_combout\ : std_logic;
SIGNAL \inst33|Add0~32_combout\ : std_logic;
SIGNAL \inst40|$00000|auto_generated|result_node[0]~0_combout\ : std_logic;
SIGNAL \inst33|opres[15]~1_combout\ : std_logic;
SIGNAL \inst33|opres[15]~2_combout\ : std_logic;
SIGNAL \inst3|ni~q\ : std_logic;
SIGNAL \inst33|WideOr0~0_combout\ : std_logic;
SIGNAL \inst33|WideOr0~1_combout\ : std_logic;
SIGNAL \inst33|WideOr0~2_combout\ : std_logic;
SIGNAL \inst33|WideOr0~3_combout\ : std_logic;
SIGNAL \inst33|WideOr0~4_combout\ : std_logic;
SIGNAL \inst3|zi~q\ : std_logic;
SIGNAL \inst|banderas[3]~0_combout\ : std_logic;
SIGNAL \inst3|vi~q\ : std_logic;
SIGNAL \inst3|hi~0_combout\ : std_logic;
SIGNAL \inst3|hi~q\ : std_logic;
SIGNAL \inst700666|inst1000|Mux0~2_combout\ : std_logic;
SIGNAL \inst34|valor_interno[5]~24\ : std_logic;
SIGNAL \inst34|valor_interno[6]~25_combout\ : std_logic;
SIGNAL \inst34|valor_interno[6]~26\ : std_logic;
SIGNAL \inst34|valor_interno[7]~27_combout\ : std_logic;
SIGNAL \inst34|valor_interno[7]~28\ : std_logic;
SIGNAL \inst34|valor_interno[8]~29_combout\ : std_logic;
SIGNAL \inst34|valor_interno[8]~30\ : std_logic;
SIGNAL \inst34|valor_interno[9]~31_combout\ : std_logic;
SIGNAL \inst34|valor_interno[9]~32\ : std_logic;
SIGNAL \inst34|valor_interno[10]~33_combout\ : std_logic;
SIGNAL \inst34|valor_interno[10]~34\ : std_logic;
SIGNAL \inst34|valor_interno[11]~35_combout\ : std_logic;
SIGNAL \inst34|valor_interno[11]~36\ : std_logic;
SIGNAL \inst34|valor_interno[12]~37_combout\ : std_logic;
SIGNAL \inst34|valor_interno[12]~38\ : std_logic;
SIGNAL \inst34|valor_interno[13]~39_combout\ : std_logic;
SIGNAL \inst34|valor_interno[13]~40\ : std_logic;
SIGNAL \inst34|valor_interno[14]~41_combout\ : std_logic;
SIGNAL \inst34|valor_interno[14]~42\ : std_logic;
SIGNAL \inst34|valor_interno[15]~43_combout\ : std_logic;
SIGNAL \inst34|valor_interno\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \SENIALES_CONTROL|selresult\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst700666|ACCB|valor_interno\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst24|valor_interno\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst700666|AUX|valor_interno\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst700666|ACCA|valor_interno\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \SENIALES_CONTROL|selfalgs\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst107|selregw\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \OP2|valor_interno\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \OP1|valor_interno\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst8|valor_interno\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \SENIALES_CONTROL|selregw\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst33|opres\ : std_logic_vector(16 DOWNTO 0);
SIGNAL \ALT_INV_RELOJ~input_o\ : std_logic;
SIGNAL \SENIALES_CONTROL|ALT_INV_selresult\ : std_logic_vector(1 DOWNTO 1);
SIGNAL \inst4|ALT_INV_valor_interno~q\ : std_logic;

BEGIN

n <= ww_n;
ww_RELOJ <= RELOJ;
ww_RESET <= RESET;
z <= ww_z;
v <= ww_v;
c <= ww_c;
h <= ww_h;
i <= ww_i;
branch <= ww_branch;
ACCA_D <= ww_ACCA_D;
ACCB_D <= ww_ACCB_D;
AUX_D <= ww_AUX_D;
IX_D <= ww_IX_D;
IY_D <= ww_IY_D;
PC_D <= ww_PC_D;
SP_D <= ww_SP_D;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_RELOJ~input_o\ <= NOT \RELOJ~input_o\;
\SENIALES_CONTROL|ALT_INV_selresult\(1) <= NOT \SENIALES_CONTROL|selresult\(1);
\inst4|ALT_INV_valor_interno~q\ <= NOT \inst4|valor_interno~q\;

\n~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|ni~q\,
	devoe => ww_devoe,
	o => \n~output_o\);

\z~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|zi~q\,
	devoe => ww_devoe,
	o => \z~output_o\);

\v~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|vi~q\,
	devoe => ww_devoe,
	o => \v~output_o\);

\c~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|ci~q\,
	devoe => ww_devoe,
	o => \c~output_o\);

\h~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|hi~q\,
	devoe => ww_devoe,
	o => \h~output_o\);

\i~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \i~output_o\);

\branch~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|valor_interno~q\,
	devoe => ww_devoe,
	o => \branch~output_o\);

\ACCA_D[15]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst700666|ACCA|valor_interno\(15),
	devoe => ww_devoe,
	o => \ACCA_D[15]~output_o\);

\ACCA_D[14]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst700666|ACCA|valor_interno\(14),
	devoe => ww_devoe,
	o => \ACCA_D[14]~output_o\);

\ACCA_D[13]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst700666|ACCA|valor_interno\(13),
	devoe => ww_devoe,
	o => \ACCA_D[13]~output_o\);

\ACCA_D[12]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst700666|ACCA|valor_interno\(12),
	devoe => ww_devoe,
	o => \ACCA_D[12]~output_o\);

\ACCA_D[11]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst700666|ACCA|valor_interno\(11),
	devoe => ww_devoe,
	o => \ACCA_D[11]~output_o\);

\ACCA_D[10]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst700666|ACCA|valor_interno\(10),
	devoe => ww_devoe,
	o => \ACCA_D[10]~output_o\);

\ACCA_D[9]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst700666|ACCA|valor_interno\(9),
	devoe => ww_devoe,
	o => \ACCA_D[9]~output_o\);

\ACCA_D[8]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst700666|ACCA|valor_interno\(8),
	devoe => ww_devoe,
	o => \ACCA_D[8]~output_o\);

\ACCA_D[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst700666|ACCA|valor_interno\(7),
	devoe => ww_devoe,
	o => \ACCA_D[7]~output_o\);

\ACCA_D[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst700666|ACCA|valor_interno\(6),
	devoe => ww_devoe,
	o => \ACCA_D[6]~output_o\);

\ACCA_D[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst700666|ACCA|valor_interno\(5),
	devoe => ww_devoe,
	o => \ACCA_D[5]~output_o\);

\ACCA_D[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst700666|ACCA|valor_interno\(4),
	devoe => ww_devoe,
	o => \ACCA_D[4]~output_o\);

\ACCA_D[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst700666|ACCA|valor_interno\(3),
	devoe => ww_devoe,
	o => \ACCA_D[3]~output_o\);

\ACCA_D[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst700666|ACCA|valor_interno\(2),
	devoe => ww_devoe,
	o => \ACCA_D[2]~output_o\);

\ACCA_D[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst700666|ACCA|valor_interno\(1),
	devoe => ww_devoe,
	o => \ACCA_D[1]~output_o\);

\ACCA_D[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst700666|ACCA|valor_interno\(0),
	devoe => ww_devoe,
	o => \ACCA_D[0]~output_o\);

\ACCB_D[15]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst700666|ACCB|valor_interno\(15),
	devoe => ww_devoe,
	o => \ACCB_D[15]~output_o\);

\ACCB_D[14]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst700666|ACCB|valor_interno\(14),
	devoe => ww_devoe,
	o => \ACCB_D[14]~output_o\);

\ACCB_D[13]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst700666|ACCB|valor_interno\(13),
	devoe => ww_devoe,
	o => \ACCB_D[13]~output_o\);

\ACCB_D[12]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst700666|ACCB|valor_interno\(12),
	devoe => ww_devoe,
	o => \ACCB_D[12]~output_o\);

\ACCB_D[11]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst700666|ACCB|valor_interno\(11),
	devoe => ww_devoe,
	o => \ACCB_D[11]~output_o\);

\ACCB_D[10]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst700666|ACCB|valor_interno\(10),
	devoe => ww_devoe,
	o => \ACCB_D[10]~output_o\);

\ACCB_D[9]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst700666|ACCB|valor_interno\(9),
	devoe => ww_devoe,
	o => \ACCB_D[9]~output_o\);

\ACCB_D[8]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst700666|ACCB|valor_interno\(8),
	devoe => ww_devoe,
	o => \ACCB_D[8]~output_o\);

\ACCB_D[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst700666|ACCB|valor_interno\(7),
	devoe => ww_devoe,
	o => \ACCB_D[7]~output_o\);

\ACCB_D[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst700666|ACCB|valor_interno\(6),
	devoe => ww_devoe,
	o => \ACCB_D[6]~output_o\);

\ACCB_D[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst700666|ACCB|valor_interno\(5),
	devoe => ww_devoe,
	o => \ACCB_D[5]~output_o\);

\ACCB_D[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst700666|ACCB|valor_interno\(4),
	devoe => ww_devoe,
	o => \ACCB_D[4]~output_o\);

\ACCB_D[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst700666|ACCB|valor_interno\(3),
	devoe => ww_devoe,
	o => \ACCB_D[3]~output_o\);

\ACCB_D[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst700666|ACCB|valor_interno\(2),
	devoe => ww_devoe,
	o => \ACCB_D[2]~output_o\);

\ACCB_D[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst700666|ACCB|valor_interno\(1),
	devoe => ww_devoe,
	o => \ACCB_D[1]~output_o\);

\ACCB_D[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst700666|ACCB|valor_interno\(0),
	devoe => ww_devoe,
	o => \ACCB_D[0]~output_o\);

\AUX_D[15]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst700666|AUX|valor_interno\(15),
	devoe => ww_devoe,
	o => \AUX_D[15]~output_o\);

\AUX_D[14]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst700666|AUX|valor_interno\(14),
	devoe => ww_devoe,
	o => \AUX_D[14]~output_o\);

\AUX_D[13]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst700666|AUX|valor_interno\(13),
	devoe => ww_devoe,
	o => \AUX_D[13]~output_o\);

\AUX_D[12]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst700666|AUX|valor_interno\(12),
	devoe => ww_devoe,
	o => \AUX_D[12]~output_o\);

\AUX_D[11]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst700666|AUX|valor_interno\(11),
	devoe => ww_devoe,
	o => \AUX_D[11]~output_o\);

\AUX_D[10]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst700666|AUX|valor_interno\(10),
	devoe => ww_devoe,
	o => \AUX_D[10]~output_o\);

\AUX_D[9]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst700666|AUX|valor_interno\(9),
	devoe => ww_devoe,
	o => \AUX_D[9]~output_o\);

\AUX_D[8]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst700666|AUX|valor_interno\(8),
	devoe => ww_devoe,
	o => \AUX_D[8]~output_o\);

\AUX_D[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst700666|AUX|valor_interno\(7),
	devoe => ww_devoe,
	o => \AUX_D[7]~output_o\);

\AUX_D[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst700666|AUX|valor_interno\(6),
	devoe => ww_devoe,
	o => \AUX_D[6]~output_o\);

\AUX_D[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst700666|AUX|valor_interno\(5),
	devoe => ww_devoe,
	o => \AUX_D[5]~output_o\);

\AUX_D[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst700666|AUX|valor_interno\(4),
	devoe => ww_devoe,
	o => \AUX_D[4]~output_o\);

\AUX_D[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst700666|AUX|valor_interno\(3),
	devoe => ww_devoe,
	o => \AUX_D[3]~output_o\);

\AUX_D[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst700666|AUX|valor_interno\(2),
	devoe => ww_devoe,
	o => \AUX_D[2]~output_o\);

\AUX_D[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst700666|AUX|valor_interno\(1),
	devoe => ww_devoe,
	o => \AUX_D[1]~output_o\);

\AUX_D[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst700666|AUX|valor_interno\(0),
	devoe => ww_devoe,
	o => \AUX_D[0]~output_o\);

\IX_D[15]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \IX_D[15]~output_o\);

\IX_D[14]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \IX_D[14]~output_o\);

\IX_D[13]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \IX_D[13]~output_o\);

\IX_D[12]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \IX_D[12]~output_o\);

\IX_D[11]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \IX_D[11]~output_o\);

\IX_D[10]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \IX_D[10]~output_o\);

\IX_D[9]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \IX_D[9]~output_o\);

\IX_D[8]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \IX_D[8]~output_o\);

\IX_D[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \IX_D[7]~output_o\);

\IX_D[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \IX_D[6]~output_o\);

\IX_D[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \IX_D[5]~output_o\);

\IX_D[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \IX_D[4]~output_o\);

\IX_D[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \IX_D[3]~output_o\);

\IX_D[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \IX_D[2]~output_o\);

\IX_D[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \IX_D[1]~output_o\);

\IX_D[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \IX_D[0]~output_o\);

\IY_D[15]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \IY_D[15]~output_o\);

\IY_D[14]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \IY_D[14]~output_o\);

\IY_D[13]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \IY_D[13]~output_o\);

\IY_D[12]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \IY_D[12]~output_o\);

\IY_D[11]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \IY_D[11]~output_o\);

\IY_D[10]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \IY_D[10]~output_o\);

\IY_D[9]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \IY_D[9]~output_o\);

\IY_D[8]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \IY_D[8]~output_o\);

\IY_D[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \IY_D[7]~output_o\);

\IY_D[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \IY_D[6]~output_o\);

\IY_D[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \IY_D[5]~output_o\);

\IY_D[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \IY_D[4]~output_o\);

\IY_D[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \IY_D[3]~output_o\);

\IY_D[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \IY_D[2]~output_o\);

\IY_D[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \IY_D[1]~output_o\);

\IY_D[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \IY_D[0]~output_o\);

\PC_D[15]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst34|valor_interno\(15),
	devoe => ww_devoe,
	o => \PC_D[15]~output_o\);

\PC_D[14]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst34|valor_interno\(14),
	devoe => ww_devoe,
	o => \PC_D[14]~output_o\);

\PC_D[13]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst34|valor_interno\(13),
	devoe => ww_devoe,
	o => \PC_D[13]~output_o\);

\PC_D[12]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst34|valor_interno\(12),
	devoe => ww_devoe,
	o => \PC_D[12]~output_o\);

\PC_D[11]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst34|valor_interno\(11),
	devoe => ww_devoe,
	o => \PC_D[11]~output_o\);

\PC_D[10]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst34|valor_interno\(10),
	devoe => ww_devoe,
	o => \PC_D[10]~output_o\);

\PC_D[9]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst34|valor_interno\(9),
	devoe => ww_devoe,
	o => \PC_D[9]~output_o\);

\PC_D[8]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst34|valor_interno\(8),
	devoe => ww_devoe,
	o => \PC_D[8]~output_o\);

\PC_D[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst34|valor_interno\(7),
	devoe => ww_devoe,
	o => \PC_D[7]~output_o\);

\PC_D[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst34|valor_interno\(6),
	devoe => ww_devoe,
	o => \PC_D[6]~output_o\);

\PC_D[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst34|valor_interno\(5),
	devoe => ww_devoe,
	o => \PC_D[5]~output_o\);

\PC_D[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst34|valor_interno\(4),
	devoe => ww_devoe,
	o => \PC_D[4]~output_o\);

\PC_D[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst34|valor_interno\(3),
	devoe => ww_devoe,
	o => \PC_D[3]~output_o\);

\PC_D[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst34|valor_interno\(2),
	devoe => ww_devoe,
	o => \PC_D[2]~output_o\);

\PC_D[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst34|valor_interno\(1),
	devoe => ww_devoe,
	o => \PC_D[1]~output_o\);

\PC_D[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst34|valor_interno\(0),
	devoe => ww_devoe,
	o => \PC_D[0]~output_o\);

\SP_D[15]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \SP_D[15]~output_o\);

\SP_D[14]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \SP_D[14]~output_o\);

\SP_D[13]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \SP_D[13]~output_o\);

\SP_D[12]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \SP_D[12]~output_o\);

\SP_D[11]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \SP_D[11]~output_o\);

\SP_D[10]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \SP_D[10]~output_o\);

\SP_D[9]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \SP_D[9]~output_o\);

\SP_D[8]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \SP_D[8]~output_o\);

\SP_D[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \SP_D[7]~output_o\);

\SP_D[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \SP_D[6]~output_o\);

\SP_D[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \SP_D[5]~output_o\);

\SP_D[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \SP_D[4]~output_o\);

\SP_D[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \SP_D[3]~output_o\);

\SP_D[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \SP_D[2]~output_o\);

\SP_D[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \SP_D[1]~output_o\);

\SP_D[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \SP_D[0]~output_o\);

\RELOJ~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RELOJ,
	o => \RELOJ~input_o\);

\RESET~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RESET,
	o => \RESET~input_o\);

\inst34|valor_interno[1]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst34|valor_interno[1]~15_combout\ = (\inst34|valor_interno\(0) & (\inst34|valor_interno\(1) $ (VCC))) # (!\inst34|valor_interno\(0) & (\inst34|valor_interno\(1) & VCC))
-- \inst34|valor_interno[1]~16\ = CARRY((\inst34|valor_interno\(0) & \inst34|valor_interno\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst34|valor_interno\(0),
	datab => \inst34|valor_interno\(1),
	datad => VCC,
	combout => \inst34|valor_interno[1]~15_combout\,
	cout => \inst34|valor_interno[1]~16\);

\inst34|valor_interno[2]~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst34|valor_interno[2]~17_combout\ = (\inst34|valor_interno\(2) & (!\inst34|valor_interno[1]~16\)) # (!\inst34|valor_interno\(2) & ((\inst34|valor_interno[1]~16\) # (GND)))
-- \inst34|valor_interno[2]~18\ = CARRY((!\inst34|valor_interno[1]~16\) # (!\inst34|valor_interno\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst34|valor_interno\(2),
	datad => VCC,
	cin => \inst34|valor_interno[1]~16\,
	combout => \inst34|valor_interno[2]~17_combout\,
	cout => \inst34|valor_interno[2]~18\);

\inst700666|ACCB|valor_interno[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~input_o\,
	d => \inst24|valor_interno\(2),
	clrn => \RESET~input_o\,
	ena => \inst700666|inst1000|Mux0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|ACCB|valor_interno\(2));

\inst700666|inst|D2[2]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst700666|inst|D2[2]~13_combout\ = (\inst700666|ACCB|valor_interno\(2) & \inst206|Equal1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst700666|ACCB|valor_interno\(2),
	datad => \inst206|Equal1~0_combout\,
	combout => \inst700666|inst|D2[2]~13_combout\);

\OP2|valor_interno[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~input_o\,
	d => \inst700666|inst|D2[2]~13_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OP2|valor_interno\(2));

\inst700666|ACCA|valor_interno[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~input_o\,
	d => \inst24|valor_interno\(2),
	clrn => \RESET~input_o\,
	ena => \inst700666|inst1000|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|ACCA|valor_interno\(2));

\inst1|mem~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|mem~0_combout\ = (!\inst34|valor_interno\(5) & (!\inst34|valor_interno\(4) & (!\inst34|valor_interno\(3) & !\inst34|valor_interno\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst34|valor_interno\(5),
	datab => \inst34|valor_interno\(4),
	datac => \inst34|valor_interno\(3),
	datad => \inst34|valor_interno\(2),
	combout => \inst1|mem~0_combout\);

\inst1|mem~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|mem~2_combout\ = (\inst1|mem~0_combout\ & !\inst34|valor_interno\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|mem~0_combout\,
	datad => \inst34|valor_interno\(1),
	combout => \inst1|mem~2_combout\);

\inst8|valor_interno[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~input_o\,
	d => \inst1|mem~2_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|valor_interno\(23));

\inst1|mem~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|mem~6_combout\ = (\inst34|valor_interno\(2)) # ((\inst34|valor_interno\(3)) # ((!\inst34|valor_interno\(0) & \inst34|valor_interno\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst34|valor_interno\(0),
	datab => \inst34|valor_interno\(1),
	datac => \inst34|valor_interno\(2),
	datad => \inst34|valor_interno\(3),
	combout => \inst1|mem~6_combout\);

\inst1|mem~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|mem~7_combout\ = (!\inst34|valor_interno\(5) & (!\inst34|valor_interno\(4) & !\inst1|mem~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst34|valor_interno\(5),
	datab => \inst34|valor_interno\(4),
	datac => \inst1|mem~6_combout\,
	combout => \inst1|mem~7_combout\);

\inst8|valor_interno[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~input_o\,
	d => \inst1|mem~7_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|valor_interno\(18));

\inst8|valor_interno[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~input_o\,
	d => \inst1|mem~0_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|valor_interno\(17));

\inst206|Equal2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst206|Equal2~0_combout\ = (\inst8|valor_interno\(16)) # ((\inst8|valor_interno\(23)) # ((!\inst8|valor_interno\(17)) # (!\inst8|valor_interno\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|valor_interno\(16),
	datab => \inst8|valor_interno\(23),
	datac => \inst8|valor_interno\(18),
	datad => \inst8|valor_interno\(17),
	combout => \inst206|Equal2~0_combout\);

\inst1|mem~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|mem~5_combout\ = (\inst34|valor_interno\(1) & (\inst34|valor_interno\(0) & \inst1|mem~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst34|valor_interno\(1),
	datab => \inst34|valor_interno\(0),
	datac => \inst1|mem~0_combout\,
	combout => \inst1|mem~5_combout\);

\inst8|valor_interno[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~input_o\,
	d => \inst1|mem~5_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|valor_interno\(21));

\inst1|mem~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|mem~8_combout\ = (\inst34|valor_interno\(1) & \inst1|mem~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst34|valor_interno\(1),
	datab => \inst1|mem~0_combout\,
	combout => \inst1|mem~8_combout\);

\inst8|valor_interno[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~input_o\,
	d => \inst1|mem~8_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|valor_interno\(20));

\inst206|Equal2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst206|Equal2~1_combout\ = (!\inst206|Equal2~0_combout\ & (\inst8|valor_interno\(22) & (\inst8|valor_interno\(21) & \inst8|valor_interno\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst206|Equal2~0_combout\,
	datab => \inst8|valor_interno\(22),
	datac => \inst8|valor_interno\(21),
	datad => \inst8|valor_interno\(20),
	combout => \inst206|Equal2~1_combout\);

\inst206|Equal3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst206|Equal3~0_combout\ = (\inst8|valor_interno\(23) & (\inst8|valor_interno\(18) & (\inst8|valor_interno\(17) & !\inst8|valor_interno\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|valor_interno\(23),
	datab => \inst8|valor_interno\(18),
	datac => \inst8|valor_interno\(17),
	datad => \inst8|valor_interno\(16),
	combout => \inst206|Equal3~0_combout\);

\inst206|selfalgs[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst206|selfalgs[0]~0_combout\ = (!\inst8|valor_interno\(21) & (!\inst8|valor_interno\(20) & \inst206|Equal3~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|valor_interno\(21),
	datab => \inst8|valor_interno\(20),
	datad => \inst206|Equal3~0_combout\,
	combout => \inst206|selfalgs[0]~0_combout\);

\inst206|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst206|Equal0~0_combout\ = (!\inst8|valor_interno\(23) & (!\inst8|valor_interno\(22) & (!\inst8|valor_interno\(21) & !\inst8|valor_interno\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|valor_interno\(23),
	datab => \inst8|valor_interno\(22),
	datac => \inst8|valor_interno\(21),
	datad => \inst8|valor_interno\(18),
	combout => \inst206|Equal0~0_combout\);

\inst206|Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst206|Equal0~1_combout\ = (((\inst8|valor_interno\(20)) # (\inst8|valor_interno\(17))) # (!\inst206|Equal0~0_combout\)) # (!\inst8|valor_interno\(16))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|valor_interno\(16),
	datab => \inst206|Equal0~0_combout\,
	datac => \inst8|valor_interno\(20),
	datad => \inst8|valor_interno\(17),
	combout => \inst206|Equal0~1_combout\);

\inst202|Mux14~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst202|Mux14~0_combout\ = (!\inst206|Equal2~1_combout\ & (\inst206|Equal1~0_combout\ & ((\inst206|selfalgs[0]~0_combout\) # (\inst206|Equal0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst206|Equal2~1_combout\,
	datab => \inst206|selfalgs[0]~0_combout\,
	datac => \inst206|Equal0~1_combout\,
	datad => \inst206|Equal1~0_combout\,
	combout => \inst202|Mux14~0_combout\);

\inst202|Mux13~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst202|Mux13~0_combout\ = (\inst700666|ACCA|valor_interno\(2) & \inst202|Mux14~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst700666|ACCA|valor_interno\(2),
	datab => \inst202|Mux14~0_combout\,
	combout => \inst202|Mux13~0_combout\);

\OP1|valor_interno[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~input_o\,
	d => \inst202|Mux13~0_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OP1|valor_interno\(2));

\inst206|WideOr0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst206|WideOr0~0_combout\ = (\inst206|Equal0~1_combout\ & (!\inst206|Equal2~1_combout\ & ((\inst206|Equal1~0_combout\) # (\inst206|selfalgs[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst206|Equal0~1_combout\,
	datab => \inst206|Equal1~0_combout\,
	datac => \inst206|selfalgs[0]~0_combout\,
	datad => \inst206|Equal2~1_combout\,
	combout => \inst206|WideOr0~0_combout\);

\SENIALES_CONTROL|selresult[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~input_o\,
	d => \inst206|WideOr0~0_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SENIALES_CONTROL|selresult\(0));

\inst24|valor_interno[2]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst24|valor_interno[2]~13_combout\ = (\SENIALES_CONTROL|selresult\(0) & ((\OP1|valor_interno\(2)))) # (!\SENIALES_CONTROL|selresult\(0) & (\OP2|valor_interno\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OP2|valor_interno\(2),
	datab => \OP1|valor_interno\(2),
	datad => \SENIALES_CONTROL|selresult\(0),
	combout => \inst24|valor_interno[2]~13_combout\);

\SENIALES_CONTROL|selfalgs[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~input_o\,
	d => \inst206|selfalgs[0]~0_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SENIALES_CONTROL|selfalgs\(0));

\inst700666|ACCA|valor_interno[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~input_o\,
	d => \inst24|valor_interno\(1),
	clrn => \RESET~input_o\,
	ena => \inst700666|inst1000|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|ACCA|valor_interno\(1));

\inst202|Mux14~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst202|Mux14~1_combout\ = (\inst700666|ACCA|valor_interno\(1) & \inst202|Mux14~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst700666|ACCA|valor_interno\(1),
	datab => \inst202|Mux14~0_combout\,
	combout => \inst202|Mux14~1_combout\);

\OP1|valor_interno[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~input_o\,
	d => \inst202|Mux14~1_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OP1|valor_interno\(1));

\inst24|valor_interno[1]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst24|valor_interno[1]~14_combout\ = (\SENIALES_CONTROL|selresult\(0) & ((\OP1|valor_interno\(1)))) # (!\SENIALES_CONTROL|selresult\(0) & (\OP2|valor_interno\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OP2|valor_interno\(1),
	datab => \OP1|valor_interno\(1),
	datad => \SENIALES_CONTROL|selresult\(0),
	combout => \inst24|valor_interno[1]~14_combout\);

\inst700666|ACCA|valor_interno[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~input_o\,
	d => \inst24|valor_interno\(0),
	clrn => \RESET~input_o\,
	ena => \inst700666|inst1000|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|ACCA|valor_interno\(0));

\inst202|Mux15~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst202|Mux15~0_combout\ = (\inst700666|ACCA|valor_interno\(0) & \inst202|Mux14~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst700666|ACCA|valor_interno\(0),
	datab => \inst202|Mux14~0_combout\,
	combout => \inst202|Mux15~0_combout\);

\OP1|valor_interno[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~input_o\,
	d => \inst202|Mux15~0_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OP1|valor_interno\(0));

\SENIALES_CONTROL|selfalgs[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~input_o\,
	d => \inst206|Equal1~0_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SENIALES_CONTROL|selfalgs\(1));

\inst700666|ACCA|valor_interno[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~input_o\,
	d => \inst24|valor_interno\(14),
	clrn => \RESET~input_o\,
	ena => \inst700666|inst1000|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|ACCA|valor_interno\(14));

\inst202|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst202|Mux1~0_combout\ = (\inst700666|ACCA|valor_interno\(14) & \inst202|Mux14~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst700666|ACCA|valor_interno\(14),
	datab => \inst202|Mux14~0_combout\,
	combout => \inst202|Mux1~0_combout\);

\OP1|valor_interno[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~input_o\,
	d => \inst202|Mux1~0_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OP1|valor_interno\(14));

\inst24|valor_interno[14]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst24|valor_interno[14]~1_combout\ = (\SENIALES_CONTROL|selresult\(0) & ((\OP1|valor_interno\(14)))) # (!\SENIALES_CONTROL|selresult\(0) & (\OP2|valor_interno\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OP2|valor_interno\(14),
	datab => \OP1|valor_interno\(14),
	datad => \SENIALES_CONTROL|selresult\(0),
	combout => \inst24|valor_interno[14]~1_combout\);

\inst700666|ACCA|valor_interno[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~input_o\,
	d => \inst24|valor_interno\(13),
	clrn => \RESET~input_o\,
	ena => \inst700666|inst1000|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|ACCA|valor_interno\(13));

\inst202|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst202|Mux2~0_combout\ = (\inst700666|ACCA|valor_interno\(13) & \inst202|Mux14~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst700666|ACCA|valor_interno\(13),
	datab => \inst202|Mux14~0_combout\,
	combout => \inst202|Mux2~0_combout\);

\OP1|valor_interno[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~input_o\,
	d => \inst202|Mux2~0_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OP1|valor_interno\(13));

\inst24|valor_interno[13]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst24|valor_interno[13]~2_combout\ = (\SENIALES_CONTROL|selresult\(0) & ((\OP1|valor_interno\(13)))) # (!\SENIALES_CONTROL|selresult\(0) & (\OP2|valor_interno\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OP2|valor_interno\(13),
	datab => \OP1|valor_interno\(13),
	datad => \SENIALES_CONTROL|selresult\(0),
	combout => \inst24|valor_interno[13]~2_combout\);

\inst700666|ACCA|valor_interno[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~input_o\,
	d => \inst24|valor_interno\(12),
	clrn => \RESET~input_o\,
	ena => \inst700666|inst1000|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|ACCA|valor_interno\(12));

\inst202|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst202|Mux3~0_combout\ = (\inst700666|ACCA|valor_interno\(12) & \inst202|Mux14~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst700666|ACCA|valor_interno\(12),
	datab => \inst202|Mux14~0_combout\,
	combout => \inst202|Mux3~0_combout\);

\OP1|valor_interno[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~input_o\,
	d => \inst202|Mux3~0_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OP1|valor_interno\(12));

\inst24|valor_interno[12]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst24|valor_interno[12]~3_combout\ = (\SENIALES_CONTROL|selresult\(0) & ((\OP1|valor_interno\(12)))) # (!\SENIALES_CONTROL|selresult\(0) & (\OP2|valor_interno\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OP2|valor_interno\(12),
	datab => \OP1|valor_interno\(12),
	datad => \SENIALES_CONTROL|selresult\(0),
	combout => \inst24|valor_interno[12]~3_combout\);

\inst700666|ACCA|valor_interno[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~input_o\,
	d => \inst24|valor_interno\(11),
	clrn => \RESET~input_o\,
	ena => \inst700666|inst1000|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|ACCA|valor_interno\(11));

\inst202|Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst202|Mux4~0_combout\ = (\inst700666|ACCA|valor_interno\(11) & \inst202|Mux14~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst700666|ACCA|valor_interno\(11),
	datab => \inst202|Mux14~0_combout\,
	combout => \inst202|Mux4~0_combout\);

\OP1|valor_interno[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~input_o\,
	d => \inst202|Mux4~0_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OP1|valor_interno\(11));

\inst24|valor_interno[11]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst24|valor_interno[11]~4_combout\ = (\SENIALES_CONTROL|selresult\(0) & ((\OP1|valor_interno\(11)))) # (!\SENIALES_CONTROL|selresult\(0) & (\OP2|valor_interno\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OP2|valor_interno\(11),
	datab => \OP1|valor_interno\(11),
	datad => \SENIALES_CONTROL|selresult\(0),
	combout => \inst24|valor_interno[11]~4_combout\);

\inst700666|ACCA|valor_interno[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~input_o\,
	d => \inst24|valor_interno\(10),
	clrn => \RESET~input_o\,
	ena => \inst700666|inst1000|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|ACCA|valor_interno\(10));

\inst202|Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst202|Mux5~0_combout\ = (\inst700666|ACCA|valor_interno\(10) & \inst202|Mux14~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst700666|ACCA|valor_interno\(10),
	datab => \inst202|Mux14~0_combout\,
	combout => \inst202|Mux5~0_combout\);

\OP1|valor_interno[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~input_o\,
	d => \inst202|Mux5~0_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OP1|valor_interno\(10));

\inst24|valor_interno[10]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst24|valor_interno[10]~5_combout\ = (\SENIALES_CONTROL|selresult\(0) & ((\OP1|valor_interno\(10)))) # (!\SENIALES_CONTROL|selresult\(0) & (\OP2|valor_interno\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OP2|valor_interno\(10),
	datab => \OP1|valor_interno\(10),
	datad => \SENIALES_CONTROL|selresult\(0),
	combout => \inst24|valor_interno[10]~5_combout\);

\inst700666|ACCA|valor_interno[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~input_o\,
	d => \inst24|valor_interno\(9),
	clrn => \RESET~input_o\,
	ena => \inst700666|inst1000|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|ACCA|valor_interno\(9));

\inst202|Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst202|Mux6~0_combout\ = (\inst700666|ACCA|valor_interno\(9) & \inst202|Mux14~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst700666|ACCA|valor_interno\(9),
	datab => \inst202|Mux14~0_combout\,
	combout => \inst202|Mux6~0_combout\);

\OP1|valor_interno[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~input_o\,
	d => \inst202|Mux6~0_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OP1|valor_interno\(9));

\inst24|valor_interno[9]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst24|valor_interno[9]~6_combout\ = (\SENIALES_CONTROL|selresult\(0) & ((\OP1|valor_interno\(9)))) # (!\SENIALES_CONTROL|selresult\(0) & (\OP2|valor_interno\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OP2|valor_interno\(9),
	datab => \OP1|valor_interno\(9),
	datad => \SENIALES_CONTROL|selresult\(0),
	combout => \inst24|valor_interno[9]~6_combout\);

\inst700666|ACCA|valor_interno[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~input_o\,
	d => \inst24|valor_interno\(8),
	clrn => \RESET~input_o\,
	ena => \inst700666|inst1000|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|ACCA|valor_interno\(8));

\inst202|Mux7~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst202|Mux7~0_combout\ = (\inst700666|ACCA|valor_interno\(8) & \inst202|Mux14~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst700666|ACCA|valor_interno\(8),
	datab => \inst202|Mux14~0_combout\,
	combout => \inst202|Mux7~0_combout\);

\OP1|valor_interno[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~input_o\,
	d => \inst202|Mux7~0_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OP1|valor_interno\(8));

\inst24|valor_interno[8]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst24|valor_interno[8]~7_combout\ = (\SENIALES_CONTROL|selresult\(0) & ((\OP1|valor_interno\(8)))) # (!\SENIALES_CONTROL|selresult\(0) & (\OP2|valor_interno\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OP2|valor_interno\(8),
	datab => \OP1|valor_interno\(8),
	datad => \SENIALES_CONTROL|selresult\(0),
	combout => \inst24|valor_interno[8]~7_combout\);

\inst700666|ACCA|valor_interno[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~input_o\,
	d => \inst24|valor_interno\(7),
	clrn => \RESET~input_o\,
	ena => \inst700666|inst1000|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|ACCA|valor_interno\(7));

\inst202|Mux8~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst202|Mux8~0_combout\ = (\inst700666|ACCA|valor_interno\(7) & \inst202|Mux14~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst700666|ACCA|valor_interno\(7),
	datab => \inst202|Mux14~0_combout\,
	combout => \inst202|Mux8~0_combout\);

\OP1|valor_interno[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~input_o\,
	d => \inst202|Mux8~0_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OP1|valor_interno\(7));

\inst24|valor_interno[7]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst24|valor_interno[7]~8_combout\ = (\SENIALES_CONTROL|selresult\(0) & ((\OP1|valor_interno\(7)))) # (!\SENIALES_CONTROL|selresult\(0) & (\OP2|valor_interno\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OP2|valor_interno\(7),
	datab => \OP1|valor_interno\(7),
	datad => \SENIALES_CONTROL|selresult\(0),
	combout => \inst24|valor_interno[7]~8_combout\);

\inst700666|ACCA|valor_interno[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~input_o\,
	d => \inst24|valor_interno\(6),
	clrn => \RESET~input_o\,
	ena => \inst700666|inst1000|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|ACCA|valor_interno\(6));

\inst202|Mux9~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst202|Mux9~0_combout\ = (\inst700666|ACCA|valor_interno\(6) & \inst202|Mux14~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst700666|ACCA|valor_interno\(6),
	datab => \inst202|Mux14~0_combout\,
	combout => \inst202|Mux9~0_combout\);

\OP1|valor_interno[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~input_o\,
	d => \inst202|Mux9~0_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OP1|valor_interno\(6));

\inst24|valor_interno[6]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst24|valor_interno[6]~9_combout\ = (\SENIALES_CONTROL|selresult\(0) & ((\OP1|valor_interno\(6)))) # (!\SENIALES_CONTROL|selresult\(0) & (\OP2|valor_interno\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OP2|valor_interno\(6),
	datab => \OP1|valor_interno\(6),
	datad => \SENIALES_CONTROL|selresult\(0),
	combout => \inst24|valor_interno[6]~9_combout\);

\inst700666|ACCA|valor_interno[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~input_o\,
	d => \inst24|valor_interno\(5),
	clrn => \RESET~input_o\,
	ena => \inst700666|inst1000|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|ACCA|valor_interno\(5));

\inst202|Mux10~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst202|Mux10~0_combout\ = (\inst700666|ACCA|valor_interno\(5) & \inst202|Mux14~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst700666|ACCA|valor_interno\(5),
	datab => \inst202|Mux14~0_combout\,
	combout => \inst202|Mux10~0_combout\);

\OP1|valor_interno[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~input_o\,
	d => \inst202|Mux10~0_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OP1|valor_interno\(5));

\inst24|valor_interno[5]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst24|valor_interno[5]~10_combout\ = (\SENIALES_CONTROL|selresult\(0) & ((\OP1|valor_interno\(5)))) # (!\SENIALES_CONTROL|selresult\(0) & (\OP2|valor_interno\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OP2|valor_interno\(5),
	datab => \OP1|valor_interno\(5),
	datad => \SENIALES_CONTROL|selresult\(0),
	combout => \inst24|valor_interno[5]~10_combout\);

\inst700666|ACCA|valor_interno[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~input_o\,
	d => \inst24|valor_interno\(4),
	clrn => \RESET~input_o\,
	ena => \inst700666|inst1000|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|ACCA|valor_interno\(4));

\inst202|Mux11~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst202|Mux11~0_combout\ = (\inst700666|ACCA|valor_interno\(4) & \inst202|Mux14~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst700666|ACCA|valor_interno\(4),
	datab => \inst202|Mux14~0_combout\,
	combout => \inst202|Mux11~0_combout\);

\OP1|valor_interno[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~input_o\,
	d => \inst202|Mux11~0_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OP1|valor_interno\(4));

\inst24|valor_interno[4]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst24|valor_interno[4]~11_combout\ = (\SENIALES_CONTROL|selresult\(0) & ((\OP1|valor_interno\(4)))) # (!\SENIALES_CONTROL|selresult\(0) & (\OP2|valor_interno\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OP2|valor_interno\(4),
	datab => \OP1|valor_interno\(4),
	datad => \SENIALES_CONTROL|selresult\(0),
	combout => \inst24|valor_interno[4]~11_combout\);

\inst700666|ACCA|valor_interno[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~input_o\,
	d => \inst24|valor_interno\(3),
	clrn => \RESET~input_o\,
	ena => \inst700666|inst1000|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|ACCA|valor_interno\(3));

\inst202|Mux12~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst202|Mux12~0_combout\ = (\inst700666|ACCA|valor_interno\(3) & \inst202|Mux14~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst700666|ACCA|valor_interno\(3),
	datab => \inst202|Mux14~0_combout\,
	combout => \inst202|Mux12~0_combout\);

\OP1|valor_interno[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~input_o\,
	d => \inst202|Mux12~0_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OP1|valor_interno\(3));

\inst24|valor_interno[3]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst24|valor_interno[3]~12_combout\ = (\SENIALES_CONTROL|selresult\(0) & ((\OP1|valor_interno\(3)))) # (!\SENIALES_CONTROL|selresult\(0) & (\OP2|valor_interno\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OP2|valor_interno\(3),
	datab => \OP1|valor_interno\(3),
	datad => \SENIALES_CONTROL|selresult\(0),
	combout => \inst24|valor_interno[3]~12_combout\);

\inst33|Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|Add0~6_combout\ = (\OP2|valor_interno\(2) & ((\OP1|valor_interno\(2) & (\inst33|Add0~5\ & VCC)) # (!\OP1|valor_interno\(2) & (!\inst33|Add0~5\)))) # (!\OP2|valor_interno\(2) & ((\OP1|valor_interno\(2) & (!\inst33|Add0~5\)) # 
-- (!\OP1|valor_interno\(2) & ((\inst33|Add0~5\) # (GND)))))
-- \inst33|Add0~7\ = CARRY((\OP2|valor_interno\(2) & (!\OP1|valor_interno\(2) & !\inst33|Add0~5\)) # (!\OP2|valor_interno\(2) & ((!\inst33|Add0~5\) # (!\OP1|valor_interno\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \OP2|valor_interno\(2),
	datab => \OP1|valor_interno\(2),
	datad => VCC,
	cin => \inst33|Add0~5\,
	combout => \inst33|Add0~6_combout\,
	cout => \inst33|Add0~7\);

\inst33|Add0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|Add0~8_combout\ = ((\OP2|valor_interno\(3) $ (\OP1|valor_interno\(3) $ (!\inst33|Add0~7\)))) # (GND)
-- \inst33|Add0~9\ = CARRY((\OP2|valor_interno\(3) & ((\OP1|valor_interno\(3)) # (!\inst33|Add0~7\))) # (!\OP2|valor_interno\(3) & (\OP1|valor_interno\(3) & !\inst33|Add0~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \OP2|valor_interno\(3),
	datab => \OP1|valor_interno\(3),
	datad => VCC,
	cin => \inst33|Add0~7\,
	combout => \inst33|Add0~8_combout\,
	cout => \inst33|Add0~9\);

\inst33|opres[3]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|opres[3]~9_combout\ = (\SENIALES_CONTROL|selfalgs\(0) & ((\OP2|valor_interno\(3) & ((!\SENIALES_CONTROL|selfalgs\(1)) # (!\OP1|valor_interno\(3)))) # (!\OP2|valor_interno\(3) & (\OP1|valor_interno\(3))))) # (!\SENIALES_CONTROL|selfalgs\(0) & 
-- (((\SENIALES_CONTROL|selfalgs\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OP2|valor_interno\(3),
	datab => \OP1|valor_interno\(3),
	datac => \SENIALES_CONTROL|selfalgs\(1),
	datad => \SENIALES_CONTROL|selfalgs\(0),
	combout => \inst33|opres[3]~9_combout\);

\inst33|opres[3]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|opres[3]~10_combout\ = (\SENIALES_CONTROL|selfalgs\(0) & (((\inst33|opres[3]~9_combout\)))) # (!\SENIALES_CONTROL|selfalgs\(0) & ((\inst33|opres[3]~9_combout\ & ((\inst33|Add0~8_combout\))) # (!\inst33|opres[3]~9_combout\ & 
-- (\OP1|valor_interno\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OP1|valor_interno\(4),
	datab => \inst33|Add0~8_combout\,
	datac => \SENIALES_CONTROL|selfalgs\(0),
	datad => \inst33|opres[3]~9_combout\,
	combout => \inst33|opres[3]~10_combout\);

\inst33|opres[16]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|opres[16]~0_combout\ = (\SENIALES_CONTROL|selfalgs\(1)) # (\SENIALES_CONTROL|selfalgs\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SENIALES_CONTROL|selfalgs\(1),
	datad => \SENIALES_CONTROL|selfalgs\(0),
	combout => \inst33|opres[16]~0_combout\);

\inst33|opres[3]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|opres\(3) = (\inst33|opres[16]~0_combout\ & (\inst33|opres[3]~10_combout\)) # (!\inst33|opres[16]~0_combout\ & ((\inst33|opres\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst33|opres[3]~10_combout\,
	datac => \inst33|opres\(3),
	datad => \inst33|opres[16]~0_combout\,
	combout => \inst33|opres\(3));

\SENIALES_CONTROL|selresult[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~input_o\,
	d => \inst206|Equal2~1_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SENIALES_CONTROL|selresult\(1));

\inst24|valor_interno[1]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst24|valor_interno[1]~16_combout\ = (!\SENIALES_CONTROL|selresult\(1) & !\SENIALES_CONTROL|selresult\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SENIALES_CONTROL|selresult\(1),
	datab => \SENIALES_CONTROL|selresult\(0),
	combout => \inst24|valor_interno[1]~16_combout\);

\inst24|valor_interno[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~input_o\,
	d => \inst24|valor_interno[3]~12_combout\,
	asdata => \inst33|opres\(3),
	clrn => \RESET~input_o\,
	sclr => \inst24|valor_interno[1]~16_combout\,
	sload => \SENIALES_CONTROL|ALT_INV_selresult\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst24|valor_interno\(3));

\inst700666|ACCB|valor_interno[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~input_o\,
	d => \inst24|valor_interno\(3),
	clrn => \RESET~input_o\,
	ena => \inst700666|inst1000|Mux0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|ACCB|valor_interno\(3));

\inst700666|inst|D2[3]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst700666|inst|D2[3]~12_combout\ = (\inst700666|ACCB|valor_interno\(3) & \inst206|Equal1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst700666|ACCB|valor_interno\(3),
	datad => \inst206|Equal1~0_combout\,
	combout => \inst700666|inst|D2[3]~12_combout\);

\OP2|valor_interno[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~input_o\,
	d => \inst700666|inst|D2[3]~12_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OP2|valor_interno\(3));

\inst33|Add0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|Add0~10_combout\ = (\OP2|valor_interno\(4) & ((\OP1|valor_interno\(4) & (\inst33|Add0~9\ & VCC)) # (!\OP1|valor_interno\(4) & (!\inst33|Add0~9\)))) # (!\OP2|valor_interno\(4) & ((\OP1|valor_interno\(4) & (!\inst33|Add0~9\)) # 
-- (!\OP1|valor_interno\(4) & ((\inst33|Add0~9\) # (GND)))))
-- \inst33|Add0~11\ = CARRY((\OP2|valor_interno\(4) & (!\OP1|valor_interno\(4) & !\inst33|Add0~9\)) # (!\OP2|valor_interno\(4) & ((!\inst33|Add0~9\) # (!\OP1|valor_interno\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \OP2|valor_interno\(4),
	datab => \OP1|valor_interno\(4),
	datad => VCC,
	cin => \inst33|Add0~9\,
	combout => \inst33|Add0~10_combout\,
	cout => \inst33|Add0~11\);

\inst33|opres[4]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|opres[4]~11_combout\ = (\SENIALES_CONTROL|selfalgs\(0) & (((\SENIALES_CONTROL|selfalgs\(1))))) # (!\SENIALES_CONTROL|selfalgs\(0) & ((\SENIALES_CONTROL|selfalgs\(1) & (\inst33|Add0~10_combout\)) # (!\SENIALES_CONTROL|selfalgs\(1) & 
-- ((\OP1|valor_interno\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SENIALES_CONTROL|selfalgs\(0),
	datab => \inst33|Add0~10_combout\,
	datac => \SENIALES_CONTROL|selfalgs\(1),
	datad => \OP1|valor_interno\(5),
	combout => \inst33|opres[4]~11_combout\);

\inst33|opres[4]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|opres[4]~12_combout\ = (\SENIALES_CONTROL|selfalgs\(0) & ((\OP2|valor_interno\(4) & ((!\inst33|opres[4]~11_combout\) # (!\OP1|valor_interno\(4)))) # (!\OP2|valor_interno\(4) & (\OP1|valor_interno\(4))))) # (!\SENIALES_CONTROL|selfalgs\(0) & 
-- (((\inst33|opres[4]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OP2|valor_interno\(4),
	datab => \OP1|valor_interno\(4),
	datac => \inst33|opres[4]~11_combout\,
	datad => \SENIALES_CONTROL|selfalgs\(0),
	combout => \inst33|opres[4]~12_combout\);

\inst33|opres[4]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|opres\(4) = (\inst33|opres[16]~0_combout\ & (\inst33|opres[4]~12_combout\)) # (!\inst33|opres[16]~0_combout\ & ((\inst33|opres\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst33|opres[4]~12_combout\,
	datac => \inst33|opres\(4),
	datad => \inst33|opres[16]~0_combout\,
	combout => \inst33|opres\(4));

\inst24|valor_interno[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~input_o\,
	d => \inst24|valor_interno[4]~11_combout\,
	asdata => \inst33|opres\(4),
	clrn => \RESET~input_o\,
	sclr => \inst24|valor_interno[1]~16_combout\,
	sload => \SENIALES_CONTROL|ALT_INV_selresult\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst24|valor_interno\(4));

\inst700666|ACCB|valor_interno[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~input_o\,
	d => \inst24|valor_interno\(4),
	clrn => \RESET~input_o\,
	ena => \inst700666|inst1000|Mux0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|ACCB|valor_interno\(4));

\inst700666|inst|D2[4]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst700666|inst|D2[4]~11_combout\ = (\inst700666|ACCB|valor_interno\(4) & \inst206|Equal1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst700666|ACCB|valor_interno\(4),
	datad => \inst206|Equal1~0_combout\,
	combout => \inst700666|inst|D2[4]~11_combout\);

\OP2|valor_interno[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~input_o\,
	d => \inst700666|inst|D2[4]~11_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OP2|valor_interno\(4));

\inst33|Add0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|Add0~12_combout\ = ((\OP2|valor_interno\(5) $ (\OP1|valor_interno\(5) $ (!\inst33|Add0~11\)))) # (GND)
-- \inst33|Add0~13\ = CARRY((\OP2|valor_interno\(5) & ((\OP1|valor_interno\(5)) # (!\inst33|Add0~11\))) # (!\OP2|valor_interno\(5) & (\OP1|valor_interno\(5) & !\inst33|Add0~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \OP2|valor_interno\(5),
	datab => \OP1|valor_interno\(5),
	datad => VCC,
	cin => \inst33|Add0~11\,
	combout => \inst33|Add0~12_combout\,
	cout => \inst33|Add0~13\);

\inst33|opres[5]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|opres[5]~13_combout\ = (\SENIALES_CONTROL|selfalgs\(0) & ((\OP2|valor_interno\(5) & ((!\SENIALES_CONTROL|selfalgs\(1)) # (!\OP1|valor_interno\(5)))) # (!\OP2|valor_interno\(5) & (\OP1|valor_interno\(5))))) # (!\SENIALES_CONTROL|selfalgs\(0) & 
-- (((\SENIALES_CONTROL|selfalgs\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OP2|valor_interno\(5),
	datab => \OP1|valor_interno\(5),
	datac => \SENIALES_CONTROL|selfalgs\(1),
	datad => \SENIALES_CONTROL|selfalgs\(0),
	combout => \inst33|opres[5]~13_combout\);

\inst33|opres[5]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|opres[5]~14_combout\ = (\SENIALES_CONTROL|selfalgs\(0) & (((\inst33|opres[5]~13_combout\)))) # (!\SENIALES_CONTROL|selfalgs\(0) & ((\inst33|opres[5]~13_combout\ & ((\inst33|Add0~12_combout\))) # (!\inst33|opres[5]~13_combout\ & 
-- (\OP1|valor_interno\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OP1|valor_interno\(6),
	datab => \inst33|Add0~12_combout\,
	datac => \SENIALES_CONTROL|selfalgs\(0),
	datad => \inst33|opres[5]~13_combout\,
	combout => \inst33|opres[5]~14_combout\);

\inst33|opres[5]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|opres\(5) = (\inst33|opres[16]~0_combout\ & (\inst33|opres[5]~14_combout\)) # (!\inst33|opres[16]~0_combout\ & ((\inst33|opres\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst33|opres[5]~14_combout\,
	datac => \inst33|opres\(5),
	datad => \inst33|opres[16]~0_combout\,
	combout => \inst33|opres\(5));

\inst24|valor_interno[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~input_o\,
	d => \inst24|valor_interno[5]~10_combout\,
	asdata => \inst33|opres\(5),
	clrn => \RESET~input_o\,
	sclr => \inst24|valor_interno[1]~16_combout\,
	sload => \SENIALES_CONTROL|ALT_INV_selresult\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst24|valor_interno\(5));

\inst700666|ACCB|valor_interno[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~input_o\,
	d => \inst24|valor_interno\(5),
	clrn => \RESET~input_o\,
	ena => \inst700666|inst1000|Mux0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|ACCB|valor_interno\(5));

\inst700666|inst|D2[5]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst700666|inst|D2[5]~10_combout\ = (\inst700666|ACCB|valor_interno\(5) & \inst206|Equal1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst700666|ACCB|valor_interno\(5),
	datad => \inst206|Equal1~0_combout\,
	combout => \inst700666|inst|D2[5]~10_combout\);

\OP2|valor_interno[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~input_o\,
	d => \inst700666|inst|D2[5]~10_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OP2|valor_interno\(5));

\inst33|Add0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|Add0~14_combout\ = (\OP2|valor_interno\(6) & ((\OP1|valor_interno\(6) & (\inst33|Add0~13\ & VCC)) # (!\OP1|valor_interno\(6) & (!\inst33|Add0~13\)))) # (!\OP2|valor_interno\(6) & ((\OP1|valor_interno\(6) & (!\inst33|Add0~13\)) # 
-- (!\OP1|valor_interno\(6) & ((\inst33|Add0~13\) # (GND)))))
-- \inst33|Add0~15\ = CARRY((\OP2|valor_interno\(6) & (!\OP1|valor_interno\(6) & !\inst33|Add0~13\)) # (!\OP2|valor_interno\(6) & ((!\inst33|Add0~13\) # (!\OP1|valor_interno\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \OP2|valor_interno\(6),
	datab => \OP1|valor_interno\(6),
	datad => VCC,
	cin => \inst33|Add0~13\,
	combout => \inst33|Add0~14_combout\,
	cout => \inst33|Add0~15\);

\inst33|opres[6]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|opres[6]~15_combout\ = (\SENIALES_CONTROL|selfalgs\(0) & (((\SENIALES_CONTROL|selfalgs\(1))))) # (!\SENIALES_CONTROL|selfalgs\(0) & ((\SENIALES_CONTROL|selfalgs\(1) & (\inst33|Add0~14_combout\)) # (!\SENIALES_CONTROL|selfalgs\(1) & 
-- ((\OP1|valor_interno\(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SENIALES_CONTROL|selfalgs\(0),
	datab => \inst33|Add0~14_combout\,
	datac => \SENIALES_CONTROL|selfalgs\(1),
	datad => \OP1|valor_interno\(7),
	combout => \inst33|opres[6]~15_combout\);

\inst33|opres[6]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|opres[6]~16_combout\ = (\SENIALES_CONTROL|selfalgs\(0) & ((\OP2|valor_interno\(6) & ((!\inst33|opres[6]~15_combout\) # (!\OP1|valor_interno\(6)))) # (!\OP2|valor_interno\(6) & (\OP1|valor_interno\(6))))) # (!\SENIALES_CONTROL|selfalgs\(0) & 
-- (((\inst33|opres[6]~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OP2|valor_interno\(6),
	datab => \OP1|valor_interno\(6),
	datac => \inst33|opres[6]~15_combout\,
	datad => \SENIALES_CONTROL|selfalgs\(0),
	combout => \inst33|opres[6]~16_combout\);

\inst33|opres[6]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|opres\(6) = (\inst33|opres[16]~0_combout\ & (\inst33|opres[6]~16_combout\)) # (!\inst33|opres[16]~0_combout\ & ((\inst33|opres\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst33|opres[6]~16_combout\,
	datac => \inst33|opres\(6),
	datad => \inst33|opres[16]~0_combout\,
	combout => \inst33|opres\(6));

\inst24|valor_interno[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~input_o\,
	d => \inst24|valor_interno[6]~9_combout\,
	asdata => \inst33|opres\(6),
	clrn => \RESET~input_o\,
	sclr => \inst24|valor_interno[1]~16_combout\,
	sload => \SENIALES_CONTROL|ALT_INV_selresult\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst24|valor_interno\(6));

\inst700666|ACCB|valor_interno[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~input_o\,
	d => \inst24|valor_interno\(6),
	clrn => \RESET~input_o\,
	ena => \inst700666|inst1000|Mux0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|ACCB|valor_interno\(6));

\inst700666|inst|D2[6]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst700666|inst|D2[6]~9_combout\ = (\inst700666|ACCB|valor_interno\(6) & \inst206|Equal1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst700666|ACCB|valor_interno\(6),
	datad => \inst206|Equal1~0_combout\,
	combout => \inst700666|inst|D2[6]~9_combout\);

\OP2|valor_interno[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~input_o\,
	d => \inst700666|inst|D2[6]~9_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OP2|valor_interno\(6));

\inst33|Add0~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|Add0~16_combout\ = ((\OP2|valor_interno\(7) $ (\OP1|valor_interno\(7) $ (!\inst33|Add0~15\)))) # (GND)
-- \inst33|Add0~17\ = CARRY((\OP2|valor_interno\(7) & ((\OP1|valor_interno\(7)) # (!\inst33|Add0~15\))) # (!\OP2|valor_interno\(7) & (\OP1|valor_interno\(7) & !\inst33|Add0~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \OP2|valor_interno\(7),
	datab => \OP1|valor_interno\(7),
	datad => VCC,
	cin => \inst33|Add0~15\,
	combout => \inst33|Add0~16_combout\,
	cout => \inst33|Add0~17\);

\inst33|opres[7]~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|opres[7]~17_combout\ = (\SENIALES_CONTROL|selfalgs\(0) & ((\OP2|valor_interno\(7) & ((!\SENIALES_CONTROL|selfalgs\(1)) # (!\OP1|valor_interno\(7)))) # (!\OP2|valor_interno\(7) & (\OP1|valor_interno\(7))))) # (!\SENIALES_CONTROL|selfalgs\(0) & 
-- (((\SENIALES_CONTROL|selfalgs\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OP2|valor_interno\(7),
	datab => \OP1|valor_interno\(7),
	datac => \SENIALES_CONTROL|selfalgs\(1),
	datad => \SENIALES_CONTROL|selfalgs\(0),
	combout => \inst33|opres[7]~17_combout\);

\inst33|opres[7]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|opres[7]~18_combout\ = (\SENIALES_CONTROL|selfalgs\(0) & (((\inst33|opres[7]~17_combout\)))) # (!\SENIALES_CONTROL|selfalgs\(0) & ((\inst33|opres[7]~17_combout\ & ((\inst33|Add0~16_combout\))) # (!\inst33|opres[7]~17_combout\ & 
-- (\OP1|valor_interno\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OP1|valor_interno\(8),
	datab => \inst33|Add0~16_combout\,
	datac => \SENIALES_CONTROL|selfalgs\(0),
	datad => \inst33|opres[7]~17_combout\,
	combout => \inst33|opres[7]~18_combout\);

\inst33|opres[7]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|opres\(7) = (\inst33|opres[16]~0_combout\ & (\inst33|opres[7]~18_combout\)) # (!\inst33|opres[16]~0_combout\ & ((\inst33|opres\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst33|opres[7]~18_combout\,
	datac => \inst33|opres\(7),
	datad => \inst33|opres[16]~0_combout\,
	combout => \inst33|opres\(7));

\inst24|valor_interno[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~input_o\,
	d => \inst24|valor_interno[7]~8_combout\,
	asdata => \inst33|opres\(7),
	clrn => \RESET~input_o\,
	sclr => \inst24|valor_interno[1]~16_combout\,
	sload => \SENIALES_CONTROL|ALT_INV_selresult\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst24|valor_interno\(7));

\inst700666|ACCB|valor_interno[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~input_o\,
	d => \inst24|valor_interno\(7),
	clrn => \RESET~input_o\,
	ena => \inst700666|inst1000|Mux0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|ACCB|valor_interno\(7));

\inst700666|inst|D2[7]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst700666|inst|D2[7]~8_combout\ = (\inst700666|ACCB|valor_interno\(7) & \inst206|Equal1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst700666|ACCB|valor_interno\(7),
	datad => \inst206|Equal1~0_combout\,
	combout => \inst700666|inst|D2[7]~8_combout\);

\OP2|valor_interno[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~input_o\,
	d => \inst700666|inst|D2[7]~8_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OP2|valor_interno\(7));

\inst33|Add0~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|Add0~18_combout\ = (\OP2|valor_interno\(8) & ((\OP1|valor_interno\(8) & (\inst33|Add0~17\ & VCC)) # (!\OP1|valor_interno\(8) & (!\inst33|Add0~17\)))) # (!\OP2|valor_interno\(8) & ((\OP1|valor_interno\(8) & (!\inst33|Add0~17\)) # 
-- (!\OP1|valor_interno\(8) & ((\inst33|Add0~17\) # (GND)))))
-- \inst33|Add0~19\ = CARRY((\OP2|valor_interno\(8) & (!\OP1|valor_interno\(8) & !\inst33|Add0~17\)) # (!\OP2|valor_interno\(8) & ((!\inst33|Add0~17\) # (!\OP1|valor_interno\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \OP2|valor_interno\(8),
	datab => \OP1|valor_interno\(8),
	datad => VCC,
	cin => \inst33|Add0~17\,
	combout => \inst33|Add0~18_combout\,
	cout => \inst33|Add0~19\);

\inst33|opres[8]~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|opres[8]~19_combout\ = (\SENIALES_CONTROL|selfalgs\(0) & (((\SENIALES_CONTROL|selfalgs\(1))))) # (!\SENIALES_CONTROL|selfalgs\(0) & ((\SENIALES_CONTROL|selfalgs\(1) & (\inst33|Add0~18_combout\)) # (!\SENIALES_CONTROL|selfalgs\(1) & 
-- ((\OP1|valor_interno\(9))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SENIALES_CONTROL|selfalgs\(0),
	datab => \inst33|Add0~18_combout\,
	datac => \SENIALES_CONTROL|selfalgs\(1),
	datad => \OP1|valor_interno\(9),
	combout => \inst33|opres[8]~19_combout\);

\inst33|opres[8]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|opres[8]~20_combout\ = (\SENIALES_CONTROL|selfalgs\(0) & ((\OP2|valor_interno\(8) & ((!\inst33|opres[8]~19_combout\) # (!\OP1|valor_interno\(8)))) # (!\OP2|valor_interno\(8) & (\OP1|valor_interno\(8))))) # (!\SENIALES_CONTROL|selfalgs\(0) & 
-- (((\inst33|opres[8]~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OP2|valor_interno\(8),
	datab => \OP1|valor_interno\(8),
	datac => \inst33|opres[8]~19_combout\,
	datad => \SENIALES_CONTROL|selfalgs\(0),
	combout => \inst33|opres[8]~20_combout\);

\inst33|opres[8]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|opres\(8) = (\inst33|opres[16]~0_combout\ & (\inst33|opres[8]~20_combout\)) # (!\inst33|opres[16]~0_combout\ & ((\inst33|opres\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst33|opres[8]~20_combout\,
	datac => \inst33|opres\(8),
	datad => \inst33|opres[16]~0_combout\,
	combout => \inst33|opres\(8));

\inst24|valor_interno[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~input_o\,
	d => \inst24|valor_interno[8]~7_combout\,
	asdata => \inst33|opres\(8),
	clrn => \RESET~input_o\,
	sclr => \inst24|valor_interno[1]~16_combout\,
	sload => \SENIALES_CONTROL|ALT_INV_selresult\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst24|valor_interno\(8));

\inst700666|ACCB|valor_interno[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~input_o\,
	d => \inst24|valor_interno\(8),
	clrn => \RESET~input_o\,
	ena => \inst700666|inst1000|Mux0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|ACCB|valor_interno\(8));

\inst700666|inst|D2[8]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst700666|inst|D2[8]~7_combout\ = (\inst700666|ACCB|valor_interno\(8) & \inst206|Equal1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst700666|ACCB|valor_interno\(8),
	datad => \inst206|Equal1~0_combout\,
	combout => \inst700666|inst|D2[8]~7_combout\);

\OP2|valor_interno[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~input_o\,
	d => \inst700666|inst|D2[8]~7_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OP2|valor_interno\(8));

\inst33|Add0~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|Add0~20_combout\ = ((\OP2|valor_interno\(9) $ (\OP1|valor_interno\(9) $ (!\inst33|Add0~19\)))) # (GND)
-- \inst33|Add0~21\ = CARRY((\OP2|valor_interno\(9) & ((\OP1|valor_interno\(9)) # (!\inst33|Add0~19\))) # (!\OP2|valor_interno\(9) & (\OP1|valor_interno\(9) & !\inst33|Add0~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \OP2|valor_interno\(9),
	datab => \OP1|valor_interno\(9),
	datad => VCC,
	cin => \inst33|Add0~19\,
	combout => \inst33|Add0~20_combout\,
	cout => \inst33|Add0~21\);

\inst33|opres[9]~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|opres[9]~21_combout\ = (\SENIALES_CONTROL|selfalgs\(0) & ((\OP2|valor_interno\(9) & ((!\SENIALES_CONTROL|selfalgs\(1)) # (!\OP1|valor_interno\(9)))) # (!\OP2|valor_interno\(9) & (\OP1|valor_interno\(9))))) # (!\SENIALES_CONTROL|selfalgs\(0) & 
-- (((\SENIALES_CONTROL|selfalgs\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OP2|valor_interno\(9),
	datab => \OP1|valor_interno\(9),
	datac => \SENIALES_CONTROL|selfalgs\(1),
	datad => \SENIALES_CONTROL|selfalgs\(0),
	combout => \inst33|opres[9]~21_combout\);

\inst33|opres[9]~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|opres[9]~22_combout\ = (\SENIALES_CONTROL|selfalgs\(0) & (((\inst33|opres[9]~21_combout\)))) # (!\SENIALES_CONTROL|selfalgs\(0) & ((\inst33|opres[9]~21_combout\ & ((\inst33|Add0~20_combout\))) # (!\inst33|opres[9]~21_combout\ & 
-- (\OP1|valor_interno\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OP1|valor_interno\(10),
	datab => \inst33|Add0~20_combout\,
	datac => \SENIALES_CONTROL|selfalgs\(0),
	datad => \inst33|opres[9]~21_combout\,
	combout => \inst33|opres[9]~22_combout\);

\inst33|opres[9]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|opres\(9) = (\inst33|opres[16]~0_combout\ & (\inst33|opres[9]~22_combout\)) # (!\inst33|opres[16]~0_combout\ & ((\inst33|opres\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst33|opres[9]~22_combout\,
	datac => \inst33|opres\(9),
	datad => \inst33|opres[16]~0_combout\,
	combout => \inst33|opres\(9));

\inst24|valor_interno[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~input_o\,
	d => \inst24|valor_interno[9]~6_combout\,
	asdata => \inst33|opres\(9),
	clrn => \RESET~input_o\,
	sclr => \inst24|valor_interno[1]~16_combout\,
	sload => \SENIALES_CONTROL|ALT_INV_selresult\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst24|valor_interno\(9));

\inst700666|ACCB|valor_interno[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~input_o\,
	d => \inst24|valor_interno\(9),
	clrn => \RESET~input_o\,
	ena => \inst700666|inst1000|Mux0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|ACCB|valor_interno\(9));

\inst700666|inst|D2[9]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst700666|inst|D2[9]~6_combout\ = (\inst700666|ACCB|valor_interno\(9) & \inst206|Equal1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst700666|ACCB|valor_interno\(9),
	datad => \inst206|Equal1~0_combout\,
	combout => \inst700666|inst|D2[9]~6_combout\);

\OP2|valor_interno[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~input_o\,
	d => \inst700666|inst|D2[9]~6_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OP2|valor_interno\(9));

\inst33|Add0~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|Add0~22_combout\ = (\OP2|valor_interno\(10) & ((\OP1|valor_interno\(10) & (\inst33|Add0~21\ & VCC)) # (!\OP1|valor_interno\(10) & (!\inst33|Add0~21\)))) # (!\OP2|valor_interno\(10) & ((\OP1|valor_interno\(10) & (!\inst33|Add0~21\)) # 
-- (!\OP1|valor_interno\(10) & ((\inst33|Add0~21\) # (GND)))))
-- \inst33|Add0~23\ = CARRY((\OP2|valor_interno\(10) & (!\OP1|valor_interno\(10) & !\inst33|Add0~21\)) # (!\OP2|valor_interno\(10) & ((!\inst33|Add0~21\) # (!\OP1|valor_interno\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \OP2|valor_interno\(10),
	datab => \OP1|valor_interno\(10),
	datad => VCC,
	cin => \inst33|Add0~21\,
	combout => \inst33|Add0~22_combout\,
	cout => \inst33|Add0~23\);

\inst33|opres[10]~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|opres[10]~23_combout\ = (\SENIALES_CONTROL|selfalgs\(0) & ((\OP2|valor_interno\(10) & ((!\SENIALES_CONTROL|selfalgs\(1)) # (!\OP1|valor_interno\(10)))) # (!\OP2|valor_interno\(10) & (\OP1|valor_interno\(10))))) # (!\SENIALES_CONTROL|selfalgs\(0) & 
-- (((\SENIALES_CONTROL|selfalgs\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OP2|valor_interno\(10),
	datab => \OP1|valor_interno\(10),
	datac => \SENIALES_CONTROL|selfalgs\(1),
	datad => \SENIALES_CONTROL|selfalgs\(0),
	combout => \inst33|opres[10]~23_combout\);

\inst33|opres[10]~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|opres[10]~24_combout\ = (\SENIALES_CONTROL|selfalgs\(0) & (((\inst33|opres[10]~23_combout\)))) # (!\SENIALES_CONTROL|selfalgs\(0) & ((\inst33|opres[10]~23_combout\ & ((\inst33|Add0~22_combout\))) # (!\inst33|opres[10]~23_combout\ & 
-- (\OP1|valor_interno\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OP1|valor_interno\(11),
	datab => \inst33|Add0~22_combout\,
	datac => \SENIALES_CONTROL|selfalgs\(0),
	datad => \inst33|opres[10]~23_combout\,
	combout => \inst33|opres[10]~24_combout\);

\inst33|opres[10]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|opres\(10) = (\inst33|opres[16]~0_combout\ & (\inst33|opres[10]~24_combout\)) # (!\inst33|opres[16]~0_combout\ & ((\inst33|opres\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst33|opres[10]~24_combout\,
	datac => \inst33|opres\(10),
	datad => \inst33|opres[16]~0_combout\,
	combout => \inst33|opres\(10));

\inst24|valor_interno[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~input_o\,
	d => \inst24|valor_interno[10]~5_combout\,
	asdata => \inst33|opres\(10),
	clrn => \RESET~input_o\,
	sclr => \inst24|valor_interno[1]~16_combout\,
	sload => \SENIALES_CONTROL|ALT_INV_selresult\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst24|valor_interno\(10));

\inst700666|ACCB|valor_interno[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~input_o\,
	d => \inst24|valor_interno\(10),
	clrn => \RESET~input_o\,
	ena => \inst700666|inst1000|Mux0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|ACCB|valor_interno\(10));

\inst700666|inst|D2[10]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst700666|inst|D2[10]~5_combout\ = (\inst700666|ACCB|valor_interno\(10) & \inst206|Equal1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst700666|ACCB|valor_interno\(10),
	datad => \inst206|Equal1~0_combout\,
	combout => \inst700666|inst|D2[10]~5_combout\);

\OP2|valor_interno[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~input_o\,
	d => \inst700666|inst|D2[10]~5_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OP2|valor_interno\(10));

\inst33|Add0~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|Add0~24_combout\ = ((\OP2|valor_interno\(11) $ (\OP1|valor_interno\(11) $ (!\inst33|Add0~23\)))) # (GND)
-- \inst33|Add0~25\ = CARRY((\OP2|valor_interno\(11) & ((\OP1|valor_interno\(11)) # (!\inst33|Add0~23\))) # (!\OP2|valor_interno\(11) & (\OP1|valor_interno\(11) & !\inst33|Add0~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \OP2|valor_interno\(11),
	datab => \OP1|valor_interno\(11),
	datad => VCC,
	cin => \inst33|Add0~23\,
	combout => \inst33|Add0~24_combout\,
	cout => \inst33|Add0~25\);

\inst33|opres[11]~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|opres[11]~25_combout\ = (\SENIALES_CONTROL|selfalgs\(0) & ((\OP2|valor_interno\(11) & ((!\OP1|valor_interno\(11)) # (!\SENIALES_CONTROL|selfalgs\(1)))) # (!\OP2|valor_interno\(11) & ((\OP1|valor_interno\(11)))))) # (!\SENIALES_CONTROL|selfalgs\(0) 
-- & (\SENIALES_CONTROL|selfalgs\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SENIALES_CONTROL|selfalgs\(1),
	datab => \OP2|valor_interno\(11),
	datac => \OP1|valor_interno\(11),
	datad => \SENIALES_CONTROL|selfalgs\(0),
	combout => \inst33|opres[11]~25_combout\);

\inst33|opres[11]~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|opres[11]~26_combout\ = (\SENIALES_CONTROL|selfalgs\(0) & (((\inst33|opres[11]~25_combout\)))) # (!\SENIALES_CONTROL|selfalgs\(0) & ((\inst33|opres[11]~25_combout\ & (\inst33|Add0~24_combout\)) # (!\inst33|opres[11]~25_combout\ & 
-- ((\OP1|valor_interno\(12))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|Add0~24_combout\,
	datab => \OP1|valor_interno\(12),
	datac => \SENIALES_CONTROL|selfalgs\(0),
	datad => \inst33|opres[11]~25_combout\,
	combout => \inst33|opres[11]~26_combout\);

\inst33|opres[11]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|opres\(11) = (\inst33|opres[16]~0_combout\ & (\inst33|opres[11]~26_combout\)) # (!\inst33|opres[16]~0_combout\ & ((\inst33|opres\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst33|opres[11]~26_combout\,
	datac => \inst33|opres\(11),
	datad => \inst33|opres[16]~0_combout\,
	combout => \inst33|opres\(11));

\inst24|valor_interno[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~input_o\,
	d => \inst24|valor_interno[11]~4_combout\,
	asdata => \inst33|opres\(11),
	clrn => \RESET~input_o\,
	sclr => \inst24|valor_interno[1]~16_combout\,
	sload => \SENIALES_CONTROL|ALT_INV_selresult\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst24|valor_interno\(11));

\inst700666|ACCB|valor_interno[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~input_o\,
	d => \inst24|valor_interno\(11),
	clrn => \RESET~input_o\,
	ena => \inst700666|inst1000|Mux0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|ACCB|valor_interno\(11));

\inst700666|inst|D2[11]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst700666|inst|D2[11]~4_combout\ = (\inst700666|ACCB|valor_interno\(11) & \inst206|Equal1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst700666|ACCB|valor_interno\(11),
	datad => \inst206|Equal1~0_combout\,
	combout => \inst700666|inst|D2[11]~4_combout\);

\OP2|valor_interno[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~input_o\,
	d => \inst700666|inst|D2[11]~4_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OP2|valor_interno\(11));

\inst33|Add0~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|Add0~26_combout\ = (\OP2|valor_interno\(12) & ((\OP1|valor_interno\(12) & (\inst33|Add0~25\ & VCC)) # (!\OP1|valor_interno\(12) & (!\inst33|Add0~25\)))) # (!\OP2|valor_interno\(12) & ((\OP1|valor_interno\(12) & (!\inst33|Add0~25\)) # 
-- (!\OP1|valor_interno\(12) & ((\inst33|Add0~25\) # (GND)))))
-- \inst33|Add0~27\ = CARRY((\OP2|valor_interno\(12) & (!\OP1|valor_interno\(12) & !\inst33|Add0~25\)) # (!\OP2|valor_interno\(12) & ((!\inst33|Add0~25\) # (!\OP1|valor_interno\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \OP2|valor_interno\(12),
	datab => \OP1|valor_interno\(12),
	datad => VCC,
	cin => \inst33|Add0~25\,
	combout => \inst33|Add0~26_combout\,
	cout => \inst33|Add0~27\);

\inst33|opres[12]~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|opres[12]~27_combout\ = (\SENIALES_CONTROL|selfalgs\(0) & (((\SENIALES_CONTROL|selfalgs\(1))))) # (!\SENIALES_CONTROL|selfalgs\(0) & ((\SENIALES_CONTROL|selfalgs\(1) & (\inst33|Add0~26_combout\)) # (!\SENIALES_CONTROL|selfalgs\(1) & 
-- ((\OP1|valor_interno\(13))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SENIALES_CONTROL|selfalgs\(0),
	datab => \inst33|Add0~26_combout\,
	datac => \SENIALES_CONTROL|selfalgs\(1),
	datad => \OP1|valor_interno\(13),
	combout => \inst33|opres[12]~27_combout\);

\inst33|opres[12]~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|opres[12]~28_combout\ = (\SENIALES_CONTROL|selfalgs\(0) & ((\OP2|valor_interno\(12) & ((!\inst33|opres[12]~27_combout\) # (!\OP1|valor_interno\(12)))) # (!\OP2|valor_interno\(12) & (\OP1|valor_interno\(12))))) # (!\SENIALES_CONTROL|selfalgs\(0) & 
-- (((\inst33|opres[12]~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OP2|valor_interno\(12),
	datab => \OP1|valor_interno\(12),
	datac => \inst33|opres[12]~27_combout\,
	datad => \SENIALES_CONTROL|selfalgs\(0),
	combout => \inst33|opres[12]~28_combout\);

\inst33|opres[12]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|opres\(12) = (\inst33|opres[16]~0_combout\ & (\inst33|opres[12]~28_combout\)) # (!\inst33|opres[16]~0_combout\ & ((\inst33|opres\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst33|opres[12]~28_combout\,
	datac => \inst33|opres\(12),
	datad => \inst33|opres[16]~0_combout\,
	combout => \inst33|opres\(12));

\inst24|valor_interno[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~input_o\,
	d => \inst24|valor_interno[12]~3_combout\,
	asdata => \inst33|opres\(12),
	clrn => \RESET~input_o\,
	sclr => \inst24|valor_interno[1]~16_combout\,
	sload => \SENIALES_CONTROL|ALT_INV_selresult\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst24|valor_interno\(12));

\inst700666|ACCB|valor_interno[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~input_o\,
	d => \inst24|valor_interno\(12),
	clrn => \RESET~input_o\,
	ena => \inst700666|inst1000|Mux0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|ACCB|valor_interno\(12));

\inst700666|inst|D2[12]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst700666|inst|D2[12]~3_combout\ = (\inst700666|ACCB|valor_interno\(12) & \inst206|Equal1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst700666|ACCB|valor_interno\(12),
	datad => \inst206|Equal1~0_combout\,
	combout => \inst700666|inst|D2[12]~3_combout\);

\OP2|valor_interno[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~input_o\,
	d => \inst700666|inst|D2[12]~3_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OP2|valor_interno\(12));

\inst33|Add0~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|Add0~28_combout\ = ((\OP2|valor_interno\(13) $ (\OP1|valor_interno\(13) $ (!\inst33|Add0~27\)))) # (GND)
-- \inst33|Add0~29\ = CARRY((\OP2|valor_interno\(13) & ((\OP1|valor_interno\(13)) # (!\inst33|Add0~27\))) # (!\OP2|valor_interno\(13) & (\OP1|valor_interno\(13) & !\inst33|Add0~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \OP2|valor_interno\(13),
	datab => \OP1|valor_interno\(13),
	datad => VCC,
	cin => \inst33|Add0~27\,
	combout => \inst33|Add0~28_combout\,
	cout => \inst33|Add0~29\);

\inst33|opres[13]~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|opres[13]~29_combout\ = (\SENIALES_CONTROL|selfalgs\(0) & ((\OP2|valor_interno\(13) & ((!\SENIALES_CONTROL|selfalgs\(1)) # (!\OP1|valor_interno\(13)))) # (!\OP2|valor_interno\(13) & (\OP1|valor_interno\(13))))) # (!\SENIALES_CONTROL|selfalgs\(0) & 
-- (((\SENIALES_CONTROL|selfalgs\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OP2|valor_interno\(13),
	datab => \OP1|valor_interno\(13),
	datac => \SENIALES_CONTROL|selfalgs\(1),
	datad => \SENIALES_CONTROL|selfalgs\(0),
	combout => \inst33|opres[13]~29_combout\);

\inst33|opres[13]~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|opres[13]~30_combout\ = (\SENIALES_CONTROL|selfalgs\(0) & (((\inst33|opres[13]~29_combout\)))) # (!\SENIALES_CONTROL|selfalgs\(0) & ((\inst33|opres[13]~29_combout\ & ((\inst33|Add0~28_combout\))) # (!\inst33|opres[13]~29_combout\ & 
-- (\OP1|valor_interno\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OP1|valor_interno\(14),
	datab => \inst33|Add0~28_combout\,
	datac => \SENIALES_CONTROL|selfalgs\(0),
	datad => \inst33|opres[13]~29_combout\,
	combout => \inst33|opres[13]~30_combout\);

\inst33|opres[13]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|opres\(13) = (\inst33|opres[16]~0_combout\ & (\inst33|opres[13]~30_combout\)) # (!\inst33|opres[16]~0_combout\ & ((\inst33|opres\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst33|opres[13]~30_combout\,
	datac => \inst33|opres\(13),
	datad => \inst33|opres[16]~0_combout\,
	combout => \inst33|opres\(13));

\inst24|valor_interno[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~input_o\,
	d => \inst24|valor_interno[13]~2_combout\,
	asdata => \inst33|opres\(13),
	clrn => \RESET~input_o\,
	sclr => \inst24|valor_interno[1]~16_combout\,
	sload => \SENIALES_CONTROL|ALT_INV_selresult\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst24|valor_interno\(13));

\inst700666|ACCB|valor_interno[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~input_o\,
	d => \inst24|valor_interno\(13),
	clrn => \RESET~input_o\,
	ena => \inst700666|inst1000|Mux0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|ACCB|valor_interno\(13));

\inst700666|inst|D2[13]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst700666|inst|D2[13]~2_combout\ = (\inst700666|ACCB|valor_interno\(13) & \inst206|Equal1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst700666|ACCB|valor_interno\(13),
	datad => \inst206|Equal1~0_combout\,
	combout => \inst700666|inst|D2[13]~2_combout\);

\OP2|valor_interno[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~input_o\,
	d => \inst700666|inst|D2[13]~2_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OP2|valor_interno\(13));

\inst33|Add0~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|Add0~30_combout\ = (\OP2|valor_interno\(14) & ((\OP1|valor_interno\(14) & (\inst33|Add0~29\ & VCC)) # (!\OP1|valor_interno\(14) & (!\inst33|Add0~29\)))) # (!\OP2|valor_interno\(14) & ((\OP1|valor_interno\(14) & (!\inst33|Add0~29\)) # 
-- (!\OP1|valor_interno\(14) & ((\inst33|Add0~29\) # (GND)))))
-- \inst33|Add0~31\ = CARRY((\OP2|valor_interno\(14) & (!\OP1|valor_interno\(14) & !\inst33|Add0~29\)) # (!\OP2|valor_interno\(14) & ((!\inst33|Add0~29\) # (!\OP1|valor_interno\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \OP2|valor_interno\(14),
	datab => \OP1|valor_interno\(14),
	datad => VCC,
	cin => \inst33|Add0~29\,
	combout => \inst33|Add0~30_combout\,
	cout => \inst33|Add0~31\);

\inst33|opres[14]~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|opres[14]~31_combout\ = (\SENIALES_CONTROL|selfalgs\(0) & (((\SENIALES_CONTROL|selfalgs\(1))))) # (!\SENIALES_CONTROL|selfalgs\(0) & ((\SENIALES_CONTROL|selfalgs\(1) & (\inst33|Add0~30_combout\)) # (!\SENIALES_CONTROL|selfalgs\(1) & 
-- ((\OP1|valor_interno\(15))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SENIALES_CONTROL|selfalgs\(0),
	datab => \inst33|Add0~30_combout\,
	datac => \SENIALES_CONTROL|selfalgs\(1),
	datad => \OP1|valor_interno\(15),
	combout => \inst33|opres[14]~31_combout\);

\inst33|opres[14]~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|opres[14]~32_combout\ = (\SENIALES_CONTROL|selfalgs\(0) & ((\OP2|valor_interno\(14) & ((!\inst33|opres[14]~31_combout\) # (!\OP1|valor_interno\(14)))) # (!\OP2|valor_interno\(14) & (\OP1|valor_interno\(14))))) # (!\SENIALES_CONTROL|selfalgs\(0) & 
-- (((\inst33|opres[14]~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OP2|valor_interno\(14),
	datab => \OP1|valor_interno\(14),
	datac => \inst33|opres[14]~31_combout\,
	datad => \SENIALES_CONTROL|selfalgs\(0),
	combout => \inst33|opres[14]~32_combout\);

\inst33|opres[14]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|opres\(14) = (\inst33|opres[16]~0_combout\ & (\inst33|opres[14]~32_combout\)) # (!\inst33|opres[16]~0_combout\ & ((\inst33|opres\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst33|opres[14]~32_combout\,
	datac => \inst33|opres\(14),
	datad => \inst33|opres[16]~0_combout\,
	combout => \inst33|opres\(14));

\inst24|valor_interno[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~input_o\,
	d => \inst24|valor_interno[14]~1_combout\,
	asdata => \inst33|opres\(14),
	clrn => \RESET~input_o\,
	sclr => \inst24|valor_interno[1]~16_combout\,
	sload => \SENIALES_CONTROL|ALT_INV_selresult\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst24|valor_interno\(14));

\inst700666|ACCB|valor_interno[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~input_o\,
	d => \inst24|valor_interno\(14),
	clrn => \RESET~input_o\,
	ena => \inst700666|inst1000|Mux0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|ACCB|valor_interno\(14));

\inst700666|inst|D2[14]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst700666|inst|D2[14]~1_combout\ = (\inst700666|ACCB|valor_interno\(14) & \inst206|Equal1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst700666|ACCB|valor_interno\(14),
	datad => \inst206|Equal1~0_combout\,
	combout => \inst700666|inst|D2[14]~1_combout\);

\OP2|valor_interno[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~input_o\,
	d => \inst700666|inst|D2[14]~1_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OP2|valor_interno\(14));

\inst33|Add0~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|Add0~32_combout\ = ((\OP2|valor_interno\(15) $ (\OP1|valor_interno\(15) $ (!\inst33|Add0~31\)))) # (GND)
-- \inst33|Add0~33\ = CARRY((\OP2|valor_interno\(15) & ((\OP1|valor_interno\(15)) # (!\inst33|Add0~31\))) # (!\OP2|valor_interno\(15) & (\OP1|valor_interno\(15) & !\inst33|Add0~31\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \OP2|valor_interno\(15),
	datab => \OP1|valor_interno\(15),
	datad => VCC,
	cin => \inst33|Add0~31\,
	combout => \inst33|Add0~32_combout\,
	cout => \inst33|Add0~33\);

\inst33|Add0~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|Add0~34_combout\ = \inst33|Add0~33\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst33|Add0~33\,
	combout => \inst33|Add0~34_combout\);

\inst33|opres[16]~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|opres[16]~33_combout\ = (\SENIALES_CONTROL|selfalgs\(1) & (\inst33|Add0~34_combout\ & !\SENIALES_CONTROL|selfalgs\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SENIALES_CONTROL|selfalgs\(1),
	datab => \inst33|Add0~34_combout\,
	datad => \SENIALES_CONTROL|selfalgs\(0),
	combout => \inst33|opres[16]~33_combout\);

\inst33|opres[16]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|opres\(16) = (\inst33|opres[16]~0_combout\ & (\inst33|opres[16]~33_combout\)) # (!\inst33|opres[16]~0_combout\ & ((\inst33|opres\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst33|opres[16]~33_combout\,
	datac => \inst33|opres\(16),
	datad => \inst33|opres[16]~0_combout\,
	combout => \inst33|opres\(16));

\inst3|ci\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~input_o\,
	d => \inst33|opres\(16),
	clrn => \RESET~input_o\,
	ena => \SENIALES_CONTROL|selfalgs\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|ci~q\);

\SENIALES_CONTROL|selc\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~input_o\,
	d => \inst206|Equal0~1_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SENIALES_CONTROL|selc~q\);

\inst33|Add0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|Add0~1_cout\ = CARRY((\inst3|ci~q\ & !\SENIALES_CONTROL|selc~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ci~q\,
	datab => \SENIALES_CONTROL|selc~q\,
	datad => VCC,
	cout => \inst33|Add0~1_cout\);

\inst33|Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|Add0~2_combout\ = (\OP2|valor_interno\(0) & ((\OP1|valor_interno\(0) & (\inst33|Add0~1_cout\ & VCC)) # (!\OP1|valor_interno\(0) & (!\inst33|Add0~1_cout\)))) # (!\OP2|valor_interno\(0) & ((\OP1|valor_interno\(0) & (!\inst33|Add0~1_cout\)) # 
-- (!\OP1|valor_interno\(0) & ((\inst33|Add0~1_cout\) # (GND)))))
-- \inst33|Add0~3\ = CARRY((\OP2|valor_interno\(0) & (!\OP1|valor_interno\(0) & !\inst33|Add0~1_cout\)) # (!\OP2|valor_interno\(0) & ((!\inst33|Add0~1_cout\) # (!\OP1|valor_interno\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \OP2|valor_interno\(0),
	datab => \OP1|valor_interno\(0),
	datad => VCC,
	cin => \inst33|Add0~1_cout\,
	combout => \inst33|Add0~2_combout\,
	cout => \inst33|Add0~3\);

\inst33|Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|Add0~4_combout\ = ((\OP2|valor_interno\(1) $ (\OP1|valor_interno\(1) $ (!\inst33|Add0~3\)))) # (GND)
-- \inst33|Add0~5\ = CARRY((\OP2|valor_interno\(1) & ((\OP1|valor_interno\(1)) # (!\inst33|Add0~3\))) # (!\OP2|valor_interno\(1) & (\OP1|valor_interno\(1) & !\inst33|Add0~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \OP2|valor_interno\(1),
	datab => \OP1|valor_interno\(1),
	datad => VCC,
	cin => \inst33|Add0~3\,
	combout => \inst33|Add0~4_combout\,
	cout => \inst33|Add0~5\);

\inst33|opres[1]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|opres[1]~3_combout\ = (\SENIALES_CONTROL|selfalgs\(0) & (((\SENIALES_CONTROL|selfalgs\(1))))) # (!\SENIALES_CONTROL|selfalgs\(0) & ((\SENIALES_CONTROL|selfalgs\(1) & (\inst33|Add0~4_combout\)) # (!\SENIALES_CONTROL|selfalgs\(1) & 
-- ((\OP1|valor_interno\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SENIALES_CONTROL|selfalgs\(0),
	datab => \inst33|Add0~4_combout\,
	datac => \SENIALES_CONTROL|selfalgs\(1),
	datad => \OP1|valor_interno\(2),
	combout => \inst33|opres[1]~3_combout\);

\inst33|opres[1]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|opres[1]~4_combout\ = (\SENIALES_CONTROL|selfalgs\(0) & ((\OP2|valor_interno\(1) & ((!\inst33|opres[1]~3_combout\) # (!\OP1|valor_interno\(1)))) # (!\OP2|valor_interno\(1) & (\OP1|valor_interno\(1))))) # (!\SENIALES_CONTROL|selfalgs\(0) & 
-- (((\inst33|opres[1]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OP2|valor_interno\(1),
	datab => \OP1|valor_interno\(1),
	datac => \inst33|opres[1]~3_combout\,
	datad => \SENIALES_CONTROL|selfalgs\(0),
	combout => \inst33|opres[1]~4_combout\);

\inst33|opres[1]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|opres\(1) = (\inst33|opres[16]~0_combout\ & (\inst33|opres[1]~4_combout\)) # (!\inst33|opres[16]~0_combout\ & ((\inst33|opres\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst33|opres[1]~4_combout\,
	datac => \inst33|opres\(1),
	datad => \inst33|opres[16]~0_combout\,
	combout => \inst33|opres\(1));

\inst24|valor_interno[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~input_o\,
	d => \inst24|valor_interno[1]~14_combout\,
	asdata => \inst33|opres\(1),
	clrn => \RESET~input_o\,
	sclr => \inst24|valor_interno[1]~16_combout\,
	sload => \SENIALES_CONTROL|ALT_INV_selresult\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst24|valor_interno\(1));

\inst700666|ACCB|valor_interno[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~input_o\,
	d => \inst24|valor_interno\(1),
	clrn => \RESET~input_o\,
	ena => \inst700666|inst1000|Mux0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|ACCB|valor_interno\(1));

\inst202|Mux30~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst202|Mux30~0_combout\ = (\inst206|selfalgs[0]~0_combout\ & (((!\inst206|Equal0~1_combout\)))) # (!\inst206|selfalgs[0]~0_combout\ & (\inst700666|ACCB|valor_interno\(1) & (\inst206|Equal1~0_combout\ & \inst206|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst206|selfalgs[0]~0_combout\,
	datab => \inst700666|ACCB|valor_interno\(1),
	datac => \inst206|Equal1~0_combout\,
	datad => \inst206|Equal0~1_combout\,
	combout => \inst202|Mux30~0_combout\);

\inst202|Mux30~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst202|Mux30~1_combout\ = (\inst8|valor_interno\(22) & (\inst206|selfalgs[0]~0_combout\ $ (((\inst206|Equal2~1_combout\) # (\inst202|Mux30~0_combout\))))) # (!\inst8|valor_interno\(22) & (!\inst206|Equal2~1_combout\ & (!\inst206|selfalgs[0]~0_combout\ & 
-- \inst202|Mux30~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|valor_interno\(22),
	datab => \inst206|Equal2~1_combout\,
	datac => \inst206|selfalgs[0]~0_combout\,
	datad => \inst202|Mux30~0_combout\,
	combout => \inst202|Mux30~1_combout\);

\OP2|valor_interno[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~input_o\,
	d => \inst202|Mux30~1_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OP2|valor_interno\(1));

\inst33|opres[2]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|opres[2]~7_combout\ = (\SENIALES_CONTROL|selfalgs\(0) & (((\SENIALES_CONTROL|selfalgs\(1))))) # (!\SENIALES_CONTROL|selfalgs\(0) & ((\SENIALES_CONTROL|selfalgs\(1) & (\inst33|Add0~6_combout\)) # (!\SENIALES_CONTROL|selfalgs\(1) & 
-- ((\OP1|valor_interno\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SENIALES_CONTROL|selfalgs\(0),
	datab => \inst33|Add0~6_combout\,
	datac => \SENIALES_CONTROL|selfalgs\(1),
	datad => \OP1|valor_interno\(3),
	combout => \inst33|opres[2]~7_combout\);

\inst33|opres[2]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|opres[2]~8_combout\ = (\SENIALES_CONTROL|selfalgs\(0) & ((\OP2|valor_interno\(2) & ((!\inst33|opres[2]~7_combout\) # (!\OP1|valor_interno\(2)))) # (!\OP2|valor_interno\(2) & (\OP1|valor_interno\(2))))) # (!\SENIALES_CONTROL|selfalgs\(0) & 
-- (((\inst33|opres[2]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OP2|valor_interno\(2),
	datab => \OP1|valor_interno\(2),
	datac => \inst33|opres[2]~7_combout\,
	datad => \SENIALES_CONTROL|selfalgs\(0),
	combout => \inst33|opres[2]~8_combout\);

\inst33|opres[2]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|opres\(2) = (\inst33|opres[16]~0_combout\ & (\inst33|opres[2]~8_combout\)) # (!\inst33|opres[16]~0_combout\ & ((\inst33|opres\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst33|opres[2]~8_combout\,
	datac => \inst33|opres\(2),
	datad => \inst33|opres[16]~0_combout\,
	combout => \inst33|opres\(2));

\inst24|valor_interno[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~input_o\,
	d => \inst24|valor_interno[2]~13_combout\,
	asdata => \inst33|opres\(2),
	clrn => \RESET~input_o\,
	sclr => \inst24|valor_interno[1]~16_combout\,
	sload => \SENIALES_CONTROL|ALT_INV_selresult\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst24|valor_interno\(2));

\inst4|valor_interno\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~input_o\,
	d => \SENIALES_CONTROL|selresult\(1),
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|valor_interno~q\);

\inst34|valor_interno[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~input_o\,
	d => \inst34|valor_interno[2]~17_combout\,
	asdata => \inst24|valor_interno\(2),
	clrn => \RESET~input_o\,
	sload => \inst4|valor_interno~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst34|valor_interno\(2));

\inst34|valor_interno[3]~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst34|valor_interno[3]~19_combout\ = (\inst34|valor_interno\(3) & (\inst34|valor_interno[2]~18\ $ (GND))) # (!\inst34|valor_interno\(3) & (!\inst34|valor_interno[2]~18\ & VCC))
-- \inst34|valor_interno[3]~20\ = CARRY((\inst34|valor_interno\(3) & !\inst34|valor_interno[2]~18\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst34|valor_interno\(3),
	datad => VCC,
	cin => \inst34|valor_interno[2]~18\,
	combout => \inst34|valor_interno[3]~19_combout\,
	cout => \inst34|valor_interno[3]~20\);

\inst34|valor_interno[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~input_o\,
	d => \inst34|valor_interno[3]~19_combout\,
	asdata => \inst24|valor_interno\(3),
	clrn => \RESET~input_o\,
	sload => \inst4|valor_interno~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst34|valor_interno\(3));

\inst34|valor_interno[4]~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst34|valor_interno[4]~21_combout\ = (\inst34|valor_interno\(4) & (!\inst34|valor_interno[3]~20\)) # (!\inst34|valor_interno\(4) & ((\inst34|valor_interno[3]~20\) # (GND)))
-- \inst34|valor_interno[4]~22\ = CARRY((!\inst34|valor_interno[3]~20\) # (!\inst34|valor_interno\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst34|valor_interno\(4),
	datad => VCC,
	cin => \inst34|valor_interno[3]~20\,
	combout => \inst34|valor_interno[4]~21_combout\,
	cout => \inst34|valor_interno[4]~22\);

\inst34|valor_interno[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~input_o\,
	d => \inst34|valor_interno[4]~21_combout\,
	asdata => \inst24|valor_interno\(4),
	clrn => \RESET~input_o\,
	sload => \inst4|valor_interno~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst34|valor_interno\(4));

\inst34|valor_interno[5]~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst34|valor_interno[5]~23_combout\ = (\inst34|valor_interno\(5) & (\inst34|valor_interno[4]~22\ $ (GND))) # (!\inst34|valor_interno\(5) & (!\inst34|valor_interno[4]~22\ & VCC))
-- \inst34|valor_interno[5]~24\ = CARRY((\inst34|valor_interno\(5) & !\inst34|valor_interno[4]~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst34|valor_interno\(5),
	datad => VCC,
	cin => \inst34|valor_interno[4]~22\,
	combout => \inst34|valor_interno[5]~23_combout\,
	cout => \inst34|valor_interno[5]~24\);

\inst34|valor_interno[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~input_o\,
	d => \inst34|valor_interno[5]~23_combout\,
	asdata => \inst24|valor_interno\(5),
	clrn => \RESET~input_o\,
	sload => \inst4|valor_interno~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst34|valor_interno\(5));

\inst1|mem~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|mem~3_combout\ = (\inst34|valor_interno\(2)) # ((\inst34|valor_interno\(3)) # (\inst34|valor_interno\(0) $ (\inst34|valor_interno\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst34|valor_interno\(0),
	datab => \inst34|valor_interno\(1),
	datac => \inst34|valor_interno\(2),
	datad => \inst34|valor_interno\(3),
	combout => \inst1|mem~3_combout\);

\inst1|mem~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|mem~4_combout\ = (!\inst34|valor_interno\(5) & (!\inst34|valor_interno\(4) & !\inst1|mem~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst34|valor_interno\(5),
	datab => \inst34|valor_interno\(4),
	datac => \inst1|mem~3_combout\,
	combout => \inst1|mem~4_combout\);

\inst8|valor_interno[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~input_o\,
	d => \inst1|mem~4_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|valor_interno\(22));

\inst206|Equal4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst206|Equal4~0_combout\ = (\inst8|valor_interno\(22) & (\inst206|Equal3~0_combout\ & (!\inst8|valor_interno\(21) & !\inst8|valor_interno\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|valor_interno\(22),
	datab => \inst206|Equal3~0_combout\,
	datac => \inst8|valor_interno\(21),
	datad => \inst8|valor_interno\(20),
	combout => \inst206|Equal4~0_combout\);

\SENIALES_CONTROL|selregw[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~input_o\,
	d => \inst206|Equal4~0_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SENIALES_CONTROL|selregw\(2));

\inst107|selregw[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~input_o\,
	d => \SENIALES_CONTROL|selregw\(2),
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst107|selregw\(2));

\inst700666|inst1000|Mux0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst700666|inst1000|Mux0~1_combout\ = (\inst107|selregw\(2) & !\inst107|selregw\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst107|selregw\(2),
	datad => \inst107|selregw\(0),
	combout => \inst700666|inst1000|Mux0~1_combout\);

\inst700666|ACCB|valor_interno[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~input_o\,
	d => \inst24|valor_interno\(0),
	clrn => \RESET~input_o\,
	ena => \inst700666|inst1000|Mux0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|ACCB|valor_interno\(0));

\inst700666|inst|D2[0]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst700666|inst|D2[0]~14_combout\ = (\inst700666|ACCB|valor_interno\(0) & \inst206|Equal1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst700666|ACCB|valor_interno\(0),
	datad => \inst206|Equal1~0_combout\,
	combout => \inst700666|inst|D2[0]~14_combout\);

\OP2|valor_interno[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~input_o\,
	d => \inst700666|inst|D2[0]~14_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OP2|valor_interno\(0));

\inst24|valor_interno[0]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst24|valor_interno[0]~15_combout\ = (\SENIALES_CONTROL|selresult\(0) & ((\OP1|valor_interno\(0)))) # (!\SENIALES_CONTROL|selresult\(0) & (\OP2|valor_interno\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OP2|valor_interno\(0),
	datab => \OP1|valor_interno\(0),
	datad => \SENIALES_CONTROL|selresult\(0),
	combout => \inst24|valor_interno[0]~15_combout\);

\inst33|opres[0]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|opres[0]~5_combout\ = (\SENIALES_CONTROL|selfalgs\(0) & ((\OP2|valor_interno\(0) & ((!\SENIALES_CONTROL|selfalgs\(1)) # (!\OP1|valor_interno\(0)))) # (!\OP2|valor_interno\(0) & (\OP1|valor_interno\(0))))) # (!\SENIALES_CONTROL|selfalgs\(0) & 
-- (((\SENIALES_CONTROL|selfalgs\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OP2|valor_interno\(0),
	datab => \OP1|valor_interno\(0),
	datac => \SENIALES_CONTROL|selfalgs\(1),
	datad => \SENIALES_CONTROL|selfalgs\(0),
	combout => \inst33|opres[0]~5_combout\);

\inst33|opres[0]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|opres[0]~6_combout\ = (\SENIALES_CONTROL|selfalgs\(0) & (((\inst33|opres[0]~5_combout\)))) # (!\SENIALES_CONTROL|selfalgs\(0) & ((\inst33|opres[0]~5_combout\ & ((\inst33|Add0~2_combout\))) # (!\inst33|opres[0]~5_combout\ & 
-- (\OP1|valor_interno\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OP1|valor_interno\(1),
	datab => \inst33|Add0~2_combout\,
	datac => \SENIALES_CONTROL|selfalgs\(0),
	datad => \inst33|opres[0]~5_combout\,
	combout => \inst33|opres[0]~6_combout\);

\inst33|opres[0]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|opres\(0) = (\inst33|opres[16]~0_combout\ & (\inst33|opres[0]~6_combout\)) # (!\inst33|opres[16]~0_combout\ & ((\inst33|opres\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst33|opres[0]~6_combout\,
	datac => \inst33|opres\(0),
	datad => \inst33|opres[16]~0_combout\,
	combout => \inst33|opres\(0));

\inst24|valor_interno[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~input_o\,
	d => \inst24|valor_interno[0]~15_combout\,
	asdata => \inst33|opres\(0),
	clrn => \RESET~input_o\,
	sclr => \inst24|valor_interno[1]~16_combout\,
	sload => \SENIALES_CONTROL|ALT_INV_selresult\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst24|valor_interno\(0));

\inst34|valor_interno[0]~_wirecell\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst34|valor_interno[0]~_wirecell_combout\ = !\inst34|valor_interno\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst34|valor_interno\(0),
	combout => \inst34|valor_interno[0]~_wirecell_combout\);

\inst34|valor_interno[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~input_o\,
	d => \inst24|valor_interno\(0),
	asdata => \inst34|valor_interno[0]~_wirecell_combout\,
	clrn => \RESET~input_o\,
	sload => \inst4|ALT_INV_valor_interno~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst34|valor_interno\(0));

\inst34|valor_interno[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~input_o\,
	d => \inst34|valor_interno[1]~15_combout\,
	asdata => \inst24|valor_interno\(1),
	clrn => \RESET~input_o\,
	sload => \inst4|valor_interno~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst34|valor_interno\(1));

\inst1|mem~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|mem~1_combout\ = (\inst34|valor_interno\(1) & (\inst1|mem~0_combout\ & !\inst34|valor_interno\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst34|valor_interno\(1),
	datab => \inst1|mem~0_combout\,
	datad => \inst34|valor_interno\(0),
	combout => \inst1|mem~1_combout\);

\inst8|valor_interno[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~input_o\,
	d => \inst1|mem~1_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|valor_interno\(16));

\inst206|Equal1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst206|Equal1~0_combout\ = (\inst8|valor_interno\(16) & (\inst206|Equal0~0_combout\ & (\inst8|valor_interno\(20) & \inst8|valor_interno\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|valor_interno\(16),
	datab => \inst206|Equal0~0_combout\,
	datac => \inst8|valor_interno\(20),
	datad => \inst8|valor_interno\(17),
	combout => \inst206|Equal1~0_combout\);

\inst206|Equal3~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst206|Equal3~1_combout\ = (!\inst8|valor_interno\(21) & !\inst8|valor_interno\(20))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst8|valor_interno\(21),
	datad => \inst8|valor_interno\(20),
	combout => \inst206|Equal3~1_combout\);

\inst206|selregw[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst206|selregw[0]~0_combout\ = (\inst206|Equal1~0_combout\) # ((!\inst8|valor_interno\(22) & (\inst206|Equal3~0_combout\ & \inst206|Equal3~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst206|Equal1~0_combout\,
	datab => \inst8|valor_interno\(22),
	datac => \inst206|Equal3~0_combout\,
	datad => \inst206|Equal3~1_combout\,
	combout => \inst206|selregw[0]~0_combout\);

\SENIALES_CONTROL|selregw[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~input_o\,
	d => \inst206|selregw[0]~0_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SENIALES_CONTROL|selregw\(0));

\inst107|selregw[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~input_o\,
	d => \SENIALES_CONTROL|selregw\(0),
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst107|selregw\(0));

\inst700666|inst1000|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst700666|inst1000|Mux0~0_combout\ = (\inst107|selregw\(0) & !\inst107|selregw\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst107|selregw\(0),
	datad => \inst107|selregw\(2),
	combout => \inst700666|inst1000|Mux0~0_combout\);

\inst700666|ACCA|valor_interno[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~input_o\,
	d => \inst24|valor_interno\(15),
	clrn => \RESET~input_o\,
	ena => \inst700666|inst1000|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|ACCA|valor_interno\(15));

\inst202|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst202|Mux0~0_combout\ = (\inst700666|ACCA|valor_interno\(15) & \inst202|Mux14~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst700666|ACCA|valor_interno\(15),
	datab => \inst202|Mux14~0_combout\,
	combout => \inst202|Mux0~0_combout\);

\OP1|valor_interno[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~input_o\,
	d => \inst202|Mux0~0_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OP1|valor_interno\(15));

\inst24|valor_interno[15]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst24|valor_interno[15]~0_combout\ = (\SENIALES_CONTROL|selresult\(0) & ((\OP1|valor_interno\(15)))) # (!\SENIALES_CONTROL|selresult\(0) & (\OP2|valor_interno\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OP2|valor_interno\(15),
	datab => \OP1|valor_interno\(15),
	datad => \SENIALES_CONTROL|selresult\(0),
	combout => \inst24|valor_interno[15]~0_combout\);

\inst24|valor_interno[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~input_o\,
	d => \inst24|valor_interno[15]~0_combout\,
	asdata => \inst33|opres\(15),
	clrn => \RESET~input_o\,
	sclr => \inst24|valor_interno[1]~16_combout\,
	sload => \SENIALES_CONTROL|ALT_INV_selresult\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst24|valor_interno\(15));

\inst700666|ACCB|valor_interno[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~input_o\,
	d => \inst24|valor_interno\(15),
	clrn => \RESET~input_o\,
	ena => \inst700666|inst1000|Mux0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|ACCB|valor_interno\(15));

\inst700666|inst|D2[15]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst700666|inst|D2[15]~0_combout\ = (\inst700666|ACCB|valor_interno\(15) & \inst206|Equal1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst700666|ACCB|valor_interno\(15),
	datad => \inst206|Equal1~0_combout\,
	combout => \inst700666|inst|D2[15]~0_combout\);

\OP2|valor_interno[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~input_o\,
	d => \inst700666|inst|D2[15]~0_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OP2|valor_interno\(15));

\inst40|$00000|auto_generated|result_node[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst40|$00000|auto_generated|result_node[0]~0_combout\ = (\inst3|ci~q\ & !\SENIALES_CONTROL|selc~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ci~q\,
	datad => \SENIALES_CONTROL|selc~q\,
	combout => \inst40|$00000|auto_generated|result_node[0]~0_combout\);

\inst33|opres[15]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|opres[15]~1_combout\ = (\SENIALES_CONTROL|selfalgs\(0) & (((\SENIALES_CONTROL|selfalgs\(1))))) # (!\SENIALES_CONTROL|selfalgs\(0) & ((\SENIALES_CONTROL|selfalgs\(1) & (\inst33|Add0~32_combout\)) # (!\SENIALES_CONTROL|selfalgs\(1) & 
-- ((\inst40|$00000|auto_generated|result_node[0]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SENIALES_CONTROL|selfalgs\(0),
	datab => \inst33|Add0~32_combout\,
	datac => \SENIALES_CONTROL|selfalgs\(1),
	datad => \inst40|$00000|auto_generated|result_node[0]~0_combout\,
	combout => \inst33|opres[15]~1_combout\);

\inst33|opres[15]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|opres[15]~2_combout\ = (\SENIALES_CONTROL|selfalgs\(0) & ((\OP2|valor_interno\(15) & ((!\inst33|opres[15]~1_combout\) # (!\OP1|valor_interno\(15)))) # (!\OP2|valor_interno\(15) & (\OP1|valor_interno\(15))))) # (!\SENIALES_CONTROL|selfalgs\(0) & 
-- (((\inst33|opres[15]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OP2|valor_interno\(15),
	datab => \OP1|valor_interno\(15),
	datac => \inst33|opres[15]~1_combout\,
	datad => \SENIALES_CONTROL|selfalgs\(0),
	combout => \inst33|opres[15]~2_combout\);

\inst33|opres[15]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|opres\(15) = (\inst33|opres[16]~0_combout\ & (\inst33|opres[15]~2_combout\)) # (!\inst33|opres[16]~0_combout\ & ((\inst33|opres\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst33|opres[15]~2_combout\,
	datac => \inst33|opres\(15),
	datad => \inst33|opres[16]~0_combout\,
	combout => \inst33|opres\(15));

\inst3|ni\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~input_o\,
	d => \inst33|opres\(15),
	clrn => \RESET~input_o\,
	ena => \inst33|opres[16]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|ni~q\);

\inst33|WideOr0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|WideOr0~0_combout\ = (\inst33|opres\(1)) # ((\inst33|opres\(0)) # ((\inst33|opres\(2)) # (\inst33|opres\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|opres\(1),
	datab => \inst33|opres\(0),
	datac => \inst33|opres\(2),
	datad => \inst33|opres\(3),
	combout => \inst33|WideOr0~0_combout\);

\inst33|WideOr0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|WideOr0~1_combout\ = (\inst33|opres\(4)) # ((\inst33|opres\(5)) # ((\inst33|opres\(6)) # (\inst33|opres\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|opres\(4),
	datab => \inst33|opres\(5),
	datac => \inst33|opres\(6),
	datad => \inst33|opres\(7),
	combout => \inst33|WideOr0~1_combout\);

\inst33|WideOr0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|WideOr0~2_combout\ = (\inst33|opres\(8)) # ((\inst33|opres\(9)) # ((\inst33|opres\(10)) # (\inst33|opres\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|opres\(8),
	datab => \inst33|opres\(9),
	datac => \inst33|opres\(10),
	datad => \inst33|opres\(11),
	combout => \inst33|WideOr0~2_combout\);

\inst33|WideOr0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|WideOr0~3_combout\ = (\inst33|opres\(15)) # ((\inst33|opres\(12)) # ((\inst33|opres\(13)) # (\inst33|opres\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|opres\(15),
	datab => \inst33|opres\(12),
	datac => \inst33|opres\(13),
	datad => \inst33|opres\(14),
	combout => \inst33|WideOr0~3_combout\);

\inst33|WideOr0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|WideOr0~4_combout\ = (!\inst33|WideOr0~0_combout\ & (!\inst33|WideOr0~1_combout\ & (!\inst33|WideOr0~2_combout\ & !\inst33|WideOr0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|WideOr0~0_combout\,
	datab => \inst33|WideOr0~1_combout\,
	datac => \inst33|WideOr0~2_combout\,
	datad => \inst33|WideOr0~3_combout\,
	combout => \inst33|WideOr0~4_combout\);

\inst3|zi\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~input_o\,
	d => \inst33|WideOr0~4_combout\,
	clrn => \RESET~input_o\,
	ena => \inst33|opres[16]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|zi~q\);

\inst|banderas[3]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|banderas[3]~0_combout\ = (\SENIALES_CONTROL|selfalgs\(1) & (\inst33|opres\(16))) # (!\SENIALES_CONTROL|selfalgs\(1) & (((\inst3|vi~q\ & !\SENIALES_CONTROL|selfalgs\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|opres\(16),
	datab => \SENIALES_CONTROL|selfalgs\(1),
	datac => \inst3|vi~q\,
	datad => \SENIALES_CONTROL|selfalgs\(0),
	combout => \inst|banderas[3]~0_combout\);

\inst3|vi\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~input_o\,
	d => \inst|banderas[3]~0_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|vi~q\);

\inst3|hi~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|hi~0_combout\ = (\SENIALES_CONTROL|selfalgs\(1) & ((\SENIALES_CONTROL|selfalgs\(0) & (\inst3|hi~q\)) # (!\SENIALES_CONTROL|selfalgs\(0) & ((\inst33|opres\(8)))))) # (!\SENIALES_CONTROL|selfalgs\(1) & (\inst3|hi~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|hi~q\,
	datab => \inst33|opres\(8),
	datac => \SENIALES_CONTROL|selfalgs\(1),
	datad => \SENIALES_CONTROL|selfalgs\(0),
	combout => \inst3|hi~0_combout\);

\inst3|hi\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~input_o\,
	d => \inst3|hi~0_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|hi~q\);

\inst700666|inst1000|Mux0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst700666|inst1000|Mux0~2_combout\ = (\inst107|selregw\(2) & \inst107|selregw\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst107|selregw\(2),
	datab => \inst107|selregw\(0),
	combout => \inst700666|inst1000|Mux0~2_combout\);

\inst700666|AUX|valor_interno[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~input_o\,
	d => \inst24|valor_interno\(15),
	clrn => \RESET~input_o\,
	ena => \inst700666|inst1000|Mux0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|AUX|valor_interno\(15));

\inst700666|AUX|valor_interno[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~input_o\,
	d => \inst24|valor_interno\(14),
	clrn => \RESET~input_o\,
	ena => \inst700666|inst1000|Mux0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|AUX|valor_interno\(14));

\inst700666|AUX|valor_interno[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~input_o\,
	d => \inst24|valor_interno\(13),
	clrn => \RESET~input_o\,
	ena => \inst700666|inst1000|Mux0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|AUX|valor_interno\(13));

\inst700666|AUX|valor_interno[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~input_o\,
	d => \inst24|valor_interno\(12),
	clrn => \RESET~input_o\,
	ena => \inst700666|inst1000|Mux0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|AUX|valor_interno\(12));

\inst700666|AUX|valor_interno[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~input_o\,
	d => \inst24|valor_interno\(11),
	clrn => \RESET~input_o\,
	ena => \inst700666|inst1000|Mux0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|AUX|valor_interno\(11));

\inst700666|AUX|valor_interno[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~input_o\,
	d => \inst24|valor_interno\(10),
	clrn => \RESET~input_o\,
	ena => \inst700666|inst1000|Mux0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|AUX|valor_interno\(10));

\inst700666|AUX|valor_interno[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~input_o\,
	d => \inst24|valor_interno\(9),
	clrn => \RESET~input_o\,
	ena => \inst700666|inst1000|Mux0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|AUX|valor_interno\(9));

\inst700666|AUX|valor_interno[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~input_o\,
	d => \inst24|valor_interno\(8),
	clrn => \RESET~input_o\,
	ena => \inst700666|inst1000|Mux0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|AUX|valor_interno\(8));

\inst700666|AUX|valor_interno[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~input_o\,
	d => \inst24|valor_interno\(7),
	clrn => \RESET~input_o\,
	ena => \inst700666|inst1000|Mux0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|AUX|valor_interno\(7));

\inst700666|AUX|valor_interno[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~input_o\,
	d => \inst24|valor_interno\(6),
	clrn => \RESET~input_o\,
	ena => \inst700666|inst1000|Mux0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|AUX|valor_interno\(6));

\inst700666|AUX|valor_interno[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~input_o\,
	d => \inst24|valor_interno\(5),
	clrn => \RESET~input_o\,
	ena => \inst700666|inst1000|Mux0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|AUX|valor_interno\(5));

\inst700666|AUX|valor_interno[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~input_o\,
	d => \inst24|valor_interno\(4),
	clrn => \RESET~input_o\,
	ena => \inst700666|inst1000|Mux0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|AUX|valor_interno\(4));

\inst700666|AUX|valor_interno[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~input_o\,
	d => \inst24|valor_interno\(3),
	clrn => \RESET~input_o\,
	ena => \inst700666|inst1000|Mux0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|AUX|valor_interno\(3));

\inst700666|AUX|valor_interno[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~input_o\,
	d => \inst24|valor_interno\(2),
	clrn => \RESET~input_o\,
	ena => \inst700666|inst1000|Mux0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|AUX|valor_interno\(2));

\inst700666|AUX|valor_interno[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~input_o\,
	d => \inst24|valor_interno\(1),
	clrn => \RESET~input_o\,
	ena => \inst700666|inst1000|Mux0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|AUX|valor_interno\(1));

\inst700666|AUX|valor_interno[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~input_o\,
	d => \inst24|valor_interno\(0),
	clrn => \RESET~input_o\,
	ena => \inst700666|inst1000|Mux0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|AUX|valor_interno\(0));

\inst34|valor_interno[6]~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst34|valor_interno[6]~25_combout\ = (\inst34|valor_interno\(6) & (!\inst34|valor_interno[5]~24\)) # (!\inst34|valor_interno\(6) & ((\inst34|valor_interno[5]~24\) # (GND)))
-- \inst34|valor_interno[6]~26\ = CARRY((!\inst34|valor_interno[5]~24\) # (!\inst34|valor_interno\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst34|valor_interno\(6),
	datad => VCC,
	cin => \inst34|valor_interno[5]~24\,
	combout => \inst34|valor_interno[6]~25_combout\,
	cout => \inst34|valor_interno[6]~26\);

\inst34|valor_interno[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~input_o\,
	d => \inst34|valor_interno[6]~25_combout\,
	asdata => \inst24|valor_interno\(6),
	clrn => \RESET~input_o\,
	sload => \inst4|valor_interno~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst34|valor_interno\(6));

\inst34|valor_interno[7]~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst34|valor_interno[7]~27_combout\ = (\inst34|valor_interno\(7) & (\inst34|valor_interno[6]~26\ $ (GND))) # (!\inst34|valor_interno\(7) & (!\inst34|valor_interno[6]~26\ & VCC))
-- \inst34|valor_interno[7]~28\ = CARRY((\inst34|valor_interno\(7) & !\inst34|valor_interno[6]~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst34|valor_interno\(7),
	datad => VCC,
	cin => \inst34|valor_interno[6]~26\,
	combout => \inst34|valor_interno[7]~27_combout\,
	cout => \inst34|valor_interno[7]~28\);

\inst34|valor_interno[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~input_o\,
	d => \inst34|valor_interno[7]~27_combout\,
	asdata => \inst24|valor_interno\(7),
	clrn => \RESET~input_o\,
	sload => \inst4|valor_interno~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst34|valor_interno\(7));

\inst34|valor_interno[8]~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst34|valor_interno[8]~29_combout\ = (\inst34|valor_interno\(8) & (!\inst34|valor_interno[7]~28\)) # (!\inst34|valor_interno\(8) & ((\inst34|valor_interno[7]~28\) # (GND)))
-- \inst34|valor_interno[8]~30\ = CARRY((!\inst34|valor_interno[7]~28\) # (!\inst34|valor_interno\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst34|valor_interno\(8),
	datad => VCC,
	cin => \inst34|valor_interno[7]~28\,
	combout => \inst34|valor_interno[8]~29_combout\,
	cout => \inst34|valor_interno[8]~30\);

\inst34|valor_interno[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~input_o\,
	d => \inst34|valor_interno[8]~29_combout\,
	asdata => \inst24|valor_interno\(8),
	clrn => \RESET~input_o\,
	sload => \inst4|valor_interno~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst34|valor_interno\(8));

\inst34|valor_interno[9]~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst34|valor_interno[9]~31_combout\ = (\inst34|valor_interno\(9) & (\inst34|valor_interno[8]~30\ $ (GND))) # (!\inst34|valor_interno\(9) & (!\inst34|valor_interno[8]~30\ & VCC))
-- \inst34|valor_interno[9]~32\ = CARRY((\inst34|valor_interno\(9) & !\inst34|valor_interno[8]~30\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst34|valor_interno\(9),
	datad => VCC,
	cin => \inst34|valor_interno[8]~30\,
	combout => \inst34|valor_interno[9]~31_combout\,
	cout => \inst34|valor_interno[9]~32\);

\inst34|valor_interno[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~input_o\,
	d => \inst34|valor_interno[9]~31_combout\,
	asdata => \inst24|valor_interno\(9),
	clrn => \RESET~input_o\,
	sload => \inst4|valor_interno~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst34|valor_interno\(9));

\inst34|valor_interno[10]~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst34|valor_interno[10]~33_combout\ = (\inst34|valor_interno\(10) & (!\inst34|valor_interno[9]~32\)) # (!\inst34|valor_interno\(10) & ((\inst34|valor_interno[9]~32\) # (GND)))
-- \inst34|valor_interno[10]~34\ = CARRY((!\inst34|valor_interno[9]~32\) # (!\inst34|valor_interno\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst34|valor_interno\(10),
	datad => VCC,
	cin => \inst34|valor_interno[9]~32\,
	combout => \inst34|valor_interno[10]~33_combout\,
	cout => \inst34|valor_interno[10]~34\);

\inst34|valor_interno[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~input_o\,
	d => \inst34|valor_interno[10]~33_combout\,
	asdata => \inst24|valor_interno\(10),
	clrn => \RESET~input_o\,
	sload => \inst4|valor_interno~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst34|valor_interno\(10));

\inst34|valor_interno[11]~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst34|valor_interno[11]~35_combout\ = (\inst34|valor_interno\(11) & (\inst34|valor_interno[10]~34\ $ (GND))) # (!\inst34|valor_interno\(11) & (!\inst34|valor_interno[10]~34\ & VCC))
-- \inst34|valor_interno[11]~36\ = CARRY((\inst34|valor_interno\(11) & !\inst34|valor_interno[10]~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst34|valor_interno\(11),
	datad => VCC,
	cin => \inst34|valor_interno[10]~34\,
	combout => \inst34|valor_interno[11]~35_combout\,
	cout => \inst34|valor_interno[11]~36\);

\inst34|valor_interno[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~input_o\,
	d => \inst34|valor_interno[11]~35_combout\,
	asdata => \inst24|valor_interno\(11),
	clrn => \RESET~input_o\,
	sload => \inst4|valor_interno~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst34|valor_interno\(11));

\inst34|valor_interno[12]~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst34|valor_interno[12]~37_combout\ = (\inst34|valor_interno\(12) & (!\inst34|valor_interno[11]~36\)) # (!\inst34|valor_interno\(12) & ((\inst34|valor_interno[11]~36\) # (GND)))
-- \inst34|valor_interno[12]~38\ = CARRY((!\inst34|valor_interno[11]~36\) # (!\inst34|valor_interno\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst34|valor_interno\(12),
	datad => VCC,
	cin => \inst34|valor_interno[11]~36\,
	combout => \inst34|valor_interno[12]~37_combout\,
	cout => \inst34|valor_interno[12]~38\);

\inst34|valor_interno[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~input_o\,
	d => \inst34|valor_interno[12]~37_combout\,
	asdata => \inst24|valor_interno\(12),
	clrn => \RESET~input_o\,
	sload => \inst4|valor_interno~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst34|valor_interno\(12));

\inst34|valor_interno[13]~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst34|valor_interno[13]~39_combout\ = (\inst34|valor_interno\(13) & (\inst34|valor_interno[12]~38\ $ (GND))) # (!\inst34|valor_interno\(13) & (!\inst34|valor_interno[12]~38\ & VCC))
-- \inst34|valor_interno[13]~40\ = CARRY((\inst34|valor_interno\(13) & !\inst34|valor_interno[12]~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst34|valor_interno\(13),
	datad => VCC,
	cin => \inst34|valor_interno[12]~38\,
	combout => \inst34|valor_interno[13]~39_combout\,
	cout => \inst34|valor_interno[13]~40\);

\inst34|valor_interno[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~input_o\,
	d => \inst34|valor_interno[13]~39_combout\,
	asdata => \inst24|valor_interno\(13),
	clrn => \RESET~input_o\,
	sload => \inst4|valor_interno~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst34|valor_interno\(13));

\inst34|valor_interno[14]~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst34|valor_interno[14]~41_combout\ = (\inst34|valor_interno\(14) & (!\inst34|valor_interno[13]~40\)) # (!\inst34|valor_interno\(14) & ((\inst34|valor_interno[13]~40\) # (GND)))
-- \inst34|valor_interno[14]~42\ = CARRY((!\inst34|valor_interno[13]~40\) # (!\inst34|valor_interno\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst34|valor_interno\(14),
	datad => VCC,
	cin => \inst34|valor_interno[13]~40\,
	combout => \inst34|valor_interno[14]~41_combout\,
	cout => \inst34|valor_interno[14]~42\);

\inst34|valor_interno[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~input_o\,
	d => \inst34|valor_interno[14]~41_combout\,
	asdata => \inst24|valor_interno\(14),
	clrn => \RESET~input_o\,
	sload => \inst4|valor_interno~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst34|valor_interno\(14));

\inst34|valor_interno[15]~43\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst34|valor_interno[15]~43_combout\ = \inst34|valor_interno\(15) $ (!\inst34|valor_interno[14]~42\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst34|valor_interno\(15),
	cin => \inst34|valor_interno[14]~42\,
	combout => \inst34|valor_interno[15]~43_combout\);

\inst34|valor_interno[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~input_o\,
	d => \inst34|valor_interno[15]~43_combout\,
	asdata => \inst24|valor_interno\(15),
	clrn => \RESET~input_o\,
	sload => \inst4|valor_interno~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst34|valor_interno\(15));

ww_n <= \n~output_o\;

ww_z <= \z~output_o\;

ww_v <= \v~output_o\;

ww_c <= \c~output_o\;

ww_h <= \h~output_o\;

ww_i <= \i~output_o\;

ww_branch <= \branch~output_o\;

ww_ACCA_D(15) <= \ACCA_D[15]~output_o\;

ww_ACCA_D(14) <= \ACCA_D[14]~output_o\;

ww_ACCA_D(13) <= \ACCA_D[13]~output_o\;

ww_ACCA_D(12) <= \ACCA_D[12]~output_o\;

ww_ACCA_D(11) <= \ACCA_D[11]~output_o\;

ww_ACCA_D(10) <= \ACCA_D[10]~output_o\;

ww_ACCA_D(9) <= \ACCA_D[9]~output_o\;

ww_ACCA_D(8) <= \ACCA_D[8]~output_o\;

ww_ACCA_D(7) <= \ACCA_D[7]~output_o\;

ww_ACCA_D(6) <= \ACCA_D[6]~output_o\;

ww_ACCA_D(5) <= \ACCA_D[5]~output_o\;

ww_ACCA_D(4) <= \ACCA_D[4]~output_o\;

ww_ACCA_D(3) <= \ACCA_D[3]~output_o\;

ww_ACCA_D(2) <= \ACCA_D[2]~output_o\;

ww_ACCA_D(1) <= \ACCA_D[1]~output_o\;

ww_ACCA_D(0) <= \ACCA_D[0]~output_o\;

ww_ACCB_D(15) <= \ACCB_D[15]~output_o\;

ww_ACCB_D(14) <= \ACCB_D[14]~output_o\;

ww_ACCB_D(13) <= \ACCB_D[13]~output_o\;

ww_ACCB_D(12) <= \ACCB_D[12]~output_o\;

ww_ACCB_D(11) <= \ACCB_D[11]~output_o\;

ww_ACCB_D(10) <= \ACCB_D[10]~output_o\;

ww_ACCB_D(9) <= \ACCB_D[9]~output_o\;

ww_ACCB_D(8) <= \ACCB_D[8]~output_o\;

ww_ACCB_D(7) <= \ACCB_D[7]~output_o\;

ww_ACCB_D(6) <= \ACCB_D[6]~output_o\;

ww_ACCB_D(5) <= \ACCB_D[5]~output_o\;

ww_ACCB_D(4) <= \ACCB_D[4]~output_o\;

ww_ACCB_D(3) <= \ACCB_D[3]~output_o\;

ww_ACCB_D(2) <= \ACCB_D[2]~output_o\;

ww_ACCB_D(1) <= \ACCB_D[1]~output_o\;

ww_ACCB_D(0) <= \ACCB_D[0]~output_o\;

ww_AUX_D(15) <= \AUX_D[15]~output_o\;

ww_AUX_D(14) <= \AUX_D[14]~output_o\;

ww_AUX_D(13) <= \AUX_D[13]~output_o\;

ww_AUX_D(12) <= \AUX_D[12]~output_o\;

ww_AUX_D(11) <= \AUX_D[11]~output_o\;

ww_AUX_D(10) <= \AUX_D[10]~output_o\;

ww_AUX_D(9) <= \AUX_D[9]~output_o\;

ww_AUX_D(8) <= \AUX_D[8]~output_o\;

ww_AUX_D(7) <= \AUX_D[7]~output_o\;

ww_AUX_D(6) <= \AUX_D[6]~output_o\;

ww_AUX_D(5) <= \AUX_D[5]~output_o\;

ww_AUX_D(4) <= \AUX_D[4]~output_o\;

ww_AUX_D(3) <= \AUX_D[3]~output_o\;

ww_AUX_D(2) <= \AUX_D[2]~output_o\;

ww_AUX_D(1) <= \AUX_D[1]~output_o\;

ww_AUX_D(0) <= \AUX_D[0]~output_o\;

ww_IX_D(15) <= \IX_D[15]~output_o\;

ww_IX_D(14) <= \IX_D[14]~output_o\;

ww_IX_D(13) <= \IX_D[13]~output_o\;

ww_IX_D(12) <= \IX_D[12]~output_o\;

ww_IX_D(11) <= \IX_D[11]~output_o\;

ww_IX_D(10) <= \IX_D[10]~output_o\;

ww_IX_D(9) <= \IX_D[9]~output_o\;

ww_IX_D(8) <= \IX_D[8]~output_o\;

ww_IX_D(7) <= \IX_D[7]~output_o\;

ww_IX_D(6) <= \IX_D[6]~output_o\;

ww_IX_D(5) <= \IX_D[5]~output_o\;

ww_IX_D(4) <= \IX_D[4]~output_o\;

ww_IX_D(3) <= \IX_D[3]~output_o\;

ww_IX_D(2) <= \IX_D[2]~output_o\;

ww_IX_D(1) <= \IX_D[1]~output_o\;

ww_IX_D(0) <= \IX_D[0]~output_o\;

ww_IY_D(15) <= \IY_D[15]~output_o\;

ww_IY_D(14) <= \IY_D[14]~output_o\;

ww_IY_D(13) <= \IY_D[13]~output_o\;

ww_IY_D(12) <= \IY_D[12]~output_o\;

ww_IY_D(11) <= \IY_D[11]~output_o\;

ww_IY_D(10) <= \IY_D[10]~output_o\;

ww_IY_D(9) <= \IY_D[9]~output_o\;

ww_IY_D(8) <= \IY_D[8]~output_o\;

ww_IY_D(7) <= \IY_D[7]~output_o\;

ww_IY_D(6) <= \IY_D[6]~output_o\;

ww_IY_D(5) <= \IY_D[5]~output_o\;

ww_IY_D(4) <= \IY_D[4]~output_o\;

ww_IY_D(3) <= \IY_D[3]~output_o\;

ww_IY_D(2) <= \IY_D[2]~output_o\;

ww_IY_D(1) <= \IY_D[1]~output_o\;

ww_IY_D(0) <= \IY_D[0]~output_o\;

ww_PC_D(15) <= \PC_D[15]~output_o\;

ww_PC_D(14) <= \PC_D[14]~output_o\;

ww_PC_D(13) <= \PC_D[13]~output_o\;

ww_PC_D(12) <= \PC_D[12]~output_o\;

ww_PC_D(11) <= \PC_D[11]~output_o\;

ww_PC_D(10) <= \PC_D[10]~output_o\;

ww_PC_D(9) <= \PC_D[9]~output_o\;

ww_PC_D(8) <= \PC_D[8]~output_o\;

ww_PC_D(7) <= \PC_D[7]~output_o\;

ww_PC_D(6) <= \PC_D[6]~output_o\;

ww_PC_D(5) <= \PC_D[5]~output_o\;

ww_PC_D(4) <= \PC_D[4]~output_o\;

ww_PC_D(3) <= \PC_D[3]~output_o\;

ww_PC_D(2) <= \PC_D[2]~output_o\;

ww_PC_D(1) <= \PC_D[1]~output_o\;

ww_PC_D(0) <= \PC_D[0]~output_o\;

ww_SP_D(15) <= \SP_D[15]~output_o\;

ww_SP_D(14) <= \SP_D[14]~output_o\;

ww_SP_D(13) <= \SP_D[13]~output_o\;

ww_SP_D(12) <= \SP_D[12]~output_o\;

ww_SP_D(11) <= \SP_D[11]~output_o\;

ww_SP_D(10) <= \SP_D[10]~output_o\;

ww_SP_D(9) <= \SP_D[9]~output_o\;

ww_SP_D(8) <= \SP_D[8]~output_o\;

ww_SP_D(7) <= \SP_D[7]~output_o\;

ww_SP_D(6) <= \SP_D[6]~output_o\;

ww_SP_D(5) <= \SP_D[5]~output_o\;

ww_SP_D(4) <= \SP_D[4]~output_o\;

ww_SP_D(3) <= \SP_D[3]~output_o\;

ww_SP_D(2) <= \SP_D[2]~output_o\;

ww_SP_D(1) <= \SP_D[1]~output_o\;

ww_SP_D(0) <= \SP_D[0]~output_o\;
END structure;


