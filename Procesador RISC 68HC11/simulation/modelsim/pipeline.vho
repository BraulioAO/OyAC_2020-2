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

-- DATE "05/02/2020 02:56:58"

-- 
-- Device: Altera 10M50DAF484C7G Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_TMS~	=>  Location: PIN_H2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TCK~	=>  Location: PIN_G2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDI~	=>  Location: PIN_L4,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDO~	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_CONFIG_SEL~	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCONFIG~	=>  Location: PIN_H9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_nSTATUS~	=>  Location: PIN_G9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_CONF_DONE~	=>  Location: PIN_F8,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_TMS~~padout\ : std_logic;
SIGNAL \~ALTERA_TCK~~padout\ : std_logic;
SIGNAL \~ALTERA_TDI~~padout\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~padout\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~padout\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~padout\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~padout\ : std_logic;
SIGNAL \~ALTERA_TMS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TCK~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TDI~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


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

-- Design Ports Information
-- n	=>  Location: PIN_M22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- z	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- v	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c	=>  Location: PIN_D18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- h	=>  Location: PIN_P14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- branch	=>  Location: PIN_G20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCA_D[15]	=>  Location: PIN_C20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCA_D[14]	=>  Location: PIN_K21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCA_D[13]	=>  Location: PIN_J21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCA_D[12]	=>  Location: PIN_N18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCA_D[11]	=>  Location: PIN_K22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCA_D[10]	=>  Location: PIN_N19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCA_D[9]	=>  Location: PIN_N22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCA_D[8]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCA_D[7]	=>  Location: PIN_D22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCA_D[6]	=>  Location: PIN_C22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCA_D[5]	=>  Location: PIN_K18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCA_D[4]	=>  Location: PIN_F17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCA_D[3]	=>  Location: PIN_K20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCA_D[2]	=>  Location: PIN_F20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCA_D[1]	=>  Location: PIN_L15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCA_D[0]	=>  Location: PIN_L14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCB_D[15]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCB_D[14]	=>  Location: PIN_H20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCB_D[13]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCB_D[12]	=>  Location: PIN_P15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCB_D[11]	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCB_D[10]	=>  Location: PIN_M20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCB_D[9]	=>  Location: PIN_N20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCB_D[8]	=>  Location: PIN_J18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCB_D[7]	=>  Location: PIN_B22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCB_D[6]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCB_D[5]	=>  Location: PIN_P21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCB_D[4]	=>  Location: PIN_K19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCB_D[3]	=>  Location: PIN_P19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCB_D[2]	=>  Location: PIN_B21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCB_D[1]	=>  Location: PIN_C21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCB_D[0]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AUX_D[15]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AUX_D[14]	=>  Location: PIN_E20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AUX_D[13]	=>  Location: PIN_K14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AUX_D[12]	=>  Location: PIN_L19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AUX_D[11]	=>  Location: PIN_M18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AUX_D[10]	=>  Location: PIN_A21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AUX_D[9]	=>  Location: PIN_H17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AUX_D[8]	=>  Location: PIN_H18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AUX_D[7]	=>  Location: PIN_K15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AUX_D[6]	=>  Location: PIN_L18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AUX_D[5]	=>  Location: PIN_B20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AUX_D[4]	=>  Location: PIN_L20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AUX_D[3]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AUX_D[2]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AUX_D[1]	=>  Location: PIN_J20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AUX_D[0]	=>  Location: PIN_J14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IX_D[15]	=>  Location: PIN_AA2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IX_D[14]	=>  Location: PIN_V12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IX_D[13]	=>  Location: PIN_P11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IX_D[12]	=>  Location: PIN_R4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IX_D[11]	=>  Location: PIN_AB3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IX_D[10]	=>  Location: PIN_E9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IX_D[9]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IX_D[8]	=>  Location: PIN_W20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IX_D[7]	=>  Location: PIN_B1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IX_D[6]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IX_D[5]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IX_D[4]	=>  Location: PIN_E6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IX_D[3]	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IX_D[2]	=>  Location: PIN_M4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IX_D[1]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IX_D[0]	=>  Location: PIN_Y13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IY_D[15]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IY_D[14]	=>  Location: PIN_A20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IY_D[13]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IY_D[12]	=>  Location: PIN_V11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IY_D[11]	=>  Location: PIN_W6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IY_D[10]	=>  Location: PIN_M3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IY_D[9]	=>  Location: PIN_T2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IY_D[8]	=>  Location: PIN_J10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IY_D[7]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IY_D[6]	=>  Location: PIN_P12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IY_D[5]	=>  Location: PIN_W15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IY_D[4]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IY_D[3]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IY_D[2]	=>  Location: PIN_Y8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IY_D[1]	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IY_D[0]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_D[15]	=>  Location: PIN_N15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_D[14]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_D[13]	=>  Location: PIN_M15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_D[12]	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_D[11]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_D[10]	=>  Location: PIN_N14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_D[9]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_D[8]	=>  Location: PIN_M14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_D[7]	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_D[6]	=>  Location: PIN_H21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_D[5]	=>  Location: PIN_P18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_D[4]	=>  Location: PIN_D21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_D[3]	=>  Location: PIN_R18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_D[2]	=>  Location: PIN_G22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_D[1]	=>  Location: PIN_P20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_D[0]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SP_D[15]	=>  Location: PIN_Y6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SP_D[14]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SP_D[13]	=>  Location: PIN_W12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SP_D[12]	=>  Location: PIN_W19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SP_D[11]	=>  Location: PIN_J12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SP_D[10]	=>  Location: PIN_AB11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SP_D[9]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SP_D[8]	=>  Location: PIN_U18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SP_D[7]	=>  Location: PIN_G4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SP_D[6]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SP_D[5]	=>  Location: PIN_E13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SP_D[4]	=>  Location: PIN_B2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SP_D[3]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SP_D[2]	=>  Location: PIN_AB5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SP_D[1]	=>  Location: PIN_W13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SP_D[0]	=>  Location: PIN_B5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RELOJ	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RESET	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \RESET~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \RELOJ~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
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
SIGNAL \RELOJ~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst34|valor_interno[1]~15_combout\ : std_logic;
SIGNAL \inst1|mem~17_combout\ : std_logic;
SIGNAL \inst1|mem~21_combout\ : std_logic;
SIGNAL \RESET~input_o\ : std_logic;
SIGNAL \RESET~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst1|mem~8_combout\ : std_logic;
SIGNAL \inst1|mem~13_combout\ : std_logic;
SIGNAL \inst1|mem~14_combout\ : std_logic;
SIGNAL \inst1|mem~20_combout\ : std_logic;
SIGNAL \inst1|mem~15_combout\ : std_logic;
SIGNAL \inst1|mem~10_combout\ : std_logic;
SIGNAL \inst1|mem~9_combout\ : std_logic;
SIGNAL \inst206|Equal1~0_combout\ : std_logic;
SIGNAL \inst206|Equal1~1_combout\ : std_logic;
SIGNAL \inst202|Mux29~0_combout\ : std_logic;
SIGNAL \inst206|Equal2~0_combout\ : std_logic;
SIGNAL \inst206|WideNor0~3_combout\ : std_logic;
SIGNAL \inst206|Equal3~0_combout\ : std_logic;
SIGNAL \inst107|selregw[2]~feeder_combout\ : std_logic;
SIGNAL \inst206|Equal2~1_combout\ : std_logic;
SIGNAL \inst107|selregw[0]~feeder_combout\ : std_logic;
SIGNAL \inst700666|inst1000|Equal1~1_combout\ : std_logic;
SIGNAL \inst202|Mux30~0_combout\ : std_logic;
SIGNAL \inst206|selsrc~0_combout\ : std_logic;
SIGNAL \inst700666|ACCA|valor_interno[1]~feeder_combout\ : std_logic;
SIGNAL \inst700666|inst1000|Equal1~0_combout\ : std_logic;
SIGNAL \inst202|Mux14~0_combout\ : std_logic;
SIGNAL \inst24|valor_interno[1]~14_combout\ : std_logic;
SIGNAL \SENIALES_CONTROL|selop[0]~feeder_combout\ : std_logic;
SIGNAL \inst33|opres~25_combout\ : std_logic;
SIGNAL \inst33|opres~34_combout\ : std_logic;
SIGNAL \inst33|opres~32_combout\ : std_logic;
SIGNAL \inst202|Mux31~0_combout\ : std_logic;
SIGNAL \inst700666|ACCB|valor_interno[15]~feeder_combout\ : std_logic;
SIGNAL \inst700666|inst|D2[15]~0_combout\ : std_logic;
SIGNAL \OP2|valor_interno[15]~feeder_combout\ : std_logic;
SIGNAL \inst24|valor_interno[15]~0_combout\ : std_logic;
SIGNAL \SENIALES_CONTROL|selresult[1]~feeder_combout\ : std_logic;
SIGNAL \inst24|valor_interno[2]~16_combout\ : std_logic;
SIGNAL \inst700666|ACCA|valor_interno[15]~feeder_combout\ : std_logic;
SIGNAL \inst202|Mux0~0_combout\ : std_logic;
SIGNAL \OP1|valor_interno[15]~feeder_combout\ : std_logic;
SIGNAL \inst700666|ACCB|valor_interno[14]~feeder_combout\ : std_logic;
SIGNAL \inst700666|inst|D2[14]~1_combout\ : std_logic;
SIGNAL \inst24|valor_interno[14]~1_combout\ : std_logic;
SIGNAL \inst700666|inst|D2[13]~2_combout\ : std_logic;
SIGNAL \inst24|valor_interno[13]~2_combout\ : std_logic;
SIGNAL \inst700666|ACCA|valor_interno[12]~feeder_combout\ : std_logic;
SIGNAL \inst202|Mux3~0_combout\ : std_logic;
SIGNAL \inst24|valor_interno[12]~3_combout\ : std_logic;
SIGNAL \inst700666|ACCB|valor_interno[11]~feeder_combout\ : std_logic;
SIGNAL \inst700666|inst|D2[11]~4_combout\ : std_logic;
SIGNAL \inst24|valor_interno[11]~4_combout\ : std_logic;
SIGNAL \inst700666|ACCA|valor_interno[10]~feeder_combout\ : std_logic;
SIGNAL \inst202|Mux5~0_combout\ : std_logic;
SIGNAL \inst24|valor_interno[10]~5_combout\ : std_logic;
SIGNAL \inst700666|inst|D2[9]~6_combout\ : std_logic;
SIGNAL \inst24|valor_interno[9]~6_combout\ : std_logic;
SIGNAL \inst33|opres~40_combout\ : std_logic;
SIGNAL \inst33|opres~38_combout\ : std_logic;
SIGNAL \inst700666|ACCB|valor_interno[8]~feeder_combout\ : std_logic;
SIGNAL \inst700666|inst|D2[8]~7_combout\ : std_logic;
SIGNAL \inst24|valor_interno[8]~7_combout\ : std_logic;
SIGNAL \inst700666|ACCB|valor_interno[7]~feeder_combout\ : std_logic;
SIGNAL \inst700666|inst|D2[7]~8_combout\ : std_logic;
SIGNAL \inst24|valor_interno[7]~8_combout\ : std_logic;
SIGNAL \inst33|opres~46_combout\ : std_logic;
SIGNAL \inst33|opres~44_combout\ : std_logic;
SIGNAL \inst700666|ACCB|valor_interno[6]~feeder_combout\ : std_logic;
SIGNAL \inst700666|inst|D2[6]~9_combout\ : std_logic;
SIGNAL \inst24|valor_interno[6]~9_combout\ : std_logic;
SIGNAL \inst700666|ACCB|valor_interno[5]~feeder_combout\ : std_logic;
SIGNAL \inst700666|inst|D2[5]~10_combout\ : std_logic;
SIGNAL \inst24|valor_interno[5]~10_combout\ : std_logic;
SIGNAL \inst33|opres~52_combout\ : std_logic;
SIGNAL \inst33|opres~50_combout\ : std_logic;
SIGNAL \inst700666|ACCA|valor_interno[4]~feeder_combout\ : std_logic;
SIGNAL \inst202|Mux11~0_combout\ : std_logic;
SIGNAL \inst24|valor_interno[4]~11_combout\ : std_logic;
SIGNAL \inst33|opres~54_combout\ : std_logic;
SIGNAL \inst700666|ACCA|valor_interno[3]~feeder_combout\ : std_logic;
SIGNAL \inst202|Mux12~0_combout\ : std_logic;
SIGNAL \inst24|valor_interno[3]~12_combout\ : std_logic;
SIGNAL \inst33|opres~28_combout\ : std_logic;
SIGNAL \inst33|opres~26_combout\ : std_logic;
SIGNAL \inst1|mem~16_combout\ : std_logic;
SIGNAL \inst700666|ACCA|valor_interno[2]~feeder_combout\ : std_logic;
SIGNAL \inst202|Mux13~0_combout\ : std_logic;
SIGNAL \inst24|valor_interno[2]~13_combout\ : std_logic;
SIGNAL \inst33|opres~30_combout\ : std_logic;
SIGNAL \inst33|Add0~5\ : std_logic;
SIGNAL \inst33|Add0~6_combout\ : std_logic;
SIGNAL \inst33|opres~31_combout\ : std_logic;
SIGNAL \inst202|Mux29~1_combout\ : std_logic;
SIGNAL \inst33|Add0~7\ : std_logic;
SIGNAL \inst33|Add0~8_combout\ : std_logic;
SIGNAL \inst33|opres~27_combout\ : std_logic;
SIGNAL \inst33|opres~29_combout\ : std_logic;
SIGNAL \inst700666|inst|D2[3]~12_combout\ : std_logic;
SIGNAL \inst33|Add0~9\ : std_logic;
SIGNAL \inst33|Add0~10_combout\ : std_logic;
SIGNAL \inst33|opres~55_combout\ : std_logic;
SIGNAL \inst700666|inst|D2[4]~11_combout\ : std_logic;
SIGNAL \inst33|Add0~11\ : std_logic;
SIGNAL \inst33|Add0~12_combout\ : std_logic;
SIGNAL \inst33|opres~51_combout\ : std_logic;
SIGNAL \inst33|opres~53_combout\ : std_logic;
SIGNAL \inst700666|ACCA|valor_interno[5]~feeder_combout\ : std_logic;
SIGNAL \inst202|Mux10~0_combout\ : std_logic;
SIGNAL \inst33|Add0~13\ : std_logic;
SIGNAL \inst33|Add0~14_combout\ : std_logic;
SIGNAL \inst33|opres~48_combout\ : std_logic;
SIGNAL \inst33|opres~49_combout\ : std_logic;
SIGNAL \inst700666|ACCA|valor_interno[6]~feeder_combout\ : std_logic;
SIGNAL \inst202|Mux9~0_combout\ : std_logic;
SIGNAL \inst33|Add0~15\ : std_logic;
SIGNAL \inst33|Add0~16_combout\ : std_logic;
SIGNAL \inst33|opres~45_combout\ : std_logic;
SIGNAL \inst33|opres~47_combout\ : std_logic;
SIGNAL \inst700666|ACCA|valor_interno[7]~feeder_combout\ : std_logic;
SIGNAL \inst202|Mux8~0_combout\ : std_logic;
SIGNAL \inst33|Add0~17\ : std_logic;
SIGNAL \inst33|Add0~18_combout\ : std_logic;
SIGNAL \inst33|opres~42_combout\ : std_logic;
SIGNAL \inst33|opres~43_combout\ : std_logic;
SIGNAL \inst700666|ACCA|valor_interno[8]~feeder_combout\ : std_logic;
SIGNAL \inst202|Mux7~0_combout\ : std_logic;
SIGNAL \inst33|Add0~19\ : std_logic;
SIGNAL \inst33|Add0~20_combout\ : std_logic;
SIGNAL \inst33|opres~39_combout\ : std_logic;
SIGNAL \inst33|opres~41_combout\ : std_logic;
SIGNAL \inst700666|ACCA|valor_interno[9]~feeder_combout\ : std_logic;
SIGNAL \inst202|Mux6~0_combout\ : std_logic;
SIGNAL \inst33|Add0~21\ : std_logic;
SIGNAL \inst33|Add0~22_combout\ : std_logic;
SIGNAL \inst33|opres~57_combout\ : std_logic;
SIGNAL \inst33|opres~58_combout\ : std_logic;
SIGNAL \inst700666|inst|D2[10]~5_combout\ : std_logic;
SIGNAL \inst33|Add0~23\ : std_logic;
SIGNAL \inst33|Add0~24_combout\ : std_logic;
SIGNAL \inst33|opres~59_combout\ : std_logic;
SIGNAL \inst33|opres~60_combout\ : std_logic;
SIGNAL \inst700666|ACCA|valor_interno[11]~feeder_combout\ : std_logic;
SIGNAL \inst202|Mux4~0_combout\ : std_logic;
SIGNAL \inst33|Add0~25\ : std_logic;
SIGNAL \inst33|Add0~26_combout\ : std_logic;
SIGNAL \inst33|opres~61_combout\ : std_logic;
SIGNAL \inst33|opres~62_combout\ : std_logic;
SIGNAL \inst700666|ACCB|valor_interno[12]~feeder_combout\ : std_logic;
SIGNAL \inst700666|inst|D2[12]~3_combout\ : std_logic;
SIGNAL \inst33|Add0~27\ : std_logic;
SIGNAL \inst33|Add0~28_combout\ : std_logic;
SIGNAL \inst33|opres~63_combout\ : std_logic;
SIGNAL \inst33|opres~64_combout\ : std_logic;
SIGNAL \inst700666|ACCA|valor_interno[13]~feeder_combout\ : std_logic;
SIGNAL \inst202|Mux2~0_combout\ : std_logic;
SIGNAL \inst33|Add0~29\ : std_logic;
SIGNAL \inst33|Add0~30_combout\ : std_logic;
SIGNAL \inst33|opres~65_combout\ : std_logic;
SIGNAL \inst33|opres~66_combout\ : std_logic;
SIGNAL \inst700666|ACCA|valor_interno[14]~feeder_combout\ : std_logic;
SIGNAL \inst202|Mux1~0_combout\ : std_logic;
SIGNAL \inst33|Add0~31\ : std_logic;
SIGNAL \inst33|Add0~33\ : std_logic;
SIGNAL \inst33|Add0~34_combout\ : std_logic;
SIGNAL \inst33|opres~56_combout\ : std_logic;
SIGNAL \inst3|ci~q\ : std_logic;
SIGNAL \inst206|WideNor0~2_combout\ : std_logic;
SIGNAL \SENIALES_CONTROL|selc~q\ : std_logic;
SIGNAL \inst33|Add0~1_cout\ : std_logic;
SIGNAL \inst33|Add0~3\ : std_logic;
SIGNAL \inst33|Add0~4_combout\ : std_logic;
SIGNAL \inst33|opres~33_combout\ : std_logic;
SIGNAL \inst33|opres~35_combout\ : std_logic;
SIGNAL \inst4|valor_interno~feeder_combout\ : std_logic;
SIGNAL \inst4|valor_interno~q\ : std_logic;
SIGNAL \inst1|mem~11_combout\ : std_logic;
SIGNAL \inst1|mem~18_combout\ : std_logic;
SIGNAL \inst206|Equal0~0_combout\ : std_logic;
SIGNAL \inst206|Equal0~1_combout\ : std_logic;
SIGNAL \inst700666|ACCA|valor_interno[0]~feeder_combout\ : std_logic;
SIGNAL \inst202|Mux15~0_combout\ : std_logic;
SIGNAL \inst24|valor_interno[0]~15_combout\ : std_logic;
SIGNAL \inst33|opres~36_combout\ : std_logic;
SIGNAL \inst33|Add0~2_combout\ : std_logic;
SIGNAL \inst33|opres~37_combout\ : std_logic;
SIGNAL \inst34|valor_interno[0]~feeder_combout\ : std_logic;
SIGNAL \inst34|valor_interno[0]~_wirecell_combout\ : std_logic;
SIGNAL \inst34|valor_interno[1]~16\ : std_logic;
SIGNAL \inst34|valor_interno[2]~17_combout\ : std_logic;
SIGNAL \inst34|valor_interno[2]~18\ : std_logic;
SIGNAL \inst34|valor_interno[3]~19_combout\ : std_logic;
SIGNAL \inst34|valor_interno[3]~20\ : std_logic;
SIGNAL \inst34|valor_interno[4]~21_combout\ : std_logic;
SIGNAL \inst34|valor_interno[4]~22\ : std_logic;
SIGNAL \inst34|valor_interno[5]~23_combout\ : std_logic;
SIGNAL \inst1|mem~12_combout\ : std_logic;
SIGNAL \inst1|mem~19_combout\ : std_logic;
SIGNAL \inst206|selfalgs[0]~0_combout\ : std_logic;
SIGNAL \inst33|Add0~32_combout\ : std_logic;
SIGNAL \inst33|opres~67_combout\ : std_logic;
SIGNAL \inst33|opres~68_combout\ : std_logic;
SIGNAL \inst33|opres~24_combout\ : std_logic;
SIGNAL \inst3|ni~q\ : std_logic;
SIGNAL \inst33|WideOr0~1_combout\ : std_logic;
SIGNAL \inst33|WideOr0~0_combout\ : std_logic;
SIGNAL \inst33|WideOr0~2_combout\ : std_logic;
SIGNAL \inst33|WideOr0~3_combout\ : std_logic;
SIGNAL \inst33|WideOr0~4_combout\ : std_logic;
SIGNAL \inst3|zi~q\ : std_logic;
SIGNAL \inst|vi~0_combout\ : std_logic;
SIGNAL \inst3|vi~feeder_combout\ : std_logic;
SIGNAL \inst3|vi~q\ : std_logic;
SIGNAL \inst3|hi~0_combout\ : std_logic;
SIGNAL \inst3|hi~q\ : std_logic;
SIGNAL \inst700666|AUX|valor_interno[15]~feeder_combout\ : std_logic;
SIGNAL \inst700666|inst1000|Equal1~2_combout\ : std_logic;
SIGNAL \inst700666|AUX|valor_interno[14]~feeder_combout\ : std_logic;
SIGNAL \inst700666|AUX|valor_interno[13]~feeder_combout\ : std_logic;
SIGNAL \inst700666|AUX|valor_interno[12]~feeder_combout\ : std_logic;
SIGNAL \inst700666|AUX|valor_interno[11]~feeder_combout\ : std_logic;
SIGNAL \inst700666|AUX|valor_interno[10]~feeder_combout\ : std_logic;
SIGNAL \inst700666|AUX|valor_interno[9]~feeder_combout\ : std_logic;
SIGNAL \inst700666|AUX|valor_interno[8]~feeder_combout\ : std_logic;
SIGNAL \inst700666|AUX|valor_interno[7]~feeder_combout\ : std_logic;
SIGNAL \inst700666|AUX|valor_interno[6]~feeder_combout\ : std_logic;
SIGNAL \inst700666|AUX|valor_interno[5]~feeder_combout\ : std_logic;
SIGNAL \inst700666|AUX|valor_interno[4]~feeder_combout\ : std_logic;
SIGNAL \inst700666|AUX|valor_interno[3]~feeder_combout\ : std_logic;
SIGNAL \inst700666|AUX|valor_interno[2]~feeder_combout\ : std_logic;
SIGNAL \inst700666|AUX|valor_interno[1]~feeder_combout\ : std_logic;
SIGNAL \inst700666|AUX|valor_interno[0]~feeder_combout\ : std_logic;
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
SIGNAL \SENIALES_CONTROL|selfalgs\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst24|valor_interno\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst700666|ACCB|valor_interno\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst206|selregw\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst700666|ACCA|valor_interno\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst700666|AUX|valor_interno\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \SENIALES_CONTROL|selop\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \SENIALES_CONTROL|selresult\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \OP1|valor_interno\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst107|selregw\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \OP2|valor_interno\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst8|valor_interno\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \SENIALES_CONTROL|selregw\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \ALT_INV_RELOJ~inputclkctrl_outclk\ : std_logic;
SIGNAL \SENIALES_CONTROL|ALT_INV_selresult\ : std_logic_vector(1 DOWNTO 1);
SIGNAL \inst4|ALT_INV_valor_interno~q\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

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

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\RESET~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \RESET~input_o\);

\RELOJ~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \RELOJ~input_o\);
\ALT_INV_RELOJ~inputclkctrl_outclk\ <= NOT \RELOJ~inputclkctrl_outclk\;
\SENIALES_CONTROL|ALT_INV_selresult\(1) <= NOT \SENIALES_CONTROL|selresult\(1);
\inst4|ALT_INV_valor_interno~q\ <= NOT \inst4|valor_interno~q\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X44_Y42_N12
\~QUARTUS_CREATED_GND~I\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \~QUARTUS_CREATED_GND~I_combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~QUARTUS_CREATED_GND~I_combout\);

-- Location: IOOBUF_X78_Y25_N2
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

-- Location: IOOBUF_X78_Y25_N16
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

-- Location: IOOBUF_X78_Y25_N9
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

-- Location: IOOBUF_X78_Y49_N9
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

-- Location: IOOBUF_X78_Y23_N16
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

-- Location: IOOBUF_X74_Y54_N16
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

-- Location: IOOBUF_X78_Y31_N23
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

-- Location: IOOBUF_X78_Y41_N9
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

-- Location: IOOBUF_X78_Y30_N16
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

-- Location: IOOBUF_X78_Y30_N2
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

-- Location: IOOBUF_X78_Y34_N24
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

-- Location: IOOBUF_X78_Y30_N23
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

-- Location: IOOBUF_X78_Y34_N16
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

-- Location: IOOBUF_X78_Y23_N2
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

-- Location: IOOBUF_X78_Y31_N2
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

-- Location: IOOBUF_X78_Y35_N9
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

-- Location: IOOBUF_X78_Y35_N2
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

-- Location: IOOBUF_X78_Y42_N23
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

-- Location: IOOBUF_X78_Y43_N23
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

-- Location: IOOBUF_X78_Y42_N2
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

-- Location: IOOBUF_X78_Y35_N16
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

-- Location: IOOBUF_X78_Y36_N16
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

-- Location: IOOBUF_X78_Y36_N24
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

-- Location: IOOBUF_X78_Y44_N16
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

-- Location: IOOBUF_X78_Y45_N2
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

-- Location: IOOBUF_X78_Y45_N23
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

-- Location: IOOBUF_X78_Y23_N23
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

-- Location: IOOBUF_X78_Y41_N2
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

-- Location: IOOBUF_X78_Y34_N9
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

-- Location: IOOBUF_X78_Y34_N2
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

-- Location: IOOBUF_X78_Y42_N16
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

-- Location: IOOBUF_X78_Y43_N9
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

-- Location: IOOBUF_X78_Y43_N16
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

-- Location: IOOBUF_X78_Y23_N9
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

-- Location: IOOBUF_X78_Y42_N9
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

-- Location: IOOBUF_X78_Y24_N9
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

-- Location: IOOBUF_X78_Y43_N2
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

-- Location: IOOBUF_X78_Y36_N2
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

-- Location: IOOBUF_X78_Y35_N23
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

-- Location: IOOBUF_X78_Y40_N9
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

-- Location: IOOBUF_X78_Y40_N2
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

-- Location: IOOBUF_X78_Y41_N24
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

-- Location: IOOBUF_X78_Y37_N9
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

-- Location: IOOBUF_X78_Y37_N23
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

-- Location: IOOBUF_X78_Y44_N2
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

-- Location: IOOBUF_X78_Y49_N23
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

-- Location: IOOBUF_X78_Y45_N16
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

-- Location: IOOBUF_X78_Y41_N16
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

-- Location: IOOBUF_X78_Y37_N16
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

-- Location: IOOBUF_X78_Y44_N9
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

-- Location: IOOBUF_X78_Y37_N2
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

-- Location: IOOBUF_X78_Y40_N23
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

-- Location: IOOBUF_X78_Y40_N16
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

-- Location: IOOBUF_X78_Y45_N9
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

-- Location: IOOBUF_X78_Y44_N24
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

-- Location: IOOBUF_X18_Y0_N23
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

-- Location: IOOBUF_X38_Y0_N23
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

-- Location: IOOBUF_X34_Y0_N30
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

-- Location: IOOBUF_X0_Y15_N16
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

-- Location: IOOBUF_X22_Y0_N9
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

-- Location: IOOBUF_X29_Y39_N2
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

-- Location: IOOBUF_X38_Y0_N16
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

-- Location: IOOBUF_X78_Y16_N16
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

-- Location: IOOBUF_X22_Y39_N23
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

-- Location: IOOBUF_X51_Y54_N2
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

-- Location: IOOBUF_X34_Y0_N2
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

-- Location: IOOBUF_X20_Y39_N2
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

-- Location: IOOBUF_X16_Y0_N16
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

-- Location: IOOBUF_X0_Y25_N16
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

-- Location: IOOBUF_X78_Y15_N2
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

-- Location: IOOBUF_X51_Y0_N9
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

-- Location: IOOBUF_X56_Y54_N30
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

-- Location: IOOBUF_X66_Y54_N2
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

-- Location: IOOBUF_X74_Y54_N9
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

-- Location: IOOBUF_X38_Y0_N30
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

-- Location: IOOBUF_X16_Y0_N30
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

-- Location: IOOBUF_X0_Y25_N23
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

-- Location: IOOBUF_X0_Y15_N9
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

-- Location: IOOBUF_X34_Y39_N9
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

-- Location: IOOBUF_X46_Y54_N23
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

-- Location: IOOBUF_X40_Y0_N30
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

-- Location: IOOBUF_X54_Y0_N9
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

-- Location: IOOBUF_X54_Y54_N30
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

-- Location: IOOBUF_X60_Y54_N30
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

-- Location: IOOBUF_X20_Y0_N2
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

-- Location: IOOBUF_X26_Y0_N16
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

-- Location: IOOBUF_X49_Y54_N30
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

-- Location: IOOBUF_X78_Y29_N16
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

-- Location: IOOBUF_X78_Y25_N23
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

-- Location: IOOBUF_X78_Y33_N23
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

-- Location: IOOBUF_X78_Y33_N9
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

-- Location: IOOBUF_X78_Y33_N2
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

-- Location: IOOBUF_X78_Y29_N23
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

-- Location: IOOBUF_X78_Y30_N9
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

-- Location: IOOBUF_X78_Y33_N16
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

-- Location: IOOBUF_X78_Y29_N9
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

-- Location: IOOBUF_X78_Y29_N2
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

-- Location: IOOBUF_X78_Y24_N16
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

-- Location: IOOBUF_X78_Y36_N9
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

-- Location: IOOBUF_X78_Y24_N24
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

-- Location: IOOBUF_X78_Y31_N9
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

-- Location: IOOBUF_X78_Y24_N2
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

-- Location: IOOBUF_X78_Y31_N16
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

-- Location: IOOBUF_X20_Y0_N30
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

-- Location: IOOBUF_X78_Y15_N9
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

-- Location: IOOBUF_X46_Y0_N9
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

-- Location: IOOBUF_X78_Y16_N24
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

-- Location: IOOBUF_X54_Y54_N9
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

-- Location: IOOBUF_X38_Y0_N9
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

-- Location: IOOBUF_X49_Y54_N9
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

-- Location: IOOBUF_X78_Y3_N23
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

-- Location: IOOBUF_X0_Y36_N2
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

-- Location: IOOBUF_X46_Y54_N9
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

-- Location: IOOBUF_X56_Y54_N16
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

-- Location: IOOBUF_X22_Y39_N16
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

-- Location: IOOBUF_X51_Y0_N16
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

-- Location: IOOBUF_X29_Y0_N30
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

-- Location: IOOBUF_X46_Y0_N2
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

-- Location: IOOBUF_X26_Y39_N30
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

-- Location: IOIBUF_X0_Y18_N15
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

-- Location: CLKCTRL_G3
\RELOJ~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \RELOJ~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \RELOJ~inputclkctrl_outclk\);

-- Location: LCCOMB_X77_Y33_N0
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

-- Location: LCCOMB_X77_Y33_N30
\inst1|mem~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|mem~17_combout\ = (!\inst34|valor_interno\(1) & (!\inst34|valor_interno\(3) & (\inst34|valor_interno\(2) $ (\inst34|valor_interno\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst34|valor_interno\(1),
	datab => \inst34|valor_interno\(2),
	datac => \inst34|valor_interno\(3),
	datad => \inst34|valor_interno\(0),
	combout => \inst1|mem~17_combout\);

-- Location: LCCOMB_X76_Y33_N0
\inst1|mem~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|mem~21_combout\ = (!\inst34|valor_interno\(5) & (\inst1|mem~17_combout\ & !\inst34|valor_interno\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst34|valor_interno\(5),
	datac => \inst1|mem~17_combout\,
	datad => \inst34|valor_interno\(4),
	combout => \inst1|mem~21_combout\);

-- Location: IOIBUF_X0_Y18_N22
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

-- Location: CLKCTRL_G4
\RESET~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \RESET~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \RESET~inputclkctrl_outclk\);

-- Location: FF_X76_Y33_N1
\inst8|valor_interno[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst1|mem~21_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|valor_interno\(1));

-- Location: LCCOMB_X77_Y36_N6
\inst1|mem~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|mem~8_combout\ = (!\inst34|valor_interno\(4) & (!\inst34|valor_interno\(5) & !\inst34|valor_interno\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst34|valor_interno\(4),
	datac => \inst34|valor_interno\(5),
	datad => \inst34|valor_interno\(3),
	combout => \inst1|mem~8_combout\);

-- Location: LCCOMB_X77_Y36_N4
\inst1|mem~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|mem~13_combout\ = (\inst34|valor_interno\(2) & (!\inst34|valor_interno\(1) & (!\inst34|valor_interno\(0) & \inst1|mem~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst34|valor_interno\(2),
	datab => \inst34|valor_interno\(1),
	datac => \inst34|valor_interno\(0),
	datad => \inst1|mem~8_combout\,
	combout => \inst1|mem~13_combout\);

-- Location: FF_X77_Y36_N5
\inst8|valor_interno[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst1|mem~13_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|valor_interno\(21));

-- Location: LCCOMB_X77_Y36_N0
\inst1|mem~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|mem~14_combout\ = (\inst34|valor_interno\(3)) # ((\inst34|valor_interno\(1)) # ((\inst34|valor_interno\(0) & \inst34|valor_interno\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst34|valor_interno\(3),
	datab => \inst34|valor_interno\(1),
	datac => \inst34|valor_interno\(0),
	datad => \inst34|valor_interno\(2),
	combout => \inst1|mem~14_combout\);

-- Location: LCCOMB_X77_Y36_N22
\inst1|mem~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|mem~20_combout\ = (!\inst34|valor_interno\(5) & (!\inst34|valor_interno\(4) & !\inst1|mem~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst34|valor_interno\(5),
	datac => \inst34|valor_interno\(4),
	datad => \inst1|mem~14_combout\,
	combout => \inst1|mem~20_combout\);

-- Location: FF_X77_Y36_N23
\inst8|valor_interno[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst1|mem~20_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|valor_interno\(18));

-- Location: LCCOMB_X77_Y36_N20
\inst1|mem~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|mem~15_combout\ = (!\inst34|valor_interno\(2) & (\inst34|valor_interno\(1) & (\inst34|valor_interno\(0) & \inst1|mem~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst34|valor_interno\(2),
	datab => \inst34|valor_interno\(1),
	datac => \inst34|valor_interno\(0),
	datad => \inst1|mem~8_combout\,
	combout => \inst1|mem~15_combout\);

-- Location: FF_X77_Y36_N21
\inst8|valor_interno[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst1|mem~15_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|valor_interno\(16));

-- Location: LCCOMB_X77_Y36_N24
\inst1|mem~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|mem~10_combout\ = (!\inst34|valor_interno\(2) & (!\inst34|valor_interno\(1) & \inst1|mem~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst34|valor_interno\(2),
	datab => \inst34|valor_interno\(1),
	datad => \inst1|mem~8_combout\,
	combout => \inst1|mem~10_combout\);

-- Location: FF_X77_Y36_N25
\inst8|valor_interno[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst1|mem~10_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|valor_interno\(23));

-- Location: LCCOMB_X77_Y36_N18
\inst1|mem~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|mem~9_combout\ = (!\inst34|valor_interno\(0) & (!\inst34|valor_interno\(1) & \inst1|mem~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst34|valor_interno\(0),
	datac => \inst34|valor_interno\(1),
	datad => \inst1|mem~8_combout\,
	combout => \inst1|mem~9_combout\);

-- Location: FF_X77_Y36_N19
\inst8|valor_interno[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst1|mem~9_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|valor_interno\(22));

-- Location: LCCOMB_X77_Y36_N2
\inst206|Equal1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst206|Equal1~0_combout\ = (\inst8|valor_interno\(20) & (!\inst8|valor_interno\(23) & (\inst8|valor_interno\(17) & \inst8|valor_interno\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|valor_interno\(20),
	datab => \inst8|valor_interno\(23),
	datac => \inst8|valor_interno\(17),
	datad => \inst8|valor_interno\(22),
	combout => \inst206|Equal1~0_combout\);

-- Location: LCCOMB_X76_Y36_N28
\inst206|Equal1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst206|Equal1~1_combout\ = (\inst8|valor_interno\(21) & (\inst8|valor_interno\(18) & (!\inst8|valor_interno\(16) & \inst206|Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|valor_interno\(21),
	datab => \inst8|valor_interno\(18),
	datac => \inst8|valor_interno\(16),
	datad => \inst206|Equal1~0_combout\,
	combout => \inst206|Equal1~1_combout\);

-- Location: LCCOMB_X76_Y35_N22
\inst202|Mux29~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst202|Mux29~0_combout\ = (\inst206|Equal0~1_combout\ & (!\inst206|Equal1~1_combout\ & !\inst206|selfalgs[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst206|Equal0~1_combout\,
	datac => \inst206|Equal1~1_combout\,
	datad => \inst206|selfalgs[0]~0_combout\,
	combout => \inst202|Mux29~0_combout\);

-- Location: LCCOMB_X76_Y36_N30
\inst206|Equal2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst206|Equal2~0_combout\ = (!\inst8|valor_interno\(21) & (\inst8|valor_interno\(18) & (!\inst8|valor_interno\(16) & \inst8|valor_interno\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|valor_interno\(21),
	datab => \inst8|valor_interno\(18),
	datac => \inst8|valor_interno\(16),
	datad => \inst8|valor_interno\(23),
	combout => \inst206|Equal2~0_combout\);

-- Location: LCCOMB_X76_Y35_N26
\inst206|WideNor0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst206|WideNor0~3_combout\ = (!\inst206|Equal1~1_combout\ & (((\inst8|valor_interno\(20)) # (!\inst8|valor_interno\(17))) # (!\inst206|Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst206|Equal2~0_combout\,
	datab => \inst8|valor_interno\(17),
	datac => \inst206|Equal1~1_combout\,
	datad => \inst8|valor_interno\(20),
	combout => \inst206|WideNor0~3_combout\);

-- Location: LCCOMB_X76_Y35_N24
\inst206|Equal3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst206|Equal3~0_combout\ = (!\inst8|valor_interno\(20) & (\inst8|valor_interno\(17) & (\inst206|Equal2~0_combout\ & \inst8|valor_interno\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|valor_interno\(20),
	datab => \inst8|valor_interno\(17),
	datac => \inst206|Equal2~0_combout\,
	datad => \inst8|valor_interno\(22),
	combout => \inst206|Equal3~0_combout\);

-- Location: FF_X76_Y35_N25
\SENIALES_CONTROL|selregw[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst206|Equal3~0_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SENIALES_CONTROL|selregw\(2));

-- Location: LCCOMB_X77_Y35_N22
\inst107|selregw[2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst107|selregw[2]~feeder_combout\ = \SENIALES_CONTROL|selregw\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SENIALES_CONTROL|selregw\(2),
	combout => \inst107|selregw[2]~feeder_combout\);

-- Location: FF_X77_Y35_N23
\inst107|selregw[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst107|selregw[2]~feeder_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst107|selregw\(2));

-- Location: LCCOMB_X76_Y35_N0
\inst206|Equal2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst206|Equal2~1_combout\ = (\inst8|valor_interno\(17) & !\inst8|valor_interno\(20))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst8|valor_interno\(17),
	datad => \inst8|valor_interno\(20),
	combout => \inst206|Equal2~1_combout\);

-- Location: LCCOMB_X76_Y35_N2
\inst206|selregw[0]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst206|selregw\(0) = (\inst206|Equal0~1_combout\) # ((\inst206|Equal2~0_combout\ & (\inst206|Equal2~1_combout\ & !\inst8|valor_interno\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst206|Equal2~0_combout\,
	datab => \inst206|Equal2~1_combout\,
	datac => \inst206|Equal0~1_combout\,
	datad => \inst8|valor_interno\(22),
	combout => \inst206|selregw\(0));

-- Location: FF_X76_Y35_N3
\SENIALES_CONTROL|selregw[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst206|selregw\(0),
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SENIALES_CONTROL|selregw\(0));

-- Location: LCCOMB_X77_Y35_N0
\inst107|selregw[0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst107|selregw[0]~feeder_combout\ = \SENIALES_CONTROL|selregw\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SENIALES_CONTROL|selregw\(0),
	combout => \inst107|selregw[0]~feeder_combout\);

-- Location: FF_X77_Y35_N1
\inst107|selregw[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst107|selregw[0]~feeder_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst107|selregw\(0));

-- Location: LCCOMB_X77_Y35_N30
\inst700666|inst1000|Equal1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst700666|inst1000|Equal1~1_combout\ = (\inst107|selregw\(2) & !\inst107|selregw\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst107|selregw\(2),
	datad => \inst107|selregw\(0),
	combout => \inst700666|inst1000|Equal1~1_combout\);

-- Location: FF_X76_Y35_N21
\inst700666|ACCB|valor_interno[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputclkctrl_outclk\,
	asdata => \inst24|valor_interno\(1),
	clrn => \RESET~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst700666|inst1000|Equal1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|ACCB|valor_interno\(1));

-- Location: LCCOMB_X74_Y35_N14
\inst202|Mux30~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst202|Mux30~0_combout\ = (\inst8|valor_interno\(1) & (((\inst202|Mux29~0_combout\ & \inst700666|ACCB|valor_interno\(1))) # (!\inst206|WideNor0~3_combout\))) # (!\inst8|valor_interno\(1) & (\inst202|Mux29~0_combout\ & 
-- ((\inst700666|ACCB|valor_interno\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|valor_interno\(1),
	datab => \inst202|Mux29~0_combout\,
	datac => \inst206|WideNor0~3_combout\,
	datad => \inst700666|ACCB|valor_interno\(1),
	combout => \inst202|Mux30~0_combout\);

-- Location: FF_X74_Y35_N15
\OP2|valor_interno[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst202|Mux30~0_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OP2|valor_interno\(1));

-- Location: LCCOMB_X76_Y34_N16
\inst206|selsrc~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst206|selsrc~0_combout\ = (!\inst206|Equal1~1_combout\ & ((\inst206|selfalgs[0]~0_combout\) # (\inst206|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst206|Equal1~1_combout\,
	datac => \inst206|selfalgs[0]~0_combout\,
	datad => \inst206|Equal0~1_combout\,
	combout => \inst206|selsrc~0_combout\);

-- Location: FF_X76_Y34_N17
\SENIALES_CONTROL|selresult[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst206|selsrc~0_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SENIALES_CONTROL|selresult\(0));

-- Location: LCCOMB_X77_Y35_N28
\inst700666|ACCA|valor_interno[1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst700666|ACCA|valor_interno[1]~feeder_combout\ = \inst24|valor_interno\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst24|valor_interno\(1),
	combout => \inst700666|ACCA|valor_interno[1]~feeder_combout\);

-- Location: LCCOMB_X77_Y35_N8
\inst700666|inst1000|Equal1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst700666|inst1000|Equal1~0_combout\ = (!\inst107|selregw\(2) & \inst107|selregw\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst107|selregw\(2),
	datad => \inst107|selregw\(0),
	combout => \inst700666|inst1000|Equal1~0_combout\);

-- Location: FF_X77_Y35_N29
\inst700666|ACCA|valor_interno[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputclkctrl_outclk\,
	d => \inst700666|ACCA|valor_interno[1]~feeder_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \inst700666|inst1000|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|ACCA|valor_interno\(1));

-- Location: LCCOMB_X77_Y35_N18
\inst202|Mux14~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst202|Mux14~0_combout\ = (\inst206|Equal0~1_combout\ & (!\inst206|Equal1~1_combout\ & \inst700666|ACCA|valor_interno\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst206|Equal0~1_combout\,
	datac => \inst206|Equal1~1_combout\,
	datad => \inst700666|ACCA|valor_interno\(1),
	combout => \inst202|Mux14~0_combout\);

-- Location: FF_X75_Y35_N29
\OP1|valor_interno[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	asdata => \inst202|Mux14~0_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OP1|valor_interno\(1));

-- Location: LCCOMB_X74_Y35_N28
\inst24|valor_interno[1]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst24|valor_interno[1]~14_combout\ = (\SENIALES_CONTROL|selresult\(0) & ((\OP1|valor_interno\(1)))) # (!\SENIALES_CONTROL|selresult\(0) & (\OP2|valor_interno\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OP2|valor_interno\(1),
	datab => \SENIALES_CONTROL|selresult\(0),
	datad => \OP1|valor_interno\(1),
	combout => \inst24|valor_interno[1]~14_combout\);

-- Location: LCCOMB_X74_Y33_N0
\SENIALES_CONTROL|selop[0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SENIALES_CONTROL|selop[0]~feeder_combout\ = \inst206|Equal0~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst206|Equal0~1_combout\,
	combout => \SENIALES_CONTROL|selop[0]~feeder_combout\);

-- Location: FF_X74_Y33_N1
\SENIALES_CONTROL|selop[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \SENIALES_CONTROL|selop[0]~feeder_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SENIALES_CONTROL|selop\(0));

-- Location: LCCOMB_X74_Y33_N8
\inst33|opres~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|opres~25_combout\ = \SENIALES_CONTROL|selfalgs\(0) $ (!\SENIALES_CONTROL|selop\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SENIALES_CONTROL|selfalgs\(0),
	datad => \SENIALES_CONTROL|selop\(0),
	combout => \inst33|opres~25_combout\);

-- Location: LCCOMB_X74_Y35_N30
\inst33|opres~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|opres~34_combout\ = \OP2|valor_interno\(1) $ (\OP1|valor_interno\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \OP2|valor_interno\(1),
	datad => \OP1|valor_interno\(1),
	combout => \inst33|opres~34_combout\);

-- Location: LCCOMB_X74_Y35_N8
\inst33|opres~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|opres~32_combout\ = (\OP2|valor_interno\(1)) # (\OP1|valor_interno\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \OP2|valor_interno\(1),
	datad => \OP1|valor_interno\(1),
	combout => \inst33|opres~32_combout\);

-- Location: FF_X76_Y35_N11
\inst700666|ACCB|valor_interno[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputclkctrl_outclk\,
	asdata => \inst24|valor_interno\(0),
	clrn => \RESET~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst700666|inst1000|Equal1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|ACCB|valor_interno\(0));

-- Location: LCCOMB_X75_Y35_N4
\inst202|Mux31~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst202|Mux31~0_combout\ = (\inst700666|ACCB|valor_interno\(0) & ((\inst202|Mux29~0_combout\) # ((!\inst206|WideNor0~3_combout\ & \inst8|valor_interno\(21))))) # (!\inst700666|ACCB|valor_interno\(0) & (!\inst206|WideNor0~3_combout\ & 
-- (\inst8|valor_interno\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst700666|ACCB|valor_interno\(0),
	datab => \inst206|WideNor0~3_combout\,
	datac => \inst8|valor_interno\(21),
	datad => \inst202|Mux29~0_combout\,
	combout => \inst202|Mux31~0_combout\);

-- Location: FF_X75_Y35_N5
\OP2|valor_interno[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst202|Mux31~0_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OP2|valor_interno\(0));

-- Location: LCCOMB_X76_Y37_N28
\inst700666|ACCB|valor_interno[15]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst700666|ACCB|valor_interno[15]~feeder_combout\ = \inst24|valor_interno\(15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst24|valor_interno\(15),
	combout => \inst700666|ACCB|valor_interno[15]~feeder_combout\);

-- Location: FF_X76_Y37_N29
\inst700666|ACCB|valor_interno[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputclkctrl_outclk\,
	d => \inst700666|ACCB|valor_interno[15]~feeder_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \inst700666|inst1000|Equal1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|ACCB|valor_interno\(15));

-- Location: LCCOMB_X76_Y37_N24
\inst700666|inst|D2[15]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst700666|inst|D2[15]~0_combout\ = (\inst206|Equal0~1_combout\ & \inst700666|ACCB|valor_interno\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst206|Equal0~1_combout\,
	datad => \inst700666|ACCB|valor_interno\(15),
	combout => \inst700666|inst|D2[15]~0_combout\);

-- Location: LCCOMB_X74_Y34_N24
\OP2|valor_interno[15]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \OP2|valor_interno[15]~feeder_combout\ = \inst700666|inst|D2[15]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst700666|inst|D2[15]~0_combout\,
	combout => \OP2|valor_interno[15]~feeder_combout\);

-- Location: FF_X74_Y34_N25
\OP2|valor_interno[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \OP2|valor_interno[15]~feeder_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OP2|valor_interno\(15));

-- Location: LCCOMB_X75_Y33_N28
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

-- Location: LCCOMB_X74_Y34_N22
\SENIALES_CONTROL|selresult[1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SENIALES_CONTROL|selresult[1]~feeder_combout\ = \inst206|Equal1~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst206|Equal1~1_combout\,
	combout => \SENIALES_CONTROL|selresult[1]~feeder_combout\);

-- Location: FF_X74_Y34_N23
\SENIALES_CONTROL|selresult[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \SENIALES_CONTROL|selresult[1]~feeder_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SENIALES_CONTROL|selresult\(1));

-- Location: LCCOMB_X74_Y34_N26
\inst24|valor_interno[2]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst24|valor_interno[2]~16_combout\ = (!\SENIALES_CONTROL|selresult\(1) & !\SENIALES_CONTROL|selresult\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SENIALES_CONTROL|selresult\(1),
	datad => \SENIALES_CONTROL|selresult\(0),
	combout => \inst24|valor_interno[2]~16_combout\);

-- Location: FF_X75_Y33_N29
\inst24|valor_interno[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst24|valor_interno[15]~0_combout\,
	asdata => \inst33|opres~68_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	sclr => \inst24|valor_interno[2]~16_combout\,
	sload => \SENIALES_CONTROL|ALT_INV_selresult\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst24|valor_interno\(15));

-- Location: LCCOMB_X77_Y34_N16
\inst700666|ACCA|valor_interno[15]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst700666|ACCA|valor_interno[15]~feeder_combout\ = \inst24|valor_interno\(15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst24|valor_interno\(15),
	combout => \inst700666|ACCA|valor_interno[15]~feeder_combout\);

-- Location: FF_X77_Y34_N17
\inst700666|ACCA|valor_interno[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputclkctrl_outclk\,
	d => \inst700666|ACCA|valor_interno[15]~feeder_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \inst700666|inst1000|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|ACCA|valor_interno\(15));

-- Location: LCCOMB_X77_Y34_N26
\inst202|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst202|Mux0~0_combout\ = (!\inst206|Equal1~1_combout\ & (\inst206|Equal0~1_combout\ & \inst700666|ACCA|valor_interno\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst206|Equal1~1_combout\,
	datac => \inst206|Equal0~1_combout\,
	datad => \inst700666|ACCA|valor_interno\(15),
	combout => \inst202|Mux0~0_combout\);

-- Location: LCCOMB_X74_Y34_N2
\OP1|valor_interno[15]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \OP1|valor_interno[15]~feeder_combout\ = \inst202|Mux0~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst202|Mux0~0_combout\,
	combout => \OP1|valor_interno[15]~feeder_combout\);

-- Location: FF_X74_Y34_N3
\OP1|valor_interno[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \OP1|valor_interno[15]~feeder_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OP1|valor_interno\(15));

-- Location: LCCOMB_X76_Y37_N6
\inst700666|ACCB|valor_interno[14]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst700666|ACCB|valor_interno[14]~feeder_combout\ = \inst24|valor_interno\(14)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst24|valor_interno\(14),
	combout => \inst700666|ACCB|valor_interno[14]~feeder_combout\);

-- Location: FF_X76_Y37_N7
\inst700666|ACCB|valor_interno[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputclkctrl_outclk\,
	d => \inst700666|ACCB|valor_interno[14]~feeder_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \inst700666|inst1000|Equal1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|ACCB|valor_interno\(14));

-- Location: LCCOMB_X76_Y37_N8
\inst700666|inst|D2[14]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst700666|inst|D2[14]~1_combout\ = (\inst206|Equal0~1_combout\ & \inst700666|ACCB|valor_interno\(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst206|Equal0~1_combout\,
	datad => \inst700666|ACCB|valor_interno\(14),
	combout => \inst700666|inst|D2[14]~1_combout\);

-- Location: FF_X75_Y34_N3
\OP2|valor_interno[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	asdata => \inst700666|inst|D2[14]~1_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OP2|valor_interno\(14));

-- Location: LCCOMB_X75_Y33_N30
\inst24|valor_interno[14]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst24|valor_interno[14]~1_combout\ = (\SENIALES_CONTROL|selresult\(0) & ((\OP1|valor_interno\(14)))) # (!\SENIALES_CONTROL|selresult\(0) & (\OP2|valor_interno\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SENIALES_CONTROL|selresult\(0),
	datab => \OP2|valor_interno\(14),
	datad => \OP1|valor_interno\(14),
	combout => \inst24|valor_interno[14]~1_combout\);

-- Location: FF_X76_Y37_N9
\inst700666|ACCB|valor_interno[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputclkctrl_outclk\,
	asdata => \inst24|valor_interno\(13),
	clrn => \RESET~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst700666|inst1000|Equal1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|ACCB|valor_interno\(13));

-- Location: LCCOMB_X76_Y37_N26
\inst700666|inst|D2[13]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst700666|inst|D2[13]~2_combout\ = (\inst206|Equal0~1_combout\ & \inst700666|ACCB|valor_interno\(13))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst206|Equal0~1_combout\,
	datac => \inst700666|ACCB|valor_interno\(13),
	combout => \inst700666|inst|D2[13]~2_combout\);

-- Location: FF_X76_Y37_N27
\OP2|valor_interno[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst700666|inst|D2[13]~2_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OP2|valor_interno\(13));

-- Location: LCCOMB_X76_Y34_N4
\inst24|valor_interno[13]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst24|valor_interno[13]~2_combout\ = (\SENIALES_CONTROL|selresult\(0) & (\OP1|valor_interno\(13))) # (!\SENIALES_CONTROL|selresult\(0) & ((\OP2|valor_interno\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SENIALES_CONTROL|selresult\(0),
	datab => \OP1|valor_interno\(13),
	datad => \OP2|valor_interno\(13),
	combout => \inst24|valor_interno[13]~2_combout\);

-- Location: LCCOMB_X77_Y34_N2
\inst700666|ACCA|valor_interno[12]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst700666|ACCA|valor_interno[12]~feeder_combout\ = \inst24|valor_interno\(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst24|valor_interno\(12),
	combout => \inst700666|ACCA|valor_interno[12]~feeder_combout\);

-- Location: FF_X77_Y34_N3
\inst700666|ACCA|valor_interno[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputclkctrl_outclk\,
	d => \inst700666|ACCA|valor_interno[12]~feeder_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \inst700666|inst1000|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|ACCA|valor_interno\(12));

-- Location: LCCOMB_X76_Y34_N10
\inst202|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst202|Mux3~0_combout\ = (\inst206|Equal0~1_combout\ & (!\inst206|Equal1~1_combout\ & \inst700666|ACCA|valor_interno\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst206|Equal0~1_combout\,
	datac => \inst206|Equal1~1_combout\,
	datad => \inst700666|ACCA|valor_interno\(12),
	combout => \inst202|Mux3~0_combout\);

-- Location: FF_X75_Y34_N5
\OP1|valor_interno[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	asdata => \inst202|Mux3~0_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OP1|valor_interno\(12));

-- Location: LCCOMB_X75_Y33_N4
\inst24|valor_interno[12]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst24|valor_interno[12]~3_combout\ = (\SENIALES_CONTROL|selresult\(0) & ((\OP1|valor_interno\(12)))) # (!\SENIALES_CONTROL|selresult\(0) & (\OP2|valor_interno\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SENIALES_CONTROL|selresult\(0),
	datab => \OP2|valor_interno\(12),
	datad => \OP1|valor_interno\(12),
	combout => \inst24|valor_interno[12]~3_combout\);

-- Location: LCCOMB_X74_Y34_N20
\inst700666|ACCB|valor_interno[11]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst700666|ACCB|valor_interno[11]~feeder_combout\ = \inst24|valor_interno\(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst24|valor_interno\(11),
	combout => \inst700666|ACCB|valor_interno[11]~feeder_combout\);

-- Location: FF_X74_Y34_N21
\inst700666|ACCB|valor_interno[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputclkctrl_outclk\,
	d => \inst700666|ACCB|valor_interno[11]~feeder_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \inst700666|inst1000|Equal1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|ACCB|valor_interno\(11));

-- Location: LCCOMB_X74_Y34_N16
\inst700666|inst|D2[11]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst700666|inst|D2[11]~4_combout\ = (\inst206|Equal0~1_combout\ & \inst700666|ACCB|valor_interno\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst206|Equal0~1_combout\,
	datad => \inst700666|ACCB|valor_interno\(11),
	combout => \inst700666|inst|D2[11]~4_combout\);

-- Location: FF_X75_Y34_N11
\OP2|valor_interno[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	asdata => \inst700666|inst|D2[11]~4_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OP2|valor_interno\(11));

-- Location: LCCOMB_X75_Y33_N14
\inst24|valor_interno[11]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst24|valor_interno[11]~4_combout\ = (\SENIALES_CONTROL|selresult\(0) & (\OP1|valor_interno\(11))) # (!\SENIALES_CONTROL|selresult\(0) & ((\OP2|valor_interno\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SENIALES_CONTROL|selresult\(0),
	datab => \OP1|valor_interno\(11),
	datad => \OP2|valor_interno\(11),
	combout => \inst24|valor_interno[11]~4_combout\);

-- Location: LCCOMB_X77_Y34_N30
\inst700666|ACCA|valor_interno[10]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst700666|ACCA|valor_interno[10]~feeder_combout\ = \inst24|valor_interno\(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst24|valor_interno\(10),
	combout => \inst700666|ACCA|valor_interno[10]~feeder_combout\);

-- Location: FF_X77_Y34_N31
\inst700666|ACCA|valor_interno[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputclkctrl_outclk\,
	d => \inst700666|ACCA|valor_interno[10]~feeder_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \inst700666|inst1000|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|ACCA|valor_interno\(10));

-- Location: LCCOMB_X74_Y34_N28
\inst202|Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst202|Mux5~0_combout\ = (!\inst206|Equal1~1_combout\ & (\inst206|Equal0~1_combout\ & \inst700666|ACCA|valor_interno\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst206|Equal1~1_combout\,
	datac => \inst206|Equal0~1_combout\,
	datad => \inst700666|ACCA|valor_interno\(10),
	combout => \inst202|Mux5~0_combout\);

-- Location: FF_X74_Y34_N29
\OP1|valor_interno[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst202|Mux5~0_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OP1|valor_interno\(10));

-- Location: LCCOMB_X76_Y33_N16
\inst24|valor_interno[10]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst24|valor_interno[10]~5_combout\ = (\SENIALES_CONTROL|selresult\(0) & ((\OP1|valor_interno\(10)))) # (!\SENIALES_CONTROL|selresult\(0) & (\OP2|valor_interno\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OP2|valor_interno\(10),
	datab => \SENIALES_CONTROL|selresult\(0),
	datad => \OP1|valor_interno\(10),
	combout => \inst24|valor_interno[10]~5_combout\);

-- Location: FF_X77_Y34_N9
\inst700666|ACCB|valor_interno[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputclkctrl_outclk\,
	asdata => \inst24|valor_interno\(9),
	clrn => \RESET~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst700666|inst1000|Equal1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|ACCB|valor_interno\(9));

-- Location: LCCOMB_X76_Y34_N24
\inst700666|inst|D2[9]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst700666|inst|D2[9]~6_combout\ = (\inst206|Equal0~1_combout\ & \inst700666|ACCB|valor_interno\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst206|Equal0~1_combout\,
	datac => \inst700666|ACCB|valor_interno\(9),
	combout => \inst700666|inst|D2[9]~6_combout\);

-- Location: FF_X76_Y34_N25
\OP2|valor_interno[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst700666|inst|D2[9]~6_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OP2|valor_interno\(9));

-- Location: LCCOMB_X76_Y34_N18
\inst24|valor_interno[9]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst24|valor_interno[9]~6_combout\ = (\SENIALES_CONTROL|selresult\(0) & (\OP1|valor_interno\(9))) # (!\SENIALES_CONTROL|selresult\(0) & ((\OP2|valor_interno\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OP1|valor_interno\(9),
	datab => \SENIALES_CONTROL|selresult\(0),
	datad => \OP2|valor_interno\(9),
	combout => \inst24|valor_interno[9]~6_combout\);

-- Location: LCCOMB_X76_Y34_N30
\inst33|opres~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|opres~40_combout\ = \OP1|valor_interno\(9) $ (\OP2|valor_interno\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \OP1|valor_interno\(9),
	datad => \OP2|valor_interno\(9),
	combout => \inst33|opres~40_combout\);

-- Location: LCCOMB_X76_Y34_N20
\inst33|opres~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|opres~38_combout\ = (\OP1|valor_interno\(9)) # (\OP2|valor_interno\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \OP1|valor_interno\(9),
	datad => \OP2|valor_interno\(9),
	combout => \inst33|opres~38_combout\);

-- Location: LCCOMB_X76_Y34_N8
\inst700666|ACCB|valor_interno[8]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst700666|ACCB|valor_interno[8]~feeder_combout\ = \inst24|valor_interno\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst24|valor_interno\(8),
	combout => \inst700666|ACCB|valor_interno[8]~feeder_combout\);

-- Location: FF_X76_Y34_N9
\inst700666|ACCB|valor_interno[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputclkctrl_outclk\,
	d => \inst700666|ACCB|valor_interno[8]~feeder_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \inst700666|inst1000|Equal1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|ACCB|valor_interno\(8));

-- Location: LCCOMB_X76_Y34_N22
\inst700666|inst|D2[8]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst700666|inst|D2[8]~7_combout\ = (\inst700666|ACCB|valor_interno\(8) & \inst206|Equal0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst700666|ACCB|valor_interno\(8),
	datad => \inst206|Equal0~1_combout\,
	combout => \inst700666|inst|D2[8]~7_combout\);

-- Location: FF_X76_Y34_N23
\OP2|valor_interno[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst700666|inst|D2[8]~7_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OP2|valor_interno\(8));

-- Location: LCCOMB_X76_Y34_N28
\inst24|valor_interno[8]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst24|valor_interno[8]~7_combout\ = (\SENIALES_CONTROL|selresult\(0) & ((\OP1|valor_interno\(8)))) # (!\SENIALES_CONTROL|selresult\(0) & (\OP2|valor_interno\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OP2|valor_interno\(8),
	datab => \SENIALES_CONTROL|selresult\(0),
	datad => \OP1|valor_interno\(8),
	combout => \inst24|valor_interno[8]~7_combout\);

-- Location: LCCOMB_X76_Y35_N28
\inst700666|ACCB|valor_interno[7]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst700666|ACCB|valor_interno[7]~feeder_combout\ = \inst24|valor_interno\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst24|valor_interno\(7),
	combout => \inst700666|ACCB|valor_interno[7]~feeder_combout\);

-- Location: FF_X76_Y35_N29
\inst700666|ACCB|valor_interno[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputclkctrl_outclk\,
	d => \inst700666|ACCB|valor_interno[7]~feeder_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \inst700666|inst1000|Equal1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|ACCB|valor_interno\(7));

-- Location: LCCOMB_X76_Y35_N30
\inst700666|inst|D2[7]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst700666|inst|D2[7]~8_combout\ = (\inst206|Equal0~1_combout\ & \inst700666|ACCB|valor_interno\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst206|Equal0~1_combout\,
	datad => \inst700666|ACCB|valor_interno\(7),
	combout => \inst700666|inst|D2[7]~8_combout\);

-- Location: FF_X75_Y35_N21
\OP2|valor_interno[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	asdata => \inst700666|inst|D2[7]~8_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OP2|valor_interno\(7));

-- Location: LCCOMB_X76_Y33_N22
\inst24|valor_interno[7]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst24|valor_interno[7]~8_combout\ = (\SENIALES_CONTROL|selresult\(0) & ((\OP1|valor_interno\(7)))) # (!\SENIALES_CONTROL|selresult\(0) & (\OP2|valor_interno\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OP2|valor_interno\(7),
	datab => \SENIALES_CONTROL|selresult\(0),
	datad => \OP1|valor_interno\(7),
	combout => \inst24|valor_interno[7]~8_combout\);

-- Location: LCCOMB_X76_Y33_N12
\inst33|opres~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|opres~46_combout\ = \OP2|valor_interno\(7) $ (\OP1|valor_interno\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OP2|valor_interno\(7),
	datad => \OP1|valor_interno\(7),
	combout => \inst33|opres~46_combout\);

-- Location: LCCOMB_X76_Y33_N4
\inst33|opres~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|opres~44_combout\ = (\OP2|valor_interno\(7)) # (\OP1|valor_interno\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OP2|valor_interno\(7),
	datad => \OP1|valor_interno\(7),
	combout => \inst33|opres~44_combout\);

-- Location: LCCOMB_X76_Y35_N6
\inst700666|ACCB|valor_interno[6]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst700666|ACCB|valor_interno[6]~feeder_combout\ = \inst24|valor_interno\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst24|valor_interno\(6),
	combout => \inst700666|ACCB|valor_interno[6]~feeder_combout\);

-- Location: FF_X76_Y35_N7
\inst700666|ACCB|valor_interno[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputclkctrl_outclk\,
	d => \inst700666|ACCB|valor_interno[6]~feeder_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \inst700666|inst1000|Equal1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|ACCB|valor_interno\(6));

-- Location: LCCOMB_X76_Y35_N20
\inst700666|inst|D2[6]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst700666|inst|D2[6]~9_combout\ = (\inst206|Equal0~1_combout\ & \inst700666|ACCB|valor_interno\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst206|Equal0~1_combout\,
	datad => \inst700666|ACCB|valor_interno\(6),
	combout => \inst700666|inst|D2[6]~9_combout\);

-- Location: FF_X75_Y35_N19
\OP2|valor_interno[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	asdata => \inst700666|inst|D2[6]~9_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OP2|valor_interno\(6));

-- Location: LCCOMB_X76_Y33_N24
\inst24|valor_interno[6]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst24|valor_interno[6]~9_combout\ = (\SENIALES_CONTROL|selresult\(0) & (\OP1|valor_interno\(6))) # (!\SENIALES_CONTROL|selresult\(0) & ((\OP2|valor_interno\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OP1|valor_interno\(6),
	datab => \SENIALES_CONTROL|selresult\(0),
	datad => \OP2|valor_interno\(6),
	combout => \inst24|valor_interno[6]~9_combout\);

-- Location: LCCOMB_X76_Y35_N4
\inst700666|ACCB|valor_interno[5]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst700666|ACCB|valor_interno[5]~feeder_combout\ = \inst24|valor_interno\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst24|valor_interno\(5),
	combout => \inst700666|ACCB|valor_interno[5]~feeder_combout\);

-- Location: FF_X76_Y35_N5
\inst700666|ACCB|valor_interno[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputclkctrl_outclk\,
	d => \inst700666|ACCB|valor_interno[5]~feeder_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \inst700666|inst1000|Equal1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|ACCB|valor_interno\(5));

-- Location: LCCOMB_X76_Y35_N10
\inst700666|inst|D2[5]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst700666|inst|D2[5]~10_combout\ = (\inst206|Equal0~1_combout\ & \inst700666|ACCB|valor_interno\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst206|Equal0~1_combout\,
	datab => \inst700666|ACCB|valor_interno\(5),
	combout => \inst700666|inst|D2[5]~10_combout\);

-- Location: FF_X75_Y35_N27
\OP2|valor_interno[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	asdata => \inst700666|inst|D2[5]~10_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OP2|valor_interno\(5));

-- Location: LCCOMB_X74_Y35_N24
\inst24|valor_interno[5]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst24|valor_interno[5]~10_combout\ = (\SENIALES_CONTROL|selresult\(0) & (\OP1|valor_interno\(5))) # (!\SENIALES_CONTROL|selresult\(0) & ((\OP2|valor_interno\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OP1|valor_interno\(5),
	datab => \SENIALES_CONTROL|selresult\(0),
	datad => \OP2|valor_interno\(5),
	combout => \inst24|valor_interno[5]~10_combout\);

-- Location: LCCOMB_X75_Y35_N6
\inst33|opres~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|opres~52_combout\ = \OP1|valor_interno\(5) $ (\OP2|valor_interno\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OP1|valor_interno\(5),
	datad => \OP2|valor_interno\(5),
	combout => \inst33|opres~52_combout\);

-- Location: LCCOMB_X75_Y35_N8
\inst33|opres~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|opres~50_combout\ = (\OP1|valor_interno\(5)) # (\OP2|valor_interno\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OP1|valor_interno\(5),
	datad => \OP2|valor_interno\(5),
	combout => \inst33|opres~50_combout\);

-- Location: LCCOMB_X74_Y35_N26
\inst700666|ACCA|valor_interno[4]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst700666|ACCA|valor_interno[4]~feeder_combout\ = \inst24|valor_interno\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst24|valor_interno\(4),
	combout => \inst700666|ACCA|valor_interno[4]~feeder_combout\);

-- Location: FF_X74_Y35_N27
\inst700666|ACCA|valor_interno[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputclkctrl_outclk\,
	d => \inst700666|ACCA|valor_interno[4]~feeder_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \inst700666|inst1000|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|ACCA|valor_interno\(4));

-- Location: LCCOMB_X74_Y35_N6
\inst202|Mux11~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst202|Mux11~0_combout\ = (\inst700666|ACCA|valor_interno\(4) & (!\inst206|Equal1~1_combout\ & \inst206|Equal0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst700666|ACCA|valor_interno\(4),
	datac => \inst206|Equal1~1_combout\,
	datad => \inst206|Equal0~1_combout\,
	combout => \inst202|Mux11~0_combout\);

-- Location: FF_X75_Y35_N17
\OP1|valor_interno[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	asdata => \inst202|Mux11~0_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OP1|valor_interno\(4));

-- Location: LCCOMB_X74_Y35_N22
\inst24|valor_interno[4]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst24|valor_interno[4]~11_combout\ = (\SENIALES_CONTROL|selresult\(0) & (\OP1|valor_interno\(4))) # (!\SENIALES_CONTROL|selresult\(0) & ((\OP2|valor_interno\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OP1|valor_interno\(4),
	datab => \SENIALES_CONTROL|selresult\(0),
	datad => \OP2|valor_interno\(4),
	combout => \inst24|valor_interno[4]~11_combout\);

-- Location: LCCOMB_X74_Y33_N22
\inst33|opres~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|opres~54_combout\ = (\SENIALES_CONTROL|selfalgs\(0) & ((\OP2|valor_interno\(4) & ((!\OP1|valor_interno\(4)) # (!\SENIALES_CONTROL|selop\(0)))) # (!\OP2|valor_interno\(4) & ((\OP1|valor_interno\(4)))))) # (!\SENIALES_CONTROL|selfalgs\(0) & 
-- (((\SENIALES_CONTROL|selop\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OP2|valor_interno\(4),
	datab => \SENIALES_CONTROL|selop\(0),
	datac => \SENIALES_CONTROL|selfalgs\(0),
	datad => \OP1|valor_interno\(4),
	combout => \inst33|opres~54_combout\);

-- Location: LCCOMB_X77_Y35_N12
\inst700666|ACCA|valor_interno[3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst700666|ACCA|valor_interno[3]~feeder_combout\ = \inst24|valor_interno\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst24|valor_interno\(3),
	combout => \inst700666|ACCA|valor_interno[3]~feeder_combout\);

-- Location: FF_X77_Y35_N13
\inst700666|ACCA|valor_interno[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputclkctrl_outclk\,
	d => \inst700666|ACCA|valor_interno[3]~feeder_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \inst700666|inst1000|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|ACCA|valor_interno\(3));

-- Location: LCCOMB_X75_Y35_N0
\inst202|Mux12~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst202|Mux12~0_combout\ = (!\inst206|Equal1~1_combout\ & (\inst206|Equal0~1_combout\ & \inst700666|ACCA|valor_interno\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst206|Equal1~1_combout\,
	datab => \inst206|Equal0~1_combout\,
	datad => \inst700666|ACCA|valor_interno\(3),
	combout => \inst202|Mux12~0_combout\);

-- Location: FF_X75_Y35_N1
\OP1|valor_interno[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst202|Mux12~0_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OP1|valor_interno\(3));

-- Location: LCCOMB_X76_Y33_N14
\inst24|valor_interno[3]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst24|valor_interno[3]~12_combout\ = (\SENIALES_CONTROL|selresult\(0) & (\OP1|valor_interno\(3))) # (!\SENIALES_CONTROL|selresult\(0) & ((\OP2|valor_interno\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OP1|valor_interno\(3),
	datab => \SENIALES_CONTROL|selresult\(0),
	datad => \OP2|valor_interno\(3),
	combout => \inst24|valor_interno[3]~12_combout\);

-- Location: LCCOMB_X76_Y33_N10
\inst33|opres~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|opres~28_combout\ = \OP1|valor_interno\(3) $ (\OP2|valor_interno\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \OP1|valor_interno\(3),
	datad => \OP2|valor_interno\(3),
	combout => \inst33|opres~28_combout\);

-- Location: LCCOMB_X75_Y35_N12
\inst33|opres~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|opres~26_combout\ = (\OP2|valor_interno\(3)) # (\OP1|valor_interno\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \OP2|valor_interno\(3),
	datad => \OP1|valor_interno\(3),
	combout => \inst33|opres~26_combout\);

-- Location: LCCOMB_X77_Y36_N28
\inst1|mem~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|mem~16_combout\ = (!\inst34|valor_interno\(2) & (!\inst34|valor_interno\(1) & (!\inst34|valor_interno\(0) & \inst1|mem~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst34|valor_interno\(2),
	datab => \inst34|valor_interno\(1),
	datac => \inst34|valor_interno\(0),
	datad => \inst1|mem~8_combout\,
	combout => \inst1|mem~16_combout\);

-- Location: FF_X77_Y36_N29
\inst8|valor_interno[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst1|mem~16_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|valor_interno\(2));

-- Location: LCCOMB_X77_Y35_N10
\inst700666|ACCA|valor_interno[2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst700666|ACCA|valor_interno[2]~feeder_combout\ = \inst24|valor_interno\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst24|valor_interno\(2),
	combout => \inst700666|ACCA|valor_interno[2]~feeder_combout\);

-- Location: FF_X77_Y35_N11
\inst700666|ACCA|valor_interno[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputclkctrl_outclk\,
	d => \inst700666|ACCA|valor_interno[2]~feeder_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \inst700666|inst1000|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|ACCA|valor_interno\(2));

-- Location: LCCOMB_X75_Y35_N2
\inst202|Mux13~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst202|Mux13~0_combout\ = (!\inst206|Equal1~1_combout\ & (\inst206|Equal0~1_combout\ & \inst700666|ACCA|valor_interno\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst206|Equal1~1_combout\,
	datab => \inst206|Equal0~1_combout\,
	datad => \inst700666|ACCA|valor_interno\(2),
	combout => \inst202|Mux13~0_combout\);

-- Location: FF_X75_Y35_N3
\OP1|valor_interno[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst202|Mux13~0_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OP1|valor_interno\(2));

-- Location: LCCOMB_X76_Y33_N8
\inst24|valor_interno[2]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst24|valor_interno[2]~13_combout\ = (\SENIALES_CONTROL|selresult\(0) & (\OP1|valor_interno\(2))) # (!\SENIALES_CONTROL|selresult\(0) & ((\OP2|valor_interno\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OP1|valor_interno\(2),
	datab => \SENIALES_CONTROL|selresult\(0),
	datad => \OP2|valor_interno\(2),
	combout => \inst24|valor_interno[2]~13_combout\);

-- Location: LCCOMB_X74_Y33_N14
\inst33|opres~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|opres~30_combout\ = (\SENIALES_CONTROL|selfalgs\(0) & ((\OP1|valor_interno\(2) & ((!\OP2|valor_interno\(2)) # (!\SENIALES_CONTROL|selop\(0)))) # (!\OP1|valor_interno\(2) & ((\OP2|valor_interno\(2)))))) # (!\SENIALES_CONTROL|selfalgs\(0) & 
-- (((\SENIALES_CONTROL|selop\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OP1|valor_interno\(2),
	datab => \SENIALES_CONTROL|selop\(0),
	datac => \SENIALES_CONTROL|selfalgs\(0),
	datad => \OP2|valor_interno\(2),
	combout => \inst33|opres~30_combout\);

-- Location: LCCOMB_X75_Y35_N18
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

-- Location: LCCOMB_X75_Y35_N20
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

-- Location: LCCOMB_X74_Y33_N26
\inst33|opres~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|opres~31_combout\ = (\SENIALES_CONTROL|selfalgs\(0) & (((\inst33|opres~30_combout\)))) # (!\SENIALES_CONTROL|selfalgs\(0) & ((\inst33|opres~30_combout\ & ((\inst33|Add0~6_combout\))) # (!\inst33|opres~30_combout\ & (\inst33|opres~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|opres~31_combout\,
	datab => \SENIALES_CONTROL|selfalgs\(0),
	datac => \inst33|opres~30_combout\,
	datad => \inst33|Add0~6_combout\,
	combout => \inst33|opres~31_combout\);

-- Location: FF_X76_Y33_N9
\inst24|valor_interno[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst24|valor_interno[2]~13_combout\,
	asdata => \inst33|opres~31_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	sclr => \inst24|valor_interno[2]~16_combout\,
	sload => \SENIALES_CONTROL|ALT_INV_selresult\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst24|valor_interno\(2));

-- Location: FF_X76_Y35_N19
\inst700666|ACCB|valor_interno[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputclkctrl_outclk\,
	asdata => \inst24|valor_interno\(2),
	clrn => \RESET~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst700666|inst1000|Equal1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|ACCB|valor_interno\(2));

-- Location: LCCOMB_X76_Y35_N12
\inst202|Mux29~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst202|Mux29~1_combout\ = (\inst206|WideNor0~3_combout\ & (((\inst202|Mux29~0_combout\ & \inst700666|ACCB|valor_interno\(2))))) # (!\inst206|WideNor0~3_combout\ & ((\inst8|valor_interno\(2)) # ((\inst202|Mux29~0_combout\ & 
-- \inst700666|ACCB|valor_interno\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst206|WideNor0~3_combout\,
	datab => \inst8|valor_interno\(2),
	datac => \inst202|Mux29~0_combout\,
	datad => \inst700666|ACCB|valor_interno\(2),
	combout => \inst202|Mux29~1_combout\);

-- Location: FF_X75_Y35_N25
\OP2|valor_interno[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	asdata => \inst202|Mux29~1_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OP2|valor_interno\(2));

-- Location: LCCOMB_X75_Y35_N22
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

-- Location: LCCOMB_X74_Y33_N18
\inst33|opres~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|opres~27_combout\ = (\SENIALES_CONTROL|selop\(0) & (((\SENIALES_CONTROL|selfalgs\(0)) # (\inst33|Add0~8_combout\)))) # (!\SENIALES_CONTROL|selop\(0) & (\inst33|opres~26_combout\ & (\SENIALES_CONTROL|selfalgs\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|opres~26_combout\,
	datab => \SENIALES_CONTROL|selop\(0),
	datac => \SENIALES_CONTROL|selfalgs\(0),
	datad => \inst33|Add0~8_combout\,
	combout => \inst33|opres~27_combout\);

-- Location: LCCOMB_X74_Y33_N28
\inst33|opres~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|opres~29_combout\ = (\inst33|opres~25_combout\ & ((\inst33|opres~27_combout\ & ((\inst33|opres~28_combout\))) # (!\inst33|opres~27_combout\ & (\inst33|opres~29_combout\)))) # (!\inst33|opres~25_combout\ & (((\inst33|opres~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|opres~25_combout\,
	datab => \inst33|opres~29_combout\,
	datac => \inst33|opres~28_combout\,
	datad => \inst33|opres~27_combout\,
	combout => \inst33|opres~29_combout\);

-- Location: FF_X76_Y33_N15
\inst24|valor_interno[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst24|valor_interno[3]~12_combout\,
	asdata => \inst33|opres~29_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	sclr => \inst24|valor_interno[2]~16_combout\,
	sload => \SENIALES_CONTROL|ALT_INV_selresult\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst24|valor_interno\(3));

-- Location: FF_X76_Y35_N1
\inst700666|ACCB|valor_interno[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputclkctrl_outclk\,
	asdata => \inst24|valor_interno\(3),
	clrn => \RESET~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst700666|inst1000|Equal1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|ACCB|valor_interno\(3));

-- Location: LCCOMB_X76_Y35_N8
\inst700666|inst|D2[3]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst700666|inst|D2[3]~12_combout\ = (\inst206|Equal0~1_combout\ & \inst700666|ACCB|valor_interno\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst206|Equal0~1_combout\,
	datad => \inst700666|ACCB|valor_interno\(3),
	combout => \inst700666|inst|D2[3]~12_combout\);

-- Location: FF_X75_Y35_N15
\OP2|valor_interno[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	asdata => \inst700666|inst|D2[3]~12_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OP2|valor_interno\(3));

-- Location: LCCOMB_X75_Y35_N24
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

-- Location: LCCOMB_X75_Y33_N22
\inst33|opres~55\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|opres~55_combout\ = (\inst33|opres~54_combout\ & (((\SENIALES_CONTROL|selfalgs\(0)) # (\inst33|Add0~10_combout\)))) # (!\inst33|opres~54_combout\ & (\inst33|opres~55_combout\ & (!\SENIALES_CONTROL|selfalgs\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|opres~55_combout\,
	datab => \inst33|opres~54_combout\,
	datac => \SENIALES_CONTROL|selfalgs\(0),
	datad => \inst33|Add0~10_combout\,
	combout => \inst33|opres~55_combout\);

-- Location: FF_X74_Y35_N23
\inst24|valor_interno[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst24|valor_interno[4]~11_combout\,
	asdata => \inst33|opres~55_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	sclr => \inst24|valor_interno[2]~16_combout\,
	sload => \SENIALES_CONTROL|ALT_INV_selresult\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst24|valor_interno\(4));

-- Location: FF_X76_Y35_N31
\inst700666|ACCB|valor_interno[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputclkctrl_outclk\,
	asdata => \inst24|valor_interno\(4),
	clrn => \RESET~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst700666|inst1000|Equal1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|ACCB|valor_interno\(4));

-- Location: LCCOMB_X74_Y35_N16
\inst700666|inst|D2[4]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst700666|inst|D2[4]~11_combout\ = (\inst700666|ACCB|valor_interno\(4) & \inst206|Equal0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst700666|ACCB|valor_interno\(4),
	datad => \inst206|Equal0~1_combout\,
	combout => \inst700666|inst|D2[4]~11_combout\);

-- Location: FF_X74_Y35_N17
\OP2|valor_interno[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst700666|inst|D2[4]~11_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OP2|valor_interno\(4));

-- Location: LCCOMB_X75_Y35_N26
\inst33|Add0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|Add0~12_combout\ = ((\OP1|valor_interno\(5) $ (\OP2|valor_interno\(5) $ (!\inst33|Add0~11\)))) # (GND)
-- \inst33|Add0~13\ = CARRY((\OP1|valor_interno\(5) & ((\OP2|valor_interno\(5)) # (!\inst33|Add0~11\))) # (!\OP1|valor_interno\(5) & (\OP2|valor_interno\(5) & !\inst33|Add0~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \OP1|valor_interno\(5),
	datab => \OP2|valor_interno\(5),
	datad => VCC,
	cin => \inst33|Add0~11\,
	combout => \inst33|Add0~12_combout\,
	cout => \inst33|Add0~13\);

-- Location: LCCOMB_X74_Y33_N10
\inst33|opres~51\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|opres~51_combout\ = (\SENIALES_CONTROL|selop\(0) & (((\SENIALES_CONTROL|selfalgs\(0)) # (\inst33|Add0~12_combout\)))) # (!\SENIALES_CONTROL|selop\(0) & (\inst33|opres~50_combout\ & (\SENIALES_CONTROL|selfalgs\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SENIALES_CONTROL|selop\(0),
	datab => \inst33|opres~50_combout\,
	datac => \SENIALES_CONTROL|selfalgs\(0),
	datad => \inst33|Add0~12_combout\,
	combout => \inst33|opres~51_combout\);

-- Location: LCCOMB_X74_Y33_N12
\inst33|opres~53\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|opres~53_combout\ = (\inst33|opres~25_combout\ & ((\inst33|opres~51_combout\ & ((\inst33|opres~52_combout\))) # (!\inst33|opres~51_combout\ & (\inst33|opres~53_combout\)))) # (!\inst33|opres~25_combout\ & (((\inst33|opres~51_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|opres~53_combout\,
	datab => \inst33|opres~25_combout\,
	datac => \inst33|opres~52_combout\,
	datad => \inst33|opres~51_combout\,
	combout => \inst33|opres~53_combout\);

-- Location: FF_X74_Y35_N25
\inst24|valor_interno[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst24|valor_interno[5]~10_combout\,
	asdata => \inst33|opres~53_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	sclr => \inst24|valor_interno[2]~16_combout\,
	sload => \SENIALES_CONTROL|ALT_INV_selresult\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst24|valor_interno\(5));

-- Location: LCCOMB_X74_Y35_N0
\inst700666|ACCA|valor_interno[5]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst700666|ACCA|valor_interno[5]~feeder_combout\ = \inst24|valor_interno\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst24|valor_interno\(5),
	combout => \inst700666|ACCA|valor_interno[5]~feeder_combout\);

-- Location: FF_X74_Y35_N1
\inst700666|ACCA|valor_interno[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputclkctrl_outclk\,
	d => \inst700666|ACCA|valor_interno[5]~feeder_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \inst700666|inst1000|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|ACCA|valor_interno\(5));

-- Location: LCCOMB_X74_Y35_N4
\inst202|Mux10~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst202|Mux10~0_combout\ = (\inst700666|ACCA|valor_interno\(5) & (!\inst206|Equal1~1_combout\ & \inst206|Equal0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst700666|ACCA|valor_interno\(5),
	datac => \inst206|Equal1~1_combout\,
	datad => \inst206|Equal0~1_combout\,
	combout => \inst202|Mux10~0_combout\);

-- Location: FF_X75_Y35_N31
\OP1|valor_interno[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	asdata => \inst202|Mux10~0_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OP1|valor_interno\(5));

-- Location: LCCOMB_X75_Y35_N28
\inst33|Add0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|Add0~14_combout\ = (\OP1|valor_interno\(6) & ((\OP2|valor_interno\(6) & (\inst33|Add0~13\ & VCC)) # (!\OP2|valor_interno\(6) & (!\inst33|Add0~13\)))) # (!\OP1|valor_interno\(6) & ((\OP2|valor_interno\(6) & (!\inst33|Add0~13\)) # 
-- (!\OP2|valor_interno\(6) & ((\inst33|Add0~13\) # (GND)))))
-- \inst33|Add0~15\ = CARRY((\OP1|valor_interno\(6) & (!\OP2|valor_interno\(6) & !\inst33|Add0~13\)) # (!\OP1|valor_interno\(6) & ((!\inst33|Add0~13\) # (!\OP2|valor_interno\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \OP1|valor_interno\(6),
	datab => \OP2|valor_interno\(6),
	datad => VCC,
	cin => \inst33|Add0~13\,
	combout => \inst33|Add0~14_combout\,
	cout => \inst33|Add0~15\);

-- Location: LCCOMB_X76_Y33_N2
\inst33|opres~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|opres~48_combout\ = (\SENIALES_CONTROL|selfalgs\(0) & ((\OP1|valor_interno\(6) & ((!\OP2|valor_interno\(6)) # (!\SENIALES_CONTROL|selop\(0)))) # (!\OP1|valor_interno\(6) & ((\OP2|valor_interno\(6)))))) # (!\SENIALES_CONTROL|selfalgs\(0) & 
-- (((\SENIALES_CONTROL|selop\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OP1|valor_interno\(6),
	datab => \SENIALES_CONTROL|selop\(0),
	datac => \OP2|valor_interno\(6),
	datad => \SENIALES_CONTROL|selfalgs\(0),
	combout => \inst33|opres~48_combout\);

-- Location: LCCOMB_X75_Y33_N0
\inst33|opres~49\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|opres~49_combout\ = (\SENIALES_CONTROL|selfalgs\(0) & (((\inst33|opres~48_combout\)))) # (!\SENIALES_CONTROL|selfalgs\(0) & ((\inst33|opres~48_combout\ & ((\inst33|Add0~14_combout\))) # (!\inst33|opres~48_combout\ & (\inst33|opres~49_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SENIALES_CONTROL|selfalgs\(0),
	datab => \inst33|opres~49_combout\,
	datac => \inst33|Add0~14_combout\,
	datad => \inst33|opres~48_combout\,
	combout => \inst33|opres~49_combout\);

-- Location: FF_X76_Y33_N25
\inst24|valor_interno[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst24|valor_interno[6]~9_combout\,
	asdata => \inst33|opres~49_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	sclr => \inst24|valor_interno[2]~16_combout\,
	sload => \SENIALES_CONTROL|ALT_INV_selresult\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst24|valor_interno\(6));

-- Location: LCCOMB_X77_Y35_N26
\inst700666|ACCA|valor_interno[6]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst700666|ACCA|valor_interno[6]~feeder_combout\ = \inst24|valor_interno\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst24|valor_interno\(6),
	combout => \inst700666|ACCA|valor_interno[6]~feeder_combout\);

-- Location: FF_X77_Y35_N27
\inst700666|ACCA|valor_interno[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputclkctrl_outclk\,
	d => \inst700666|ACCA|valor_interno[6]~feeder_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \inst700666|inst1000|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|ACCA|valor_interno\(6));

-- Location: LCCOMB_X76_Y35_N14
\inst202|Mux9~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst202|Mux9~0_combout\ = (\inst206|Equal0~1_combout\ & (!\inst206|Equal1~1_combout\ & \inst700666|ACCA|valor_interno\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst206|Equal0~1_combout\,
	datac => \inst206|Equal1~1_combout\,
	datad => \inst700666|ACCA|valor_interno\(6),
	combout => \inst202|Mux9~0_combout\);

-- Location: FF_X75_Y35_N23
\OP1|valor_interno[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	asdata => \inst202|Mux9~0_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OP1|valor_interno\(6));

-- Location: LCCOMB_X75_Y35_N30
\inst33|Add0~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|Add0~16_combout\ = ((\OP1|valor_interno\(7) $ (\OP2|valor_interno\(7) $ (!\inst33|Add0~15\)))) # (GND)
-- \inst33|Add0~17\ = CARRY((\OP1|valor_interno\(7) & ((\OP2|valor_interno\(7)) # (!\inst33|Add0~15\))) # (!\OP1|valor_interno\(7) & (\OP2|valor_interno\(7) & !\inst33|Add0~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \OP1|valor_interno\(7),
	datab => \OP2|valor_interno\(7),
	datad => VCC,
	cin => \inst33|Add0~15\,
	combout => \inst33|Add0~16_combout\,
	cout => \inst33|Add0~17\);

-- Location: LCCOMB_X76_Y33_N18
\inst33|opres~45\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|opres~45_combout\ = (\SENIALES_CONTROL|selfalgs\(0) & ((\inst33|opres~44_combout\) # ((\SENIALES_CONTROL|selop\(0))))) # (!\SENIALES_CONTROL|selfalgs\(0) & (((\SENIALES_CONTROL|selop\(0) & \inst33|Add0~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SENIALES_CONTROL|selfalgs\(0),
	datab => \inst33|opres~44_combout\,
	datac => \SENIALES_CONTROL|selop\(0),
	datad => \inst33|Add0~16_combout\,
	combout => \inst33|opres~45_combout\);

-- Location: LCCOMB_X75_Y33_N18
\inst33|opres~47\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|opres~47_combout\ = (\inst33|opres~25_combout\ & ((\inst33|opres~45_combout\ & ((\inst33|opres~46_combout\))) # (!\inst33|opres~45_combout\ & (\inst33|opres~47_combout\)))) # (!\inst33|opres~25_combout\ & (((\inst33|opres~45_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|opres~25_combout\,
	datab => \inst33|opres~47_combout\,
	datac => \inst33|opres~46_combout\,
	datad => \inst33|opres~45_combout\,
	combout => \inst33|opres~47_combout\);

-- Location: FF_X76_Y33_N23
\inst24|valor_interno[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst24|valor_interno[7]~8_combout\,
	asdata => \inst33|opres~47_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	sclr => \inst24|valor_interno[2]~16_combout\,
	sload => \SENIALES_CONTROL|ALT_INV_selresult\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst24|valor_interno\(7));

-- Location: LCCOMB_X77_Y35_N16
\inst700666|ACCA|valor_interno[7]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst700666|ACCA|valor_interno[7]~feeder_combout\ = \inst24|valor_interno\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst24|valor_interno\(7),
	combout => \inst700666|ACCA|valor_interno[7]~feeder_combout\);

-- Location: FF_X77_Y35_N17
\inst700666|ACCA|valor_interno[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputclkctrl_outclk\,
	d => \inst700666|ACCA|valor_interno[7]~feeder_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \inst700666|inst1000|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|ACCA|valor_interno\(7));

-- Location: LCCOMB_X75_Y35_N10
\inst202|Mux8~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst202|Mux8~0_combout\ = (!\inst206|Equal1~1_combout\ & (\inst206|Equal0~1_combout\ & \inst700666|ACCA|valor_interno\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst206|Equal1~1_combout\,
	datab => \inst206|Equal0~1_combout\,
	datad => \inst700666|ACCA|valor_interno\(7),
	combout => \inst202|Mux8~0_combout\);

-- Location: FF_X75_Y35_N11
\OP1|valor_interno[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst202|Mux8~0_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OP1|valor_interno\(7));

-- Location: LCCOMB_X75_Y34_N0
\inst33|Add0~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|Add0~18_combout\ = (\OP1|valor_interno\(8) & ((\OP2|valor_interno\(8) & (\inst33|Add0~17\ & VCC)) # (!\OP2|valor_interno\(8) & (!\inst33|Add0~17\)))) # (!\OP1|valor_interno\(8) & ((\OP2|valor_interno\(8) & (!\inst33|Add0~17\)) # 
-- (!\OP2|valor_interno\(8) & ((\inst33|Add0~17\) # (GND)))))
-- \inst33|Add0~19\ = CARRY((\OP1|valor_interno\(8) & (!\OP2|valor_interno\(8) & !\inst33|Add0~17\)) # (!\OP1|valor_interno\(8) & ((!\inst33|Add0~17\) # (!\OP2|valor_interno\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \OP1|valor_interno\(8),
	datab => \OP2|valor_interno\(8),
	datad => VCC,
	cin => \inst33|Add0~17\,
	combout => \inst33|Add0~18_combout\,
	cout => \inst33|Add0~19\);

-- Location: LCCOMB_X76_Y34_N0
\inst33|opres~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|opres~42_combout\ = (\SENIALES_CONTROL|selfalgs\(0) & ((\OP1|valor_interno\(8) & ((!\OP2|valor_interno\(8)) # (!\SENIALES_CONTROL|selop\(0)))) # (!\OP1|valor_interno\(8) & ((\OP2|valor_interno\(8)))))) # (!\SENIALES_CONTROL|selfalgs\(0) & 
-- (((\SENIALES_CONTROL|selop\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OP1|valor_interno\(8),
	datab => \SENIALES_CONTROL|selop\(0),
	datac => \OP2|valor_interno\(8),
	datad => \SENIALES_CONTROL|selfalgs\(0),
	combout => \inst33|opres~42_combout\);

-- Location: LCCOMB_X76_Y34_N26
\inst33|opres~43\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|opres~43_combout\ = (\SENIALES_CONTROL|selfalgs\(0) & (((\inst33|opres~42_combout\)))) # (!\SENIALES_CONTROL|selfalgs\(0) & ((\inst33|opres~42_combout\ & ((\inst33|Add0~18_combout\))) # (!\inst33|opres~42_combout\ & (\inst33|opres~43_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|opres~43_combout\,
	datab => \SENIALES_CONTROL|selfalgs\(0),
	datac => \inst33|Add0~18_combout\,
	datad => \inst33|opres~42_combout\,
	combout => \inst33|opres~43_combout\);

-- Location: FF_X76_Y34_N29
\inst24|valor_interno[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst24|valor_interno[8]~7_combout\,
	asdata => \inst33|opres~43_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	sclr => \inst24|valor_interno[2]~16_combout\,
	sload => \SENIALES_CONTROL|ALT_INV_selresult\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst24|valor_interno\(8));

-- Location: LCCOMB_X77_Y34_N18
\inst700666|ACCA|valor_interno[8]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst700666|ACCA|valor_interno[8]~feeder_combout\ = \inst24|valor_interno\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst24|valor_interno\(8),
	combout => \inst700666|ACCA|valor_interno[8]~feeder_combout\);

-- Location: FF_X77_Y34_N19
\inst700666|ACCA|valor_interno[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputclkctrl_outclk\,
	d => \inst700666|ACCA|valor_interno[8]~feeder_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \inst700666|inst1000|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|ACCA|valor_interno\(8));

-- Location: LCCOMB_X77_Y34_N14
\inst202|Mux7~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst202|Mux7~0_combout\ = (!\inst206|Equal1~1_combout\ & (\inst206|Equal0~1_combout\ & \inst700666|ACCA|valor_interno\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst206|Equal1~1_combout\,
	datac => \inst206|Equal0~1_combout\,
	datad => \inst700666|ACCA|valor_interno\(8),
	combout => \inst202|Mux7~0_combout\);

-- Location: FF_X75_Y34_N9
\OP1|valor_interno[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	asdata => \inst202|Mux7~0_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OP1|valor_interno\(8));

-- Location: LCCOMB_X75_Y34_N2
\inst33|Add0~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|Add0~20_combout\ = ((\OP1|valor_interno\(9) $ (\OP2|valor_interno\(9) $ (!\inst33|Add0~19\)))) # (GND)
-- \inst33|Add0~21\ = CARRY((\OP1|valor_interno\(9) & ((\OP2|valor_interno\(9)) # (!\inst33|Add0~19\))) # (!\OP1|valor_interno\(9) & (\OP2|valor_interno\(9) & !\inst33|Add0~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \OP1|valor_interno\(9),
	datab => \OP2|valor_interno\(9),
	datad => VCC,
	cin => \inst33|Add0~19\,
	combout => \inst33|Add0~20_combout\,
	cout => \inst33|Add0~21\);

-- Location: LCCOMB_X75_Y34_N24
\inst33|opres~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|opres~39_combout\ = (\SENIALES_CONTROL|selfalgs\(0) & ((\SENIALES_CONTROL|selop\(0)) # ((\inst33|opres~38_combout\)))) # (!\SENIALES_CONTROL|selfalgs\(0) & (\SENIALES_CONTROL|selop\(0) & ((\inst33|Add0~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SENIALES_CONTROL|selfalgs\(0),
	datab => \SENIALES_CONTROL|selop\(0),
	datac => \inst33|opres~38_combout\,
	datad => \inst33|Add0~20_combout\,
	combout => \inst33|opres~39_combout\);

-- Location: LCCOMB_X75_Y34_N18
\inst33|opres~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|opres~41_combout\ = (\inst33|opres~25_combout\ & ((\inst33|opres~39_combout\ & ((\inst33|opres~40_combout\))) # (!\inst33|opres~39_combout\ & (\inst33|opres~41_combout\)))) # (!\inst33|opres~25_combout\ & (((\inst33|opres~39_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|opres~25_combout\,
	datab => \inst33|opres~41_combout\,
	datac => \inst33|opres~40_combout\,
	datad => \inst33|opres~39_combout\,
	combout => \inst33|opres~41_combout\);

-- Location: FF_X76_Y34_N19
\inst24|valor_interno[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst24|valor_interno[9]~6_combout\,
	asdata => \inst33|opres~41_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	sclr => \inst24|valor_interno[2]~16_combout\,
	sload => \SENIALES_CONTROL|ALT_INV_selresult\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst24|valor_interno\(9));

-- Location: LCCOMB_X77_Y34_N0
\inst700666|ACCA|valor_interno[9]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst700666|ACCA|valor_interno[9]~feeder_combout\ = \inst24|valor_interno\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst24|valor_interno\(9),
	combout => \inst700666|ACCA|valor_interno[9]~feeder_combout\);

-- Location: FF_X77_Y34_N1
\inst700666|ACCA|valor_interno[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputclkctrl_outclk\,
	d => \inst700666|ACCA|valor_interno[9]~feeder_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \inst700666|inst1000|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|ACCA|valor_interno\(9));

-- Location: LCCOMB_X77_Y34_N28
\inst202|Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst202|Mux6~0_combout\ = (!\inst206|Equal1~1_combout\ & (\inst206|Equal0~1_combout\ & \inst700666|ACCA|valor_interno\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst206|Equal1~1_combout\,
	datac => \inst206|Equal0~1_combout\,
	datad => \inst700666|ACCA|valor_interno\(9),
	combout => \inst202|Mux6~0_combout\);

-- Location: FF_X75_Y34_N7
\OP1|valor_interno[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	asdata => \inst202|Mux6~0_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OP1|valor_interno\(9));

-- Location: LCCOMB_X75_Y34_N4
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

-- Location: LCCOMB_X75_Y34_N28
\inst33|opres~57\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|opres~57_combout\ = (\SENIALES_CONTROL|selop\(0) & (\inst33|Add0~22_combout\ & (!\SENIALES_CONTROL|selfalgs\(0)))) # (!\SENIALES_CONTROL|selop\(0) & (((\SENIALES_CONTROL|selfalgs\(0)) # (\inst33|opres~58_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101100111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|Add0~22_combout\,
	datab => \SENIALES_CONTROL|selop\(0),
	datac => \SENIALES_CONTROL|selfalgs\(0),
	datad => \inst33|opres~58_combout\,
	combout => \inst33|opres~57_combout\);

-- Location: LCCOMB_X75_Y33_N16
\inst33|opres~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|opres~58_combout\ = (\SENIALES_CONTROL|selfalgs\(0) & ((\OP2|valor_interno\(10) & ((\inst33|opres~57_combout\) # (!\OP1|valor_interno\(10)))) # (!\OP2|valor_interno\(10) & ((\OP1|valor_interno\(10)))))) # (!\SENIALES_CONTROL|selfalgs\(0) & 
-- (\inst33|opres~57_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SENIALES_CONTROL|selfalgs\(0),
	datab => \inst33|opres~57_combout\,
	datac => \OP2|valor_interno\(10),
	datad => \OP1|valor_interno\(10),
	combout => \inst33|opres~58_combout\);

-- Location: FF_X76_Y33_N17
\inst24|valor_interno[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst24|valor_interno[10]~5_combout\,
	asdata => \inst33|opres~58_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	sclr => \inst24|valor_interno[2]~16_combout\,
	sload => \SENIALES_CONTROL|ALT_INV_selresult\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst24|valor_interno\(10));

-- Location: FF_X77_Y34_N23
\inst700666|ACCB|valor_interno[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputclkctrl_outclk\,
	asdata => \inst24|valor_interno\(10),
	clrn => \RESET~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst700666|inst1000|Equal1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|ACCB|valor_interno\(10));

-- Location: LCCOMB_X76_Y34_N6
\inst700666|inst|D2[10]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst700666|inst|D2[10]~5_combout\ = (\inst206|Equal0~1_combout\ & \inst700666|ACCB|valor_interno\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst206|Equal0~1_combout\,
	datad => \inst700666|ACCB|valor_interno\(10),
	combout => \inst700666|inst|D2[10]~5_combout\);

-- Location: FF_X76_Y34_N7
\OP2|valor_interno[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst700666|inst|D2[10]~5_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OP2|valor_interno\(10));

-- Location: LCCOMB_X75_Y34_N6
\inst33|Add0~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|Add0~24_combout\ = ((\OP1|valor_interno\(11) $ (\OP2|valor_interno\(11) $ (!\inst33|Add0~23\)))) # (GND)
-- \inst33|Add0~25\ = CARRY((\OP1|valor_interno\(11) & ((\OP2|valor_interno\(11)) # (!\inst33|Add0~23\))) # (!\OP1|valor_interno\(11) & (\OP2|valor_interno\(11) & !\inst33|Add0~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \OP1|valor_interno\(11),
	datab => \OP2|valor_interno\(11),
	datad => VCC,
	cin => \inst33|Add0~23\,
	combout => \inst33|Add0~24_combout\,
	cout => \inst33|Add0~25\);

-- Location: LCCOMB_X75_Y34_N22
\inst33|opres~59\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|opres~59_combout\ = (\SENIALES_CONTROL|selfalgs\(0) & (!\SENIALES_CONTROL|selop\(0))) # (!\SENIALES_CONTROL|selfalgs\(0) & ((\SENIALES_CONTROL|selop\(0) & (\inst33|Add0~24_combout\)) # (!\SENIALES_CONTROL|selop\(0) & 
-- ((\inst33|opres~60_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SENIALES_CONTROL|selfalgs\(0),
	datab => \SENIALES_CONTROL|selop\(0),
	datac => \inst33|Add0~24_combout\,
	datad => \inst33|opres~60_combout\,
	combout => \inst33|opres~59_combout\);

-- Location: LCCOMB_X75_Y33_N6
\inst33|opres~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|opres~60_combout\ = (\SENIALES_CONTROL|selfalgs\(0) & ((\OP2|valor_interno\(11) & ((\inst33|opres~59_combout\) # (!\OP1|valor_interno\(11)))) # (!\OP2|valor_interno\(11) & (\OP1|valor_interno\(11))))) # (!\SENIALES_CONTROL|selfalgs\(0) & 
-- (((\inst33|opres~59_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SENIALES_CONTROL|selfalgs\(0),
	datab => \OP2|valor_interno\(11),
	datac => \OP1|valor_interno\(11),
	datad => \inst33|opres~59_combout\,
	combout => \inst33|opres~60_combout\);

-- Location: FF_X75_Y33_N15
\inst24|valor_interno[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst24|valor_interno[11]~4_combout\,
	asdata => \inst33|opres~60_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	sclr => \inst24|valor_interno[2]~16_combout\,
	sload => \SENIALES_CONTROL|ALT_INV_selresult\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst24|valor_interno\(11));

-- Location: LCCOMB_X77_Y34_N4
\inst700666|ACCA|valor_interno[11]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst700666|ACCA|valor_interno[11]~feeder_combout\ = \inst24|valor_interno\(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst24|valor_interno\(11),
	combout => \inst700666|ACCA|valor_interno[11]~feeder_combout\);

-- Location: FF_X77_Y34_N5
\inst700666|ACCA|valor_interno[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputclkctrl_outclk\,
	d => \inst700666|ACCA|valor_interno[11]~feeder_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \inst700666|inst1000|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|ACCA|valor_interno\(11));

-- Location: LCCOMB_X77_Y34_N6
\inst202|Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst202|Mux4~0_combout\ = (\inst206|Equal0~1_combout\ & (!\inst206|Equal1~1_combout\ & \inst700666|ACCA|valor_interno\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst206|Equal0~1_combout\,
	datab => \inst206|Equal1~1_combout\,
	datac => \inst700666|ACCA|valor_interno\(11),
	combout => \inst202|Mux4~0_combout\);

-- Location: FF_X75_Y34_N15
\OP1|valor_interno[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	asdata => \inst202|Mux4~0_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OP1|valor_interno\(11));

-- Location: LCCOMB_X75_Y34_N8
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

-- Location: LCCOMB_X75_Y34_N20
\inst33|opres~61\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|opres~61_combout\ = (\SENIALES_CONTROL|selfalgs\(0) & (!\SENIALES_CONTROL|selop\(0))) # (!\SENIALES_CONTROL|selfalgs\(0) & ((\SENIALES_CONTROL|selop\(0) & (\inst33|Add0~26_combout\)) # (!\SENIALES_CONTROL|selop\(0) & 
-- ((\inst33|opres~62_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SENIALES_CONTROL|selfalgs\(0),
	datab => \SENIALES_CONTROL|selop\(0),
	datac => \inst33|Add0~26_combout\,
	datad => \inst33|opres~62_combout\,
	combout => \inst33|opres~61_combout\);

-- Location: LCCOMB_X75_Y33_N20
\inst33|opres~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|opres~62_combout\ = (\SENIALES_CONTROL|selfalgs\(0) & ((\OP2|valor_interno\(12) & ((\inst33|opres~61_combout\) # (!\OP1|valor_interno\(12)))) # (!\OP2|valor_interno\(12) & ((\OP1|valor_interno\(12)))))) # (!\SENIALES_CONTROL|selfalgs\(0) & 
-- (\inst33|opres~61_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|opres~61_combout\,
	datab => \OP2|valor_interno\(12),
	datac => \SENIALES_CONTROL|selfalgs\(0),
	datad => \OP1|valor_interno\(12),
	combout => \inst33|opres~62_combout\);

-- Location: FF_X75_Y33_N5
\inst24|valor_interno[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst24|valor_interno[12]~3_combout\,
	asdata => \inst33|opres~62_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	sclr => \inst24|valor_interno[2]~16_combout\,
	sload => \SENIALES_CONTROL|ALT_INV_selresult\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst24|valor_interno\(12));

-- Location: LCCOMB_X77_Y34_N12
\inst700666|ACCB|valor_interno[12]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst700666|ACCB|valor_interno[12]~feeder_combout\ = \inst24|valor_interno\(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst24|valor_interno\(12),
	combout => \inst700666|ACCB|valor_interno[12]~feeder_combout\);

-- Location: FF_X77_Y34_N13
\inst700666|ACCB|valor_interno[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputclkctrl_outclk\,
	d => \inst700666|ACCB|valor_interno[12]~feeder_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \inst700666|inst1000|Equal1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|ACCB|valor_interno\(12));

-- Location: LCCOMB_X77_Y34_N8
\inst700666|inst|D2[12]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst700666|inst|D2[12]~3_combout\ = (\inst206|Equal0~1_combout\ & \inst700666|ACCB|valor_interno\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst206|Equal0~1_combout\,
	datad => \inst700666|ACCB|valor_interno\(12),
	combout => \inst700666|inst|D2[12]~3_combout\);

-- Location: FF_X75_Y34_N13
\OP2|valor_interno[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	asdata => \inst700666|inst|D2[12]~3_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OP2|valor_interno\(12));

-- Location: LCCOMB_X75_Y34_N10
\inst33|Add0~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|Add0~28_combout\ = ((\OP1|valor_interno\(13) $ (\OP2|valor_interno\(13) $ (!\inst33|Add0~27\)))) # (GND)
-- \inst33|Add0~29\ = CARRY((\OP1|valor_interno\(13) & ((\OP2|valor_interno\(13)) # (!\inst33|Add0~27\))) # (!\OP1|valor_interno\(13) & (\OP2|valor_interno\(13) & !\inst33|Add0~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \OP1|valor_interno\(13),
	datab => \OP2|valor_interno\(13),
	datad => VCC,
	cin => \inst33|Add0~27\,
	combout => \inst33|Add0~28_combout\,
	cout => \inst33|Add0~29\);

-- Location: LCCOMB_X76_Y34_N12
\inst33|opres~63\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|opres~63_combout\ = (\SENIALES_CONTROL|selfalgs\(0) & (((!\SENIALES_CONTROL|selop\(0))))) # (!\SENIALES_CONTROL|selfalgs\(0) & ((\SENIALES_CONTROL|selop\(0) & (\inst33|Add0~28_combout\)) # (!\SENIALES_CONTROL|selop\(0) & 
-- ((\inst33|opres~64_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|Add0~28_combout\,
	datab => \SENIALES_CONTROL|selfalgs\(0),
	datac => \SENIALES_CONTROL|selop\(0),
	datad => \inst33|opres~64_combout\,
	combout => \inst33|opres~63_combout\);

-- Location: LCCOMB_X76_Y34_N2
\inst33|opres~64\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|opres~64_combout\ = (\SENIALES_CONTROL|selfalgs\(0) & ((\OP1|valor_interno\(13) & ((\inst33|opres~63_combout\) # (!\OP2|valor_interno\(13)))) # (!\OP1|valor_interno\(13) & ((\OP2|valor_interno\(13)))))) # (!\SENIALES_CONTROL|selfalgs\(0) & 
-- (\inst33|opres~63_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|opres~63_combout\,
	datab => \SENIALES_CONTROL|selfalgs\(0),
	datac => \OP1|valor_interno\(13),
	datad => \OP2|valor_interno\(13),
	combout => \inst33|opres~64_combout\);

-- Location: FF_X76_Y34_N5
\inst24|valor_interno[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst24|valor_interno[13]~2_combout\,
	asdata => \inst33|opres~64_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	sclr => \inst24|valor_interno[2]~16_combout\,
	sload => \SENIALES_CONTROL|ALT_INV_selresult\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst24|valor_interno\(13));

-- Location: LCCOMB_X77_Y34_N24
\inst700666|ACCA|valor_interno[13]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst700666|ACCA|valor_interno[13]~feeder_combout\ = \inst24|valor_interno\(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst24|valor_interno\(13),
	combout => \inst700666|ACCA|valor_interno[13]~feeder_combout\);

-- Location: FF_X77_Y34_N25
\inst700666|ACCA|valor_interno[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputclkctrl_outclk\,
	d => \inst700666|ACCA|valor_interno[13]~feeder_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \inst700666|inst1000|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|ACCA|valor_interno\(13));

-- Location: LCCOMB_X77_Y34_N20
\inst202|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst202|Mux2~0_combout\ = (!\inst206|Equal1~1_combout\ & (\inst206|Equal0~1_combout\ & \inst700666|ACCA|valor_interno\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst206|Equal1~1_combout\,
	datac => \inst206|Equal0~1_combout\,
	datad => \inst700666|ACCA|valor_interno\(13),
	combout => \inst202|Mux2~0_combout\);

-- Location: FF_X75_Y34_N1
\OP1|valor_interno[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	asdata => \inst202|Mux2~0_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OP1|valor_interno\(13));

-- Location: LCCOMB_X75_Y34_N12
\inst33|Add0~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|Add0~30_combout\ = (\OP1|valor_interno\(14) & ((\OP2|valor_interno\(14) & (\inst33|Add0~29\ & VCC)) # (!\OP2|valor_interno\(14) & (!\inst33|Add0~29\)))) # (!\OP1|valor_interno\(14) & ((\OP2|valor_interno\(14) & (!\inst33|Add0~29\)) # 
-- (!\OP2|valor_interno\(14) & ((\inst33|Add0~29\) # (GND)))))
-- \inst33|Add0~31\ = CARRY((\OP1|valor_interno\(14) & (!\OP2|valor_interno\(14) & !\inst33|Add0~29\)) # (!\OP1|valor_interno\(14) & ((!\inst33|Add0~29\) # (!\OP2|valor_interno\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \OP1|valor_interno\(14),
	datab => \OP2|valor_interno\(14),
	datad => VCC,
	cin => \inst33|Add0~29\,
	combout => \inst33|Add0~30_combout\,
	cout => \inst33|Add0~31\);

-- Location: LCCOMB_X74_Y34_N14
\inst33|opres~65\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|opres~65_combout\ = (\SENIALES_CONTROL|selfalgs\(0) & (((!\SENIALES_CONTROL|selop\(0))))) # (!\SENIALES_CONTROL|selfalgs\(0) & ((\SENIALES_CONTROL|selop\(0) & (\inst33|Add0~30_combout\)) # (!\SENIALES_CONTROL|selop\(0) & 
-- ((\inst33|opres~66_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SENIALES_CONTROL|selfalgs\(0),
	datab => \inst33|Add0~30_combout\,
	datac => \inst33|opres~66_combout\,
	datad => \SENIALES_CONTROL|selop\(0),
	combout => \inst33|opres~65_combout\);

-- Location: LCCOMB_X75_Y33_N26
\inst33|opres~66\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|opres~66_combout\ = (\SENIALES_CONTROL|selfalgs\(0) & ((\OP2|valor_interno\(14) & ((\inst33|opres~65_combout\) # (!\OP1|valor_interno\(14)))) # (!\OP2|valor_interno\(14) & ((\OP1|valor_interno\(14)))))) # (!\SENIALES_CONTROL|selfalgs\(0) & 
-- (((\inst33|opres~65_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OP2|valor_interno\(14),
	datab => \inst33|opres~65_combout\,
	datac => \SENIALES_CONTROL|selfalgs\(0),
	datad => \OP1|valor_interno\(14),
	combout => \inst33|opres~66_combout\);

-- Location: FF_X75_Y33_N31
\inst24|valor_interno[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst24|valor_interno[14]~1_combout\,
	asdata => \inst33|opres~66_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	sclr => \inst24|valor_interno[2]~16_combout\,
	sload => \SENIALES_CONTROL|ALT_INV_selresult\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst24|valor_interno\(14));

-- Location: LCCOMB_X77_Y34_N10
\inst700666|ACCA|valor_interno[14]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst700666|ACCA|valor_interno[14]~feeder_combout\ = \inst24|valor_interno\(14)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst24|valor_interno\(14),
	combout => \inst700666|ACCA|valor_interno[14]~feeder_combout\);

-- Location: FF_X77_Y34_N11
\inst700666|ACCA|valor_interno[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputclkctrl_outclk\,
	d => \inst700666|ACCA|valor_interno[14]~feeder_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \inst700666|inst1000|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|ACCA|valor_interno\(14));

-- Location: LCCOMB_X77_Y34_N22
\inst202|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst202|Mux1~0_combout\ = (\inst206|Equal0~1_combout\ & (!\inst206|Equal1~1_combout\ & \inst700666|ACCA|valor_interno\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst206|Equal0~1_combout\,
	datab => \inst206|Equal1~1_combout\,
	datad => \inst700666|ACCA|valor_interno\(14),
	combout => \inst202|Mux1~0_combout\);

-- Location: FF_X75_Y34_N17
\OP1|valor_interno[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	asdata => \inst202|Mux1~0_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OP1|valor_interno\(14));

-- Location: LCCOMB_X75_Y34_N14
\inst33|Add0~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|Add0~32_combout\ = ((\OP1|valor_interno\(15) $ (\OP2|valor_interno\(15) $ (!\inst33|Add0~31\)))) # (GND)
-- \inst33|Add0~33\ = CARRY((\OP1|valor_interno\(15) & ((\OP2|valor_interno\(15)) # (!\inst33|Add0~31\))) # (!\OP1|valor_interno\(15) & (\OP2|valor_interno\(15) & !\inst33|Add0~31\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \OP1|valor_interno\(15),
	datab => \OP2|valor_interno\(15),
	datad => VCC,
	cin => \inst33|Add0~31\,
	combout => \inst33|Add0~32_combout\,
	cout => \inst33|Add0~33\);

-- Location: LCCOMB_X75_Y34_N16
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

-- Location: LCCOMB_X75_Y34_N30
\inst33|opres~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|opres~56_combout\ = (!\SENIALES_CONTROL|selfalgs\(0) & ((\SENIALES_CONTROL|selop\(0) & ((\inst33|Add0~34_combout\))) # (!\SENIALES_CONTROL|selop\(0) & (\inst33|opres~56_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|opres~56_combout\,
	datab => \SENIALES_CONTROL|selop\(0),
	datac => \SENIALES_CONTROL|selfalgs\(0),
	datad => \inst33|Add0~34_combout\,
	combout => \inst33|opres~56_combout\);

-- Location: FF_X75_Y35_N13
\inst3|ci\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	asdata => \inst33|opres~56_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	sload => VCC,
	ena => \SENIALES_CONTROL|selop\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|ci~q\);

-- Location: LCCOMB_X76_Y35_N18
\inst206|WideNor0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst206|WideNor0~2_combout\ = (\inst206|Equal0~1_combout\) # ((\inst206|Equal1~1_combout\) # (\inst206|selfalgs[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst206|Equal0~1_combout\,
	datab => \inst206|Equal1~1_combout\,
	datad => \inst206|selfalgs[0]~0_combout\,
	combout => \inst206|WideNor0~2_combout\);

-- Location: FF_X75_Y35_N9
\SENIALES_CONTROL|selc\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	asdata => \inst206|WideNor0~2_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SENIALES_CONTROL|selc~q\);

-- Location: LCCOMB_X75_Y35_N14
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

-- Location: LCCOMB_X75_Y35_N16
\inst33|Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|Add0~2_combout\ = (\OP1|valor_interno\(0) & ((\OP2|valor_interno\(0) & (\inst33|Add0~1_cout\ & VCC)) # (!\OP2|valor_interno\(0) & (!\inst33|Add0~1_cout\)))) # (!\OP1|valor_interno\(0) & ((\OP2|valor_interno\(0) & (!\inst33|Add0~1_cout\)) # 
-- (!\OP2|valor_interno\(0) & ((\inst33|Add0~1_cout\) # (GND)))))
-- \inst33|Add0~3\ = CARRY((\OP1|valor_interno\(0) & (!\OP2|valor_interno\(0) & !\inst33|Add0~1_cout\)) # (!\OP1|valor_interno\(0) & ((!\inst33|Add0~1_cout\) # (!\OP2|valor_interno\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \OP1|valor_interno\(0),
	datab => \OP2|valor_interno\(0),
	datad => VCC,
	cin => \inst33|Add0~1_cout\,
	combout => \inst33|Add0~2_combout\,
	cout => \inst33|Add0~3\);

-- Location: LCCOMB_X74_Y33_N2
\inst33|opres~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|opres~33_combout\ = (\SENIALES_CONTROL|selop\(0) & (((\SENIALES_CONTROL|selfalgs\(0)) # (\inst33|Add0~4_combout\)))) # (!\SENIALES_CONTROL|selop\(0) & (\inst33|opres~32_combout\ & (\SENIALES_CONTROL|selfalgs\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|opres~32_combout\,
	datab => \SENIALES_CONTROL|selop\(0),
	datac => \SENIALES_CONTROL|selfalgs\(0),
	datad => \inst33|Add0~4_combout\,
	combout => \inst33|opres~33_combout\);

-- Location: LCCOMB_X74_Y33_N30
\inst33|opres~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|opres~35_combout\ = (\inst33|opres~25_combout\ & ((\inst33|opres~33_combout\ & ((\inst33|opres~34_combout\))) # (!\inst33|opres~33_combout\ & (\inst33|opres~35_combout\)))) # (!\inst33|opres~25_combout\ & (((\inst33|opres~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|opres~35_combout\,
	datab => \inst33|opres~25_combout\,
	datac => \inst33|opres~34_combout\,
	datad => \inst33|opres~33_combout\,
	combout => \inst33|opres~35_combout\);

-- Location: FF_X74_Y35_N29
\inst24|valor_interno[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst24|valor_interno[1]~14_combout\,
	asdata => \inst33|opres~35_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	sclr => \inst24|valor_interno[2]~16_combout\,
	sload => \SENIALES_CONTROL|ALT_INV_selresult\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst24|valor_interno\(1));

-- Location: LCCOMB_X76_Y33_N28
\inst4|valor_interno~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|valor_interno~feeder_combout\ = \SENIALES_CONTROL|selresult\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SENIALES_CONTROL|selresult\(1),
	combout => \inst4|valor_interno~feeder_combout\);

-- Location: FF_X76_Y33_N29
\inst4|valor_interno\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst4|valor_interno~feeder_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|valor_interno~q\);

-- Location: FF_X77_Y33_N1
\inst34|valor_interno[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputclkctrl_outclk\,
	d => \inst34|valor_interno[1]~15_combout\,
	asdata => \inst24|valor_interno\(1),
	clrn => \RESET~inputclkctrl_outclk\,
	sload => \inst4|valor_interno~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst34|valor_interno\(1));

-- Location: LCCOMB_X77_Y36_N16
\inst1|mem~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|mem~11_combout\ = (!\inst34|valor_interno\(3) & ((\inst34|valor_interno\(1) & (\inst34|valor_interno\(0) & !\inst34|valor_interno\(2))) # (!\inst34|valor_interno\(1) & (!\inst34|valor_interno\(0) & \inst34|valor_interno\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst34|valor_interno\(3),
	datab => \inst34|valor_interno\(1),
	datac => \inst34|valor_interno\(0),
	datad => \inst34|valor_interno\(2),
	combout => \inst1|mem~11_combout\);

-- Location: LCCOMB_X77_Y36_N26
\inst1|mem~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|mem~18_combout\ = (!\inst34|valor_interno\(4) & (!\inst34|valor_interno\(5) & \inst1|mem~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst34|valor_interno\(4),
	datac => \inst34|valor_interno\(5),
	datad => \inst1|mem~11_combout\,
	combout => \inst1|mem~18_combout\);

-- Location: FF_X77_Y36_N27
\inst8|valor_interno[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst1|mem~18_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|valor_interno\(20));

-- Location: LCCOMB_X77_Y36_N30
\inst206|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst206|Equal0~0_combout\ = ((\inst8|valor_interno\(22)) # ((\inst8|valor_interno\(23)) # (!\inst8|valor_interno\(17)))) # (!\inst8|valor_interno\(20))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|valor_interno\(20),
	datab => \inst8|valor_interno\(22),
	datac => \inst8|valor_interno\(17),
	datad => \inst8|valor_interno\(23),
	combout => \inst206|Equal0~0_combout\);

-- Location: LCCOMB_X76_Y36_N0
\inst206|Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst206|Equal0~1_combout\ = (!\inst206|Equal0~0_combout\ & (!\inst8|valor_interno\(18) & (\inst8|valor_interno\(16) & !\inst8|valor_interno\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst206|Equal0~0_combout\,
	datab => \inst8|valor_interno\(18),
	datac => \inst8|valor_interno\(16),
	datad => \inst8|valor_interno\(21),
	combout => \inst206|Equal0~1_combout\);

-- Location: LCCOMB_X77_Y35_N6
\inst700666|ACCA|valor_interno[0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst700666|ACCA|valor_interno[0]~feeder_combout\ = \inst24|valor_interno\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst24|valor_interno\(0),
	combout => \inst700666|ACCA|valor_interno[0]~feeder_combout\);

-- Location: FF_X77_Y35_N7
\inst700666|ACCA|valor_interno[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputclkctrl_outclk\,
	d => \inst700666|ACCA|valor_interno[0]~feeder_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \inst700666|inst1000|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|ACCA|valor_interno\(0));

-- Location: LCCOMB_X77_Y35_N4
\inst202|Mux15~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst202|Mux15~0_combout\ = (\inst206|Equal0~1_combout\ & (!\inst206|Equal1~1_combout\ & \inst700666|ACCA|valor_interno\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst206|Equal0~1_combout\,
	datac => \inst206|Equal1~1_combout\,
	datad => \inst700666|ACCA|valor_interno\(0),
	combout => \inst202|Mux15~0_combout\);

-- Location: FF_X75_Y35_N7
\OP1|valor_interno[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	asdata => \inst202|Mux15~0_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OP1|valor_interno\(0));

-- Location: LCCOMB_X74_Y35_N10
\inst24|valor_interno[0]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst24|valor_interno[0]~15_combout\ = (\SENIALES_CONTROL|selresult\(0) & (\OP1|valor_interno\(0))) # (!\SENIALES_CONTROL|selresult\(0) & ((\OP2|valor_interno\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OP1|valor_interno\(0),
	datab => \SENIALES_CONTROL|selresult\(0),
	datad => \OP2|valor_interno\(0),
	combout => \inst24|valor_interno[0]~15_combout\);

-- Location: LCCOMB_X74_Y33_N6
\inst33|opres~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|opres~36_combout\ = (\SENIALES_CONTROL|selfalgs\(0) & ((\OP1|valor_interno\(0) & ((!\OP2|valor_interno\(0)) # (!\SENIALES_CONTROL|selop\(0)))) # (!\OP1|valor_interno\(0) & ((\OP2|valor_interno\(0)))))) # (!\SENIALES_CONTROL|selfalgs\(0) & 
-- (\SENIALES_CONTROL|selop\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SENIALES_CONTROL|selop\(0),
	datab => \SENIALES_CONTROL|selfalgs\(0),
	datac => \OP1|valor_interno\(0),
	datad => \OP2|valor_interno\(0),
	combout => \inst33|opres~36_combout\);

-- Location: LCCOMB_X74_Y33_N4
\inst33|opres~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|opres~37_combout\ = (\inst33|opres~36_combout\ & (((\SENIALES_CONTROL|selfalgs\(0)) # (\inst33|Add0~2_combout\)))) # (!\inst33|opres~36_combout\ & (\inst33|opres~37_combout\ & (!\SENIALES_CONTROL|selfalgs\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|opres~36_combout\,
	datab => \inst33|opres~37_combout\,
	datac => \SENIALES_CONTROL|selfalgs\(0),
	datad => \inst33|Add0~2_combout\,
	combout => \inst33|opres~37_combout\);

-- Location: FF_X74_Y35_N11
\inst24|valor_interno[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst24|valor_interno[0]~15_combout\,
	asdata => \inst33|opres~37_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	sclr => \inst24|valor_interno[2]~16_combout\,
	sload => \SENIALES_CONTROL|ALT_INV_selresult\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst24|valor_interno\(0));

-- Location: LCCOMB_X77_Y36_N12
\inst34|valor_interno[0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst34|valor_interno[0]~feeder_combout\ = \inst24|valor_interno\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst24|valor_interno\(0),
	combout => \inst34|valor_interno[0]~feeder_combout\);

-- Location: LCCOMB_X77_Y36_N14
\inst34|valor_interno[0]~_wirecell\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst34|valor_interno[0]~_wirecell_combout\ = !\inst34|valor_interno\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst34|valor_interno\(0),
	combout => \inst34|valor_interno[0]~_wirecell_combout\);

-- Location: FF_X77_Y36_N13
\inst34|valor_interno[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputclkctrl_outclk\,
	d => \inst34|valor_interno[0]~feeder_combout\,
	asdata => \inst34|valor_interno[0]~_wirecell_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	sload => \inst4|ALT_INV_valor_interno~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst34|valor_interno\(0));

-- Location: LCCOMB_X77_Y33_N2
\inst34|valor_interno[2]~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst34|valor_interno[2]~17_combout\ = (\inst34|valor_interno\(2) & (!\inst34|valor_interno[1]~16\)) # (!\inst34|valor_interno\(2) & ((\inst34|valor_interno[1]~16\) # (GND)))
-- \inst34|valor_interno[2]~18\ = CARRY((!\inst34|valor_interno[1]~16\) # (!\inst34|valor_interno\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst34|valor_interno\(2),
	datad => VCC,
	cin => \inst34|valor_interno[1]~16\,
	combout => \inst34|valor_interno[2]~17_combout\,
	cout => \inst34|valor_interno[2]~18\);

-- Location: FF_X77_Y33_N3
\inst34|valor_interno[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputclkctrl_outclk\,
	d => \inst34|valor_interno[2]~17_combout\,
	asdata => \inst24|valor_interno\(2),
	clrn => \RESET~inputclkctrl_outclk\,
	sload => \inst4|valor_interno~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst34|valor_interno\(2));

-- Location: LCCOMB_X77_Y33_N4
\inst34|valor_interno[3]~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst34|valor_interno[3]~19_combout\ = (\inst34|valor_interno\(3) & (\inst34|valor_interno[2]~18\ $ (GND))) # (!\inst34|valor_interno\(3) & (!\inst34|valor_interno[2]~18\ & VCC))
-- \inst34|valor_interno[3]~20\ = CARRY((\inst34|valor_interno\(3) & !\inst34|valor_interno[2]~18\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst34|valor_interno\(3),
	datad => VCC,
	cin => \inst34|valor_interno[2]~18\,
	combout => \inst34|valor_interno[3]~19_combout\,
	cout => \inst34|valor_interno[3]~20\);

-- Location: FF_X77_Y33_N5
\inst34|valor_interno[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputclkctrl_outclk\,
	d => \inst34|valor_interno[3]~19_combout\,
	asdata => \inst24|valor_interno\(3),
	clrn => \RESET~inputclkctrl_outclk\,
	sload => \inst4|valor_interno~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst34|valor_interno\(3));

-- Location: LCCOMB_X77_Y33_N6
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

-- Location: FF_X77_Y33_N7
\inst34|valor_interno[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputclkctrl_outclk\,
	d => \inst34|valor_interno[4]~21_combout\,
	asdata => \inst24|valor_interno\(4),
	clrn => \RESET~inputclkctrl_outclk\,
	sload => \inst4|valor_interno~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst34|valor_interno\(4));

-- Location: LCCOMB_X77_Y33_N8
\inst34|valor_interno[5]~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst34|valor_interno[5]~23_combout\ = (\inst34|valor_interno\(5) & (\inst34|valor_interno[4]~22\ $ (GND))) # (!\inst34|valor_interno\(5) & (!\inst34|valor_interno[4]~22\ & VCC))
-- \inst34|valor_interno[5]~24\ = CARRY((\inst34|valor_interno\(5) & !\inst34|valor_interno[4]~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst34|valor_interno\(5),
	datad => VCC,
	cin => \inst34|valor_interno[4]~22\,
	combout => \inst34|valor_interno[5]~23_combout\,
	cout => \inst34|valor_interno[5]~24\);

-- Location: FF_X77_Y33_N9
\inst34|valor_interno[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputclkctrl_outclk\,
	d => \inst34|valor_interno[5]~23_combout\,
	asdata => \inst24|valor_interno\(5),
	clrn => \RESET~inputclkctrl_outclk\,
	sload => \inst4|valor_interno~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst34|valor_interno\(5));

-- Location: LCCOMB_X77_Y36_N10
\inst1|mem~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|mem~12_combout\ = (\inst34|valor_interno\(3)) # ((\inst34|valor_interno\(0) & ((\inst34|valor_interno\(2)))) # (!\inst34|valor_interno\(0) & (\inst34|valor_interno\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst34|valor_interno\(3),
	datab => \inst34|valor_interno\(1),
	datac => \inst34|valor_interno\(0),
	datad => \inst34|valor_interno\(2),
	combout => \inst1|mem~12_combout\);

-- Location: LCCOMB_X77_Y36_N8
\inst1|mem~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|mem~19_combout\ = (!\inst34|valor_interno\(5) & (!\inst34|valor_interno\(4) & !\inst1|mem~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst34|valor_interno\(5),
	datac => \inst34|valor_interno\(4),
	datad => \inst1|mem~12_combout\,
	combout => \inst1|mem~19_combout\);

-- Location: FF_X77_Y36_N9
\inst8|valor_interno[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst1|mem~19_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|valor_interno\(17));

-- Location: LCCOMB_X76_Y35_N16
\inst206|selfalgs[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst206|selfalgs[0]~0_combout\ = (\inst8|valor_interno\(17) & (\inst206|Equal2~0_combout\ & !\inst8|valor_interno\(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst8|valor_interno\(17),
	datac => \inst206|Equal2~0_combout\,
	datad => \inst8|valor_interno\(20),
	combout => \inst206|selfalgs[0]~0_combout\);

-- Location: FF_X75_Y34_N31
\SENIALES_CONTROL|selfalgs[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	asdata => \inst206|selfalgs[0]~0_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SENIALES_CONTROL|selfalgs\(0));

-- Location: LCCOMB_X75_Y34_N26
\inst33|opres~67\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|opres~67_combout\ = (\SENIALES_CONTROL|selfalgs\(0) & (((!\SENIALES_CONTROL|selop\(0))))) # (!\SENIALES_CONTROL|selfalgs\(0) & ((\SENIALES_CONTROL|selop\(0) & (\inst33|Add0~32_combout\)) # (!\SENIALES_CONTROL|selop\(0) & 
-- ((\inst33|opres~68_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SENIALES_CONTROL|selfalgs\(0),
	datab => \inst33|Add0~32_combout\,
	datac => \inst33|opres~68_combout\,
	datad => \SENIALES_CONTROL|selop\(0),
	combout => \inst33|opres~67_combout\);

-- Location: LCCOMB_X75_Y33_N8
\inst33|opres~68\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|opres~68_combout\ = (\SENIALES_CONTROL|selfalgs\(0) & ((\OP1|valor_interno\(15) & ((\inst33|opres~67_combout\) # (!\OP2|valor_interno\(15)))) # (!\OP1|valor_interno\(15) & (\OP2|valor_interno\(15))))) # (!\SENIALES_CONTROL|selfalgs\(0) & 
-- (((\inst33|opres~67_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SENIALES_CONTROL|selfalgs\(0),
	datab => \OP1|valor_interno\(15),
	datac => \OP2|valor_interno\(15),
	datad => \inst33|opres~67_combout\,
	combout => \inst33|opres~68_combout\);

-- Location: LCCOMB_X76_Y33_N6
\inst33|opres~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|opres~24_combout\ = (\SENIALES_CONTROL|selfalgs\(0)) # (\SENIALES_CONTROL|selop\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SENIALES_CONTROL|selfalgs\(0),
	datab => \SENIALES_CONTROL|selop\(0),
	combout => \inst33|opres~24_combout\);

-- Location: FF_X75_Y33_N9
\inst3|ni\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst33|opres~68_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \inst33|opres~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|ni~q\);

-- Location: LCCOMB_X75_Y33_N12
\inst33|WideOr0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|WideOr0~1_combout\ = (\inst33|opres~53_combout\) # ((\inst33|opres~47_combout\) # ((\inst33|opres~55_combout\) # (\inst33|opres~49_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|opres~53_combout\,
	datab => \inst33|opres~47_combout\,
	datac => \inst33|opres~55_combout\,
	datad => \inst33|opres~49_combout\,
	combout => \inst33|WideOr0~1_combout\);

-- Location: LCCOMB_X74_Y33_N20
\inst33|WideOr0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|WideOr0~0_combout\ = (\inst33|opres~35_combout\) # ((\inst33|opres~29_combout\) # ((\inst33|opres~37_combout\) # (\inst33|opres~31_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|opres~35_combout\,
	datab => \inst33|opres~29_combout\,
	datac => \inst33|opres~37_combout\,
	datad => \inst33|opres~31_combout\,
	combout => \inst33|WideOr0~0_combout\);

-- Location: LCCOMB_X75_Y33_N10
\inst33|WideOr0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|WideOr0~2_combout\ = (\inst33|WideOr0~1_combout\) # ((\inst33|opres~43_combout\) # ((\inst33|WideOr0~0_combout\) # (\inst33|opres~41_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|WideOr0~1_combout\,
	datab => \inst33|opres~43_combout\,
	datac => \inst33|WideOr0~0_combout\,
	datad => \inst33|opres~41_combout\,
	combout => \inst33|WideOr0~2_combout\);

-- Location: LCCOMB_X75_Y33_N24
\inst33|WideOr0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|WideOr0~3_combout\ = (\inst33|WideOr0~2_combout\) # ((\inst33|opres~60_combout\) # ((\inst33|opres~62_combout\) # (\inst33|opres~58_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|WideOr0~2_combout\,
	datab => \inst33|opres~60_combout\,
	datac => \inst33|opres~62_combout\,
	datad => \inst33|opres~58_combout\,
	combout => \inst33|WideOr0~3_combout\);

-- Location: LCCOMB_X75_Y33_N2
\inst33|WideOr0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|WideOr0~4_combout\ = (!\inst33|opres~66_combout\ & (!\inst33|opres~64_combout\ & (!\inst33|opres~68_combout\ & !\inst33|WideOr0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|opres~66_combout\,
	datab => \inst33|opres~64_combout\,
	datac => \inst33|opres~68_combout\,
	datad => \inst33|WideOr0~3_combout\,
	combout => \inst33|WideOr0~4_combout\);

-- Location: FF_X75_Y33_N3
\inst3|zi\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst33|WideOr0~4_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \inst33|opres~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|zi~q\);

-- Location: LCCOMB_X76_Y33_N20
\inst|vi~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|vi~0_combout\ = (\inst33|opres~56_combout\ & \SENIALES_CONTROL|selop\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst33|opres~56_combout\,
	datad => \SENIALES_CONTROL|selop\(0),
	combout => \inst|vi~0_combout\);

-- Location: LCCOMB_X76_Y33_N30
\inst3|vi~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|vi~feeder_combout\ = \inst|vi~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|vi~0_combout\,
	combout => \inst3|vi~feeder_combout\);

-- Location: FF_X76_Y33_N31
\inst3|vi\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst3|vi~feeder_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \inst33|opres~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|vi~q\);

-- Location: LCCOMB_X76_Y34_N14
\inst3|hi~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|hi~0_combout\ = (\SENIALES_CONTROL|selop\(0) & ((\SENIALES_CONTROL|selfalgs\(0) & (\inst3|hi~q\)) # (!\SENIALES_CONTROL|selfalgs\(0) & ((\inst33|opres~43_combout\))))) # (!\SENIALES_CONTROL|selop\(0) & (((\inst3|hi~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SENIALES_CONTROL|selop\(0),
	datab => \SENIALES_CONTROL|selfalgs\(0),
	datac => \inst3|hi~q\,
	datad => \inst33|opres~43_combout\,
	combout => \inst3|hi~0_combout\);

-- Location: FF_X76_Y34_N15
\inst3|hi\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst3|hi~0_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|hi~q\);

-- Location: LCCOMB_X77_Y37_N4
\inst700666|AUX|valor_interno[15]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst700666|AUX|valor_interno[15]~feeder_combout\ = \inst24|valor_interno\(15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst24|valor_interno\(15),
	combout => \inst700666|AUX|valor_interno[15]~feeder_combout\);

-- Location: LCCOMB_X77_Y35_N24
\inst700666|inst1000|Equal1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst700666|inst1000|Equal1~2_combout\ = (\inst107|selregw\(2) & \inst107|selregw\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst107|selregw\(2),
	datad => \inst107|selregw\(0),
	combout => \inst700666|inst1000|Equal1~2_combout\);

-- Location: FF_X77_Y37_N5
\inst700666|AUX|valor_interno[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputclkctrl_outclk\,
	d => \inst700666|AUX|valor_interno[15]~feeder_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \inst700666|inst1000|Equal1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|AUX|valor_interno\(15));

-- Location: LCCOMB_X77_Y37_N2
\inst700666|AUX|valor_interno[14]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst700666|AUX|valor_interno[14]~feeder_combout\ = \inst24|valor_interno\(14)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst24|valor_interno\(14),
	combout => \inst700666|AUX|valor_interno[14]~feeder_combout\);

-- Location: FF_X77_Y37_N3
\inst700666|AUX|valor_interno[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputclkctrl_outclk\,
	d => \inst700666|AUX|valor_interno[14]~feeder_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \inst700666|inst1000|Equal1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|AUX|valor_interno\(14));

-- Location: LCCOMB_X77_Y37_N20
\inst700666|AUX|valor_interno[13]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst700666|AUX|valor_interno[13]~feeder_combout\ = \inst24|valor_interno\(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst24|valor_interno\(13),
	combout => \inst700666|AUX|valor_interno[13]~feeder_combout\);

-- Location: FF_X77_Y37_N21
\inst700666|AUX|valor_interno[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputclkctrl_outclk\,
	d => \inst700666|AUX|valor_interno[13]~feeder_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \inst700666|inst1000|Equal1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|AUX|valor_interno\(13));

-- Location: LCCOMB_X77_Y37_N14
\inst700666|AUX|valor_interno[12]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst700666|AUX|valor_interno[12]~feeder_combout\ = \inst24|valor_interno\(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst24|valor_interno\(12),
	combout => \inst700666|AUX|valor_interno[12]~feeder_combout\);

-- Location: FF_X77_Y37_N15
\inst700666|AUX|valor_interno[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputclkctrl_outclk\,
	d => \inst700666|AUX|valor_interno[12]~feeder_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \inst700666|inst1000|Equal1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|AUX|valor_interno\(12));

-- Location: LCCOMB_X77_Y37_N12
\inst700666|AUX|valor_interno[11]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst700666|AUX|valor_interno[11]~feeder_combout\ = \inst24|valor_interno\(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst24|valor_interno\(11),
	combout => \inst700666|AUX|valor_interno[11]~feeder_combout\);

-- Location: FF_X77_Y37_N13
\inst700666|AUX|valor_interno[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputclkctrl_outclk\,
	d => \inst700666|AUX|valor_interno[11]~feeder_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \inst700666|inst1000|Equal1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|AUX|valor_interno\(11));

-- Location: LCCOMB_X77_Y37_N30
\inst700666|AUX|valor_interno[10]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst700666|AUX|valor_interno[10]~feeder_combout\ = \inst24|valor_interno\(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst24|valor_interno\(10),
	combout => \inst700666|AUX|valor_interno[10]~feeder_combout\);

-- Location: FF_X77_Y37_N31
\inst700666|AUX|valor_interno[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputclkctrl_outclk\,
	d => \inst700666|AUX|valor_interno[10]~feeder_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \inst700666|inst1000|Equal1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|AUX|valor_interno\(10));

-- Location: LCCOMB_X77_Y37_N16
\inst700666|AUX|valor_interno[9]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst700666|AUX|valor_interno[9]~feeder_combout\ = \inst24|valor_interno\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst24|valor_interno\(9),
	combout => \inst700666|AUX|valor_interno[9]~feeder_combout\);

-- Location: FF_X77_Y37_N17
\inst700666|AUX|valor_interno[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputclkctrl_outclk\,
	d => \inst700666|AUX|valor_interno[9]~feeder_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \inst700666|inst1000|Equal1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|AUX|valor_interno\(9));

-- Location: LCCOMB_X77_Y37_N6
\inst700666|AUX|valor_interno[8]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst700666|AUX|valor_interno[8]~feeder_combout\ = \inst24|valor_interno\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst24|valor_interno\(8),
	combout => \inst700666|AUX|valor_interno[8]~feeder_combout\);

-- Location: FF_X77_Y37_N7
\inst700666|AUX|valor_interno[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputclkctrl_outclk\,
	d => \inst700666|AUX|valor_interno[8]~feeder_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \inst700666|inst1000|Equal1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|AUX|valor_interno\(8));

-- Location: LCCOMB_X77_Y37_N28
\inst700666|AUX|valor_interno[7]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst700666|AUX|valor_interno[7]~feeder_combout\ = \inst24|valor_interno\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst24|valor_interno\(7),
	combout => \inst700666|AUX|valor_interno[7]~feeder_combout\);

-- Location: FF_X77_Y37_N29
\inst700666|AUX|valor_interno[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputclkctrl_outclk\,
	d => \inst700666|AUX|valor_interno[7]~feeder_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \inst700666|inst1000|Equal1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|AUX|valor_interno\(7));

-- Location: LCCOMB_X77_Y37_N22
\inst700666|AUX|valor_interno[6]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst700666|AUX|valor_interno[6]~feeder_combout\ = \inst24|valor_interno\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst24|valor_interno\(6),
	combout => \inst700666|AUX|valor_interno[6]~feeder_combout\);

-- Location: FF_X77_Y37_N23
\inst700666|AUX|valor_interno[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputclkctrl_outclk\,
	d => \inst700666|AUX|valor_interno[6]~feeder_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \inst700666|inst1000|Equal1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|AUX|valor_interno\(6));

-- Location: LCCOMB_X77_Y37_N8
\inst700666|AUX|valor_interno[5]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst700666|AUX|valor_interno[5]~feeder_combout\ = \inst24|valor_interno\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst24|valor_interno\(5),
	combout => \inst700666|AUX|valor_interno[5]~feeder_combout\);

-- Location: FF_X77_Y37_N9
\inst700666|AUX|valor_interno[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputclkctrl_outclk\,
	d => \inst700666|AUX|valor_interno[5]~feeder_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \inst700666|inst1000|Equal1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|AUX|valor_interno\(5));

-- Location: LCCOMB_X77_Y37_N26
\inst700666|AUX|valor_interno[4]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst700666|AUX|valor_interno[4]~feeder_combout\ = \inst24|valor_interno\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst24|valor_interno\(4),
	combout => \inst700666|AUX|valor_interno[4]~feeder_combout\);

-- Location: FF_X77_Y37_N27
\inst700666|AUX|valor_interno[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputclkctrl_outclk\,
	d => \inst700666|AUX|valor_interno[4]~feeder_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \inst700666|inst1000|Equal1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|AUX|valor_interno\(4));

-- Location: LCCOMB_X77_Y37_N0
\inst700666|AUX|valor_interno[3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst700666|AUX|valor_interno[3]~feeder_combout\ = \inst24|valor_interno\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst24|valor_interno\(3),
	combout => \inst700666|AUX|valor_interno[3]~feeder_combout\);

-- Location: FF_X77_Y37_N1
\inst700666|AUX|valor_interno[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputclkctrl_outclk\,
	d => \inst700666|AUX|valor_interno[3]~feeder_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \inst700666|inst1000|Equal1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|AUX|valor_interno\(3));

-- Location: LCCOMB_X77_Y37_N18
\inst700666|AUX|valor_interno[2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst700666|AUX|valor_interno[2]~feeder_combout\ = \inst24|valor_interno\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst24|valor_interno\(2),
	combout => \inst700666|AUX|valor_interno[2]~feeder_combout\);

-- Location: FF_X77_Y37_N19
\inst700666|AUX|valor_interno[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputclkctrl_outclk\,
	d => \inst700666|AUX|valor_interno[2]~feeder_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \inst700666|inst1000|Equal1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|AUX|valor_interno\(2));

-- Location: LCCOMB_X77_Y37_N24
\inst700666|AUX|valor_interno[1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst700666|AUX|valor_interno[1]~feeder_combout\ = \inst24|valor_interno\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst24|valor_interno\(1),
	combout => \inst700666|AUX|valor_interno[1]~feeder_combout\);

-- Location: FF_X77_Y37_N25
\inst700666|AUX|valor_interno[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputclkctrl_outclk\,
	d => \inst700666|AUX|valor_interno[1]~feeder_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \inst700666|inst1000|Equal1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|AUX|valor_interno\(1));

-- Location: LCCOMB_X77_Y37_N10
\inst700666|AUX|valor_interno[0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst700666|AUX|valor_interno[0]~feeder_combout\ = \inst24|valor_interno\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst24|valor_interno\(0),
	combout => \inst700666|AUX|valor_interno[0]~feeder_combout\);

-- Location: FF_X77_Y37_N11
\inst700666|AUX|valor_interno[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputclkctrl_outclk\,
	d => \inst700666|AUX|valor_interno[0]~feeder_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \inst700666|inst1000|Equal1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|AUX|valor_interno\(0));

-- Location: LCCOMB_X77_Y33_N10
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

-- Location: FF_X77_Y33_N11
\inst34|valor_interno[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputclkctrl_outclk\,
	d => \inst34|valor_interno[6]~25_combout\,
	asdata => \inst24|valor_interno\(6),
	clrn => \RESET~inputclkctrl_outclk\,
	sload => \inst4|valor_interno~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst34|valor_interno\(6));

-- Location: LCCOMB_X77_Y33_N12
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

-- Location: FF_X77_Y33_N13
\inst34|valor_interno[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputclkctrl_outclk\,
	d => \inst34|valor_interno[7]~27_combout\,
	asdata => \inst24|valor_interno\(7),
	clrn => \RESET~inputclkctrl_outclk\,
	sload => \inst4|valor_interno~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst34|valor_interno\(7));

-- Location: LCCOMB_X77_Y33_N14
\inst34|valor_interno[8]~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst34|valor_interno[8]~29_combout\ = (\inst34|valor_interno\(8) & (!\inst34|valor_interno[7]~28\)) # (!\inst34|valor_interno\(8) & ((\inst34|valor_interno[7]~28\) # (GND)))
-- \inst34|valor_interno[8]~30\ = CARRY((!\inst34|valor_interno[7]~28\) # (!\inst34|valor_interno\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst34|valor_interno\(8),
	datad => VCC,
	cin => \inst34|valor_interno[7]~28\,
	combout => \inst34|valor_interno[8]~29_combout\,
	cout => \inst34|valor_interno[8]~30\);

-- Location: FF_X77_Y33_N15
\inst34|valor_interno[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputclkctrl_outclk\,
	d => \inst34|valor_interno[8]~29_combout\,
	asdata => \inst24|valor_interno\(8),
	clrn => \RESET~inputclkctrl_outclk\,
	sload => \inst4|valor_interno~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst34|valor_interno\(8));

-- Location: LCCOMB_X77_Y33_N16
\inst34|valor_interno[9]~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst34|valor_interno[9]~31_combout\ = (\inst34|valor_interno\(9) & (\inst34|valor_interno[8]~30\ $ (GND))) # (!\inst34|valor_interno\(9) & (!\inst34|valor_interno[8]~30\ & VCC))
-- \inst34|valor_interno[9]~32\ = CARRY((\inst34|valor_interno\(9) & !\inst34|valor_interno[8]~30\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst34|valor_interno\(9),
	datad => VCC,
	cin => \inst34|valor_interno[8]~30\,
	combout => \inst34|valor_interno[9]~31_combout\,
	cout => \inst34|valor_interno[9]~32\);

-- Location: FF_X77_Y33_N17
\inst34|valor_interno[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputclkctrl_outclk\,
	d => \inst34|valor_interno[9]~31_combout\,
	asdata => \inst24|valor_interno\(9),
	clrn => \RESET~inputclkctrl_outclk\,
	sload => \inst4|valor_interno~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst34|valor_interno\(9));

-- Location: LCCOMB_X77_Y33_N18
\inst34|valor_interno[10]~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst34|valor_interno[10]~33_combout\ = (\inst34|valor_interno\(10) & (!\inst34|valor_interno[9]~32\)) # (!\inst34|valor_interno\(10) & ((\inst34|valor_interno[9]~32\) # (GND)))
-- \inst34|valor_interno[10]~34\ = CARRY((!\inst34|valor_interno[9]~32\) # (!\inst34|valor_interno\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst34|valor_interno\(10),
	datad => VCC,
	cin => \inst34|valor_interno[9]~32\,
	combout => \inst34|valor_interno[10]~33_combout\,
	cout => \inst34|valor_interno[10]~34\);

-- Location: FF_X77_Y33_N19
\inst34|valor_interno[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputclkctrl_outclk\,
	d => \inst34|valor_interno[10]~33_combout\,
	asdata => \inst24|valor_interno\(10),
	clrn => \RESET~inputclkctrl_outclk\,
	sload => \inst4|valor_interno~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst34|valor_interno\(10));

-- Location: LCCOMB_X77_Y33_N20
\inst34|valor_interno[11]~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst34|valor_interno[11]~35_combout\ = (\inst34|valor_interno\(11) & (\inst34|valor_interno[10]~34\ $ (GND))) # (!\inst34|valor_interno\(11) & (!\inst34|valor_interno[10]~34\ & VCC))
-- \inst34|valor_interno[11]~36\ = CARRY((\inst34|valor_interno\(11) & !\inst34|valor_interno[10]~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst34|valor_interno\(11),
	datad => VCC,
	cin => \inst34|valor_interno[10]~34\,
	combout => \inst34|valor_interno[11]~35_combout\,
	cout => \inst34|valor_interno[11]~36\);

-- Location: FF_X77_Y33_N21
\inst34|valor_interno[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputclkctrl_outclk\,
	d => \inst34|valor_interno[11]~35_combout\,
	asdata => \inst24|valor_interno\(11),
	clrn => \RESET~inputclkctrl_outclk\,
	sload => \inst4|valor_interno~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst34|valor_interno\(11));

-- Location: LCCOMB_X77_Y33_N22
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

-- Location: FF_X77_Y33_N23
\inst34|valor_interno[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputclkctrl_outclk\,
	d => \inst34|valor_interno[12]~37_combout\,
	asdata => \inst24|valor_interno\(12),
	clrn => \RESET~inputclkctrl_outclk\,
	sload => \inst4|valor_interno~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst34|valor_interno\(12));

-- Location: LCCOMB_X77_Y33_N24
\inst34|valor_interno[13]~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst34|valor_interno[13]~39_combout\ = (\inst34|valor_interno\(13) & (\inst34|valor_interno[12]~38\ $ (GND))) # (!\inst34|valor_interno\(13) & (!\inst34|valor_interno[12]~38\ & VCC))
-- \inst34|valor_interno[13]~40\ = CARRY((\inst34|valor_interno\(13) & !\inst34|valor_interno[12]~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst34|valor_interno\(13),
	datad => VCC,
	cin => \inst34|valor_interno[12]~38\,
	combout => \inst34|valor_interno[13]~39_combout\,
	cout => \inst34|valor_interno[13]~40\);

-- Location: FF_X77_Y33_N25
\inst34|valor_interno[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputclkctrl_outclk\,
	d => \inst34|valor_interno[13]~39_combout\,
	asdata => \inst24|valor_interno\(13),
	clrn => \RESET~inputclkctrl_outclk\,
	sload => \inst4|valor_interno~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst34|valor_interno\(13));

-- Location: LCCOMB_X77_Y33_N26
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

-- Location: FF_X77_Y33_N27
\inst34|valor_interno[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputclkctrl_outclk\,
	d => \inst34|valor_interno[14]~41_combout\,
	asdata => \inst24|valor_interno\(14),
	clrn => \RESET~inputclkctrl_outclk\,
	sload => \inst4|valor_interno~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst34|valor_interno\(14));

-- Location: LCCOMB_X77_Y33_N28
\inst34|valor_interno[15]~43\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst34|valor_interno[15]~43_combout\ = \inst34|valor_interno[14]~42\ $ (!\inst34|valor_interno\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst34|valor_interno\(15),
	cin => \inst34|valor_interno[14]~42\,
	combout => \inst34|valor_interno[15]~43_combout\);

-- Location: FF_X77_Y33_N29
\inst34|valor_interno[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputclkctrl_outclk\,
	d => \inst34|valor_interno[15]~43_combout\,
	asdata => \inst24|valor_interno\(15),
	clrn => \RESET~inputclkctrl_outclk\,
	sload => \inst4|valor_interno~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst34|valor_interno\(15));

-- Location: UNVM_X0_Y40_N40
\~QUARTUS_CREATED_UNVM~\ : fiftyfivenm_unvm
-- pragma translate_off
GENERIC MAP (
	addr_range1_end_addr => -1,
	addr_range1_offset => -1,
	addr_range2_offset => -1,
	is_compressed_image => "false",
	is_dual_boot => "false",
	is_eram_skip => "false",
	max_ufm_valid_addr => -1,
	max_valid_addr => -1,
	min_ufm_valid_addr => -1,
	min_valid_addr => -1,
	part_name => "quartus_created_unvm",
	reserve_block => "true")
-- pragma translate_on
PORT MAP (
	nosc_ena => \~QUARTUS_CREATED_GND~I_combout\,
	xe_ye => \~QUARTUS_CREATED_GND~I_combout\,
	se => \~QUARTUS_CREATED_GND~I_combout\,
	busy => \~QUARTUS_CREATED_UNVM~~busy\);

-- Location: ADCBLOCK_X43_Y52_N0
\~QUARTUS_CREATED_ADC1~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 1,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC1~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC1~~eoc\);

-- Location: ADCBLOCK_X43_Y51_N0
\~QUARTUS_CREATED_ADC2~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 2,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC2~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC2~~eoc\);

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


