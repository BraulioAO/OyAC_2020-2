-- Copyright (C) 1991-2015 Altera Corporation. All rights reserved.
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, the Altera Quartus Prime License Agreement,
-- the Altera MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Altera and sold by Altera or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 15.1.0 Build 185 10/21/2015 SJ Lite Edition"

-- DATE "03/30/2020 12:45:17"

-- 
-- Device: Altera EP4CE22F17C6 Package FBGA256
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	m68hc11 IS
    PORT (
	Flag_C : OUT std_logic;
	CLK : IN std_logic;
	RESET : IN std_logic;
	IRQn : IN std_logic;
	XIRQn : IN std_logic;
	Flag_V : OUT std_logic;
	Flag_Z : OUT std_logic;
	Flag_N : OUT std_logic;
	Flag_I : OUT std_logic;
	Flag_H : OUT std_logic;
	Flag_X : OUT std_logic;
	Flag_S : OUT std_logic;
	ACCA_D : OUT std_logic_vector(7 DOWNTO 0);
	ACCB_D : OUT std_logic_vector(7 DOWNTO 0);
	AP_D : OUT std_logic_vector(15 DOWNTO 0);
	AUX_D : OUT std_logic_vector(15 DOWNTO 0);
	Debug_Q : OUT std_logic_vector(7 DOWNTO 0);
	Debug_Yupa : OUT std_logic_vector(7 DOWNTO 0);
	Edo_Pres : OUT std_logic_vector(11 DOWNTO 0);
	PC_D : OUT std_logic_vector(15 DOWNTO 0);
	X_D : OUT std_logic_vector(15 DOWNTO 0);
	Y_D : OUT std_logic_vector(15 DOWNTO 0)
	);
END m68hc11;

-- Design Ports Information
-- Flag_C	=>  Location: PIN_D16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Flag_V	=>  Location: PIN_K1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Flag_Z	=>  Location: PIN_J2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Flag_N	=>  Location: PIN_K16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Flag_I	=>  Location: PIN_P2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Flag_H	=>  Location: PIN_N3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Flag_X	=>  Location: PIN_T2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Flag_S	=>  Location: PIN_G5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCA_D[7]	=>  Location: PIN_P16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCA_D[6]	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCA_D[5]	=>  Location: PIN_K2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCA_D[4]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCA_D[3]	=>  Location: PIN_D5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCA_D[2]	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCA_D[1]	=>  Location: PIN_P15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCA_D[0]	=>  Location: PIN_N14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCB_D[7]	=>  Location: PIN_K15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCB_D[6]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCB_D[5]	=>  Location: PIN_J14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCB_D[4]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCB_D[3]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCB_D[2]	=>  Location: PIN_L1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCB_D[1]	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCB_D[0]	=>  Location: PIN_T10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AP_D[15]	=>  Location: PIN_L14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AP_D[14]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AP_D[13]	=>  Location: PIN_P8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AP_D[12]	=>  Location: PIN_L2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AP_D[11]	=>  Location: PIN_N15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AP_D[10]	=>  Location: PIN_A3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AP_D[9]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AP_D[8]	=>  Location: PIN_D3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AP_D[7]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AP_D[6]	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AP_D[5]	=>  Location: PIN_R12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AP_D[4]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AP_D[3]	=>  Location: PIN_L16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AP_D[2]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AP_D[1]	=>  Location: PIN_L13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AP_D[0]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AUX_D[15]	=>  Location: PIN_E7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AUX_D[14]	=>  Location: PIN_A4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AUX_D[13]	=>  Location: PIN_R4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AUX_D[12]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AUX_D[11]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AUX_D[10]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AUX_D[9]	=>  Location: PIN_B5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AUX_D[8]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AUX_D[7]	=>  Location: PIN_P1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AUX_D[6]	=>  Location: PIN_P14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AUX_D[5]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AUX_D[4]	=>  Location: PIN_D6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AUX_D[3]	=>  Location: PIN_N2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AUX_D[2]	=>  Location: PIN_T4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AUX_D[1]	=>  Location: PIN_B1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AUX_D[0]	=>  Location: PIN_R14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Debug_Q[7]	=>  Location: PIN_P11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Debug_Q[6]	=>  Location: PIN_R3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Debug_Q[5]	=>  Location: PIN_N5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Debug_Q[4]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Debug_Q[3]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Debug_Q[2]	=>  Location: PIN_F2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Debug_Q[1]	=>  Location: PIN_R13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Debug_Q[0]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Debug_Yupa[7]	=>  Location: PIN_P9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Debug_Yupa[6]	=>  Location: PIN_D1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Debug_Yupa[5]	=>  Location: PIN_A2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Debug_Yupa[4]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Debug_Yupa[3]	=>  Location: PIN_T15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Debug_Yupa[2]	=>  Location: PIN_N16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Debug_Yupa[1]	=>  Location: PIN_F9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Debug_Yupa[0]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Edo_Pres[11]	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Edo_Pres[10]	=>  Location: PIN_E9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Edo_Pres[9]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Edo_Pres[8]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Edo_Pres[7]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Edo_Pres[6]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Edo_Pres[5]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Edo_Pres[4]	=>  Location: PIN_F1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Edo_Pres[3]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Edo_Pres[2]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Edo_Pres[1]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Edo_Pres[0]	=>  Location: PIN_F8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_D[15]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_D[14]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_D[13]	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_D[12]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_D[11]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_D[10]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_D[9]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_D[8]	=>  Location: PIN_T13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_D[7]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_D[6]	=>  Location: PIN_N11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_D[5]	=>  Location: PIN_M10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_D[4]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_D[3]	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_D[2]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_D[1]	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_D[0]	=>  Location: PIN_T5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X_D[15]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X_D[14]	=>  Location: PIN_E6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X_D[13]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X_D[12]	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X_D[11]	=>  Location: PIN_P6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X_D[10]	=>  Location: PIN_N1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X_D[9]	=>  Location: PIN_C3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X_D[8]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X_D[7]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X_D[6]	=>  Location: PIN_L4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X_D[5]	=>  Location: PIN_E8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X_D[4]	=>  Location: PIN_F3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X_D[3]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X_D[2]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X_D[1]	=>  Location: PIN_B4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X_D[0]	=>  Location: PIN_T11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y_D[15]	=>  Location: PIN_B3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y_D[14]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y_D[13]	=>  Location: PIN_K5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y_D[12]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y_D[11]	=>  Location: PIN_R1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y_D[10]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y_D[9]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y_D[8]	=>  Location: PIN_T3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y_D[7]	=>  Location: PIN_L15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y_D[6]	=>  Location: PIN_L3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y_D[5]	=>  Location: PIN_R16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y_D[4]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y_D[3]	=>  Location: PIN_T6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y_D[2]	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y_D[1]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y_D[0]	=>  Location: PIN_T14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IRQn	=>  Location: PIN_N12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- XIRQn	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RESET	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_R8,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF m68hc11 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Flag_C : std_logic;
SIGNAL ww_CLK : std_logic;
SIGNAL ww_RESET : std_logic;
SIGNAL ww_IRQn : std_logic;
SIGNAL ww_XIRQn : std_logic;
SIGNAL ww_Flag_V : std_logic;
SIGNAL ww_Flag_Z : std_logic;
SIGNAL ww_Flag_N : std_logic;
SIGNAL ww_Flag_I : std_logic;
SIGNAL ww_Flag_H : std_logic;
SIGNAL ww_Flag_X : std_logic;
SIGNAL ww_Flag_S : std_logic;
SIGNAL ww_ACCA_D : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_ACCB_D : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_AP_D : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_AUX_D : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_Debug_Q : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_Debug_Yupa : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_Edo_Pres : std_logic_vector(11 DOWNTO 0);
SIGNAL ww_PC_D : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_X_D : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_Y_D : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a31_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a31_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a31_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a31_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a15_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a15_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a15_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a15_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a23_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a23_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a23_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a23_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a7_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a7_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a7_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a7_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a55_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a55_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a55_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a55_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a39_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a39_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a39_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a39_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a63_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a63_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a63_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a63_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a47_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a47_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a47_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a47_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a30_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a30_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a30_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a30_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a14_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a14_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a14_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a14_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a22_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a22_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a22_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a22_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a6_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a6_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a6_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a6_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a54_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a54_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a54_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a54_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a38_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a38_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a38_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a38_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a62_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a62_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a62_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a62_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a46_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a46_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a46_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a46_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a29_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a29_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a29_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a29_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a21_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a21_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a21_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a21_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a13_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a13_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a13_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a13_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a5_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a5_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a5_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a5_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a61_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a61_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a61_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a61_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a53_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a53_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a53_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a53_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a45_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a45_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a45_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a45_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a37_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a37_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a37_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a37_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a28_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a28_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a28_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a28_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a12_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a12_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a12_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a12_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a20_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a20_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a20_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a20_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a4_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a4_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a4_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a4_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a52_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a52_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a52_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a52_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a36_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a36_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a36_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a36_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a60_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a60_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a60_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a60_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a44_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a44_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a44_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a44_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a27_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a27_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a27_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a27_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a11_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a11_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a11_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a11_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a19_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a19_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a19_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a19_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a3_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a3_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a3_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a3_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a51_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a51_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a51_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a51_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a35_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a35_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a35_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a35_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a59_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a59_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a59_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a59_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a43_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a43_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a43_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a43_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a26_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a26_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a26_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a26_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a10_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a10_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a10_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a10_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a18_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a18_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a18_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a18_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a2_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a2_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a2_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a2_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a50_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a50_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a50_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a50_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a34_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a34_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a34_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a34_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a58_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a58_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a58_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a58_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a42_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a42_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a42_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a42_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a25_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a25_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a25_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a25_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a9_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a9_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a9_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a9_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a17_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a17_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a17_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a17_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a1_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a1_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a1_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a1_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a49_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a49_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a49_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a49_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a33_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a33_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a33_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a33_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a57_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a57_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a57_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a57_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a41_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a41_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a41_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a41_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a24_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a24_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a24_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a24_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a8_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a8_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a8_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a8_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a16_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a16_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a16_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a16_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a48_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a48_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a48_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a48_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a32_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a32_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a32_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a32_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a56_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a56_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a56_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a56_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a40_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a40_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a40_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a40_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst7|inst2|nCRI~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst7|inst2|nCBD~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \RESET~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \IRQn~input_o\ : std_logic;
SIGNAL \XIRQn~input_o\ : std_logic;
SIGNAL \Flag_C~output_o\ : std_logic;
SIGNAL \Flag_V~output_o\ : std_logic;
SIGNAL \Flag_Z~output_o\ : std_logic;
SIGNAL \Flag_N~output_o\ : std_logic;
SIGNAL \Flag_I~output_o\ : std_logic;
SIGNAL \Flag_H~output_o\ : std_logic;
SIGNAL \Flag_X~output_o\ : std_logic;
SIGNAL \Flag_S~output_o\ : std_logic;
SIGNAL \ACCA_D[7]~output_o\ : std_logic;
SIGNAL \ACCA_D[6]~output_o\ : std_logic;
SIGNAL \ACCA_D[5]~output_o\ : std_logic;
SIGNAL \ACCA_D[4]~output_o\ : std_logic;
SIGNAL \ACCA_D[3]~output_o\ : std_logic;
SIGNAL \ACCA_D[2]~output_o\ : std_logic;
SIGNAL \ACCA_D[1]~output_o\ : std_logic;
SIGNAL \ACCA_D[0]~output_o\ : std_logic;
SIGNAL \ACCB_D[7]~output_o\ : std_logic;
SIGNAL \ACCB_D[6]~output_o\ : std_logic;
SIGNAL \ACCB_D[5]~output_o\ : std_logic;
SIGNAL \ACCB_D[4]~output_o\ : std_logic;
SIGNAL \ACCB_D[3]~output_o\ : std_logic;
SIGNAL \ACCB_D[2]~output_o\ : std_logic;
SIGNAL \ACCB_D[1]~output_o\ : std_logic;
SIGNAL \ACCB_D[0]~output_o\ : std_logic;
SIGNAL \AP_D[15]~output_o\ : std_logic;
SIGNAL \AP_D[14]~output_o\ : std_logic;
SIGNAL \AP_D[13]~output_o\ : std_logic;
SIGNAL \AP_D[12]~output_o\ : std_logic;
SIGNAL \AP_D[11]~output_o\ : std_logic;
SIGNAL \AP_D[10]~output_o\ : std_logic;
SIGNAL \AP_D[9]~output_o\ : std_logic;
SIGNAL \AP_D[8]~output_o\ : std_logic;
SIGNAL \AP_D[7]~output_o\ : std_logic;
SIGNAL \AP_D[6]~output_o\ : std_logic;
SIGNAL \AP_D[5]~output_o\ : std_logic;
SIGNAL \AP_D[4]~output_o\ : std_logic;
SIGNAL \AP_D[3]~output_o\ : std_logic;
SIGNAL \AP_D[2]~output_o\ : std_logic;
SIGNAL \AP_D[1]~output_o\ : std_logic;
SIGNAL \AP_D[0]~output_o\ : std_logic;
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
SIGNAL \Debug_Q[7]~output_o\ : std_logic;
SIGNAL \Debug_Q[6]~output_o\ : std_logic;
SIGNAL \Debug_Q[5]~output_o\ : std_logic;
SIGNAL \Debug_Q[4]~output_o\ : std_logic;
SIGNAL \Debug_Q[3]~output_o\ : std_logic;
SIGNAL \Debug_Q[2]~output_o\ : std_logic;
SIGNAL \Debug_Q[1]~output_o\ : std_logic;
SIGNAL \Debug_Q[0]~output_o\ : std_logic;
SIGNAL \Debug_Yupa[7]~output_o\ : std_logic;
SIGNAL \Debug_Yupa[6]~output_o\ : std_logic;
SIGNAL \Debug_Yupa[5]~output_o\ : std_logic;
SIGNAL \Debug_Yupa[4]~output_o\ : std_logic;
SIGNAL \Debug_Yupa[3]~output_o\ : std_logic;
SIGNAL \Debug_Yupa[2]~output_o\ : std_logic;
SIGNAL \Debug_Yupa[1]~output_o\ : std_logic;
SIGNAL \Debug_Yupa[0]~output_o\ : std_logic;
SIGNAL \Edo_Pres[11]~output_o\ : std_logic;
SIGNAL \Edo_Pres[10]~output_o\ : std_logic;
SIGNAL \Edo_Pres[9]~output_o\ : std_logic;
SIGNAL \Edo_Pres[8]~output_o\ : std_logic;
SIGNAL \Edo_Pres[7]~output_o\ : std_logic;
SIGNAL \Edo_Pres[6]~output_o\ : std_logic;
SIGNAL \Edo_Pres[5]~output_o\ : std_logic;
SIGNAL \Edo_Pres[4]~output_o\ : std_logic;
SIGNAL \Edo_Pres[3]~output_o\ : std_logic;
SIGNAL \Edo_Pres[2]~output_o\ : std_logic;
SIGNAL \Edo_Pres[1]~output_o\ : std_logic;
SIGNAL \Edo_Pres[0]~output_o\ : std_logic;
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
SIGNAL \X_D[15]~output_o\ : std_logic;
SIGNAL \X_D[14]~output_o\ : std_logic;
SIGNAL \X_D[13]~output_o\ : std_logic;
SIGNAL \X_D[12]~output_o\ : std_logic;
SIGNAL \X_D[11]~output_o\ : std_logic;
SIGNAL \X_D[10]~output_o\ : std_logic;
SIGNAL \X_D[9]~output_o\ : std_logic;
SIGNAL \X_D[8]~output_o\ : std_logic;
SIGNAL \X_D[7]~output_o\ : std_logic;
SIGNAL \X_D[6]~output_o\ : std_logic;
SIGNAL \X_D[5]~output_o\ : std_logic;
SIGNAL \X_D[4]~output_o\ : std_logic;
SIGNAL \X_D[3]~output_o\ : std_logic;
SIGNAL \X_D[2]~output_o\ : std_logic;
SIGNAL \X_D[1]~output_o\ : std_logic;
SIGNAL \X_D[0]~output_o\ : std_logic;
SIGNAL \Y_D[15]~output_o\ : std_logic;
SIGNAL \Y_D[14]~output_o\ : std_logic;
SIGNAL \Y_D[13]~output_o\ : std_logic;
SIGNAL \Y_D[12]~output_o\ : std_logic;
SIGNAL \Y_D[11]~output_o\ : std_logic;
SIGNAL \Y_D[10]~output_o\ : std_logic;
SIGNAL \Y_D[9]~output_o\ : std_logic;
SIGNAL \Y_D[8]~output_o\ : std_logic;
SIGNAL \Y_D[7]~output_o\ : std_logic;
SIGNAL \Y_D[6]~output_o\ : std_logic;
SIGNAL \Y_D[5]~output_o\ : std_logic;
SIGNAL \Y_D[4]~output_o\ : std_logic;
SIGNAL \Y_D[3]~output_o\ : std_logic;
SIGNAL \Y_D[2]~output_o\ : std_logic;
SIGNAL \Y_D[1]~output_o\ : std_logic;
SIGNAL \Y_D[0]~output_o\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst7|inst4|valor_interno[0]~33_combout\ : std_logic;
SIGNAL \RESET~input_o\ : std_logic;
SIGNAL \RESET~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst7|inst2|B4~q\ : std_logic;
SIGNAL \inst7|inst3|SELECTOR~1_combout\ : std_logic;
SIGNAL \inst7|inst4|valor_interno[1]~11_combout\ : std_logic;
SIGNAL \inst7|inst5|$00000|auto_generated|result_node[1]~11_combout\ : std_logic;
SIGNAL \inst7|inst1|mem~15_combout\ : std_logic;
SIGNAL \inst7|inst1|mem~16_combout\ : std_logic;
SIGNAL \inst7|inst1|mem~13_combout\ : std_logic;
SIGNAL \inst7|inst1|mem~19_combout\ : std_logic;
SIGNAL \inst7|inst4|valor_interno[1]~12\ : std_logic;
SIGNAL \inst7|inst4|valor_interno[2]~13_combout\ : std_logic;
SIGNAL \inst7|inst4|valor_interno[2]~14\ : std_logic;
SIGNAL \inst7|inst4|valor_interno[3]~15_combout\ : std_logic;
SIGNAL \inst7|inst5|$00000|auto_generated|result_node[3]~9_combout\ : std_logic;
SIGNAL \inst7|inst4|valor_interno[3]~16\ : std_logic;
SIGNAL \inst7|inst4|valor_interno[4]~18\ : std_logic;
SIGNAL \inst7|inst4|valor_interno[5]~19_combout\ : std_logic;
SIGNAL \inst7|inst1|mem~10_combout\ : std_logic;
SIGNAL \inst7|inst1|mem~21_combout\ : std_logic;
SIGNAL \inst7|inst1|mem~23_combout\ : std_logic;
SIGNAL \inst7|inst2|nCRI~q\ : std_logic;
SIGNAL \inst7|inst2|nCRI~clkctrl_outclk\ : std_logic;
SIGNAL \inst7|inst1|mem~28_combout\ : std_logic;
SIGNAL \inst7|inst1|mem~24_combout\ : std_logic;
SIGNAL \inst7|inst1|mem~25_combout\ : std_logic;
SIGNAL \inst7|inst1|mem~26_combout\ : std_logic;
SIGNAL \inst7|inst2|nCBD~q\ : std_logic;
SIGNAL \inst7|inst2|nCBD~clkctrl_outclk\ : std_logic;
SIGNAL \inst7|inst1|mem~8_combout\ : std_logic;
SIGNAL \inst7|inst1|mem~9_combout\ : std_logic;
SIGNAL \inst7|inst1|mem~27_combout\ : std_logic;
SIGNAL \PC|data_out[0]~16_combout\ : std_logic;
SIGNAL \PC|data_out[0]~17\ : std_logic;
SIGNAL \PC|data_out[1]~18_combout\ : std_logic;
SIGNAL \PC|data_out[1]~19\ : std_logic;
SIGNAL \PC|data_out[2]~20_combout\ : std_logic;
SIGNAL \PC|data_out[2]~21\ : std_logic;
SIGNAL \PC|data_out[3]~22_combout\ : std_logic;
SIGNAL \PC|data_out[3]~23\ : std_logic;
SIGNAL \PC|data_out[4]~24_combout\ : std_logic;
SIGNAL \PC|data_out[4]~25\ : std_logic;
SIGNAL \PC|data_out[5]~26_combout\ : std_logic;
SIGNAL \PC|data_out[5]~27\ : std_logic;
SIGNAL \PC|data_out[6]~28_combout\ : std_logic;
SIGNAL \PC|data_out[6]~29\ : std_logic;
SIGNAL \PC|data_out[7]~30_combout\ : std_logic;
SIGNAL \PC|data_out[7]~31\ : std_logic;
SIGNAL \PC|data_out[8]~32_combout\ : std_logic;
SIGNAL \PC|data_out[8]~33\ : std_logic;
SIGNAL \PC|data_out[9]~34_combout\ : std_logic;
SIGNAL \PC|data_out[9]~35\ : std_logic;
SIGNAL \PC|data_out[10]~36_combout\ : std_logic;
SIGNAL \PC|data_out[10]~37\ : std_logic;
SIGNAL \PC|data_out[11]~38_combout\ : std_logic;
SIGNAL \PC|data_out[11]~39\ : std_logic;
SIGNAL \PC|data_out[12]~40_combout\ : std_logic;
SIGNAL \PC|data_out[12]~41\ : std_logic;
SIGNAL \PC|data_out[13]~42_combout\ : std_logic;
SIGNAL \PC|data_out[13]~43\ : std_logic;
SIGNAL \PC|data_out[14]~44_combout\ : std_logic;
SIGNAL \inst6|mem_rtl_0|auto_generated|address_reg_b[1]~feeder_combout\ : std_logic;
SIGNAL \PC|data_out[14]~45\ : std_logic;
SIGNAL \PC|data_out[15]~46_combout\ : std_logic;
SIGNAL \inst6|data[1]~3_combout\ : std_logic;
SIGNAL \inst6|mem_rtl_0|auto_generated|rden_decode_b|w_anode739w[3]~0_combout\ : std_logic;
SIGNAL \inst|valor_interno[0]~feeder_combout\ : std_logic;
SIGNAL \inst|valor_interno[1]~feeder_combout\ : std_logic;
SIGNAL \inst|valor_interno[2]~feeder_combout\ : std_logic;
SIGNAL \inst|valor_interno[3]~feeder_combout\ : std_logic;
SIGNAL \inst|valor_interno[4]~feeder_combout\ : std_logic;
SIGNAL \inst|valor_interno[5]~feeder_combout\ : std_logic;
SIGNAL \inst|valor_interno[6]~feeder_combout\ : std_logic;
SIGNAL \inst|valor_interno[7]~feeder_combout\ : std_logic;
SIGNAL \inst|valor_interno[8]~feeder_combout\ : std_logic;
SIGNAL \inst|valor_interno[9]~feeder_combout\ : std_logic;
SIGNAL \inst|valor_interno[10]~feeder_combout\ : std_logic;
SIGNAL \inst|valor_interno[11]~feeder_combout\ : std_logic;
SIGNAL \inst|valor_interno[12]~feeder_combout\ : std_logic;
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a49~portbdataout\ : std_logic;
SIGNAL \inst6|mem_rtl_0|auto_generated|rden_decode_b|w_anode717w[3]~0_combout\ : std_logic;
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a33~portbdataout\ : std_logic;
SIGNAL \inst6|data[1]~46_combout\ : std_logic;
SIGNAL \inst6|mem_rtl_0|auto_generated|rden_decode_b|w_anode706w[3]~0_combout\ : std_logic;
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a25~portbdataout\ : std_logic;
SIGNAL \inst6|mem_rtl_0|auto_generated|rden_decode_b|w_anode684w[3]~0_combout\ : std_logic;
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a9~portbdataout\ : std_logic;
SIGNAL \inst6|data[1]~43_combout\ : std_logic;
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a1~portbdataout\ : std_logic;
SIGNAL \inst6|mem_rtl_0|auto_generated|rden_decode_b|w_anode695w[3]~0_combout\ : std_logic;
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a17~portbdataout\ : std_logic;
SIGNAL \inst6|data[1]~44_combout\ : std_logic;
SIGNAL \inst6|data[1]~45_combout\ : std_logic;
SIGNAL \inst6|mem~25feeder_combout\ : std_logic;
SIGNAL \inst6|mem~25_q\ : std_logic;
SIGNAL \inst6|data[7]~7_combout\ : std_logic;
SIGNAL \inst6|data[1]~5_combout\ : std_logic;
SIGNAL \inst6|mem_rtl_0|auto_generated|rden_decode_b|w_anode728w[3]~0_combout\ : std_logic;
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a41~portbdataout\ : std_logic;
SIGNAL \inst6|mem_rtl_0|auto_generated|rden_decode_b|w_anode750w[3]~0_combout\ : std_logic;
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a57~portbdataout\ : std_logic;
SIGNAL \inst6|data[1]~47_combout\ : std_logic;
SIGNAL \inst6|data[1]~48_combout\ : std_logic;
SIGNAL \inst8|valor_interno[5]~feeder_combout\ : std_logic;
SIGNAL \inst7|inst5|$00000|auto_generated|result_node[5]~6_combout\ : std_logic;
SIGNAL \inst7|inst4|valor_interno[5]~20\ : std_logic;
SIGNAL \inst7|inst4|valor_interno[6]~21_combout\ : std_logic;
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a58~portbdataout\ : std_logic;
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a42~portbdataout\ : std_logic;
SIGNAL \inst6|data[2]~41_combout\ : std_logic;
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a50~portbdataout\ : std_logic;
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a34~portbdataout\ : std_logic;
SIGNAL \inst6|data[2]~40_combout\ : std_logic;
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a10~portbdataout\ : std_logic;
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a26~portbdataout\ : std_logic;
SIGNAL \inst6|data[2]~37_combout\ : std_logic;
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a2~portbdataout\ : std_logic;
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a18~portbdataout\ : std_logic;
SIGNAL \inst6|data[2]~38_combout\ : std_logic;
SIGNAL \inst6|data[2]~39_combout\ : std_logic;
SIGNAL \inst6|data[2]~42_combout\ : std_logic;
SIGNAL \inst7|inst5|$00000|auto_generated|result_node[6]~5_combout\ : std_logic;
SIGNAL \inst7|inst4|valor_interno[6]~22\ : std_logic;
SIGNAL \inst7|inst4|valor_interno[7]~23_combout\ : std_logic;
SIGNAL \inst6|data[0]~26_combout\ : std_logic;
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a35~portbdataout\ : std_logic;
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a51~portbdataout\ : std_logic;
SIGNAL \inst6|data[3]~34_combout\ : std_logic;
SIGNAL \inst6|data[0]~15_combout\ : std_logic;
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a11~portbdataout\ : std_logic;
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a27~portbdataout\ : std_logic;
SIGNAL \inst6|data[3]~31_combout\ : std_logic;
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a19~portbdataout\ : std_logic;
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a3~portbdataout\ : std_logic;
SIGNAL \inst6|data[3]~32_combout\ : std_logic;
SIGNAL \inst6|data[3]~33_combout\ : std_logic;
SIGNAL \inst6|data[0]~28_combout\ : std_logic;
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a43~portbdataout\ : std_logic;
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a59~portbdataout\ : std_logic;
SIGNAL \inst6|data[3]~35_combout\ : std_logic;
SIGNAL \inst6|data[3]~36_combout\ : std_logic;
SIGNAL \inst8|valor_interno[7]~feeder_combout\ : std_logic;
SIGNAL \inst7|inst5|$00000|auto_generated|result_node[7]~4_combout\ : std_logic;
SIGNAL \inst7|inst4|valor_interno[7]~24\ : std_logic;
SIGNAL \inst7|inst4|valor_interno[8]~25_combout\ : std_logic;
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a60~portbdataout\ : std_logic;
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a44~portbdataout\ : std_logic;
SIGNAL \inst6|data[4]~29_combout\ : std_logic;
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a52~portbdataout\ : std_logic;
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a36~portbdataout\ : std_logic;
SIGNAL \inst6|data[4]~27_combout\ : std_logic;
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a20~portbdataout\ : std_logic;
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a4~portbdataout\ : std_logic;
SIGNAL \inst6|data[4]~24_combout\ : std_logic;
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a28~portbdataout\ : std_logic;
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a12~portbdataout\ : std_logic;
SIGNAL \inst6|data[4]~23_combout\ : std_logic;
SIGNAL \inst6|data[4]~25_combout\ : std_logic;
SIGNAL \inst6|data[4]~30_combout\ : std_logic;
SIGNAL \inst8|valor_interno[8]~feeder_combout\ : std_logic;
SIGNAL \inst7|inst5|$00000|auto_generated|result_node[8]~3_combout\ : std_logic;
SIGNAL \inst7|inst4|valor_interno[8]~26\ : std_logic;
SIGNAL \inst7|inst4|valor_interno[9]~27_combout\ : std_logic;
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a53~portbdataout\ : std_logic;
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a61~portbdataout\ : std_logic;
SIGNAL \inst6|data[5]~20_combout\ : std_logic;
SIGNAL \inst6|data[0]~19_combout\ : std_logic;
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a45~portbdataout\ : std_logic;
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a37~portbdataout\ : std_logic;
SIGNAL \inst6|data[5]~21_combout\ : std_logic;
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a29~portbdataout\ : std_logic;
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a21~portbdataout\ : std_logic;
SIGNAL \inst6|data[5]~16_combout\ : std_logic;
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a5~portbdataout\ : std_logic;
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a13~portbdataout\ : std_logic;
SIGNAL \inst6|data[5]~17_combout\ : std_logic;
SIGNAL \inst6|data[5]~18_combout\ : std_logic;
SIGNAL \inst6|data[5]~22_combout\ : std_logic;
SIGNAL \inst8|valor_interno[9]~feeder_combout\ : std_logic;
SIGNAL \inst7|inst5|$00000|auto_generated|result_node[9]~2_combout\ : std_logic;
SIGNAL \inst7|inst4|valor_interno[9]~28\ : std_logic;
SIGNAL \inst7|inst4|valor_interno[10]~29_combout\ : std_logic;
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a38~portbdataout\ : std_logic;
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a54~portbdataout\ : std_logic;
SIGNAL \inst6|data[6]~12_combout\ : std_logic;
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a6~portbdataout\ : std_logic;
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a22~portbdataout\ : std_logic;
SIGNAL \inst6|data[6]~10_combout\ : std_logic;
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a14~portbdataout\ : std_logic;
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a30~portbdataout\ : std_logic;
SIGNAL \inst6|data[6]~9_combout\ : std_logic;
SIGNAL \inst6|data[6]~11_combout\ : std_logic;
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a46~portbdataout\ : std_logic;
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a62~portbdataout\ : std_logic;
SIGNAL \inst6|data[6]~13_combout\ : std_logic;
SIGNAL \inst6|data[6]~14_combout\ : std_logic;
SIGNAL \inst8|valor_interno[10]~feeder_combout\ : std_logic;
SIGNAL \inst7|inst5|$00000|auto_generated|result_node[10]~1_combout\ : std_logic;
SIGNAL \inst7|inst4|valor_interno[10]~30\ : std_logic;
SIGNAL \inst7|inst4|valor_interno[11]~31_combout\ : std_logic;
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a55~portbdataout\ : std_logic;
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a39~portbdataout\ : std_logic;
SIGNAL \inst6|data[7]~4_combout\ : std_logic;
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a47~portbdataout\ : std_logic;
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a63~portbdataout\ : std_logic;
SIGNAL \inst6|data[7]~6_combout\ : std_logic;
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a15~portbdataout\ : std_logic;
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a31~portbdataout\ : std_logic;
SIGNAL \inst6|data[7]~0_combout\ : std_logic;
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a7~portbdataout\ : std_logic;
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a23~portbdataout\ : std_logic;
SIGNAL \inst6|data[7]~1_combout\ : std_logic;
SIGNAL \inst6|data[7]~2_combout\ : std_logic;
SIGNAL \inst6|data[7]~8_combout\ : std_logic;
SIGNAL \inst7|inst5|$00000|auto_generated|result_node[11]~0_combout\ : std_logic;
SIGNAL \inst7|inst1|mem~14_combout\ : std_logic;
SIGNAL \inst7|inst1|mem~17_combout\ : std_logic;
SIGNAL \inst7|inst3|SELECTOR~0_combout\ : std_logic;
SIGNAL \inst7|inst4|valor_interno[4]~17_combout\ : std_logic;
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a56~portbdataout\ : std_logic;
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a40~portbdataout\ : std_logic;
SIGNAL \inst6|data[0]~53_combout\ : std_logic;
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a48~portbdataout\ : std_logic;
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a32~portbdataout\ : std_logic;
SIGNAL \inst6|data[0]~52_combout\ : std_logic;
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a8~portbdataout\ : std_logic;
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a24~portbdataout\ : std_logic;
SIGNAL \inst6|data[0]~49_combout\ : std_logic;
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a16~portbdataout\ : std_logic;
SIGNAL \inst6|mem_rtl_0|auto_generated|ram_block1a0~portbdataout\ : std_logic;
SIGNAL \inst6|data[0]~50_combout\ : std_logic;
SIGNAL \inst6|data[0]~51_combout\ : std_logic;
SIGNAL \inst6|data[0]~54_combout\ : std_logic;
SIGNAL \inst8|valor_interno[4]~feeder_combout\ : std_logic;
SIGNAL \inst7|inst5|$00000|auto_generated|result_node[4]~7_combout\ : std_logic;
SIGNAL \inst7|inst5|$00000|auto_generated|result_node[2]~10_combout\ : std_logic;
SIGNAL \inst7|inst1|mem~6_combout\ : std_logic;
SIGNAL \inst7|inst1|mem~7_combout\ : std_logic;
SIGNAL \inst7|inst1|mem~11_combout\ : std_logic;
SIGNAL \inst7|inst1|mem~12_combout\ : std_logic;
SIGNAL \inst7|inst5|$00000|auto_generated|result_node[0]~8_combout\ : std_logic;
SIGNAL \inst7|inst1|mem~20_combout\ : std_logic;
SIGNAL \inst7|inst5|$00000|auto_generated|result_node[0]~12_combout\ : std_logic;
SIGNAL \inst7|inst1|mem~18_combout\ : std_logic;
SIGNAL \inst7|inst2|CZ~q\ : std_logic;
SIGNAL \ACCB|data_out[7]~feeder_combout\ : std_logic;
SIGNAL \inst7|inst1|mem~22_combout\ : std_logic;
SIGNAL \ACCB|data_out[4]~feeder_combout\ : std_logic;
SIGNAL \ACCB|data_out[3]~feeder_combout\ : std_logic;
SIGNAL \inst5|inst10|output~1_combout\ : std_logic;
SIGNAL \ACCB|data_out[0]~feeder_combout\ : std_logic;
SIGNAL \ACCB|data_out[2]~feeder_combout\ : std_logic;
SIGNAL \ACCB|data_out[1]~feeder_combout\ : std_logic;
SIGNAL \inst5|inst10|output~0_combout\ : std_logic;
SIGNAL \inst5|inst10|output~2_combout\ : std_logic;
SIGNAL \inst5|inst2|valor_interno~q\ : std_logic;
SIGNAL \inst7|inst2|CN~q\ : std_logic;
SIGNAL \inst1|Banderas[2]~feeder_combout\ : std_logic;
SIGNAL \inst5|inst11|output~0_combout\ : std_logic;
SIGNAL \inst5|inst3|valor_interno~q\ : std_logic;
SIGNAL \inst1|Q[6]~feeder_combout\ : std_logic;
SIGNAL \inst1|Q[5]~feeder_combout\ : std_logic;
SIGNAL \inst1|Q[4]~feeder_combout\ : std_logic;
SIGNAL \inst1|Q[3]~feeder_combout\ : std_logic;
SIGNAL \inst1|Q[2]~feeder_combout\ : std_logic;
SIGNAL \inst1|Q[1]~feeder_combout\ : std_logic;
SIGNAL \inst1|Q[0]~feeder_combout\ : std_logic;
SIGNAL \inst1|Yupa_interno[6]~feeder_combout\ : std_logic;
SIGNAL \inst1|Yupa_interno[5]~feeder_combout\ : std_logic;
SIGNAL \inst1|Yupa_interno[4]~feeder_combout\ : std_logic;
SIGNAL \inst1|Yupa_interno[3]~feeder_combout\ : std_logic;
SIGNAL \inst1|Yupa_interno[2]~feeder_combout\ : std_logic;
SIGNAL \inst1|Yupa_interno[1]~feeder_combout\ : std_logic;
SIGNAL \inst7|inst4|valor_interno\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \PC|data_out\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst1|Q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst7|inst2|instruccion\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \ACCB|data_out\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst7|inst2|PC\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst1|Banderas\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst1|Yupa_interno\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst7|inst2|liga\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst8|valor_interno\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst6|mem_rtl_0|auto_generated|address_reg_b\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst7|inst2|EB\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst|valor_interno\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst6|mem_rtl_0|auto_generated|rden_decode_b|w_anode666w\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst7|inst2|ALT_INV_nCBD~clkctrl_outclk\ : std_logic;
SIGNAL \inst7|inst2|ALT_INV_nCRI~clkctrl_outclk\ : std_logic;
SIGNAL \inst7|inst2|ALT_INV_CN~q\ : std_logic;
SIGNAL \inst7|inst2|ALT_INV_CZ~q\ : std_logic;

BEGIN

Flag_C <= ww_Flag_C;
ww_CLK <= CLK;
ww_RESET <= RESET;
ww_IRQn <= IRQn;
ww_XIRQn <= XIRQn;
Flag_V <= ww_Flag_V;
Flag_Z <= ww_Flag_Z;
Flag_N <= ww_Flag_N;
Flag_I <= ww_Flag_I;
Flag_H <= ww_Flag_H;
Flag_X <= ww_Flag_X;
Flag_S <= ww_Flag_S;
ACCA_D <= ww_ACCA_D;
ACCB_D <= ww_ACCB_D;
AP_D <= ww_AP_D;
AUX_D <= ww_AUX_D;
Debug_Q <= ww_Debug_Q;
Debug_Yupa <= ww_Debug_Yupa;
Edo_Pres <= ww_Edo_Pres;
PC_D <= ww_PC_D;
X_D <= ww_X_D;
Y_D <= ww_Y_D;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\inst6|mem_rtl_0|auto_generated|ram_block1a31_PORTADATAIN_bus\(0) <= \inst6|data[7]~8_combout\;

\inst6|mem_rtl_0|auto_generated|ram_block1a31_PORTAADDR_bus\ <= (\inst|valor_interno\(12) & \inst|valor_interno\(11) & \inst|valor_interno\(10) & \inst|valor_interno\(9) & \inst|valor_interno\(8) & \inst|valor_interno\(7) & 
\inst|valor_interno\(6) & \inst|valor_interno\(5) & \inst|valor_interno\(4) & \inst|valor_interno\(3) & \inst|valor_interno\(2) & \inst|valor_interno\(1) & \inst|valor_interno\(0));

\inst6|mem_rtl_0|auto_generated|ram_block1a31_PORTBADDR_bus\ <= (\PC|data_out\(12) & \PC|data_out\(11) & \PC|data_out\(10) & \PC|data_out\(9) & \PC|data_out\(8) & \PC|data_out\(7) & \PC|data_out\(6) & \PC|data_out\(5) & \PC|data_out\(4) & 
\PC|data_out\(3) & \PC|data_out\(2) & \PC|data_out\(1) & \PC|data_out\(0));

\inst6|mem_rtl_0|auto_generated|ram_block1a31~portbdataout\ <= \inst6|mem_rtl_0|auto_generated|ram_block1a31_PORTBDATAOUT_bus\(0);

\inst6|mem_rtl_0|auto_generated|ram_block1a15_PORTADATAIN_bus\(0) <= \inst6|data[7]~8_combout\;

\inst6|mem_rtl_0|auto_generated|ram_block1a15_PORTAADDR_bus\ <= (\inst|valor_interno\(12) & \inst|valor_interno\(11) & \inst|valor_interno\(10) & \inst|valor_interno\(9) & \inst|valor_interno\(8) & \inst|valor_interno\(7) & 
\inst|valor_interno\(6) & \inst|valor_interno\(5) & \inst|valor_interno\(4) & \inst|valor_interno\(3) & \inst|valor_interno\(2) & \inst|valor_interno\(1) & \inst|valor_interno\(0));

\inst6|mem_rtl_0|auto_generated|ram_block1a15_PORTBADDR_bus\ <= (\PC|data_out\(12) & \PC|data_out\(11) & \PC|data_out\(10) & \PC|data_out\(9) & \PC|data_out\(8) & \PC|data_out\(7) & \PC|data_out\(6) & \PC|data_out\(5) & \PC|data_out\(4) & 
\PC|data_out\(3) & \PC|data_out\(2) & \PC|data_out\(1) & \PC|data_out\(0));

\inst6|mem_rtl_0|auto_generated|ram_block1a15~portbdataout\ <= \inst6|mem_rtl_0|auto_generated|ram_block1a15_PORTBDATAOUT_bus\(0);

\inst6|mem_rtl_0|auto_generated|ram_block1a23_PORTADATAIN_bus\(0) <= \inst6|data[7]~8_combout\;

\inst6|mem_rtl_0|auto_generated|ram_block1a23_PORTAADDR_bus\ <= (\inst|valor_interno\(12) & \inst|valor_interno\(11) & \inst|valor_interno\(10) & \inst|valor_interno\(9) & \inst|valor_interno\(8) & \inst|valor_interno\(7) & 
\inst|valor_interno\(6) & \inst|valor_interno\(5) & \inst|valor_interno\(4) & \inst|valor_interno\(3) & \inst|valor_interno\(2) & \inst|valor_interno\(1) & \inst|valor_interno\(0));

\inst6|mem_rtl_0|auto_generated|ram_block1a23_PORTBADDR_bus\ <= (\PC|data_out\(12) & \PC|data_out\(11) & \PC|data_out\(10) & \PC|data_out\(9) & \PC|data_out\(8) & \PC|data_out\(7) & \PC|data_out\(6) & \PC|data_out\(5) & \PC|data_out\(4) & 
\PC|data_out\(3) & \PC|data_out\(2) & \PC|data_out\(1) & \PC|data_out\(0));

\inst6|mem_rtl_0|auto_generated|ram_block1a23~portbdataout\ <= \inst6|mem_rtl_0|auto_generated|ram_block1a23_PORTBDATAOUT_bus\(0);

\inst6|mem_rtl_0|auto_generated|ram_block1a7_PORTADATAIN_bus\(0) <= \inst6|data[7]~8_combout\;

\inst6|mem_rtl_0|auto_generated|ram_block1a7_PORTAADDR_bus\ <= (\inst|valor_interno\(12) & \inst|valor_interno\(11) & \inst|valor_interno\(10) & \inst|valor_interno\(9) & \inst|valor_interno\(8) & \inst|valor_interno\(7) & 
\inst|valor_interno\(6) & \inst|valor_interno\(5) & \inst|valor_interno\(4) & \inst|valor_interno\(3) & \inst|valor_interno\(2) & \inst|valor_interno\(1) & \inst|valor_interno\(0));

\inst6|mem_rtl_0|auto_generated|ram_block1a7_PORTBADDR_bus\ <= (\PC|data_out\(12) & \PC|data_out\(11) & \PC|data_out\(10) & \PC|data_out\(9) & \PC|data_out\(8) & \PC|data_out\(7) & \PC|data_out\(6) & \PC|data_out\(5) & \PC|data_out\(4) & 
\PC|data_out\(3) & \PC|data_out\(2) & \PC|data_out\(1) & \PC|data_out\(0));

\inst6|mem_rtl_0|auto_generated|ram_block1a7~portbdataout\ <= \inst6|mem_rtl_0|auto_generated|ram_block1a7_PORTBDATAOUT_bus\(0);

\inst6|mem_rtl_0|auto_generated|ram_block1a55_PORTADATAIN_bus\(0) <= \inst6|data[7]~8_combout\;

\inst6|mem_rtl_0|auto_generated|ram_block1a55_PORTAADDR_bus\ <= (\inst|valor_interno\(12) & \inst|valor_interno\(11) & \inst|valor_interno\(10) & \inst|valor_interno\(9) & \inst|valor_interno\(8) & \inst|valor_interno\(7) & 
\inst|valor_interno\(6) & \inst|valor_interno\(5) & \inst|valor_interno\(4) & \inst|valor_interno\(3) & \inst|valor_interno\(2) & \inst|valor_interno\(1) & \inst|valor_interno\(0));

\inst6|mem_rtl_0|auto_generated|ram_block1a55_PORTBADDR_bus\ <= (\PC|data_out\(12) & \PC|data_out\(11) & \PC|data_out\(10) & \PC|data_out\(9) & \PC|data_out\(8) & \PC|data_out\(7) & \PC|data_out\(6) & \PC|data_out\(5) & \PC|data_out\(4) & 
\PC|data_out\(3) & \PC|data_out\(2) & \PC|data_out\(1) & \PC|data_out\(0));

\inst6|mem_rtl_0|auto_generated|ram_block1a55~portbdataout\ <= \inst6|mem_rtl_0|auto_generated|ram_block1a55_PORTBDATAOUT_bus\(0);

\inst6|mem_rtl_0|auto_generated|ram_block1a39_PORTADATAIN_bus\(0) <= \inst6|data[7]~8_combout\;

\inst6|mem_rtl_0|auto_generated|ram_block1a39_PORTAADDR_bus\ <= (\inst|valor_interno\(12) & \inst|valor_interno\(11) & \inst|valor_interno\(10) & \inst|valor_interno\(9) & \inst|valor_interno\(8) & \inst|valor_interno\(7) & 
\inst|valor_interno\(6) & \inst|valor_interno\(5) & \inst|valor_interno\(4) & \inst|valor_interno\(3) & \inst|valor_interno\(2) & \inst|valor_interno\(1) & \inst|valor_interno\(0));

\inst6|mem_rtl_0|auto_generated|ram_block1a39_PORTBADDR_bus\ <= (\PC|data_out\(12) & \PC|data_out\(11) & \PC|data_out\(10) & \PC|data_out\(9) & \PC|data_out\(8) & \PC|data_out\(7) & \PC|data_out\(6) & \PC|data_out\(5) & \PC|data_out\(4) & 
\PC|data_out\(3) & \PC|data_out\(2) & \PC|data_out\(1) & \PC|data_out\(0));

\inst6|mem_rtl_0|auto_generated|ram_block1a39~portbdataout\ <= \inst6|mem_rtl_0|auto_generated|ram_block1a39_PORTBDATAOUT_bus\(0);

\inst6|mem_rtl_0|auto_generated|ram_block1a63_PORTADATAIN_bus\(0) <= \inst6|data[7]~8_combout\;

\inst6|mem_rtl_0|auto_generated|ram_block1a63_PORTAADDR_bus\ <= (\inst|valor_interno\(12) & \inst|valor_interno\(11) & \inst|valor_interno\(10) & \inst|valor_interno\(9) & \inst|valor_interno\(8) & \inst|valor_interno\(7) & 
\inst|valor_interno\(6) & \inst|valor_interno\(5) & \inst|valor_interno\(4) & \inst|valor_interno\(3) & \inst|valor_interno\(2) & \inst|valor_interno\(1) & \inst|valor_interno\(0));

\inst6|mem_rtl_0|auto_generated|ram_block1a63_PORTBADDR_bus\ <= (\PC|data_out\(12) & \PC|data_out\(11) & \PC|data_out\(10) & \PC|data_out\(9) & \PC|data_out\(8) & \PC|data_out\(7) & \PC|data_out\(6) & \PC|data_out\(5) & \PC|data_out\(4) & 
\PC|data_out\(3) & \PC|data_out\(2) & \PC|data_out\(1) & \PC|data_out\(0));

\inst6|mem_rtl_0|auto_generated|ram_block1a63~portbdataout\ <= \inst6|mem_rtl_0|auto_generated|ram_block1a63_PORTBDATAOUT_bus\(0);

\inst6|mem_rtl_0|auto_generated|ram_block1a47_PORTADATAIN_bus\(0) <= \inst6|data[7]~8_combout\;

\inst6|mem_rtl_0|auto_generated|ram_block1a47_PORTAADDR_bus\ <= (\inst|valor_interno\(12) & \inst|valor_interno\(11) & \inst|valor_interno\(10) & \inst|valor_interno\(9) & \inst|valor_interno\(8) & \inst|valor_interno\(7) & 
\inst|valor_interno\(6) & \inst|valor_interno\(5) & \inst|valor_interno\(4) & \inst|valor_interno\(3) & \inst|valor_interno\(2) & \inst|valor_interno\(1) & \inst|valor_interno\(0));

\inst6|mem_rtl_0|auto_generated|ram_block1a47_PORTBADDR_bus\ <= (\PC|data_out\(12) & \PC|data_out\(11) & \PC|data_out\(10) & \PC|data_out\(9) & \PC|data_out\(8) & \PC|data_out\(7) & \PC|data_out\(6) & \PC|data_out\(5) & \PC|data_out\(4) & 
\PC|data_out\(3) & \PC|data_out\(2) & \PC|data_out\(1) & \PC|data_out\(0));

\inst6|mem_rtl_0|auto_generated|ram_block1a47~portbdataout\ <= \inst6|mem_rtl_0|auto_generated|ram_block1a47_PORTBDATAOUT_bus\(0);

\inst6|mem_rtl_0|auto_generated|ram_block1a30_PORTADATAIN_bus\(0) <= \inst6|data[6]~14_combout\;

\inst6|mem_rtl_0|auto_generated|ram_block1a30_PORTAADDR_bus\ <= (\inst|valor_interno\(12) & \inst|valor_interno\(11) & \inst|valor_interno\(10) & \inst|valor_interno\(9) & \inst|valor_interno\(8) & \inst|valor_interno\(7) & 
\inst|valor_interno\(6) & \inst|valor_interno\(5) & \inst|valor_interno\(4) & \inst|valor_interno\(3) & \inst|valor_interno\(2) & \inst|valor_interno\(1) & \inst|valor_interno\(0));

\inst6|mem_rtl_0|auto_generated|ram_block1a30_PORTBADDR_bus\ <= (\PC|data_out\(12) & \PC|data_out\(11) & \PC|data_out\(10) & \PC|data_out\(9) & \PC|data_out\(8) & \PC|data_out\(7) & \PC|data_out\(6) & \PC|data_out\(5) & \PC|data_out\(4) & 
\PC|data_out\(3) & \PC|data_out\(2) & \PC|data_out\(1) & \PC|data_out\(0));

\inst6|mem_rtl_0|auto_generated|ram_block1a30~portbdataout\ <= \inst6|mem_rtl_0|auto_generated|ram_block1a30_PORTBDATAOUT_bus\(0);

\inst6|mem_rtl_0|auto_generated|ram_block1a14_PORTADATAIN_bus\(0) <= \inst6|data[6]~14_combout\;

\inst6|mem_rtl_0|auto_generated|ram_block1a14_PORTAADDR_bus\ <= (\inst|valor_interno\(12) & \inst|valor_interno\(11) & \inst|valor_interno\(10) & \inst|valor_interno\(9) & \inst|valor_interno\(8) & \inst|valor_interno\(7) & 
\inst|valor_interno\(6) & \inst|valor_interno\(5) & \inst|valor_interno\(4) & \inst|valor_interno\(3) & \inst|valor_interno\(2) & \inst|valor_interno\(1) & \inst|valor_interno\(0));

\inst6|mem_rtl_0|auto_generated|ram_block1a14_PORTBADDR_bus\ <= (\PC|data_out\(12) & \PC|data_out\(11) & \PC|data_out\(10) & \PC|data_out\(9) & \PC|data_out\(8) & \PC|data_out\(7) & \PC|data_out\(6) & \PC|data_out\(5) & \PC|data_out\(4) & 
\PC|data_out\(3) & \PC|data_out\(2) & \PC|data_out\(1) & \PC|data_out\(0));

\inst6|mem_rtl_0|auto_generated|ram_block1a14~portbdataout\ <= \inst6|mem_rtl_0|auto_generated|ram_block1a14_PORTBDATAOUT_bus\(0);

\inst6|mem_rtl_0|auto_generated|ram_block1a22_PORTADATAIN_bus\(0) <= \inst6|data[6]~14_combout\;

\inst6|mem_rtl_0|auto_generated|ram_block1a22_PORTAADDR_bus\ <= (\inst|valor_interno\(12) & \inst|valor_interno\(11) & \inst|valor_interno\(10) & \inst|valor_interno\(9) & \inst|valor_interno\(8) & \inst|valor_interno\(7) & 
\inst|valor_interno\(6) & \inst|valor_interno\(5) & \inst|valor_interno\(4) & \inst|valor_interno\(3) & \inst|valor_interno\(2) & \inst|valor_interno\(1) & \inst|valor_interno\(0));

\inst6|mem_rtl_0|auto_generated|ram_block1a22_PORTBADDR_bus\ <= (\PC|data_out\(12) & \PC|data_out\(11) & \PC|data_out\(10) & \PC|data_out\(9) & \PC|data_out\(8) & \PC|data_out\(7) & \PC|data_out\(6) & \PC|data_out\(5) & \PC|data_out\(4) & 
\PC|data_out\(3) & \PC|data_out\(2) & \PC|data_out\(1) & \PC|data_out\(0));

\inst6|mem_rtl_0|auto_generated|ram_block1a22~portbdataout\ <= \inst6|mem_rtl_0|auto_generated|ram_block1a22_PORTBDATAOUT_bus\(0);

\inst6|mem_rtl_0|auto_generated|ram_block1a6_PORTADATAIN_bus\(0) <= \inst6|data[6]~14_combout\;

\inst6|mem_rtl_0|auto_generated|ram_block1a6_PORTAADDR_bus\ <= (\inst|valor_interno\(12) & \inst|valor_interno\(11) & \inst|valor_interno\(10) & \inst|valor_interno\(9) & \inst|valor_interno\(8) & \inst|valor_interno\(7) & 
\inst|valor_interno\(6) & \inst|valor_interno\(5) & \inst|valor_interno\(4) & \inst|valor_interno\(3) & \inst|valor_interno\(2) & \inst|valor_interno\(1) & \inst|valor_interno\(0));

\inst6|mem_rtl_0|auto_generated|ram_block1a6_PORTBADDR_bus\ <= (\PC|data_out\(12) & \PC|data_out\(11) & \PC|data_out\(10) & \PC|data_out\(9) & \PC|data_out\(8) & \PC|data_out\(7) & \PC|data_out\(6) & \PC|data_out\(5) & \PC|data_out\(4) & 
\PC|data_out\(3) & \PC|data_out\(2) & \PC|data_out\(1) & \PC|data_out\(0));

\inst6|mem_rtl_0|auto_generated|ram_block1a6~portbdataout\ <= \inst6|mem_rtl_0|auto_generated|ram_block1a6_PORTBDATAOUT_bus\(0);

\inst6|mem_rtl_0|auto_generated|ram_block1a54_PORTADATAIN_bus\(0) <= \inst6|data[6]~14_combout\;

\inst6|mem_rtl_0|auto_generated|ram_block1a54_PORTAADDR_bus\ <= (\inst|valor_interno\(12) & \inst|valor_interno\(11) & \inst|valor_interno\(10) & \inst|valor_interno\(9) & \inst|valor_interno\(8) & \inst|valor_interno\(7) & 
\inst|valor_interno\(6) & \inst|valor_interno\(5) & \inst|valor_interno\(4) & \inst|valor_interno\(3) & \inst|valor_interno\(2) & \inst|valor_interno\(1) & \inst|valor_interno\(0));

\inst6|mem_rtl_0|auto_generated|ram_block1a54_PORTBADDR_bus\ <= (\PC|data_out\(12) & \PC|data_out\(11) & \PC|data_out\(10) & \PC|data_out\(9) & \PC|data_out\(8) & \PC|data_out\(7) & \PC|data_out\(6) & \PC|data_out\(5) & \PC|data_out\(4) & 
\PC|data_out\(3) & \PC|data_out\(2) & \PC|data_out\(1) & \PC|data_out\(0));

\inst6|mem_rtl_0|auto_generated|ram_block1a54~portbdataout\ <= \inst6|mem_rtl_0|auto_generated|ram_block1a54_PORTBDATAOUT_bus\(0);

\inst6|mem_rtl_0|auto_generated|ram_block1a38_PORTADATAIN_bus\(0) <= \inst6|data[6]~14_combout\;

\inst6|mem_rtl_0|auto_generated|ram_block1a38_PORTAADDR_bus\ <= (\inst|valor_interno\(12) & \inst|valor_interno\(11) & \inst|valor_interno\(10) & \inst|valor_interno\(9) & \inst|valor_interno\(8) & \inst|valor_interno\(7) & 
\inst|valor_interno\(6) & \inst|valor_interno\(5) & \inst|valor_interno\(4) & \inst|valor_interno\(3) & \inst|valor_interno\(2) & \inst|valor_interno\(1) & \inst|valor_interno\(0));

\inst6|mem_rtl_0|auto_generated|ram_block1a38_PORTBADDR_bus\ <= (\PC|data_out\(12) & \PC|data_out\(11) & \PC|data_out\(10) & \PC|data_out\(9) & \PC|data_out\(8) & \PC|data_out\(7) & \PC|data_out\(6) & \PC|data_out\(5) & \PC|data_out\(4) & 
\PC|data_out\(3) & \PC|data_out\(2) & \PC|data_out\(1) & \PC|data_out\(0));

\inst6|mem_rtl_0|auto_generated|ram_block1a38~portbdataout\ <= \inst6|mem_rtl_0|auto_generated|ram_block1a38_PORTBDATAOUT_bus\(0);

\inst6|mem_rtl_0|auto_generated|ram_block1a62_PORTADATAIN_bus\(0) <= \inst6|data[6]~14_combout\;

\inst6|mem_rtl_0|auto_generated|ram_block1a62_PORTAADDR_bus\ <= (\inst|valor_interno\(12) & \inst|valor_interno\(11) & \inst|valor_interno\(10) & \inst|valor_interno\(9) & \inst|valor_interno\(8) & \inst|valor_interno\(7) & 
\inst|valor_interno\(6) & \inst|valor_interno\(5) & \inst|valor_interno\(4) & \inst|valor_interno\(3) & \inst|valor_interno\(2) & \inst|valor_interno\(1) & \inst|valor_interno\(0));

\inst6|mem_rtl_0|auto_generated|ram_block1a62_PORTBADDR_bus\ <= (\PC|data_out\(12) & \PC|data_out\(11) & \PC|data_out\(10) & \PC|data_out\(9) & \PC|data_out\(8) & \PC|data_out\(7) & \PC|data_out\(6) & \PC|data_out\(5) & \PC|data_out\(4) & 
\PC|data_out\(3) & \PC|data_out\(2) & \PC|data_out\(1) & \PC|data_out\(0));

\inst6|mem_rtl_0|auto_generated|ram_block1a62~portbdataout\ <= \inst6|mem_rtl_0|auto_generated|ram_block1a62_PORTBDATAOUT_bus\(0);

\inst6|mem_rtl_0|auto_generated|ram_block1a46_PORTADATAIN_bus\(0) <= \inst6|data[6]~14_combout\;

\inst6|mem_rtl_0|auto_generated|ram_block1a46_PORTAADDR_bus\ <= (\inst|valor_interno\(12) & \inst|valor_interno\(11) & \inst|valor_interno\(10) & \inst|valor_interno\(9) & \inst|valor_interno\(8) & \inst|valor_interno\(7) & 
\inst|valor_interno\(6) & \inst|valor_interno\(5) & \inst|valor_interno\(4) & \inst|valor_interno\(3) & \inst|valor_interno\(2) & \inst|valor_interno\(1) & \inst|valor_interno\(0));

\inst6|mem_rtl_0|auto_generated|ram_block1a46_PORTBADDR_bus\ <= (\PC|data_out\(12) & \PC|data_out\(11) & \PC|data_out\(10) & \PC|data_out\(9) & \PC|data_out\(8) & \PC|data_out\(7) & \PC|data_out\(6) & \PC|data_out\(5) & \PC|data_out\(4) & 
\PC|data_out\(3) & \PC|data_out\(2) & \PC|data_out\(1) & \PC|data_out\(0));

\inst6|mem_rtl_0|auto_generated|ram_block1a46~portbdataout\ <= \inst6|mem_rtl_0|auto_generated|ram_block1a46_PORTBDATAOUT_bus\(0);

\inst6|mem_rtl_0|auto_generated|ram_block1a29_PORTADATAIN_bus\(0) <= \inst6|data[5]~22_combout\;

\inst6|mem_rtl_0|auto_generated|ram_block1a29_PORTAADDR_bus\ <= (\inst|valor_interno\(12) & \inst|valor_interno\(11) & \inst|valor_interno\(10) & \inst|valor_interno\(9) & \inst|valor_interno\(8) & \inst|valor_interno\(7) & 
\inst|valor_interno\(6) & \inst|valor_interno\(5) & \inst|valor_interno\(4) & \inst|valor_interno\(3) & \inst|valor_interno\(2) & \inst|valor_interno\(1) & \inst|valor_interno\(0));

\inst6|mem_rtl_0|auto_generated|ram_block1a29_PORTBADDR_bus\ <= (\PC|data_out\(12) & \PC|data_out\(11) & \PC|data_out\(10) & \PC|data_out\(9) & \PC|data_out\(8) & \PC|data_out\(7) & \PC|data_out\(6) & \PC|data_out\(5) & \PC|data_out\(4) & 
\PC|data_out\(3) & \PC|data_out\(2) & \PC|data_out\(1) & \PC|data_out\(0));

\inst6|mem_rtl_0|auto_generated|ram_block1a29~portbdataout\ <= \inst6|mem_rtl_0|auto_generated|ram_block1a29_PORTBDATAOUT_bus\(0);

\inst6|mem_rtl_0|auto_generated|ram_block1a21_PORTADATAIN_bus\(0) <= \inst6|data[5]~22_combout\;

\inst6|mem_rtl_0|auto_generated|ram_block1a21_PORTAADDR_bus\ <= (\inst|valor_interno\(12) & \inst|valor_interno\(11) & \inst|valor_interno\(10) & \inst|valor_interno\(9) & \inst|valor_interno\(8) & \inst|valor_interno\(7) & 
\inst|valor_interno\(6) & \inst|valor_interno\(5) & \inst|valor_interno\(4) & \inst|valor_interno\(3) & \inst|valor_interno\(2) & \inst|valor_interno\(1) & \inst|valor_interno\(0));

\inst6|mem_rtl_0|auto_generated|ram_block1a21_PORTBADDR_bus\ <= (\PC|data_out\(12) & \PC|data_out\(11) & \PC|data_out\(10) & \PC|data_out\(9) & \PC|data_out\(8) & \PC|data_out\(7) & \PC|data_out\(6) & \PC|data_out\(5) & \PC|data_out\(4) & 
\PC|data_out\(3) & \PC|data_out\(2) & \PC|data_out\(1) & \PC|data_out\(0));

\inst6|mem_rtl_0|auto_generated|ram_block1a21~portbdataout\ <= \inst6|mem_rtl_0|auto_generated|ram_block1a21_PORTBDATAOUT_bus\(0);

\inst6|mem_rtl_0|auto_generated|ram_block1a13_PORTADATAIN_bus\(0) <= \inst6|data[5]~22_combout\;

\inst6|mem_rtl_0|auto_generated|ram_block1a13_PORTAADDR_bus\ <= (\inst|valor_interno\(12) & \inst|valor_interno\(11) & \inst|valor_interno\(10) & \inst|valor_interno\(9) & \inst|valor_interno\(8) & \inst|valor_interno\(7) & 
\inst|valor_interno\(6) & \inst|valor_interno\(5) & \inst|valor_interno\(4) & \inst|valor_interno\(3) & \inst|valor_interno\(2) & \inst|valor_interno\(1) & \inst|valor_interno\(0));

\inst6|mem_rtl_0|auto_generated|ram_block1a13_PORTBADDR_bus\ <= (\PC|data_out\(12) & \PC|data_out\(11) & \PC|data_out\(10) & \PC|data_out\(9) & \PC|data_out\(8) & \PC|data_out\(7) & \PC|data_out\(6) & \PC|data_out\(5) & \PC|data_out\(4) & 
\PC|data_out\(3) & \PC|data_out\(2) & \PC|data_out\(1) & \PC|data_out\(0));

\inst6|mem_rtl_0|auto_generated|ram_block1a13~portbdataout\ <= \inst6|mem_rtl_0|auto_generated|ram_block1a13_PORTBDATAOUT_bus\(0);

\inst6|mem_rtl_0|auto_generated|ram_block1a5_PORTADATAIN_bus\(0) <= \inst6|data[5]~22_combout\;

\inst6|mem_rtl_0|auto_generated|ram_block1a5_PORTAADDR_bus\ <= (\inst|valor_interno\(12) & \inst|valor_interno\(11) & \inst|valor_interno\(10) & \inst|valor_interno\(9) & \inst|valor_interno\(8) & \inst|valor_interno\(7) & 
\inst|valor_interno\(6) & \inst|valor_interno\(5) & \inst|valor_interno\(4) & \inst|valor_interno\(3) & \inst|valor_interno\(2) & \inst|valor_interno\(1) & \inst|valor_interno\(0));

\inst6|mem_rtl_0|auto_generated|ram_block1a5_PORTBADDR_bus\ <= (\PC|data_out\(12) & \PC|data_out\(11) & \PC|data_out\(10) & \PC|data_out\(9) & \PC|data_out\(8) & \PC|data_out\(7) & \PC|data_out\(6) & \PC|data_out\(5) & \PC|data_out\(4) & 
\PC|data_out\(3) & \PC|data_out\(2) & \PC|data_out\(1) & \PC|data_out\(0));

\inst6|mem_rtl_0|auto_generated|ram_block1a5~portbdataout\ <= \inst6|mem_rtl_0|auto_generated|ram_block1a5_PORTBDATAOUT_bus\(0);

\inst6|mem_rtl_0|auto_generated|ram_block1a61_PORTADATAIN_bus\(0) <= \inst6|data[5]~22_combout\;

\inst6|mem_rtl_0|auto_generated|ram_block1a61_PORTAADDR_bus\ <= (\inst|valor_interno\(12) & \inst|valor_interno\(11) & \inst|valor_interno\(10) & \inst|valor_interno\(9) & \inst|valor_interno\(8) & \inst|valor_interno\(7) & 
\inst|valor_interno\(6) & \inst|valor_interno\(5) & \inst|valor_interno\(4) & \inst|valor_interno\(3) & \inst|valor_interno\(2) & \inst|valor_interno\(1) & \inst|valor_interno\(0));

\inst6|mem_rtl_0|auto_generated|ram_block1a61_PORTBADDR_bus\ <= (\PC|data_out\(12) & \PC|data_out\(11) & \PC|data_out\(10) & \PC|data_out\(9) & \PC|data_out\(8) & \PC|data_out\(7) & \PC|data_out\(6) & \PC|data_out\(5) & \PC|data_out\(4) & 
\PC|data_out\(3) & \PC|data_out\(2) & \PC|data_out\(1) & \PC|data_out\(0));

\inst6|mem_rtl_0|auto_generated|ram_block1a61~portbdataout\ <= \inst6|mem_rtl_0|auto_generated|ram_block1a61_PORTBDATAOUT_bus\(0);

\inst6|mem_rtl_0|auto_generated|ram_block1a53_PORTADATAIN_bus\(0) <= \inst6|data[5]~22_combout\;

\inst6|mem_rtl_0|auto_generated|ram_block1a53_PORTAADDR_bus\ <= (\inst|valor_interno\(12) & \inst|valor_interno\(11) & \inst|valor_interno\(10) & \inst|valor_interno\(9) & \inst|valor_interno\(8) & \inst|valor_interno\(7) & 
\inst|valor_interno\(6) & \inst|valor_interno\(5) & \inst|valor_interno\(4) & \inst|valor_interno\(3) & \inst|valor_interno\(2) & \inst|valor_interno\(1) & \inst|valor_interno\(0));

\inst6|mem_rtl_0|auto_generated|ram_block1a53_PORTBADDR_bus\ <= (\PC|data_out\(12) & \PC|data_out\(11) & \PC|data_out\(10) & \PC|data_out\(9) & \PC|data_out\(8) & \PC|data_out\(7) & \PC|data_out\(6) & \PC|data_out\(5) & \PC|data_out\(4) & 
\PC|data_out\(3) & \PC|data_out\(2) & \PC|data_out\(1) & \PC|data_out\(0));

\inst6|mem_rtl_0|auto_generated|ram_block1a53~portbdataout\ <= \inst6|mem_rtl_0|auto_generated|ram_block1a53_PORTBDATAOUT_bus\(0);

\inst6|mem_rtl_0|auto_generated|ram_block1a45_PORTADATAIN_bus\(0) <= \inst6|data[5]~22_combout\;

\inst6|mem_rtl_0|auto_generated|ram_block1a45_PORTAADDR_bus\ <= (\inst|valor_interno\(12) & \inst|valor_interno\(11) & \inst|valor_interno\(10) & \inst|valor_interno\(9) & \inst|valor_interno\(8) & \inst|valor_interno\(7) & 
\inst|valor_interno\(6) & \inst|valor_interno\(5) & \inst|valor_interno\(4) & \inst|valor_interno\(3) & \inst|valor_interno\(2) & \inst|valor_interno\(1) & \inst|valor_interno\(0));

\inst6|mem_rtl_0|auto_generated|ram_block1a45_PORTBADDR_bus\ <= (\PC|data_out\(12) & \PC|data_out\(11) & \PC|data_out\(10) & \PC|data_out\(9) & \PC|data_out\(8) & \PC|data_out\(7) & \PC|data_out\(6) & \PC|data_out\(5) & \PC|data_out\(4) & 
\PC|data_out\(3) & \PC|data_out\(2) & \PC|data_out\(1) & \PC|data_out\(0));

\inst6|mem_rtl_0|auto_generated|ram_block1a45~portbdataout\ <= \inst6|mem_rtl_0|auto_generated|ram_block1a45_PORTBDATAOUT_bus\(0);

\inst6|mem_rtl_0|auto_generated|ram_block1a37_PORTADATAIN_bus\(0) <= \inst6|data[5]~22_combout\;

\inst6|mem_rtl_0|auto_generated|ram_block1a37_PORTAADDR_bus\ <= (\inst|valor_interno\(12) & \inst|valor_interno\(11) & \inst|valor_interno\(10) & \inst|valor_interno\(9) & \inst|valor_interno\(8) & \inst|valor_interno\(7) & 
\inst|valor_interno\(6) & \inst|valor_interno\(5) & \inst|valor_interno\(4) & \inst|valor_interno\(3) & \inst|valor_interno\(2) & \inst|valor_interno\(1) & \inst|valor_interno\(0));

\inst6|mem_rtl_0|auto_generated|ram_block1a37_PORTBADDR_bus\ <= (\PC|data_out\(12) & \PC|data_out\(11) & \PC|data_out\(10) & \PC|data_out\(9) & \PC|data_out\(8) & \PC|data_out\(7) & \PC|data_out\(6) & \PC|data_out\(5) & \PC|data_out\(4) & 
\PC|data_out\(3) & \PC|data_out\(2) & \PC|data_out\(1) & \PC|data_out\(0));

\inst6|mem_rtl_0|auto_generated|ram_block1a37~portbdataout\ <= \inst6|mem_rtl_0|auto_generated|ram_block1a37_PORTBDATAOUT_bus\(0);

\inst6|mem_rtl_0|auto_generated|ram_block1a28_PORTADATAIN_bus\(0) <= \inst6|data[4]~30_combout\;

\inst6|mem_rtl_0|auto_generated|ram_block1a28_PORTAADDR_bus\ <= (\inst|valor_interno\(12) & \inst|valor_interno\(11) & \inst|valor_interno\(10) & \inst|valor_interno\(9) & \inst|valor_interno\(8) & \inst|valor_interno\(7) & 
\inst|valor_interno\(6) & \inst|valor_interno\(5) & \inst|valor_interno\(4) & \inst|valor_interno\(3) & \inst|valor_interno\(2) & \inst|valor_interno\(1) & \inst|valor_interno\(0));

\inst6|mem_rtl_0|auto_generated|ram_block1a28_PORTBADDR_bus\ <= (\PC|data_out\(12) & \PC|data_out\(11) & \PC|data_out\(10) & \PC|data_out\(9) & \PC|data_out\(8) & \PC|data_out\(7) & \PC|data_out\(6) & \PC|data_out\(5) & \PC|data_out\(4) & 
\PC|data_out\(3) & \PC|data_out\(2) & \PC|data_out\(1) & \PC|data_out\(0));

\inst6|mem_rtl_0|auto_generated|ram_block1a28~portbdataout\ <= \inst6|mem_rtl_0|auto_generated|ram_block1a28_PORTBDATAOUT_bus\(0);

\inst6|mem_rtl_0|auto_generated|ram_block1a12_PORTADATAIN_bus\(0) <= \inst6|data[4]~30_combout\;

\inst6|mem_rtl_0|auto_generated|ram_block1a12_PORTAADDR_bus\ <= (\inst|valor_interno\(12) & \inst|valor_interno\(11) & \inst|valor_interno\(10) & \inst|valor_interno\(9) & \inst|valor_interno\(8) & \inst|valor_interno\(7) & 
\inst|valor_interno\(6) & \inst|valor_interno\(5) & \inst|valor_interno\(4) & \inst|valor_interno\(3) & \inst|valor_interno\(2) & \inst|valor_interno\(1) & \inst|valor_interno\(0));

\inst6|mem_rtl_0|auto_generated|ram_block1a12_PORTBADDR_bus\ <= (\PC|data_out\(12) & \PC|data_out\(11) & \PC|data_out\(10) & \PC|data_out\(9) & \PC|data_out\(8) & \PC|data_out\(7) & \PC|data_out\(6) & \PC|data_out\(5) & \PC|data_out\(4) & 
\PC|data_out\(3) & \PC|data_out\(2) & \PC|data_out\(1) & \PC|data_out\(0));

\inst6|mem_rtl_0|auto_generated|ram_block1a12~portbdataout\ <= \inst6|mem_rtl_0|auto_generated|ram_block1a12_PORTBDATAOUT_bus\(0);

\inst6|mem_rtl_0|auto_generated|ram_block1a20_PORTADATAIN_bus\(0) <= \inst6|data[4]~30_combout\;

\inst6|mem_rtl_0|auto_generated|ram_block1a20_PORTAADDR_bus\ <= (\inst|valor_interno\(12) & \inst|valor_interno\(11) & \inst|valor_interno\(10) & \inst|valor_interno\(9) & \inst|valor_interno\(8) & \inst|valor_interno\(7) & 
\inst|valor_interno\(6) & \inst|valor_interno\(5) & \inst|valor_interno\(4) & \inst|valor_interno\(3) & \inst|valor_interno\(2) & \inst|valor_interno\(1) & \inst|valor_interno\(0));

\inst6|mem_rtl_0|auto_generated|ram_block1a20_PORTBADDR_bus\ <= (\PC|data_out\(12) & \PC|data_out\(11) & \PC|data_out\(10) & \PC|data_out\(9) & \PC|data_out\(8) & \PC|data_out\(7) & \PC|data_out\(6) & \PC|data_out\(5) & \PC|data_out\(4) & 
\PC|data_out\(3) & \PC|data_out\(2) & \PC|data_out\(1) & \PC|data_out\(0));

\inst6|mem_rtl_0|auto_generated|ram_block1a20~portbdataout\ <= \inst6|mem_rtl_0|auto_generated|ram_block1a20_PORTBDATAOUT_bus\(0);

\inst6|mem_rtl_0|auto_generated|ram_block1a4_PORTADATAIN_bus\(0) <= \inst6|data[4]~30_combout\;

\inst6|mem_rtl_0|auto_generated|ram_block1a4_PORTAADDR_bus\ <= (\inst|valor_interno\(12) & \inst|valor_interno\(11) & \inst|valor_interno\(10) & \inst|valor_interno\(9) & \inst|valor_interno\(8) & \inst|valor_interno\(7) & 
\inst|valor_interno\(6) & \inst|valor_interno\(5) & \inst|valor_interno\(4) & \inst|valor_interno\(3) & \inst|valor_interno\(2) & \inst|valor_interno\(1) & \inst|valor_interno\(0));

\inst6|mem_rtl_0|auto_generated|ram_block1a4_PORTBADDR_bus\ <= (\PC|data_out\(12) & \PC|data_out\(11) & \PC|data_out\(10) & \PC|data_out\(9) & \PC|data_out\(8) & \PC|data_out\(7) & \PC|data_out\(6) & \PC|data_out\(5) & \PC|data_out\(4) & 
\PC|data_out\(3) & \PC|data_out\(2) & \PC|data_out\(1) & \PC|data_out\(0));

\inst6|mem_rtl_0|auto_generated|ram_block1a4~portbdataout\ <= \inst6|mem_rtl_0|auto_generated|ram_block1a4_PORTBDATAOUT_bus\(0);

\inst6|mem_rtl_0|auto_generated|ram_block1a52_PORTADATAIN_bus\(0) <= \inst6|data[4]~30_combout\;

\inst6|mem_rtl_0|auto_generated|ram_block1a52_PORTAADDR_bus\ <= (\inst|valor_interno\(12) & \inst|valor_interno\(11) & \inst|valor_interno\(10) & \inst|valor_interno\(9) & \inst|valor_interno\(8) & \inst|valor_interno\(7) & 
\inst|valor_interno\(6) & \inst|valor_interno\(5) & \inst|valor_interno\(4) & \inst|valor_interno\(3) & \inst|valor_interno\(2) & \inst|valor_interno\(1) & \inst|valor_interno\(0));

\inst6|mem_rtl_0|auto_generated|ram_block1a52_PORTBADDR_bus\ <= (\PC|data_out\(12) & \PC|data_out\(11) & \PC|data_out\(10) & \PC|data_out\(9) & \PC|data_out\(8) & \PC|data_out\(7) & \PC|data_out\(6) & \PC|data_out\(5) & \PC|data_out\(4) & 
\PC|data_out\(3) & \PC|data_out\(2) & \PC|data_out\(1) & \PC|data_out\(0));

\inst6|mem_rtl_0|auto_generated|ram_block1a52~portbdataout\ <= \inst6|mem_rtl_0|auto_generated|ram_block1a52_PORTBDATAOUT_bus\(0);

\inst6|mem_rtl_0|auto_generated|ram_block1a36_PORTADATAIN_bus\(0) <= \inst6|data[4]~30_combout\;

\inst6|mem_rtl_0|auto_generated|ram_block1a36_PORTAADDR_bus\ <= (\inst|valor_interno\(12) & \inst|valor_interno\(11) & \inst|valor_interno\(10) & \inst|valor_interno\(9) & \inst|valor_interno\(8) & \inst|valor_interno\(7) & 
\inst|valor_interno\(6) & \inst|valor_interno\(5) & \inst|valor_interno\(4) & \inst|valor_interno\(3) & \inst|valor_interno\(2) & \inst|valor_interno\(1) & \inst|valor_interno\(0));

\inst6|mem_rtl_0|auto_generated|ram_block1a36_PORTBADDR_bus\ <= (\PC|data_out\(12) & \PC|data_out\(11) & \PC|data_out\(10) & \PC|data_out\(9) & \PC|data_out\(8) & \PC|data_out\(7) & \PC|data_out\(6) & \PC|data_out\(5) & \PC|data_out\(4) & 
\PC|data_out\(3) & \PC|data_out\(2) & \PC|data_out\(1) & \PC|data_out\(0));

\inst6|mem_rtl_0|auto_generated|ram_block1a36~portbdataout\ <= \inst6|mem_rtl_0|auto_generated|ram_block1a36_PORTBDATAOUT_bus\(0);

\inst6|mem_rtl_0|auto_generated|ram_block1a60_PORTADATAIN_bus\(0) <= \inst6|data[4]~30_combout\;

\inst6|mem_rtl_0|auto_generated|ram_block1a60_PORTAADDR_bus\ <= (\inst|valor_interno\(12) & \inst|valor_interno\(11) & \inst|valor_interno\(10) & \inst|valor_interno\(9) & \inst|valor_interno\(8) & \inst|valor_interno\(7) & 
\inst|valor_interno\(6) & \inst|valor_interno\(5) & \inst|valor_interno\(4) & \inst|valor_interno\(3) & \inst|valor_interno\(2) & \inst|valor_interno\(1) & \inst|valor_interno\(0));

\inst6|mem_rtl_0|auto_generated|ram_block1a60_PORTBADDR_bus\ <= (\PC|data_out\(12) & \PC|data_out\(11) & \PC|data_out\(10) & \PC|data_out\(9) & \PC|data_out\(8) & \PC|data_out\(7) & \PC|data_out\(6) & \PC|data_out\(5) & \PC|data_out\(4) & 
\PC|data_out\(3) & \PC|data_out\(2) & \PC|data_out\(1) & \PC|data_out\(0));

\inst6|mem_rtl_0|auto_generated|ram_block1a60~portbdataout\ <= \inst6|mem_rtl_0|auto_generated|ram_block1a60_PORTBDATAOUT_bus\(0);

\inst6|mem_rtl_0|auto_generated|ram_block1a44_PORTADATAIN_bus\(0) <= \inst6|data[4]~30_combout\;

\inst6|mem_rtl_0|auto_generated|ram_block1a44_PORTAADDR_bus\ <= (\inst|valor_interno\(12) & \inst|valor_interno\(11) & \inst|valor_interno\(10) & \inst|valor_interno\(9) & \inst|valor_interno\(8) & \inst|valor_interno\(7) & 
\inst|valor_interno\(6) & \inst|valor_interno\(5) & \inst|valor_interno\(4) & \inst|valor_interno\(3) & \inst|valor_interno\(2) & \inst|valor_interno\(1) & \inst|valor_interno\(0));

\inst6|mem_rtl_0|auto_generated|ram_block1a44_PORTBADDR_bus\ <= (\PC|data_out\(12) & \PC|data_out\(11) & \PC|data_out\(10) & \PC|data_out\(9) & \PC|data_out\(8) & \PC|data_out\(7) & \PC|data_out\(6) & \PC|data_out\(5) & \PC|data_out\(4) & 
\PC|data_out\(3) & \PC|data_out\(2) & \PC|data_out\(1) & \PC|data_out\(0));

\inst6|mem_rtl_0|auto_generated|ram_block1a44~portbdataout\ <= \inst6|mem_rtl_0|auto_generated|ram_block1a44_PORTBDATAOUT_bus\(0);

\inst6|mem_rtl_0|auto_generated|ram_block1a27_PORTADATAIN_bus\(0) <= \inst6|data[3]~36_combout\;

\inst6|mem_rtl_0|auto_generated|ram_block1a27_PORTAADDR_bus\ <= (\inst|valor_interno\(12) & \inst|valor_interno\(11) & \inst|valor_interno\(10) & \inst|valor_interno\(9) & \inst|valor_interno\(8) & \inst|valor_interno\(7) & 
\inst|valor_interno\(6) & \inst|valor_interno\(5) & \inst|valor_interno\(4) & \inst|valor_interno\(3) & \inst|valor_interno\(2) & \inst|valor_interno\(1) & \inst|valor_interno\(0));

\inst6|mem_rtl_0|auto_generated|ram_block1a27_PORTBADDR_bus\ <= (\PC|data_out\(12) & \PC|data_out\(11) & \PC|data_out\(10) & \PC|data_out\(9) & \PC|data_out\(8) & \PC|data_out\(7) & \PC|data_out\(6) & \PC|data_out\(5) & \PC|data_out\(4) & 
\PC|data_out\(3) & \PC|data_out\(2) & \PC|data_out\(1) & \PC|data_out\(0));

\inst6|mem_rtl_0|auto_generated|ram_block1a27~portbdataout\ <= \inst6|mem_rtl_0|auto_generated|ram_block1a27_PORTBDATAOUT_bus\(0);

\inst6|mem_rtl_0|auto_generated|ram_block1a11_PORTADATAIN_bus\(0) <= \inst6|data[3]~36_combout\;

\inst6|mem_rtl_0|auto_generated|ram_block1a11_PORTAADDR_bus\ <= (\inst|valor_interno\(12) & \inst|valor_interno\(11) & \inst|valor_interno\(10) & \inst|valor_interno\(9) & \inst|valor_interno\(8) & \inst|valor_interno\(7) & 
\inst|valor_interno\(6) & \inst|valor_interno\(5) & \inst|valor_interno\(4) & \inst|valor_interno\(3) & \inst|valor_interno\(2) & \inst|valor_interno\(1) & \inst|valor_interno\(0));

\inst6|mem_rtl_0|auto_generated|ram_block1a11_PORTBADDR_bus\ <= (\PC|data_out\(12) & \PC|data_out\(11) & \PC|data_out\(10) & \PC|data_out\(9) & \PC|data_out\(8) & \PC|data_out\(7) & \PC|data_out\(6) & \PC|data_out\(5) & \PC|data_out\(4) & 
\PC|data_out\(3) & \PC|data_out\(2) & \PC|data_out\(1) & \PC|data_out\(0));

\inst6|mem_rtl_0|auto_generated|ram_block1a11~portbdataout\ <= \inst6|mem_rtl_0|auto_generated|ram_block1a11_PORTBDATAOUT_bus\(0);

\inst6|mem_rtl_0|auto_generated|ram_block1a19_PORTADATAIN_bus\(0) <= \inst6|data[3]~36_combout\;

\inst6|mem_rtl_0|auto_generated|ram_block1a19_PORTAADDR_bus\ <= (\inst|valor_interno\(12) & \inst|valor_interno\(11) & \inst|valor_interno\(10) & \inst|valor_interno\(9) & \inst|valor_interno\(8) & \inst|valor_interno\(7) & 
\inst|valor_interno\(6) & \inst|valor_interno\(5) & \inst|valor_interno\(4) & \inst|valor_interno\(3) & \inst|valor_interno\(2) & \inst|valor_interno\(1) & \inst|valor_interno\(0));

\inst6|mem_rtl_0|auto_generated|ram_block1a19_PORTBADDR_bus\ <= (\PC|data_out\(12) & \PC|data_out\(11) & \PC|data_out\(10) & \PC|data_out\(9) & \PC|data_out\(8) & \PC|data_out\(7) & \PC|data_out\(6) & \PC|data_out\(5) & \PC|data_out\(4) & 
\PC|data_out\(3) & \PC|data_out\(2) & \PC|data_out\(1) & \PC|data_out\(0));

\inst6|mem_rtl_0|auto_generated|ram_block1a19~portbdataout\ <= \inst6|mem_rtl_0|auto_generated|ram_block1a19_PORTBDATAOUT_bus\(0);

\inst6|mem_rtl_0|auto_generated|ram_block1a3_PORTADATAIN_bus\(0) <= \inst6|data[3]~36_combout\;

\inst6|mem_rtl_0|auto_generated|ram_block1a3_PORTAADDR_bus\ <= (\inst|valor_interno\(12) & \inst|valor_interno\(11) & \inst|valor_interno\(10) & \inst|valor_interno\(9) & \inst|valor_interno\(8) & \inst|valor_interno\(7) & 
\inst|valor_interno\(6) & \inst|valor_interno\(5) & \inst|valor_interno\(4) & \inst|valor_interno\(3) & \inst|valor_interno\(2) & \inst|valor_interno\(1) & \inst|valor_interno\(0));

\inst6|mem_rtl_0|auto_generated|ram_block1a3_PORTBADDR_bus\ <= (\PC|data_out\(12) & \PC|data_out\(11) & \PC|data_out\(10) & \PC|data_out\(9) & \PC|data_out\(8) & \PC|data_out\(7) & \PC|data_out\(6) & \PC|data_out\(5) & \PC|data_out\(4) & 
\PC|data_out\(3) & \PC|data_out\(2) & \PC|data_out\(1) & \PC|data_out\(0));

\inst6|mem_rtl_0|auto_generated|ram_block1a3~portbdataout\ <= \inst6|mem_rtl_0|auto_generated|ram_block1a3_PORTBDATAOUT_bus\(0);

\inst6|mem_rtl_0|auto_generated|ram_block1a51_PORTADATAIN_bus\(0) <= \inst6|data[3]~36_combout\;

\inst6|mem_rtl_0|auto_generated|ram_block1a51_PORTAADDR_bus\ <= (\inst|valor_interno\(12) & \inst|valor_interno\(11) & \inst|valor_interno\(10) & \inst|valor_interno\(9) & \inst|valor_interno\(8) & \inst|valor_interno\(7) & 
\inst|valor_interno\(6) & \inst|valor_interno\(5) & \inst|valor_interno\(4) & \inst|valor_interno\(3) & \inst|valor_interno\(2) & \inst|valor_interno\(1) & \inst|valor_interno\(0));

\inst6|mem_rtl_0|auto_generated|ram_block1a51_PORTBADDR_bus\ <= (\PC|data_out\(12) & \PC|data_out\(11) & \PC|data_out\(10) & \PC|data_out\(9) & \PC|data_out\(8) & \PC|data_out\(7) & \PC|data_out\(6) & \PC|data_out\(5) & \PC|data_out\(4) & 
\PC|data_out\(3) & \PC|data_out\(2) & \PC|data_out\(1) & \PC|data_out\(0));

\inst6|mem_rtl_0|auto_generated|ram_block1a51~portbdataout\ <= \inst6|mem_rtl_0|auto_generated|ram_block1a51_PORTBDATAOUT_bus\(0);

\inst6|mem_rtl_0|auto_generated|ram_block1a35_PORTADATAIN_bus\(0) <= \inst6|data[3]~36_combout\;

\inst6|mem_rtl_0|auto_generated|ram_block1a35_PORTAADDR_bus\ <= (\inst|valor_interno\(12) & \inst|valor_interno\(11) & \inst|valor_interno\(10) & \inst|valor_interno\(9) & \inst|valor_interno\(8) & \inst|valor_interno\(7) & 
\inst|valor_interno\(6) & \inst|valor_interno\(5) & \inst|valor_interno\(4) & \inst|valor_interno\(3) & \inst|valor_interno\(2) & \inst|valor_interno\(1) & \inst|valor_interno\(0));

\inst6|mem_rtl_0|auto_generated|ram_block1a35_PORTBADDR_bus\ <= (\PC|data_out\(12) & \PC|data_out\(11) & \PC|data_out\(10) & \PC|data_out\(9) & \PC|data_out\(8) & \PC|data_out\(7) & \PC|data_out\(6) & \PC|data_out\(5) & \PC|data_out\(4) & 
\PC|data_out\(3) & \PC|data_out\(2) & \PC|data_out\(1) & \PC|data_out\(0));

\inst6|mem_rtl_0|auto_generated|ram_block1a35~portbdataout\ <= \inst6|mem_rtl_0|auto_generated|ram_block1a35_PORTBDATAOUT_bus\(0);

\inst6|mem_rtl_0|auto_generated|ram_block1a59_PORTADATAIN_bus\(0) <= \inst6|data[3]~36_combout\;

\inst6|mem_rtl_0|auto_generated|ram_block1a59_PORTAADDR_bus\ <= (\inst|valor_interno\(12) & \inst|valor_interno\(11) & \inst|valor_interno\(10) & \inst|valor_interno\(9) & \inst|valor_interno\(8) & \inst|valor_interno\(7) & 
\inst|valor_interno\(6) & \inst|valor_interno\(5) & \inst|valor_interno\(4) & \inst|valor_interno\(3) & \inst|valor_interno\(2) & \inst|valor_interno\(1) & \inst|valor_interno\(0));

\inst6|mem_rtl_0|auto_generated|ram_block1a59_PORTBADDR_bus\ <= (\PC|data_out\(12) & \PC|data_out\(11) & \PC|data_out\(10) & \PC|data_out\(9) & \PC|data_out\(8) & \PC|data_out\(7) & \PC|data_out\(6) & \PC|data_out\(5) & \PC|data_out\(4) & 
\PC|data_out\(3) & \PC|data_out\(2) & \PC|data_out\(1) & \PC|data_out\(0));

\inst6|mem_rtl_0|auto_generated|ram_block1a59~portbdataout\ <= \inst6|mem_rtl_0|auto_generated|ram_block1a59_PORTBDATAOUT_bus\(0);

\inst6|mem_rtl_0|auto_generated|ram_block1a43_PORTADATAIN_bus\(0) <= \inst6|data[3]~36_combout\;

\inst6|mem_rtl_0|auto_generated|ram_block1a43_PORTAADDR_bus\ <= (\inst|valor_interno\(12) & \inst|valor_interno\(11) & \inst|valor_interno\(10) & \inst|valor_interno\(9) & \inst|valor_interno\(8) & \inst|valor_interno\(7) & 
\inst|valor_interno\(6) & \inst|valor_interno\(5) & \inst|valor_interno\(4) & \inst|valor_interno\(3) & \inst|valor_interno\(2) & \inst|valor_interno\(1) & \inst|valor_interno\(0));

\inst6|mem_rtl_0|auto_generated|ram_block1a43_PORTBADDR_bus\ <= (\PC|data_out\(12) & \PC|data_out\(11) & \PC|data_out\(10) & \PC|data_out\(9) & \PC|data_out\(8) & \PC|data_out\(7) & \PC|data_out\(6) & \PC|data_out\(5) & \PC|data_out\(4) & 
\PC|data_out\(3) & \PC|data_out\(2) & \PC|data_out\(1) & \PC|data_out\(0));

\inst6|mem_rtl_0|auto_generated|ram_block1a43~portbdataout\ <= \inst6|mem_rtl_0|auto_generated|ram_block1a43_PORTBDATAOUT_bus\(0);

\inst6|mem_rtl_0|auto_generated|ram_block1a26_PORTADATAIN_bus\(0) <= \inst6|data[2]~42_combout\;

\inst6|mem_rtl_0|auto_generated|ram_block1a26_PORTAADDR_bus\ <= (\inst|valor_interno\(12) & \inst|valor_interno\(11) & \inst|valor_interno\(10) & \inst|valor_interno\(9) & \inst|valor_interno\(8) & \inst|valor_interno\(7) & 
\inst|valor_interno\(6) & \inst|valor_interno\(5) & \inst|valor_interno\(4) & \inst|valor_interno\(3) & \inst|valor_interno\(2) & \inst|valor_interno\(1) & \inst|valor_interno\(0));

\inst6|mem_rtl_0|auto_generated|ram_block1a26_PORTBADDR_bus\ <= (\PC|data_out\(12) & \PC|data_out\(11) & \PC|data_out\(10) & \PC|data_out\(9) & \PC|data_out\(8) & \PC|data_out\(7) & \PC|data_out\(6) & \PC|data_out\(5) & \PC|data_out\(4) & 
\PC|data_out\(3) & \PC|data_out\(2) & \PC|data_out\(1) & \PC|data_out\(0));

\inst6|mem_rtl_0|auto_generated|ram_block1a26~portbdataout\ <= \inst6|mem_rtl_0|auto_generated|ram_block1a26_PORTBDATAOUT_bus\(0);

\inst6|mem_rtl_0|auto_generated|ram_block1a10_PORTADATAIN_bus\(0) <= \inst6|data[2]~42_combout\;

\inst6|mem_rtl_0|auto_generated|ram_block1a10_PORTAADDR_bus\ <= (\inst|valor_interno\(12) & \inst|valor_interno\(11) & \inst|valor_interno\(10) & \inst|valor_interno\(9) & \inst|valor_interno\(8) & \inst|valor_interno\(7) & 
\inst|valor_interno\(6) & \inst|valor_interno\(5) & \inst|valor_interno\(4) & \inst|valor_interno\(3) & \inst|valor_interno\(2) & \inst|valor_interno\(1) & \inst|valor_interno\(0));

\inst6|mem_rtl_0|auto_generated|ram_block1a10_PORTBADDR_bus\ <= (\PC|data_out\(12) & \PC|data_out\(11) & \PC|data_out\(10) & \PC|data_out\(9) & \PC|data_out\(8) & \PC|data_out\(7) & \PC|data_out\(6) & \PC|data_out\(5) & \PC|data_out\(4) & 
\PC|data_out\(3) & \PC|data_out\(2) & \PC|data_out\(1) & \PC|data_out\(0));

\inst6|mem_rtl_0|auto_generated|ram_block1a10~portbdataout\ <= \inst6|mem_rtl_0|auto_generated|ram_block1a10_PORTBDATAOUT_bus\(0);

\inst6|mem_rtl_0|auto_generated|ram_block1a18_PORTADATAIN_bus\(0) <= \inst6|data[2]~42_combout\;

\inst6|mem_rtl_0|auto_generated|ram_block1a18_PORTAADDR_bus\ <= (\inst|valor_interno\(12) & \inst|valor_interno\(11) & \inst|valor_interno\(10) & \inst|valor_interno\(9) & \inst|valor_interno\(8) & \inst|valor_interno\(7) & 
\inst|valor_interno\(6) & \inst|valor_interno\(5) & \inst|valor_interno\(4) & \inst|valor_interno\(3) & \inst|valor_interno\(2) & \inst|valor_interno\(1) & \inst|valor_interno\(0));

\inst6|mem_rtl_0|auto_generated|ram_block1a18_PORTBADDR_bus\ <= (\PC|data_out\(12) & \PC|data_out\(11) & \PC|data_out\(10) & \PC|data_out\(9) & \PC|data_out\(8) & \PC|data_out\(7) & \PC|data_out\(6) & \PC|data_out\(5) & \PC|data_out\(4) & 
\PC|data_out\(3) & \PC|data_out\(2) & \PC|data_out\(1) & \PC|data_out\(0));

\inst6|mem_rtl_0|auto_generated|ram_block1a18~portbdataout\ <= \inst6|mem_rtl_0|auto_generated|ram_block1a18_PORTBDATAOUT_bus\(0);

\inst6|mem_rtl_0|auto_generated|ram_block1a2_PORTADATAIN_bus\(0) <= \inst6|data[2]~42_combout\;

\inst6|mem_rtl_0|auto_generated|ram_block1a2_PORTAADDR_bus\ <= (\inst|valor_interno\(12) & \inst|valor_interno\(11) & \inst|valor_interno\(10) & \inst|valor_interno\(9) & \inst|valor_interno\(8) & \inst|valor_interno\(7) & 
\inst|valor_interno\(6) & \inst|valor_interno\(5) & \inst|valor_interno\(4) & \inst|valor_interno\(3) & \inst|valor_interno\(2) & \inst|valor_interno\(1) & \inst|valor_interno\(0));

\inst6|mem_rtl_0|auto_generated|ram_block1a2_PORTBADDR_bus\ <= (\PC|data_out\(12) & \PC|data_out\(11) & \PC|data_out\(10) & \PC|data_out\(9) & \PC|data_out\(8) & \PC|data_out\(7) & \PC|data_out\(6) & \PC|data_out\(5) & \PC|data_out\(4) & 
\PC|data_out\(3) & \PC|data_out\(2) & \PC|data_out\(1) & \PC|data_out\(0));

\inst6|mem_rtl_0|auto_generated|ram_block1a2~portbdataout\ <= \inst6|mem_rtl_0|auto_generated|ram_block1a2_PORTBDATAOUT_bus\(0);

\inst6|mem_rtl_0|auto_generated|ram_block1a50_PORTADATAIN_bus\(0) <= \inst6|data[2]~42_combout\;

\inst6|mem_rtl_0|auto_generated|ram_block1a50_PORTAADDR_bus\ <= (\inst|valor_interno\(12) & \inst|valor_interno\(11) & \inst|valor_interno\(10) & \inst|valor_interno\(9) & \inst|valor_interno\(8) & \inst|valor_interno\(7) & 
\inst|valor_interno\(6) & \inst|valor_interno\(5) & \inst|valor_interno\(4) & \inst|valor_interno\(3) & \inst|valor_interno\(2) & \inst|valor_interno\(1) & \inst|valor_interno\(0));

\inst6|mem_rtl_0|auto_generated|ram_block1a50_PORTBADDR_bus\ <= (\PC|data_out\(12) & \PC|data_out\(11) & \PC|data_out\(10) & \PC|data_out\(9) & \PC|data_out\(8) & \PC|data_out\(7) & \PC|data_out\(6) & \PC|data_out\(5) & \PC|data_out\(4) & 
\PC|data_out\(3) & \PC|data_out\(2) & \PC|data_out\(1) & \PC|data_out\(0));

\inst6|mem_rtl_0|auto_generated|ram_block1a50~portbdataout\ <= \inst6|mem_rtl_0|auto_generated|ram_block1a50_PORTBDATAOUT_bus\(0);

\inst6|mem_rtl_0|auto_generated|ram_block1a34_PORTADATAIN_bus\(0) <= \inst6|data[2]~42_combout\;

\inst6|mem_rtl_0|auto_generated|ram_block1a34_PORTAADDR_bus\ <= (\inst|valor_interno\(12) & \inst|valor_interno\(11) & \inst|valor_interno\(10) & \inst|valor_interno\(9) & \inst|valor_interno\(8) & \inst|valor_interno\(7) & 
\inst|valor_interno\(6) & \inst|valor_interno\(5) & \inst|valor_interno\(4) & \inst|valor_interno\(3) & \inst|valor_interno\(2) & \inst|valor_interno\(1) & \inst|valor_interno\(0));

\inst6|mem_rtl_0|auto_generated|ram_block1a34_PORTBADDR_bus\ <= (\PC|data_out\(12) & \PC|data_out\(11) & \PC|data_out\(10) & \PC|data_out\(9) & \PC|data_out\(8) & \PC|data_out\(7) & \PC|data_out\(6) & \PC|data_out\(5) & \PC|data_out\(4) & 
\PC|data_out\(3) & \PC|data_out\(2) & \PC|data_out\(1) & \PC|data_out\(0));

\inst6|mem_rtl_0|auto_generated|ram_block1a34~portbdataout\ <= \inst6|mem_rtl_0|auto_generated|ram_block1a34_PORTBDATAOUT_bus\(0);

\inst6|mem_rtl_0|auto_generated|ram_block1a58_PORTADATAIN_bus\(0) <= \inst6|data[2]~42_combout\;

\inst6|mem_rtl_0|auto_generated|ram_block1a58_PORTAADDR_bus\ <= (\inst|valor_interno\(12) & \inst|valor_interno\(11) & \inst|valor_interno\(10) & \inst|valor_interno\(9) & \inst|valor_interno\(8) & \inst|valor_interno\(7) & 
\inst|valor_interno\(6) & \inst|valor_interno\(5) & \inst|valor_interno\(4) & \inst|valor_interno\(3) & \inst|valor_interno\(2) & \inst|valor_interno\(1) & \inst|valor_interno\(0));

\inst6|mem_rtl_0|auto_generated|ram_block1a58_PORTBADDR_bus\ <= (\PC|data_out\(12) & \PC|data_out\(11) & \PC|data_out\(10) & \PC|data_out\(9) & \PC|data_out\(8) & \PC|data_out\(7) & \PC|data_out\(6) & \PC|data_out\(5) & \PC|data_out\(4) & 
\PC|data_out\(3) & \PC|data_out\(2) & \PC|data_out\(1) & \PC|data_out\(0));

\inst6|mem_rtl_0|auto_generated|ram_block1a58~portbdataout\ <= \inst6|mem_rtl_0|auto_generated|ram_block1a58_PORTBDATAOUT_bus\(0);

\inst6|mem_rtl_0|auto_generated|ram_block1a42_PORTADATAIN_bus\(0) <= \inst6|data[2]~42_combout\;

\inst6|mem_rtl_0|auto_generated|ram_block1a42_PORTAADDR_bus\ <= (\inst|valor_interno\(12) & \inst|valor_interno\(11) & \inst|valor_interno\(10) & \inst|valor_interno\(9) & \inst|valor_interno\(8) & \inst|valor_interno\(7) & 
\inst|valor_interno\(6) & \inst|valor_interno\(5) & \inst|valor_interno\(4) & \inst|valor_interno\(3) & \inst|valor_interno\(2) & \inst|valor_interno\(1) & \inst|valor_interno\(0));

\inst6|mem_rtl_0|auto_generated|ram_block1a42_PORTBADDR_bus\ <= (\PC|data_out\(12) & \PC|data_out\(11) & \PC|data_out\(10) & \PC|data_out\(9) & \PC|data_out\(8) & \PC|data_out\(7) & \PC|data_out\(6) & \PC|data_out\(5) & \PC|data_out\(4) & 
\PC|data_out\(3) & \PC|data_out\(2) & \PC|data_out\(1) & \PC|data_out\(0));

\inst6|mem_rtl_0|auto_generated|ram_block1a42~portbdataout\ <= \inst6|mem_rtl_0|auto_generated|ram_block1a42_PORTBDATAOUT_bus\(0);

\inst6|mem_rtl_0|auto_generated|ram_block1a25_PORTADATAIN_bus\(0) <= \inst6|data[1]~48_combout\;

\inst6|mem_rtl_0|auto_generated|ram_block1a25_PORTAADDR_bus\ <= (\inst|valor_interno\(12) & \inst|valor_interno\(11) & \inst|valor_interno\(10) & \inst|valor_interno\(9) & \inst|valor_interno\(8) & \inst|valor_interno\(7) & 
\inst|valor_interno\(6) & \inst|valor_interno\(5) & \inst|valor_interno\(4) & \inst|valor_interno\(3) & \inst|valor_interno\(2) & \inst|valor_interno\(1) & \inst|valor_interno\(0));

\inst6|mem_rtl_0|auto_generated|ram_block1a25_PORTBADDR_bus\ <= (\PC|data_out\(12) & \PC|data_out\(11) & \PC|data_out\(10) & \PC|data_out\(9) & \PC|data_out\(8) & \PC|data_out\(7) & \PC|data_out\(6) & \PC|data_out\(5) & \PC|data_out\(4) & 
\PC|data_out\(3) & \PC|data_out\(2) & \PC|data_out\(1) & \PC|data_out\(0));

\inst6|mem_rtl_0|auto_generated|ram_block1a25~portbdataout\ <= \inst6|mem_rtl_0|auto_generated|ram_block1a25_PORTBDATAOUT_bus\(0);

\inst6|mem_rtl_0|auto_generated|ram_block1a9_PORTADATAIN_bus\(0) <= \inst6|data[1]~48_combout\;

\inst6|mem_rtl_0|auto_generated|ram_block1a9_PORTAADDR_bus\ <= (\inst|valor_interno\(12) & \inst|valor_interno\(11) & \inst|valor_interno\(10) & \inst|valor_interno\(9) & \inst|valor_interno\(8) & \inst|valor_interno\(7) & 
\inst|valor_interno\(6) & \inst|valor_interno\(5) & \inst|valor_interno\(4) & \inst|valor_interno\(3) & \inst|valor_interno\(2) & \inst|valor_interno\(1) & \inst|valor_interno\(0));

\inst6|mem_rtl_0|auto_generated|ram_block1a9_PORTBADDR_bus\ <= (\PC|data_out\(12) & \PC|data_out\(11) & \PC|data_out\(10) & \PC|data_out\(9) & \PC|data_out\(8) & \PC|data_out\(7) & \PC|data_out\(6) & \PC|data_out\(5) & \PC|data_out\(4) & 
\PC|data_out\(3) & \PC|data_out\(2) & \PC|data_out\(1) & \PC|data_out\(0));

\inst6|mem_rtl_0|auto_generated|ram_block1a9~portbdataout\ <= \inst6|mem_rtl_0|auto_generated|ram_block1a9_PORTBDATAOUT_bus\(0);

\inst6|mem_rtl_0|auto_generated|ram_block1a17_PORTADATAIN_bus\(0) <= \inst6|data[1]~48_combout\;

\inst6|mem_rtl_0|auto_generated|ram_block1a17_PORTAADDR_bus\ <= (\inst|valor_interno\(12) & \inst|valor_interno\(11) & \inst|valor_interno\(10) & \inst|valor_interno\(9) & \inst|valor_interno\(8) & \inst|valor_interno\(7) & 
\inst|valor_interno\(6) & \inst|valor_interno\(5) & \inst|valor_interno\(4) & \inst|valor_interno\(3) & \inst|valor_interno\(2) & \inst|valor_interno\(1) & \inst|valor_interno\(0));

\inst6|mem_rtl_0|auto_generated|ram_block1a17_PORTBADDR_bus\ <= (\PC|data_out\(12) & \PC|data_out\(11) & \PC|data_out\(10) & \PC|data_out\(9) & \PC|data_out\(8) & \PC|data_out\(7) & \PC|data_out\(6) & \PC|data_out\(5) & \PC|data_out\(4) & 
\PC|data_out\(3) & \PC|data_out\(2) & \PC|data_out\(1) & \PC|data_out\(0));

\inst6|mem_rtl_0|auto_generated|ram_block1a17~portbdataout\ <= \inst6|mem_rtl_0|auto_generated|ram_block1a17_PORTBDATAOUT_bus\(0);

\inst6|mem_rtl_0|auto_generated|ram_block1a1_PORTADATAIN_bus\(0) <= \inst6|data[1]~48_combout\;

\inst6|mem_rtl_0|auto_generated|ram_block1a1_PORTAADDR_bus\ <= (\inst|valor_interno\(12) & \inst|valor_interno\(11) & \inst|valor_interno\(10) & \inst|valor_interno\(9) & \inst|valor_interno\(8) & \inst|valor_interno\(7) & 
\inst|valor_interno\(6) & \inst|valor_interno\(5) & \inst|valor_interno\(4) & \inst|valor_interno\(3) & \inst|valor_interno\(2) & \inst|valor_interno\(1) & \inst|valor_interno\(0));

\inst6|mem_rtl_0|auto_generated|ram_block1a1_PORTBADDR_bus\ <= (\PC|data_out\(12) & \PC|data_out\(11) & \PC|data_out\(10) & \PC|data_out\(9) & \PC|data_out\(8) & \PC|data_out\(7) & \PC|data_out\(6) & \PC|data_out\(5) & \PC|data_out\(4) & 
\PC|data_out\(3) & \PC|data_out\(2) & \PC|data_out\(1) & \PC|data_out\(0));

\inst6|mem_rtl_0|auto_generated|ram_block1a1~portbdataout\ <= \inst6|mem_rtl_0|auto_generated|ram_block1a1_PORTBDATAOUT_bus\(0);

\inst6|mem_rtl_0|auto_generated|ram_block1a49_PORTADATAIN_bus\(0) <= \inst6|data[1]~48_combout\;

\inst6|mem_rtl_0|auto_generated|ram_block1a49_PORTAADDR_bus\ <= (\inst|valor_interno\(12) & \inst|valor_interno\(11) & \inst|valor_interno\(10) & \inst|valor_interno\(9) & \inst|valor_interno\(8) & \inst|valor_interno\(7) & 
\inst|valor_interno\(6) & \inst|valor_interno\(5) & \inst|valor_interno\(4) & \inst|valor_interno\(3) & \inst|valor_interno\(2) & \inst|valor_interno\(1) & \inst|valor_interno\(0));

\inst6|mem_rtl_0|auto_generated|ram_block1a49_PORTBADDR_bus\ <= (\PC|data_out\(12) & \PC|data_out\(11) & \PC|data_out\(10) & \PC|data_out\(9) & \PC|data_out\(8) & \PC|data_out\(7) & \PC|data_out\(6) & \PC|data_out\(5) & \PC|data_out\(4) & 
\PC|data_out\(3) & \PC|data_out\(2) & \PC|data_out\(1) & \PC|data_out\(0));

\inst6|mem_rtl_0|auto_generated|ram_block1a49~portbdataout\ <= \inst6|mem_rtl_0|auto_generated|ram_block1a49_PORTBDATAOUT_bus\(0);

\inst6|mem_rtl_0|auto_generated|ram_block1a33_PORTADATAIN_bus\(0) <= \inst6|data[1]~48_combout\;

\inst6|mem_rtl_0|auto_generated|ram_block1a33_PORTAADDR_bus\ <= (\inst|valor_interno\(12) & \inst|valor_interno\(11) & \inst|valor_interno\(10) & \inst|valor_interno\(9) & \inst|valor_interno\(8) & \inst|valor_interno\(7) & 
\inst|valor_interno\(6) & \inst|valor_interno\(5) & \inst|valor_interno\(4) & \inst|valor_interno\(3) & \inst|valor_interno\(2) & \inst|valor_interno\(1) & \inst|valor_interno\(0));

\inst6|mem_rtl_0|auto_generated|ram_block1a33_PORTBADDR_bus\ <= (\PC|data_out\(12) & \PC|data_out\(11) & \PC|data_out\(10) & \PC|data_out\(9) & \PC|data_out\(8) & \PC|data_out\(7) & \PC|data_out\(6) & \PC|data_out\(5) & \PC|data_out\(4) & 
\PC|data_out\(3) & \PC|data_out\(2) & \PC|data_out\(1) & \PC|data_out\(0));

\inst6|mem_rtl_0|auto_generated|ram_block1a33~portbdataout\ <= \inst6|mem_rtl_0|auto_generated|ram_block1a33_PORTBDATAOUT_bus\(0);

\inst6|mem_rtl_0|auto_generated|ram_block1a57_PORTADATAIN_bus\(0) <= \inst6|data[1]~48_combout\;

\inst6|mem_rtl_0|auto_generated|ram_block1a57_PORTAADDR_bus\ <= (\inst|valor_interno\(12) & \inst|valor_interno\(11) & \inst|valor_interno\(10) & \inst|valor_interno\(9) & \inst|valor_interno\(8) & \inst|valor_interno\(7) & 
\inst|valor_interno\(6) & \inst|valor_interno\(5) & \inst|valor_interno\(4) & \inst|valor_interno\(3) & \inst|valor_interno\(2) & \inst|valor_interno\(1) & \inst|valor_interno\(0));

\inst6|mem_rtl_0|auto_generated|ram_block1a57_PORTBADDR_bus\ <= (\PC|data_out\(12) & \PC|data_out\(11) & \PC|data_out\(10) & \PC|data_out\(9) & \PC|data_out\(8) & \PC|data_out\(7) & \PC|data_out\(6) & \PC|data_out\(5) & \PC|data_out\(4) & 
\PC|data_out\(3) & \PC|data_out\(2) & \PC|data_out\(1) & \PC|data_out\(0));

\inst6|mem_rtl_0|auto_generated|ram_block1a57~portbdataout\ <= \inst6|mem_rtl_0|auto_generated|ram_block1a57_PORTBDATAOUT_bus\(0);

\inst6|mem_rtl_0|auto_generated|ram_block1a41_PORTADATAIN_bus\(0) <= \inst6|data[1]~48_combout\;

\inst6|mem_rtl_0|auto_generated|ram_block1a41_PORTAADDR_bus\ <= (\inst|valor_interno\(12) & \inst|valor_interno\(11) & \inst|valor_interno\(10) & \inst|valor_interno\(9) & \inst|valor_interno\(8) & \inst|valor_interno\(7) & 
\inst|valor_interno\(6) & \inst|valor_interno\(5) & \inst|valor_interno\(4) & \inst|valor_interno\(3) & \inst|valor_interno\(2) & \inst|valor_interno\(1) & \inst|valor_interno\(0));

\inst6|mem_rtl_0|auto_generated|ram_block1a41_PORTBADDR_bus\ <= (\PC|data_out\(12) & \PC|data_out\(11) & \PC|data_out\(10) & \PC|data_out\(9) & \PC|data_out\(8) & \PC|data_out\(7) & \PC|data_out\(6) & \PC|data_out\(5) & \PC|data_out\(4) & 
\PC|data_out\(3) & \PC|data_out\(2) & \PC|data_out\(1) & \PC|data_out\(0));

\inst6|mem_rtl_0|auto_generated|ram_block1a41~portbdataout\ <= \inst6|mem_rtl_0|auto_generated|ram_block1a41_PORTBDATAOUT_bus\(0);

\inst6|mem_rtl_0|auto_generated|ram_block1a24_PORTADATAIN_bus\(0) <= \inst6|data[0]~54_combout\;

\inst6|mem_rtl_0|auto_generated|ram_block1a24_PORTAADDR_bus\ <= (\inst|valor_interno\(12) & \inst|valor_interno\(11) & \inst|valor_interno\(10) & \inst|valor_interno\(9) & \inst|valor_interno\(8) & \inst|valor_interno\(7) & 
\inst|valor_interno\(6) & \inst|valor_interno\(5) & \inst|valor_interno\(4) & \inst|valor_interno\(3) & \inst|valor_interno\(2) & \inst|valor_interno\(1) & \inst|valor_interno\(0));

\inst6|mem_rtl_0|auto_generated|ram_block1a24_PORTBADDR_bus\ <= (\PC|data_out\(12) & \PC|data_out\(11) & \PC|data_out\(10) & \PC|data_out\(9) & \PC|data_out\(8) & \PC|data_out\(7) & \PC|data_out\(6) & \PC|data_out\(5) & \PC|data_out\(4) & 
\PC|data_out\(3) & \PC|data_out\(2) & \PC|data_out\(1) & \PC|data_out\(0));

\inst6|mem_rtl_0|auto_generated|ram_block1a24~portbdataout\ <= \inst6|mem_rtl_0|auto_generated|ram_block1a24_PORTBDATAOUT_bus\(0);

\inst6|mem_rtl_0|auto_generated|ram_block1a8_PORTADATAIN_bus\(0) <= \inst6|data[0]~54_combout\;

\inst6|mem_rtl_0|auto_generated|ram_block1a8_PORTAADDR_bus\ <= (\inst|valor_interno\(12) & \inst|valor_interno\(11) & \inst|valor_interno\(10) & \inst|valor_interno\(9) & \inst|valor_interno\(8) & \inst|valor_interno\(7) & 
\inst|valor_interno\(6) & \inst|valor_interno\(5) & \inst|valor_interno\(4) & \inst|valor_interno\(3) & \inst|valor_interno\(2) & \inst|valor_interno\(1) & \inst|valor_interno\(0));

\inst6|mem_rtl_0|auto_generated|ram_block1a8_PORTBADDR_bus\ <= (\PC|data_out\(12) & \PC|data_out\(11) & \PC|data_out\(10) & \PC|data_out\(9) & \PC|data_out\(8) & \PC|data_out\(7) & \PC|data_out\(6) & \PC|data_out\(5) & \PC|data_out\(4) & 
\PC|data_out\(3) & \PC|data_out\(2) & \PC|data_out\(1) & \PC|data_out\(0));

\inst6|mem_rtl_0|auto_generated|ram_block1a8~portbdataout\ <= \inst6|mem_rtl_0|auto_generated|ram_block1a8_PORTBDATAOUT_bus\(0);

\inst6|mem_rtl_0|auto_generated|ram_block1a16_PORTADATAIN_bus\(0) <= \inst6|data[0]~54_combout\;

\inst6|mem_rtl_0|auto_generated|ram_block1a16_PORTAADDR_bus\ <= (\inst|valor_interno\(12) & \inst|valor_interno\(11) & \inst|valor_interno\(10) & \inst|valor_interno\(9) & \inst|valor_interno\(8) & \inst|valor_interno\(7) & 
\inst|valor_interno\(6) & \inst|valor_interno\(5) & \inst|valor_interno\(4) & \inst|valor_interno\(3) & \inst|valor_interno\(2) & \inst|valor_interno\(1) & \inst|valor_interno\(0));

\inst6|mem_rtl_0|auto_generated|ram_block1a16_PORTBADDR_bus\ <= (\PC|data_out\(12) & \PC|data_out\(11) & \PC|data_out\(10) & \PC|data_out\(9) & \PC|data_out\(8) & \PC|data_out\(7) & \PC|data_out\(6) & \PC|data_out\(5) & \PC|data_out\(4) & 
\PC|data_out\(3) & \PC|data_out\(2) & \PC|data_out\(1) & \PC|data_out\(0));

\inst6|mem_rtl_0|auto_generated|ram_block1a16~portbdataout\ <= \inst6|mem_rtl_0|auto_generated|ram_block1a16_PORTBDATAOUT_bus\(0);

\inst6|mem_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\(0) <= \inst6|data[0]~54_combout\;

\inst6|mem_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\inst|valor_interno\(12) & \inst|valor_interno\(11) & \inst|valor_interno\(10) & \inst|valor_interno\(9) & \inst|valor_interno\(8) & \inst|valor_interno\(7) & 
\inst|valor_interno\(6) & \inst|valor_interno\(5) & \inst|valor_interno\(4) & \inst|valor_interno\(3) & \inst|valor_interno\(2) & \inst|valor_interno\(1) & \inst|valor_interno\(0));

\inst6|mem_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\ <= (\PC|data_out\(12) & \PC|data_out\(11) & \PC|data_out\(10) & \PC|data_out\(9) & \PC|data_out\(8) & \PC|data_out\(7) & \PC|data_out\(6) & \PC|data_out\(5) & \PC|data_out\(4) & 
\PC|data_out\(3) & \PC|data_out\(2) & \PC|data_out\(1) & \PC|data_out\(0));

\inst6|mem_rtl_0|auto_generated|ram_block1a0~portbdataout\ <= \inst6|mem_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(0);

\inst6|mem_rtl_0|auto_generated|ram_block1a48_PORTADATAIN_bus\(0) <= \inst6|data[0]~54_combout\;

\inst6|mem_rtl_0|auto_generated|ram_block1a48_PORTAADDR_bus\ <= (\inst|valor_interno\(12) & \inst|valor_interno\(11) & \inst|valor_interno\(10) & \inst|valor_interno\(9) & \inst|valor_interno\(8) & \inst|valor_interno\(7) & 
\inst|valor_interno\(6) & \inst|valor_interno\(5) & \inst|valor_interno\(4) & \inst|valor_interno\(3) & \inst|valor_interno\(2) & \inst|valor_interno\(1) & \inst|valor_interno\(0));

\inst6|mem_rtl_0|auto_generated|ram_block1a48_PORTBADDR_bus\ <= (\PC|data_out\(12) & \PC|data_out\(11) & \PC|data_out\(10) & \PC|data_out\(9) & \PC|data_out\(8) & \PC|data_out\(7) & \PC|data_out\(6) & \PC|data_out\(5) & \PC|data_out\(4) & 
\PC|data_out\(3) & \PC|data_out\(2) & \PC|data_out\(1) & \PC|data_out\(0));

\inst6|mem_rtl_0|auto_generated|ram_block1a48~portbdataout\ <= \inst6|mem_rtl_0|auto_generated|ram_block1a48_PORTBDATAOUT_bus\(0);

\inst6|mem_rtl_0|auto_generated|ram_block1a32_PORTADATAIN_bus\(0) <= \inst6|data[0]~54_combout\;

\inst6|mem_rtl_0|auto_generated|ram_block1a32_PORTAADDR_bus\ <= (\inst|valor_interno\(12) & \inst|valor_interno\(11) & \inst|valor_interno\(10) & \inst|valor_interno\(9) & \inst|valor_interno\(8) & \inst|valor_interno\(7) & 
\inst|valor_interno\(6) & \inst|valor_interno\(5) & \inst|valor_interno\(4) & \inst|valor_interno\(3) & \inst|valor_interno\(2) & \inst|valor_interno\(1) & \inst|valor_interno\(0));

\inst6|mem_rtl_0|auto_generated|ram_block1a32_PORTBADDR_bus\ <= (\PC|data_out\(12) & \PC|data_out\(11) & \PC|data_out\(10) & \PC|data_out\(9) & \PC|data_out\(8) & \PC|data_out\(7) & \PC|data_out\(6) & \PC|data_out\(5) & \PC|data_out\(4) & 
\PC|data_out\(3) & \PC|data_out\(2) & \PC|data_out\(1) & \PC|data_out\(0));

\inst6|mem_rtl_0|auto_generated|ram_block1a32~portbdataout\ <= \inst6|mem_rtl_0|auto_generated|ram_block1a32_PORTBDATAOUT_bus\(0);

\inst6|mem_rtl_0|auto_generated|ram_block1a56_PORTADATAIN_bus\(0) <= \inst6|data[0]~54_combout\;

\inst6|mem_rtl_0|auto_generated|ram_block1a56_PORTAADDR_bus\ <= (\inst|valor_interno\(12) & \inst|valor_interno\(11) & \inst|valor_interno\(10) & \inst|valor_interno\(9) & \inst|valor_interno\(8) & \inst|valor_interno\(7) & 
\inst|valor_interno\(6) & \inst|valor_interno\(5) & \inst|valor_interno\(4) & \inst|valor_interno\(3) & \inst|valor_interno\(2) & \inst|valor_interno\(1) & \inst|valor_interno\(0));

\inst6|mem_rtl_0|auto_generated|ram_block1a56_PORTBADDR_bus\ <= (\PC|data_out\(12) & \PC|data_out\(11) & \PC|data_out\(10) & \PC|data_out\(9) & \PC|data_out\(8) & \PC|data_out\(7) & \PC|data_out\(6) & \PC|data_out\(5) & \PC|data_out\(4) & 
\PC|data_out\(3) & \PC|data_out\(2) & \PC|data_out\(1) & \PC|data_out\(0));

\inst6|mem_rtl_0|auto_generated|ram_block1a56~portbdataout\ <= \inst6|mem_rtl_0|auto_generated|ram_block1a56_PORTBDATAOUT_bus\(0);

\inst6|mem_rtl_0|auto_generated|ram_block1a40_PORTADATAIN_bus\(0) <= \inst6|data[0]~54_combout\;

\inst6|mem_rtl_0|auto_generated|ram_block1a40_PORTAADDR_bus\ <= (\inst|valor_interno\(12) & \inst|valor_interno\(11) & \inst|valor_interno\(10) & \inst|valor_interno\(9) & \inst|valor_interno\(8) & \inst|valor_interno\(7) & 
\inst|valor_interno\(6) & \inst|valor_interno\(5) & \inst|valor_interno\(4) & \inst|valor_interno\(3) & \inst|valor_interno\(2) & \inst|valor_interno\(1) & \inst|valor_interno\(0));

\inst6|mem_rtl_0|auto_generated|ram_block1a40_PORTBADDR_bus\ <= (\PC|data_out\(12) & \PC|data_out\(11) & \PC|data_out\(10) & \PC|data_out\(9) & \PC|data_out\(8) & \PC|data_out\(7) & \PC|data_out\(6) & \PC|data_out\(5) & \PC|data_out\(4) & 
\PC|data_out\(3) & \PC|data_out\(2) & \PC|data_out\(1) & \PC|data_out\(0));

\inst6|mem_rtl_0|auto_generated|ram_block1a40~portbdataout\ <= \inst6|mem_rtl_0|auto_generated|ram_block1a40_PORTBDATAOUT_bus\(0);

\inst7|inst2|nCRI~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst7|inst2|nCRI~q\);

\inst7|inst2|nCBD~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst7|inst2|nCBD~q\);

\RESET~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \RESET~input_o\);

\CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK~input_o\);
\inst7|inst2|ALT_INV_nCBD~clkctrl_outclk\ <= NOT \inst7|inst2|nCBD~clkctrl_outclk\;
\inst7|inst2|ALT_INV_nCRI~clkctrl_outclk\ <= NOT \inst7|inst2|nCRI~clkctrl_outclk\;
\inst7|inst2|ALT_INV_CN~q\ <= NOT \inst7|inst2|CN~q\;
\inst7|inst2|ALT_INV_CZ~q\ <= NOT \inst7|inst2|CZ~q\;

-- Location: IOOBUF_X53_Y25_N2
\Flag_C~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Flag_C~output_o\);

-- Location: IOOBUF_X0_Y12_N9
\Flag_V~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Flag_V~output_o\);

-- Location: IOOBUF_X0_Y15_N2
\Flag_Z~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|inst2|valor_interno~q\,
	devoe => ww_devoe,
	o => \Flag_Z~output_o\);

-- Location: IOOBUF_X53_Y12_N2
\Flag_N~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|inst3|valor_interno~q\,
	devoe => ww_devoe,
	o => \Flag_N~output_o\);

-- Location: IOOBUF_X0_Y4_N16
\Flag_I~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Flag_I~output_o\);

-- Location: IOOBUF_X1_Y0_N23
\Flag_H~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Flag_H~output_o\);

-- Location: IOOBUF_X3_Y0_N2
\Flag_X~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Flag_X~output_o\);

-- Location: IOOBUF_X0_Y24_N16
\Flag_S~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Flag_S~output_o\);

-- Location: IOOBUF_X53_Y7_N9
\ACCA_D[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ACCA_D[7]~output_o\);

-- Location: IOOBUF_X1_Y0_N16
\ACCA_D[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ACCA_D[6]~output_o\);

-- Location: IOOBUF_X0_Y12_N2
\ACCA_D[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ACCA_D[5]~output_o\);

-- Location: IOOBUF_X45_Y34_N2
\ACCA_D[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ACCA_D[4]~output_o\);

-- Location: IOOBUF_X5_Y34_N16
\ACCA_D[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ACCA_D[3]~output_o\);

-- Location: IOOBUF_X51_Y34_N16
\ACCA_D[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ACCA_D[2]~output_o\);

-- Location: IOOBUF_X53_Y6_N16
\ACCA_D[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ACCA_D[1]~output_o\);

-- Location: IOOBUF_X53_Y6_N23
\ACCA_D[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ACCA_D[0]~output_o\);

-- Location: IOOBUF_X53_Y13_N9
\ACCB_D[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ACCB|data_out\(7),
	devoe => ww_devoe,
	o => \ACCB_D[7]~output_o\);

-- Location: IOOBUF_X38_Y34_N16
\ACCB_D[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ACCB|data_out\(6),
	devoe => ww_devoe,
	o => \ACCB_D[6]~output_o\);

-- Location: IOOBUF_X53_Y15_N9
\ACCB_D[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ACCB|data_out\(5),
	devoe => ww_devoe,
	o => \ACCB_D[5]~output_o\);

-- Location: IOOBUF_X29_Y0_N2
\ACCB_D[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ACCB|data_out\(4),
	devoe => ww_devoe,
	o => \ACCB_D[4]~output_o\);

-- Location: IOOBUF_X53_Y14_N9
\ACCB_D[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ACCB|data_out\(3),
	devoe => ww_devoe,
	o => \ACCB_D[3]~output_o\);

-- Location: IOOBUF_X0_Y11_N9
\ACCB_D[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ACCB|data_out\(2),
	devoe => ww_devoe,
	o => \ACCB_D[2]~output_o\);

-- Location: IOOBUF_X23_Y34_N23
\ACCB_D[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ACCB|data_out\(1),
	devoe => ww_devoe,
	o => \ACCB_D[1]~output_o\);

-- Location: IOOBUF_X34_Y0_N16
\ACCB_D[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ACCB|data_out\(0),
	devoe => ww_devoe,
	o => \ACCB_D[0]~output_o\);

-- Location: IOOBUF_X53_Y9_N9
\AP_D[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \AP_D[15]~output_o\);

-- Location: IOOBUF_X16_Y0_N16
\AP_D[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \AP_D[14]~output_o\);

-- Location: IOOBUF_X25_Y0_N16
\AP_D[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \AP_D[13]~output_o\);

-- Location: IOOBUF_X0_Y11_N2
\AP_D[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \AP_D[12]~output_o\);

-- Location: IOOBUF_X53_Y9_N16
\AP_D[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \AP_D[11]~output_o\);

-- Location: IOOBUF_X7_Y34_N16
\AP_D[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \AP_D[10]~output_o\);

-- Location: IOOBUF_X45_Y34_N9
\AP_D[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \AP_D[9]~output_o\);

-- Location: IOOBUF_X1_Y34_N9
\AP_D[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \AP_D[8]~output_o\);

-- Location: IOOBUF_X20_Y0_N9
\AP_D[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \AP_D[7]~output_o\);

-- Location: IOOBUF_X0_Y23_N23
\AP_D[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \AP_D[6]~output_o\);

-- Location: IOOBUF_X36_Y0_N16
\AP_D[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \AP_D[5]~output_o\);

-- Location: IOOBUF_X53_Y30_N9
\AP_D[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \AP_D[4]~output_o\);

-- Location: IOOBUF_X53_Y11_N9
\AP_D[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \AP_D[3]~output_o\);

-- Location: IOOBUF_X31_Y34_N9
\AP_D[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \AP_D[2]~output_o\);

-- Location: IOOBUF_X53_Y10_N16
\AP_D[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \AP_D[1]~output_o\);

-- Location: IOOBUF_X0_Y27_N2
\AP_D[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \AP_D[0]~output_o\);

-- Location: IOOBUF_X16_Y34_N16
\AUX_D[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \AUX_D[15]~output_o\);

-- Location: IOOBUF_X9_Y34_N23
\AUX_D[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \AUX_D[14]~output_o\);

-- Location: IOOBUF_X5_Y0_N23
\AUX_D[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \AUX_D[13]~output_o\);

-- Location: IOOBUF_X5_Y0_N2
\AUX_D[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \AUX_D[12]~output_o\);

-- Location: IOOBUF_X18_Y0_N23
\AUX_D[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \AUX_D[11]~output_o\);

-- Location: IOOBUF_X18_Y34_N2
\AUX_D[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \AUX_D[10]~output_o\);

-- Location: IOOBUF_X11_Y34_N2
\AUX_D[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \AUX_D[9]~output_o\);

-- Location: IOOBUF_X51_Y34_N23
\AUX_D[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \AUX_D[8]~output_o\);

-- Location: IOOBUF_X0_Y4_N23
\AUX_D[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \AUX_D[7]~output_o\);

-- Location: IOOBUF_X49_Y0_N9
\AUX_D[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \AUX_D[6]~output_o\);

-- Location: IOOBUF_X7_Y0_N9
\AUX_D[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \AUX_D[5]~output_o\);

-- Location: IOOBUF_X9_Y34_N9
\AUX_D[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \AUX_D[4]~output_o\);

-- Location: IOOBUF_X0_Y8_N23
\AUX_D[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \AUX_D[3]~output_o\);

-- Location: IOOBUF_X5_Y0_N16
\AUX_D[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \AUX_D[2]~output_o\);

-- Location: IOOBUF_X0_Y28_N9
\AUX_D[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \AUX_D[1]~output_o\);

-- Location: IOOBUF_X49_Y0_N2
\AUX_D[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \AUX_D[0]~output_o\);

-- Location: IOOBUF_X38_Y0_N2
\Debug_Q[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|Banderas\(2),
	devoe => ww_devoe,
	o => \Debug_Q[7]~output_o\);

-- Location: IOOBUF_X1_Y0_N9
\Debug_Q[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|Q\(6),
	devoe => ww_devoe,
	o => \Debug_Q[6]~output_o\);

-- Location: IOOBUF_X5_Y0_N9
\Debug_Q[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|Q\(5),
	devoe => ww_devoe,
	o => \Debug_Q[5]~output_o\);

-- Location: IOOBUF_X31_Y34_N2
\Debug_Q[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|Q\(4),
	devoe => ww_devoe,
	o => \Debug_Q[4]~output_o\);

-- Location: IOOBUF_X49_Y34_N2
\Debug_Q[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|Q\(3),
	devoe => ww_devoe,
	o => \Debug_Q[3]~output_o\);

-- Location: IOOBUF_X0_Y24_N23
\Debug_Q[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|Q\(2),
	devoe => ww_devoe,
	o => \Debug_Q[2]~output_o\);

-- Location: IOOBUF_X40_Y0_N23
\Debug_Q[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|Q\(1),
	devoe => ww_devoe,
	o => \Debug_Q[1]~output_o\);

-- Location: IOOBUF_X53_Y22_N9
\Debug_Q[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|Q\(0),
	devoe => ww_devoe,
	o => \Debug_Q[0]~output_o\);

-- Location: IOOBUF_X38_Y0_N9
\Debug_Yupa[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|Banderas\(2),
	devoe => ww_devoe,
	o => \Debug_Yupa[7]~output_o\);

-- Location: IOOBUF_X0_Y25_N9
\Debug_Yupa[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|Yupa_interno\(6),
	devoe => ww_devoe,
	o => \Debug_Yupa[6]~output_o\);

-- Location: IOOBUF_X7_Y34_N9
\Debug_Yupa[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|Yupa_interno\(5),
	devoe => ww_devoe,
	o => \Debug_Yupa[5]~output_o\);

-- Location: IOOBUF_X45_Y34_N16
\Debug_Yupa[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|Yupa_interno\(4),
	devoe => ww_devoe,
	o => \Debug_Yupa[4]~output_o\);

-- Location: IOOBUF_X45_Y0_N16
\Debug_Yupa[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|Yupa_interno\(3),
	devoe => ww_devoe,
	o => \Debug_Yupa[3]~output_o\);

-- Location: IOOBUF_X53_Y9_N23
\Debug_Yupa[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|Yupa_interno\(2),
	devoe => ww_devoe,
	o => \Debug_Yupa[2]~output_o\);

-- Location: IOOBUF_X34_Y34_N2
\Debug_Yupa[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|Yupa_interno\(1),
	devoe => ww_devoe,
	o => \Debug_Yupa[1]~output_o\);

-- Location: IOOBUF_X53_Y22_N2
\Debug_Yupa[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|Q\(0),
	devoe => ww_devoe,
	o => \Debug_Yupa[0]~output_o\);

-- Location: IOOBUF_X0_Y23_N16
\Edo_Pres[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|inst5|$00000|auto_generated|result_node[11]~0_combout\,
	devoe => ww_devoe,
	o => \Edo_Pres[11]~output_o\);

-- Location: IOOBUF_X29_Y34_N16
\Edo_Pres[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|inst5|$00000|auto_generated|result_node[10]~1_combout\,
	devoe => ww_devoe,
	o => \Edo_Pres[10]~output_o\);

-- Location: IOOBUF_X53_Y21_N23
\Edo_Pres[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|inst5|$00000|auto_generated|result_node[9]~2_combout\,
	devoe => ww_devoe,
	o => \Edo_Pres[9]~output_o\);

-- Location: IOOBUF_X23_Y34_N16
\Edo_Pres[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|inst5|$00000|auto_generated|result_node[8]~3_combout\,
	devoe => ww_devoe,
	o => \Edo_Pres[8]~output_o\);

-- Location: IOOBUF_X34_Y34_N9
\Edo_Pres[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|inst5|$00000|auto_generated|result_node[7]~4_combout\,
	devoe => ww_devoe,
	o => \Edo_Pres[7]~output_o\);

-- Location: IOOBUF_X53_Y20_N23
\Edo_Pres[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|inst5|$00000|auto_generated|result_node[6]~5_combout\,
	devoe => ww_devoe,
	o => \Edo_Pres[6]~output_o\);

-- Location: IOOBUF_X38_Y34_N2
\Edo_Pres[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|inst5|$00000|auto_generated|result_node[5]~6_combout\,
	devoe => ww_devoe,
	o => \Edo_Pres[5]~output_o\);

-- Location: IOOBUF_X0_Y23_N2
\Edo_Pres[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|inst5|$00000|auto_generated|result_node[4]~7_combout\,
	devoe => ww_devoe,
	o => \Edo_Pres[4]~output_o\);

-- Location: IOOBUF_X34_Y34_N16
\Edo_Pres[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|inst5|$00000|auto_generated|result_node[3]~9_combout\,
	devoe => ww_devoe,
	o => \Edo_Pres[3]~output_o\);

-- Location: IOOBUF_X20_Y34_N23
\Edo_Pres[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|inst5|$00000|auto_generated|result_node[2]~10_combout\,
	devoe => ww_devoe,
	o => \Edo_Pres[2]~output_o\);

-- Location: IOOBUF_X53_Y20_N16
\Edo_Pres[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|inst5|$00000|auto_generated|result_node[1]~11_combout\,
	devoe => ww_devoe,
	o => \Edo_Pres[1]~output_o\);

-- Location: IOOBUF_X20_Y34_N16
\Edo_Pres[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|inst5|$00000|auto_generated|result_node[0]~12_combout\,
	devoe => ww_devoe,
	o => \Edo_Pres[0]~output_o\);

-- Location: IOOBUF_X53_Y14_N2
\PC_D[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|data_out\(15),
	devoe => ww_devoe,
	o => \PC_D[15]~output_o\);

-- Location: IOOBUF_X53_Y16_N9
\PC_D[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|data_out\(14),
	devoe => ww_devoe,
	o => \PC_D[14]~output_o\);

-- Location: IOOBUF_X34_Y0_N23
\PC_D[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|data_out\(13),
	devoe => ww_devoe,
	o => \PC_D[13]~output_o\);

-- Location: IOOBUF_X14_Y0_N9
\PC_D[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|data_out\(12),
	devoe => ww_devoe,
	o => \PC_D[12]~output_o\);

-- Location: IOOBUF_X18_Y34_N23
\PC_D[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|data_out\(11),
	devoe => ww_devoe,
	o => \PC_D[11]~output_o\);

-- Location: IOOBUF_X16_Y0_N23
\PC_D[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|data_out\(10),
	devoe => ww_devoe,
	o => \PC_D[10]~output_o\);

-- Location: IOOBUF_X40_Y34_N9
\PC_D[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|data_out\(9),
	devoe => ww_devoe,
	o => \PC_D[9]~output_o\);

-- Location: IOOBUF_X40_Y0_N16
\PC_D[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|data_out\(8),
	devoe => ww_devoe,
	o => \PC_D[8]~output_o\);

-- Location: IOOBUF_X14_Y0_N23
\PC_D[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|data_out\(7),
	devoe => ww_devoe,
	o => \PC_D[7]~output_o\);

-- Location: IOOBUF_X43_Y0_N16
\PC_D[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|data_out\(6),
	devoe => ww_devoe,
	o => \PC_D[6]~output_o\);

-- Location: IOOBUF_X43_Y0_N23
\PC_D[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|data_out\(5),
	devoe => ww_devoe,
	o => \PC_D[5]~output_o\);

-- Location: IOOBUF_X16_Y34_N2
\PC_D[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|data_out\(4),
	devoe => ww_devoe,
	o => \PC_D[4]~output_o\);

-- Location: IOOBUF_X14_Y34_N23
\PC_D[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|data_out\(3),
	devoe => ww_devoe,
	o => \PC_D[3]~output_o\);

-- Location: IOOBUF_X16_Y34_N9
\PC_D[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|data_out\(2),
	devoe => ww_devoe,
	o => \PC_D[2]~output_o\);

-- Location: IOOBUF_X36_Y0_N9
\PC_D[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|data_out\(1),
	devoe => ww_devoe,
	o => \PC_D[1]~output_o\);

-- Location: IOOBUF_X14_Y0_N16
\PC_D[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|data_out\(0),
	devoe => ww_devoe,
	o => \PC_D[0]~output_o\);

-- Location: IOOBUF_X49_Y34_N9
\X_D[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \X_D[15]~output_o\);

-- Location: IOOBUF_X14_Y34_N16
\X_D[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \X_D[14]~output_o\);

-- Location: IOOBUF_X51_Y34_N2
\X_D[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \X_D[13]~output_o\);

-- Location: IOOBUF_X34_Y0_N2
\X_D[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \X_D[12]~output_o\);

-- Location: IOOBUF_X11_Y0_N23
\X_D[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \X_D[11]~output_o\);

-- Location: IOOBUF_X0_Y7_N2
\X_D[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \X_D[10]~output_o\);

-- Location: IOOBUF_X1_Y34_N2
\X_D[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \X_D[9]~output_o\);

-- Location: IOOBUF_X43_Y34_N16
\X_D[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \X_D[8]~output_o\);

-- Location: IOOBUF_X11_Y0_N16
\X_D[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \X_D[7]~output_o\);

-- Location: IOOBUF_X0_Y6_N16
\X_D[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \X_D[6]~output_o\);

-- Location: IOOBUF_X20_Y34_N9
\X_D[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \X_D[5]~output_o\);

-- Location: IOOBUF_X0_Y26_N16
\X_D[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \X_D[4]~output_o\);

-- Location: IOOBUF_X53_Y24_N23
\X_D[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \X_D[3]~output_o\);

-- Location: IOOBUF_X53_Y26_N23
\X_D[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \X_D[2]~output_o\);

-- Location: IOOBUF_X7_Y34_N2
\X_D[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \X_D[1]~output_o\);

-- Location: IOOBUF_X36_Y0_N23
\X_D[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \X_D[0]~output_o\);

-- Location: IOOBUF_X3_Y34_N2
\Y_D[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Y_D[15]~output_o\);

-- Location: IOOBUF_X51_Y34_N9
\Y_D[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Y_D[14]~output_o\);

-- Location: IOOBUF_X0_Y7_N9
\Y_D[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Y_D[13]~output_o\);

-- Location: IOOBUF_X43_Y34_N23
\Y_D[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Y_D[12]~output_o\);

-- Location: IOOBUF_X0_Y5_N23
\Y_D[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Y_D[11]~output_o\);

-- Location: IOOBUF_X47_Y34_N23
\Y_D[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Y_D[10]~output_o\);

-- Location: IOOBUF_X40_Y34_N2
\Y_D[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Y_D[9]~output_o\);

-- Location: IOOBUF_X1_Y0_N2
\Y_D[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Y_D[8]~output_o\);

-- Location: IOOBUF_X53_Y11_N2
\Y_D[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Y_D[7]~output_o\);

-- Location: IOOBUF_X0_Y10_N23
\Y_D[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Y_D[6]~output_o\);

-- Location: IOOBUF_X53_Y8_N23
\Y_D[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Y_D[5]~output_o\);

-- Location: IOOBUF_X53_Y30_N2
\Y_D[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Y_D[4]~output_o\);

-- Location: IOOBUF_X14_Y0_N2
\Y_D[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Y_D[3]~output_o\);

-- Location: IOOBUF_X18_Y0_N9
\Y_D[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Y_D[2]~output_o\);

-- Location: IOOBUF_X20_Y0_N2
\Y_D[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Y_D[1]~output_o\);

-- Location: IOOBUF_X45_Y0_N23
\Y_D[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Y_D[0]~output_o\);

-- Location: IOIBUF_X27_Y0_N22
\CLK~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLK,
	o => \CLK~input_o\);

-- Location: CLKCTRL_G18
\CLK~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLK~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLK~inputclkctrl_outclk\);

-- Location: LCCOMB_X27_Y19_N6
\inst7|inst4|valor_interno[0]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst4|valor_interno[0]~33_combout\ = !\inst7|inst5|$00000|auto_generated|result_node[0]~12_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst7|inst5|$00000|auto_generated|result_node[0]~12_combout\,
	combout => \inst7|inst4|valor_interno[0]~33_combout\);

-- Location: IOIBUF_X27_Y0_N15
\RESET~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RESET,
	o => \RESET~input_o\);

-- Location: CLKCTRL_G19
\RESET~inputclkctrl\ : cycloneive_clkctrl
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

-- Location: FF_X27_Y19_N7
\inst7|inst4|valor_interno[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst7|inst4|valor_interno[0]~33_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|inst4|valor_interno\(0));

-- Location: FF_X28_Y19_N9
\inst7|inst2|B4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst7|inst1|mem~18_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|inst2|B4~q\);

-- Location: LCCOMB_X28_Y19_N10
\inst7|inst3|SELECTOR~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst3|SELECTOR~1_combout\ = (\inst7|inst2|instruccion\(0) & ((!\inst7|inst2|B4~q\))) # (!\inst7|inst2|instruccion\(0) & (\inst7|inst2|instruccion\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst2|instruccion\(1),
	datac => \inst7|inst2|B4~q\,
	datad => \inst7|inst2|instruccion\(0),
	combout => \inst7|inst3|SELECTOR~1_combout\);

-- Location: LCCOMB_X27_Y19_N10
\inst7|inst4|valor_interno[1]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst4|valor_interno[1]~11_combout\ = (\inst7|inst5|$00000|auto_generated|result_node[1]~11_combout\ & (\inst7|inst5|$00000|auto_generated|result_node[0]~12_combout\ $ (VCC))) # (!\inst7|inst5|$00000|auto_generated|result_node[1]~11_combout\ & 
-- (\inst7|inst5|$00000|auto_generated|result_node[0]~12_combout\ & VCC))
-- \inst7|inst4|valor_interno[1]~12\ = CARRY((\inst7|inst5|$00000|auto_generated|result_node[1]~11_combout\ & \inst7|inst5|$00000|auto_generated|result_node[0]~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst5|$00000|auto_generated|result_node[1]~11_combout\,
	datab => \inst7|inst5|$00000|auto_generated|result_node[0]~12_combout\,
	datad => VCC,
	combout => \inst7|inst4|valor_interno[1]~11_combout\,
	cout => \inst7|inst4|valor_interno[1]~12\);

-- Location: FF_X27_Y19_N11
\inst7|inst4|valor_interno[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst7|inst4|valor_interno[1]~11_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|inst4|valor_interno\(1));

-- Location: LCCOMB_X27_Y19_N4
\inst7|inst5|$00000|auto_generated|result_node[1]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst5|$00000|auto_generated|result_node[1]~11_combout\ = (\inst7|inst4|valor_interno\(1) & ((\inst7|inst2|instruccion\(0) & ((\inst7|inst2|B4~q\))) # (!\inst7|inst2|instruccion\(0) & (!\inst7|inst2|instruccion\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst4|valor_interno\(1),
	datab => \inst7|inst2|instruccion\(1),
	datac => \inst7|inst2|instruccion\(0),
	datad => \inst7|inst2|B4~q\,
	combout => \inst7|inst5|$00000|auto_generated|result_node[1]~11_combout\);

-- Location: LCCOMB_X31_Y19_N16
\inst7|inst1|mem~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst1|mem~15_combout\ = (!\inst7|inst5|$00000|auto_generated|result_node[1]~11_combout\ & !\inst7|inst5|$00000|auto_generated|result_node[0]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst7|inst5|$00000|auto_generated|result_node[1]~11_combout\,
	datad => \inst7|inst5|$00000|auto_generated|result_node[0]~12_combout\,
	combout => \inst7|inst1|mem~15_combout\);

-- Location: LCCOMB_X31_Y19_N22
\inst7|inst1|mem~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst1|mem~16_combout\ = (!\inst7|inst5|$00000|auto_generated|result_node[11]~0_combout\ & (!\inst7|inst5|$00000|auto_generated|result_node[5]~6_combout\ & (!\inst7|inst5|$00000|auto_generated|result_node[6]~5_combout\ & 
-- \inst7|inst1|mem~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst5|$00000|auto_generated|result_node[11]~0_combout\,
	datab => \inst7|inst5|$00000|auto_generated|result_node[5]~6_combout\,
	datac => \inst7|inst5|$00000|auto_generated|result_node[6]~5_combout\,
	datad => \inst7|inst1|mem~15_combout\,
	combout => \inst7|inst1|mem~16_combout\);

-- Location: LCCOMB_X30_Y19_N30
\inst7|inst1|mem~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst1|mem~13_combout\ = (!\inst7|inst5|$00000|auto_generated|result_node[3]~9_combout\ & (\inst7|inst1|mem~7_combout\ & (\inst7|inst5|$00000|auto_generated|result_node[5]~6_combout\ $ 
-- (!\inst7|inst5|$00000|auto_generated|result_node[10]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst5|$00000|auto_generated|result_node[3]~9_combout\,
	datab => \inst7|inst5|$00000|auto_generated|result_node[5]~6_combout\,
	datac => \inst7|inst1|mem~7_combout\,
	datad => \inst7|inst5|$00000|auto_generated|result_node[10]~1_combout\,
	combout => \inst7|inst1|mem~13_combout\);

-- Location: LCCOMB_X31_Y19_N30
\inst7|inst1|mem~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst1|mem~19_combout\ = (\inst7|inst1|mem~13_combout\ & ((\inst7|inst1|mem~16_combout\) # ((\inst7|inst5|$00000|auto_generated|result_node[0]~12_combout\ & \inst7|inst1|mem~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst5|$00000|auto_generated|result_node[0]~12_combout\,
	datab => \inst7|inst1|mem~14_combout\,
	datac => \inst7|inst1|mem~16_combout\,
	datad => \inst7|inst1|mem~13_combout\,
	combout => \inst7|inst1|mem~19_combout\);

-- Location: FF_X31_Y19_N31
\inst7|inst2|liga[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst7|inst1|mem~19_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|inst2|liga\(3));

-- Location: LCCOMB_X27_Y19_N12
\inst7|inst4|valor_interno[2]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst4|valor_interno[2]~13_combout\ = (\inst7|inst4|valor_interno[1]~12\ & (((\inst7|inst3|SELECTOR~1_combout\)) # (!\inst7|inst4|valor_interno\(2)))) # (!\inst7|inst4|valor_interno[1]~12\ & (((\inst7|inst4|valor_interno\(2) & 
-- !\inst7|inst3|SELECTOR~1_combout\)) # (GND)))
-- \inst7|inst4|valor_interno[2]~14\ = CARRY(((\inst7|inst3|SELECTOR~1_combout\) # (!\inst7|inst4|valor_interno[1]~12\)) # (!\inst7|inst4|valor_interno\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001011011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst4|valor_interno\(2),
	datab => \inst7|inst3|SELECTOR~1_combout\,
	datad => VCC,
	cin => \inst7|inst4|valor_interno[1]~12\,
	combout => \inst7|inst4|valor_interno[2]~13_combout\,
	cout => \inst7|inst4|valor_interno[2]~14\);

-- Location: FF_X27_Y19_N13
\inst7|inst4|valor_interno[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst7|inst4|valor_interno[2]~13_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|inst4|valor_interno\(2));

-- Location: LCCOMB_X27_Y19_N14
\inst7|inst4|valor_interno[3]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst4|valor_interno[3]~15_combout\ = (\inst7|inst5|$00000|auto_generated|result_node[3]~9_combout\ & (\inst7|inst4|valor_interno[2]~14\ $ (GND))) # (!\inst7|inst5|$00000|auto_generated|result_node[3]~9_combout\ & (!\inst7|inst4|valor_interno[2]~14\ 
-- & VCC))
-- \inst7|inst4|valor_interno[3]~16\ = CARRY((\inst7|inst5|$00000|auto_generated|result_node[3]~9_combout\ & !\inst7|inst4|valor_interno[2]~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|inst5|$00000|auto_generated|result_node[3]~9_combout\,
	datad => VCC,
	cin => \inst7|inst4|valor_interno[2]~14\,
	combout => \inst7|inst4|valor_interno[3]~15_combout\,
	cout => \inst7|inst4|valor_interno[3]~16\);

-- Location: FF_X27_Y19_N15
\inst7|inst4|valor_interno[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst7|inst4|valor_interno[3]~15_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|inst4|valor_interno\(3));

-- Location: LCCOMB_X27_Y19_N8
\inst7|inst5|$00000|auto_generated|result_node[3]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst5|$00000|auto_generated|result_node[3]~9_combout\ = (\inst7|inst2|liga\(3) & ((\inst7|inst5|$00000|auto_generated|result_node[0]~8_combout\) # ((\inst7|inst4|valor_interno\(3) & !\inst7|inst3|SELECTOR~1_combout\)))) # (!\inst7|inst2|liga\(3) & 
-- (\inst7|inst4|valor_interno\(3) & ((!\inst7|inst3|SELECTOR~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst2|liga\(3),
	datab => \inst7|inst4|valor_interno\(3),
	datac => \inst7|inst5|$00000|auto_generated|result_node[0]~8_combout\,
	datad => \inst7|inst3|SELECTOR~1_combout\,
	combout => \inst7|inst5|$00000|auto_generated|result_node[3]~9_combout\);

-- Location: LCCOMB_X27_Y19_N16
\inst7|inst4|valor_interno[4]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst4|valor_interno[4]~17_combout\ = (\inst7|inst5|$00000|auto_generated|result_node[4]~7_combout\ & (!\inst7|inst4|valor_interno[3]~16\)) # (!\inst7|inst5|$00000|auto_generated|result_node[4]~7_combout\ & ((\inst7|inst4|valor_interno[3]~16\) # 
-- (GND)))
-- \inst7|inst4|valor_interno[4]~18\ = CARRY((!\inst7|inst4|valor_interno[3]~16\) # (!\inst7|inst5|$00000|auto_generated|result_node[4]~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst5|$00000|auto_generated|result_node[4]~7_combout\,
	datad => VCC,
	cin => \inst7|inst4|valor_interno[3]~16\,
	combout => \inst7|inst4|valor_interno[4]~17_combout\,
	cout => \inst7|inst4|valor_interno[4]~18\);

-- Location: LCCOMB_X27_Y19_N18
\inst7|inst4|valor_interno[5]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst4|valor_interno[5]~19_combout\ = (\inst7|inst5|$00000|auto_generated|result_node[5]~6_combout\ & (\inst7|inst4|valor_interno[4]~18\ $ (GND))) # (!\inst7|inst5|$00000|auto_generated|result_node[5]~6_combout\ & (!\inst7|inst4|valor_interno[4]~18\ 
-- & VCC))
-- \inst7|inst4|valor_interno[5]~20\ = CARRY((\inst7|inst5|$00000|auto_generated|result_node[5]~6_combout\ & !\inst7|inst4|valor_interno[4]~18\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|inst5|$00000|auto_generated|result_node[5]~6_combout\,
	datad => VCC,
	cin => \inst7|inst4|valor_interno[4]~18\,
	combout => \inst7|inst4|valor_interno[5]~19_combout\,
	cout => \inst7|inst4|valor_interno[5]~20\);

-- Location: FF_X27_Y19_N19
\inst7|inst4|valor_interno[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst7|inst4|valor_interno[5]~19_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|inst4|valor_interno\(5));

-- Location: LCCOMB_X31_Y19_N14
\inst7|inst1|mem~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst1|mem~10_combout\ = (!\inst7|inst5|$00000|auto_generated|result_node[11]~0_combout\ & (!\inst7|inst5|$00000|auto_generated|result_node[5]~6_combout\ & (\inst7|inst5|$00000|auto_generated|result_node[3]~9_combout\ & 
-- !\inst7|inst5|$00000|auto_generated|result_node[10]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst5|$00000|auto_generated|result_node[11]~0_combout\,
	datab => \inst7|inst5|$00000|auto_generated|result_node[5]~6_combout\,
	datac => \inst7|inst5|$00000|auto_generated|result_node[3]~9_combout\,
	datad => \inst7|inst5|$00000|auto_generated|result_node[10]~1_combout\,
	combout => \inst7|inst1|mem~10_combout\);

-- Location: LCCOMB_X30_Y19_N16
\inst7|inst1|mem~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst1|mem~21_combout\ = (!\inst7|inst5|$00000|auto_generated|result_node[1]~11_combout\ & (\inst7|inst1|mem~7_combout\ & \inst7|inst5|$00000|auto_generated|result_node[0]~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|inst5|$00000|auto_generated|result_node[1]~11_combout\,
	datac => \inst7|inst1|mem~7_combout\,
	datad => \inst7|inst5|$00000|auto_generated|result_node[0]~12_combout\,
	combout => \inst7|inst1|mem~21_combout\);

-- Location: LCCOMB_X30_Y19_N20
\inst7|inst1|mem~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst1|mem~23_combout\ = (!\inst7|inst5|$00000|auto_generated|result_node[6]~5_combout\ & (\inst7|inst1|mem~10_combout\ & \inst7|inst1|mem~21_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|inst5|$00000|auto_generated|result_node[6]~5_combout\,
	datac => \inst7|inst1|mem~10_combout\,
	datad => \inst7|inst1|mem~21_combout\,
	combout => \inst7|inst1|mem~23_combout\);

-- Location: FF_X30_Y19_N21
\inst7|inst2|nCRI\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst7|inst1|mem~23_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|inst2|nCRI~q\);

-- Location: CLKCTRL_G6
\inst7|inst2|nCRI~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst7|inst2|nCRI~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst7|inst2|nCRI~clkctrl_outclk\);

-- Location: LCCOMB_X31_Y19_N26
\inst7|inst1|mem~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst1|mem~28_combout\ = (!\inst7|inst5|$00000|auto_generated|result_node[6]~5_combout\ & (((\inst7|inst5|$00000|auto_generated|result_node[1]~11_combout\) # (\inst7|inst5|$00000|auto_generated|result_node[0]~12_combout\)) # 
-- (!\inst7|inst1|mem~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst5|$00000|auto_generated|result_node[6]~5_combout\,
	datab => \inst7|inst1|mem~10_combout\,
	datac => \inst7|inst5|$00000|auto_generated|result_node[1]~11_combout\,
	datad => \inst7|inst5|$00000|auto_generated|result_node[0]~12_combout\,
	combout => \inst7|inst1|mem~28_combout\);

-- Location: LCCOMB_X31_Y19_N10
\inst7|inst1|mem~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst1|mem~24_combout\ = (!\inst7|inst5|$00000|auto_generated|result_node[3]~9_combout\ & (\inst7|inst5|$00000|auto_generated|result_node[11]~0_combout\ & (\inst7|inst5|$00000|auto_generated|result_node[1]~11_combout\ $ 
-- (!\inst7|inst5|$00000|auto_generated|result_node[0]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst5|$00000|auto_generated|result_node[3]~9_combout\,
	datab => \inst7|inst5|$00000|auto_generated|result_node[1]~11_combout\,
	datac => \inst7|inst5|$00000|auto_generated|result_node[11]~0_combout\,
	datad => \inst7|inst5|$00000|auto_generated|result_node[0]~12_combout\,
	combout => \inst7|inst1|mem~24_combout\);

-- Location: LCCOMB_X31_Y19_N4
\inst7|inst1|mem~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst1|mem~25_combout\ = (\inst7|inst5|$00000|auto_generated|result_node[6]~5_combout\ & (((!\inst7|inst1|mem~24_combout\) # (!\inst7|inst5|$00000|auto_generated|result_node[5]~6_combout\)) # 
-- (!\inst7|inst5|$00000|auto_generated|result_node[10]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst5|$00000|auto_generated|result_node[10]~1_combout\,
	datab => \inst7|inst5|$00000|auto_generated|result_node[5]~6_combout\,
	datac => \inst7|inst5|$00000|auto_generated|result_node[6]~5_combout\,
	datad => \inst7|inst1|mem~24_combout\,
	combout => \inst7|inst1|mem~25_combout\);

-- Location: LCCOMB_X31_Y19_N20
\inst7|inst1|mem~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst1|mem~26_combout\ = (!\inst7|inst1|mem~28_combout\ & (!\inst7|inst1|mem~25_combout\ & \inst7|inst1|mem~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst1|mem~28_combout\,
	datac => \inst7|inst1|mem~25_combout\,
	datad => \inst7|inst1|mem~7_combout\,
	combout => \inst7|inst1|mem~26_combout\);

-- Location: FF_X31_Y19_N21
\inst7|inst2|nCBD\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst7|inst1|mem~26_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|inst2|nCBD~q\);

-- Location: CLKCTRL_G5
\inst7|inst2|nCBD~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst7|inst2|nCBD~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst7|inst2|nCBD~clkctrl_outclk\);

-- Location: LCCOMB_X28_Y19_N4
\inst7|inst1|mem~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst1|mem~8_combout\ = (\inst7|inst5|$00000|auto_generated|result_node[11]~0_combout\ & \inst7|inst5|$00000|auto_generated|result_node[6]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst5|$00000|auto_generated|result_node[11]~0_combout\,
	datad => \inst7|inst5|$00000|auto_generated|result_node[6]~5_combout\,
	combout => \inst7|inst1|mem~8_combout\);

-- Location: LCCOMB_X28_Y19_N6
\inst7|inst1|mem~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst1|mem~9_combout\ = (!\inst7|inst5|$00000|auto_generated|result_node[3]~9_combout\ & (\inst7|inst5|$00000|auto_generated|result_node[10]~1_combout\ & (\inst7|inst1|mem~8_combout\ & \inst7|inst5|$00000|auto_generated|result_node[5]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst5|$00000|auto_generated|result_node[3]~9_combout\,
	datab => \inst7|inst5|$00000|auto_generated|result_node[10]~1_combout\,
	datac => \inst7|inst1|mem~8_combout\,
	datad => \inst7|inst5|$00000|auto_generated|result_node[5]~6_combout\,
	combout => \inst7|inst1|mem~9_combout\);

-- Location: LCCOMB_X30_Y19_N10
\inst7|inst1|mem~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst1|mem~27_combout\ = (\inst7|inst1|mem~21_combout\ & ((\inst7|inst1|mem~9_combout\) # ((!\inst7|inst5|$00000|auto_generated|result_node[6]~5_combout\ & \inst7|inst1|mem~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst1|mem~9_combout\,
	datab => \inst7|inst5|$00000|auto_generated|result_node[6]~5_combout\,
	datac => \inst7|inst1|mem~10_combout\,
	datad => \inst7|inst1|mem~21_combout\,
	combout => \inst7|inst1|mem~27_combout\);

-- Location: FF_X30_Y19_N11
\inst7|inst2|PC[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst7|inst1|mem~27_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|inst2|PC\(0));

-- Location: LCCOMB_X30_Y16_N0
\PC|data_out[0]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|data_out[0]~16_combout\ = \PC|data_out\(0) $ (VCC)
-- \PC|data_out[0]~17\ = CARRY(\PC|data_out\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PC|data_out\(0),
	datad => VCC,
	combout => \PC|data_out[0]~16_combout\,
	cout => \PC|data_out[0]~17\);

-- Location: FF_X30_Y16_N1
\PC|data_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \PC|data_out[0]~16_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \inst7|inst2|PC\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|data_out\(0));

-- Location: LCCOMB_X30_Y16_N2
\PC|data_out[1]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|data_out[1]~18_combout\ = (\PC|data_out\(1) & ((\inst7|inst2|PC\(0) & (!\PC|data_out[0]~17\)) # (!\inst7|inst2|PC\(0) & (\PC|data_out[0]~17\ & VCC)))) # (!\PC|data_out\(1) & ((\inst7|inst2|PC\(0) & ((\PC|data_out[0]~17\) # (GND))) # 
-- (!\inst7|inst2|PC\(0) & (!\PC|data_out[0]~17\))))
-- \PC|data_out[1]~19\ = CARRY((\PC|data_out\(1) & (\inst7|inst2|PC\(0) & !\PC|data_out[0]~17\)) # (!\PC|data_out\(1) & ((\inst7|inst2|PC\(0)) # (!\PC|data_out[0]~17\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PC|data_out\(1),
	datab => \inst7|inst2|PC\(0),
	datad => VCC,
	cin => \PC|data_out[0]~17\,
	combout => \PC|data_out[1]~18_combout\,
	cout => \PC|data_out[1]~19\);

-- Location: FF_X30_Y16_N3
\PC|data_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \PC|data_out[1]~18_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \inst7|inst2|PC\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|data_out\(1));

-- Location: LCCOMB_X30_Y16_N4
\PC|data_out[2]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|data_out[2]~20_combout\ = ((\PC|data_out\(2) $ (\inst7|inst2|PC\(0) $ (\PC|data_out[1]~19\)))) # (GND)
-- \PC|data_out[2]~21\ = CARRY((\PC|data_out\(2) & ((!\PC|data_out[1]~19\) # (!\inst7|inst2|PC\(0)))) # (!\PC|data_out\(2) & (!\inst7|inst2|PC\(0) & !\PC|data_out[1]~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PC|data_out\(2),
	datab => \inst7|inst2|PC\(0),
	datad => VCC,
	cin => \PC|data_out[1]~19\,
	combout => \PC|data_out[2]~20_combout\,
	cout => \PC|data_out[2]~21\);

-- Location: FF_X30_Y16_N5
\PC|data_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \PC|data_out[2]~20_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \inst7|inst2|PC\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|data_out\(2));

-- Location: LCCOMB_X30_Y16_N6
\PC|data_out[3]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|data_out[3]~22_combout\ = (\PC|data_out\(3) & ((\inst7|inst2|PC\(0) & (!\PC|data_out[2]~21\)) # (!\inst7|inst2|PC\(0) & (\PC|data_out[2]~21\ & VCC)))) # (!\PC|data_out\(3) & ((\inst7|inst2|PC\(0) & ((\PC|data_out[2]~21\) # (GND))) # 
-- (!\inst7|inst2|PC\(0) & (!\PC|data_out[2]~21\))))
-- \PC|data_out[3]~23\ = CARRY((\PC|data_out\(3) & (\inst7|inst2|PC\(0) & !\PC|data_out[2]~21\)) # (!\PC|data_out\(3) & ((\inst7|inst2|PC\(0)) # (!\PC|data_out[2]~21\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PC|data_out\(3),
	datab => \inst7|inst2|PC\(0),
	datad => VCC,
	cin => \PC|data_out[2]~21\,
	combout => \PC|data_out[3]~22_combout\,
	cout => \PC|data_out[3]~23\);

-- Location: FF_X30_Y16_N7
\PC|data_out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \PC|data_out[3]~22_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \inst7|inst2|PC\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|data_out\(3));

-- Location: LCCOMB_X30_Y16_N8
\PC|data_out[4]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|data_out[4]~24_combout\ = ((\PC|data_out\(4) $ (\inst7|inst2|PC\(0) $ (\PC|data_out[3]~23\)))) # (GND)
-- \PC|data_out[4]~25\ = CARRY((\PC|data_out\(4) & ((!\PC|data_out[3]~23\) # (!\inst7|inst2|PC\(0)))) # (!\PC|data_out\(4) & (!\inst7|inst2|PC\(0) & !\PC|data_out[3]~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PC|data_out\(4),
	datab => \inst7|inst2|PC\(0),
	datad => VCC,
	cin => \PC|data_out[3]~23\,
	combout => \PC|data_out[4]~24_combout\,
	cout => \PC|data_out[4]~25\);

-- Location: FF_X30_Y16_N9
\PC|data_out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \PC|data_out[4]~24_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \inst7|inst2|PC\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|data_out\(4));

-- Location: LCCOMB_X30_Y16_N10
\PC|data_out[5]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|data_out[5]~26_combout\ = (\PC|data_out\(5) & ((\inst7|inst2|PC\(0) & (!\PC|data_out[4]~25\)) # (!\inst7|inst2|PC\(0) & (\PC|data_out[4]~25\ & VCC)))) # (!\PC|data_out\(5) & ((\inst7|inst2|PC\(0) & ((\PC|data_out[4]~25\) # (GND))) # 
-- (!\inst7|inst2|PC\(0) & (!\PC|data_out[4]~25\))))
-- \PC|data_out[5]~27\ = CARRY((\PC|data_out\(5) & (\inst7|inst2|PC\(0) & !\PC|data_out[4]~25\)) # (!\PC|data_out\(5) & ((\inst7|inst2|PC\(0)) # (!\PC|data_out[4]~25\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PC|data_out\(5),
	datab => \inst7|inst2|PC\(0),
	datad => VCC,
	cin => \PC|data_out[4]~25\,
	combout => \PC|data_out[5]~26_combout\,
	cout => \PC|data_out[5]~27\);

-- Location: FF_X30_Y16_N11
\PC|data_out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \PC|data_out[5]~26_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \inst7|inst2|PC\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|data_out\(5));

-- Location: LCCOMB_X30_Y16_N12
\PC|data_out[6]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|data_out[6]~28_combout\ = ((\PC|data_out\(6) $ (\inst7|inst2|PC\(0) $ (\PC|data_out[5]~27\)))) # (GND)
-- \PC|data_out[6]~29\ = CARRY((\PC|data_out\(6) & ((!\PC|data_out[5]~27\) # (!\inst7|inst2|PC\(0)))) # (!\PC|data_out\(6) & (!\inst7|inst2|PC\(0) & !\PC|data_out[5]~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PC|data_out\(6),
	datab => \inst7|inst2|PC\(0),
	datad => VCC,
	cin => \PC|data_out[5]~27\,
	combout => \PC|data_out[6]~28_combout\,
	cout => \PC|data_out[6]~29\);

-- Location: FF_X30_Y16_N13
\PC|data_out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \PC|data_out[6]~28_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \inst7|inst2|PC\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|data_out\(6));

-- Location: LCCOMB_X30_Y16_N14
\PC|data_out[7]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|data_out[7]~30_combout\ = (\inst7|inst2|PC\(0) & ((\PC|data_out\(7) & (!\PC|data_out[6]~29\)) # (!\PC|data_out\(7) & ((\PC|data_out[6]~29\) # (GND))))) # (!\inst7|inst2|PC\(0) & ((\PC|data_out\(7) & (\PC|data_out[6]~29\ & VCC)) # (!\PC|data_out\(7) & 
-- (!\PC|data_out[6]~29\))))
-- \PC|data_out[7]~31\ = CARRY((\inst7|inst2|PC\(0) & ((!\PC|data_out[6]~29\) # (!\PC|data_out\(7)))) # (!\inst7|inst2|PC\(0) & (!\PC|data_out\(7) & !\PC|data_out[6]~29\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst2|PC\(0),
	datab => \PC|data_out\(7),
	datad => VCC,
	cin => \PC|data_out[6]~29\,
	combout => \PC|data_out[7]~30_combout\,
	cout => \PC|data_out[7]~31\);

-- Location: FF_X30_Y16_N15
\PC|data_out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \PC|data_out[7]~30_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \inst7|inst2|PC\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|data_out\(7));

-- Location: LCCOMB_X30_Y16_N16
\PC|data_out[8]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|data_out[8]~32_combout\ = ((\PC|data_out\(8) $ (\inst7|inst2|PC\(0) $ (\PC|data_out[7]~31\)))) # (GND)
-- \PC|data_out[8]~33\ = CARRY((\PC|data_out\(8) & ((!\PC|data_out[7]~31\) # (!\inst7|inst2|PC\(0)))) # (!\PC|data_out\(8) & (!\inst7|inst2|PC\(0) & !\PC|data_out[7]~31\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PC|data_out\(8),
	datab => \inst7|inst2|PC\(0),
	datad => VCC,
	cin => \PC|data_out[7]~31\,
	combout => \PC|data_out[8]~32_combout\,
	cout => \PC|data_out[8]~33\);

-- Location: FF_X30_Y16_N17
\PC|data_out[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \PC|data_out[8]~32_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \inst7|inst2|PC\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|data_out\(8));

-- Location: LCCOMB_X30_Y16_N18
\PC|data_out[9]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|data_out[9]~34_combout\ = (\inst7|inst2|PC\(0) & ((\PC|data_out\(9) & (!\PC|data_out[8]~33\)) # (!\PC|data_out\(9) & ((\PC|data_out[8]~33\) # (GND))))) # (!\inst7|inst2|PC\(0) & ((\PC|data_out\(9) & (\PC|data_out[8]~33\ & VCC)) # (!\PC|data_out\(9) & 
-- (!\PC|data_out[8]~33\))))
-- \PC|data_out[9]~35\ = CARRY((\inst7|inst2|PC\(0) & ((!\PC|data_out[8]~33\) # (!\PC|data_out\(9)))) # (!\inst7|inst2|PC\(0) & (!\PC|data_out\(9) & !\PC|data_out[8]~33\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst2|PC\(0),
	datab => \PC|data_out\(9),
	datad => VCC,
	cin => \PC|data_out[8]~33\,
	combout => \PC|data_out[9]~34_combout\,
	cout => \PC|data_out[9]~35\);

-- Location: FF_X30_Y16_N19
\PC|data_out[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \PC|data_out[9]~34_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \inst7|inst2|PC\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|data_out\(9));

-- Location: LCCOMB_X30_Y16_N20
\PC|data_out[10]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|data_out[10]~36_combout\ = ((\inst7|inst2|PC\(0) $ (\PC|data_out\(10) $ (\PC|data_out[9]~35\)))) # (GND)
-- \PC|data_out[10]~37\ = CARRY((\inst7|inst2|PC\(0) & (\PC|data_out\(10) & !\PC|data_out[9]~35\)) # (!\inst7|inst2|PC\(0) & ((\PC|data_out\(10)) # (!\PC|data_out[9]~35\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst2|PC\(0),
	datab => \PC|data_out\(10),
	datad => VCC,
	cin => \PC|data_out[9]~35\,
	combout => \PC|data_out[10]~36_combout\,
	cout => \PC|data_out[10]~37\);

-- Location: FF_X30_Y16_N21
\PC|data_out[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \PC|data_out[10]~36_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \inst7|inst2|PC\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|data_out\(10));

-- Location: LCCOMB_X30_Y16_N22
\PC|data_out[11]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|data_out[11]~38_combout\ = (\inst7|inst2|PC\(0) & ((\PC|data_out\(11) & (!\PC|data_out[10]~37\)) # (!\PC|data_out\(11) & ((\PC|data_out[10]~37\) # (GND))))) # (!\inst7|inst2|PC\(0) & ((\PC|data_out\(11) & (\PC|data_out[10]~37\ & VCC)) # 
-- (!\PC|data_out\(11) & (!\PC|data_out[10]~37\))))
-- \PC|data_out[11]~39\ = CARRY((\inst7|inst2|PC\(0) & ((!\PC|data_out[10]~37\) # (!\PC|data_out\(11)))) # (!\inst7|inst2|PC\(0) & (!\PC|data_out\(11) & !\PC|data_out[10]~37\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst2|PC\(0),
	datab => \PC|data_out\(11),
	datad => VCC,
	cin => \PC|data_out[10]~37\,
	combout => \PC|data_out[11]~38_combout\,
	cout => \PC|data_out[11]~39\);

-- Location: FF_X30_Y16_N23
\PC|data_out[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \PC|data_out[11]~38_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \inst7|inst2|PC\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|data_out\(11));

-- Location: LCCOMB_X30_Y16_N24
\PC|data_out[12]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|data_out[12]~40_combout\ = ((\inst7|inst2|PC\(0) $ (\PC|data_out\(12) $ (\PC|data_out[11]~39\)))) # (GND)
-- \PC|data_out[12]~41\ = CARRY((\inst7|inst2|PC\(0) & (\PC|data_out\(12) & !\PC|data_out[11]~39\)) # (!\inst7|inst2|PC\(0) & ((\PC|data_out\(12)) # (!\PC|data_out[11]~39\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst2|PC\(0),
	datab => \PC|data_out\(12),
	datad => VCC,
	cin => \PC|data_out[11]~39\,
	combout => \PC|data_out[12]~40_combout\,
	cout => \PC|data_out[12]~41\);

-- Location: FF_X30_Y16_N25
\PC|data_out[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \PC|data_out[12]~40_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \inst7|inst2|PC\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|data_out\(12));

-- Location: LCCOMB_X30_Y16_N26
\PC|data_out[13]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|data_out[13]~42_combout\ = (\inst7|inst2|PC\(0) & ((\PC|data_out\(13) & (!\PC|data_out[12]~41\)) # (!\PC|data_out\(13) & ((\PC|data_out[12]~41\) # (GND))))) # (!\inst7|inst2|PC\(0) & ((\PC|data_out\(13) & (\PC|data_out[12]~41\ & VCC)) # 
-- (!\PC|data_out\(13) & (!\PC|data_out[12]~41\))))
-- \PC|data_out[13]~43\ = CARRY((\inst7|inst2|PC\(0) & ((!\PC|data_out[12]~41\) # (!\PC|data_out\(13)))) # (!\inst7|inst2|PC\(0) & (!\PC|data_out\(13) & !\PC|data_out[12]~41\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst2|PC\(0),
	datab => \PC|data_out\(13),
	datad => VCC,
	cin => \PC|data_out[12]~41\,
	combout => \PC|data_out[13]~42_combout\,
	cout => \PC|data_out[13]~43\);

-- Location: FF_X30_Y16_N27
\PC|data_out[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \PC|data_out[13]~42_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \inst7|inst2|PC\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|data_out\(13));

-- Location: LCCOMB_X30_Y16_N28
\PC|data_out[14]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|data_out[14]~44_combout\ = ((\inst7|inst2|PC\(0) $ (\PC|data_out\(14) $ (\PC|data_out[13]~43\)))) # (GND)
-- \PC|data_out[14]~45\ = CARRY((\inst7|inst2|PC\(0) & (\PC|data_out\(14) & !\PC|data_out[13]~43\)) # (!\inst7|inst2|PC\(0) & ((\PC|data_out\(14)) # (!\PC|data_out[13]~43\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst2|PC\(0),
	datab => \PC|data_out\(14),
	datad => VCC,
	cin => \PC|data_out[13]~43\,
	combout => \PC|data_out[14]~44_combout\,
	cout => \PC|data_out[14]~45\);

-- Location: FF_X30_Y16_N29
\PC|data_out[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \PC|data_out[14]~44_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \inst7|inst2|PC\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|data_out\(14));

-- Location: LCCOMB_X29_Y16_N18
\inst6|mem_rtl_0|auto_generated|address_reg_b[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|mem_rtl_0|auto_generated|address_reg_b[1]~feeder_combout\ = \PC|data_out\(14)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PC|data_out\(14),
	combout => \inst6|mem_rtl_0|auto_generated|address_reg_b[1]~feeder_combout\);

-- Location: FF_X29_Y16_N19
\inst6|mem_rtl_0|auto_generated|address_reg_b[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|inst2|ALT_INV_nCBD~clkctrl_outclk\,
	d => \inst6|mem_rtl_0|auto_generated|address_reg_b[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|mem_rtl_0|auto_generated|address_reg_b\(1));

-- Location: LCCOMB_X30_Y16_N30
\PC|data_out[15]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|data_out[15]~46_combout\ = \PC|data_out\(15) $ (\inst7|inst2|PC\(0) $ (!\PC|data_out[14]~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101101001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PC|data_out\(15),
	datab => \inst7|inst2|PC\(0),
	cin => \PC|data_out[14]~45\,
	combout => \PC|data_out[15]~46_combout\);

-- Location: FF_X30_Y16_N31
\PC|data_out[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \PC|data_out[15]~46_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \inst7|inst2|PC\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|data_out\(15));

-- Location: FF_X29_Y16_N27
\inst6|mem_rtl_0|auto_generated|address_reg_b[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|inst2|ALT_INV_nCBD~clkctrl_outclk\,
	asdata => \PC|data_out\(15),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|mem_rtl_0|auto_generated|address_reg_b\(2));

-- Location: FF_X29_Y16_N13
\inst6|mem_rtl_0|auto_generated|address_reg_b[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|inst2|ALT_INV_nCBD~clkctrl_outclk\,
	asdata => \PC|data_out\(13),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|mem_rtl_0|auto_generated|address_reg_b\(0));

-- Location: LCCOMB_X29_Y19_N28
\inst6|data[1]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|data[1]~3_combout\ = (\inst6|mem_rtl_0|auto_generated|address_reg_b\(2) & !\inst6|mem_rtl_0|auto_generated|address_reg_b\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|mem_rtl_0|auto_generated|address_reg_b\(2),
	datad => \inst6|mem_rtl_0|auto_generated|address_reg_b\(0),
	combout => \inst6|data[1]~3_combout\);

-- Location: LCCOMB_X29_Y16_N14
\inst6|mem_rtl_0|auto_generated|rden_decode_b|w_anode739w[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|mem_rtl_0|auto_generated|rden_decode_b|w_anode739w[3]~0_combout\ = (!\PC|data_out\(13) & (\PC|data_out\(15) & \PC|data_out\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PC|data_out\(13),
	datac => \PC|data_out\(15),
	datad => \PC|data_out\(14),
	combout => \inst6|mem_rtl_0|auto_generated|rden_decode_b|w_anode739w[3]~0_combout\);

-- Location: LCCOMB_X30_Y31_N28
\inst|valor_interno[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|valor_interno[0]~feeder_combout\ = \PC|data_out\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PC|data_out\(0),
	combout => \inst|valor_interno[0]~feeder_combout\);

-- Location: FF_X30_Y31_N29
\inst|valor_interno[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|inst2|ALT_INV_nCBD~clkctrl_outclk\,
	d => \inst|valor_interno[0]~feeder_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|valor_interno\(0));

-- Location: LCCOMB_X30_Y30_N0
\inst|valor_interno[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|valor_interno[1]~feeder_combout\ = \PC|data_out\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PC|data_out\(1),
	combout => \inst|valor_interno[1]~feeder_combout\);

-- Location: FF_X30_Y30_N1
\inst|valor_interno[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|inst2|ALT_INV_nCBD~clkctrl_outclk\,
	d => \inst|valor_interno[1]~feeder_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|valor_interno\(1));

-- Location: LCCOMB_X32_Y31_N4
\inst|valor_interno[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|valor_interno[2]~feeder_combout\ = \PC|data_out\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PC|data_out\(2),
	combout => \inst|valor_interno[2]~feeder_combout\);

-- Location: FF_X32_Y31_N5
\inst|valor_interno[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|inst2|ALT_INV_nCBD~clkctrl_outclk\,
	d => \inst|valor_interno[2]~feeder_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|valor_interno\(2));

-- Location: LCCOMB_X32_Y20_N0
\inst|valor_interno[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|valor_interno[3]~feeder_combout\ = \PC|data_out\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PC|data_out\(3),
	combout => \inst|valor_interno[3]~feeder_combout\);

-- Location: FF_X32_Y20_N1
\inst|valor_interno[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|inst2|ALT_INV_nCBD~clkctrl_outclk\,
	d => \inst|valor_interno[3]~feeder_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|valor_interno\(3));

-- Location: LCCOMB_X30_Y3_N4
\inst|valor_interno[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|valor_interno[4]~feeder_combout\ = \PC|data_out\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PC|data_out\(4),
	combout => \inst|valor_interno[4]~feeder_combout\);

-- Location: FF_X30_Y3_N5
\inst|valor_interno[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|inst2|ALT_INV_nCBD~clkctrl_outclk\,
	d => \inst|valor_interno[4]~feeder_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|valor_interno\(4));

-- Location: LCCOMB_X31_Y33_N12
\inst|valor_interno[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|valor_interno[5]~feeder_combout\ = \PC|data_out\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PC|data_out\(5),
	combout => \inst|valor_interno[5]~feeder_combout\);

-- Location: FF_X31_Y33_N13
\inst|valor_interno[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|inst2|ALT_INV_nCBD~clkctrl_outclk\,
	d => \inst|valor_interno[5]~feeder_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|valor_interno\(5));

-- Location: LCCOMB_X32_Y3_N0
\inst|valor_interno[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|valor_interno[6]~feeder_combout\ = \PC|data_out\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PC|data_out\(6),
	combout => \inst|valor_interno[6]~feeder_combout\);

-- Location: FF_X32_Y3_N1
\inst|valor_interno[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|inst2|ALT_INV_nCBD~clkctrl_outclk\,
	d => \inst|valor_interno[6]~feeder_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|valor_interno\(6));

-- Location: LCCOMB_X31_Y15_N4
\inst|valor_interno[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|valor_interno[7]~feeder_combout\ = \PC|data_out\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PC|data_out\(7),
	combout => \inst|valor_interno[7]~feeder_combout\);

-- Location: FF_X31_Y15_N5
\inst|valor_interno[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|inst2|ALT_INV_nCBD~clkctrl_outclk\,
	d => \inst|valor_interno[7]~feeder_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|valor_interno\(7));

-- Location: LCCOMB_X30_Y3_N6
\inst|valor_interno[8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|valor_interno[8]~feeder_combout\ = \PC|data_out\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PC|data_out\(8),
	combout => \inst|valor_interno[8]~feeder_combout\);

-- Location: FF_X30_Y3_N7
\inst|valor_interno[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|inst2|ALT_INV_nCBD~clkctrl_outclk\,
	d => \inst|valor_interno[8]~feeder_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|valor_interno\(8));

-- Location: LCCOMB_X32_Y33_N18
\inst|valor_interno[9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|valor_interno[9]~feeder_combout\ = \PC|data_out\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PC|data_out\(9),
	combout => \inst|valor_interno[9]~feeder_combout\);

-- Location: FF_X32_Y33_N19
\inst|valor_interno[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|inst2|ALT_INV_nCBD~clkctrl_outclk\,
	d => \inst|valor_interno[9]~feeder_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|valor_interno\(9));

-- Location: LCCOMB_X31_Y9_N28
\inst|valor_interno[10]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|valor_interno[10]~feeder_combout\ = \PC|data_out\(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PC|data_out\(10),
	combout => \inst|valor_interno[10]~feeder_combout\);

-- Location: FF_X31_Y9_N29
\inst|valor_interno[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|inst2|ALT_INV_nCBD~clkctrl_outclk\,
	d => \inst|valor_interno[10]~feeder_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|valor_interno\(10));

-- Location: LCCOMB_X27_Y33_N28
\inst|valor_interno[11]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|valor_interno[11]~feeder_combout\ = \PC|data_out\(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PC|data_out\(11),
	combout => \inst|valor_interno[11]~feeder_combout\);

-- Location: FF_X27_Y33_N29
\inst|valor_interno[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|inst2|ALT_INV_nCBD~clkctrl_outclk\,
	d => \inst|valor_interno[11]~feeder_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|valor_interno\(11));

-- Location: LCCOMB_X30_Y9_N0
\inst|valor_interno[12]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|valor_interno[12]~feeder_combout\ = \PC|data_out\(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PC|data_out\(12),
	combout => \inst|valor_interno[12]~feeder_combout\);

-- Location: FF_X30_Y9_N1
\inst|valor_interno[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|inst2|ALT_INV_nCBD~clkctrl_outclk\,
	d => \inst|valor_interno[12]~feeder_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|valor_interno\(12));

-- Location: M9K_X33_Y30_N0
\inst6|mem_rtl_0|auto_generated|ram_block1a49\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "mem_content.mif",
	init_file_layout => "port_a",
	logical_ram_name => "ram:inst6|altsyncram:mem_rtl_0|altsyncram_18f1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 1,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 1,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 65536,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portbre => VCC,
	clk0 => \inst7|inst2|nCBD~clkctrl_outclk\,
	clk1 => \inst7|inst2|ALT_INV_nCBD~clkctrl_outclk\,
	ena0 => GND,
	ena1 => \inst6|mem_rtl_0|auto_generated|rden_decode_b|w_anode739w[3]~0_combout\,
	portadatain => \inst6|mem_rtl_0|auto_generated|ram_block1a49_PORTADATAIN_bus\,
	portaaddr => \inst6|mem_rtl_0|auto_generated|ram_block1a49_PORTAADDR_bus\,
	portbaddr => \inst6|mem_rtl_0|auto_generated|ram_block1a49_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \inst6|mem_rtl_0|auto_generated|ram_block1a49_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X31_Y16_N28
\inst6|mem_rtl_0|auto_generated|rden_decode_b|w_anode717w[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|mem_rtl_0|auto_generated|rden_decode_b|w_anode717w[3]~0_combout\ = (\PC|data_out\(15) & (!\PC|data_out\(13) & !\PC|data_out\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PC|data_out\(15),
	datac => \PC|data_out\(13),
	datad => \PC|data_out\(14),
	combout => \inst6|mem_rtl_0|auto_generated|rden_decode_b|w_anode717w[3]~0_combout\);

-- Location: M9K_X33_Y29_N0
\inst6|mem_rtl_0|auto_generated|ram_block1a33\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "mem_content.mif",
	init_file_layout => "port_a",
	logical_ram_name => "ram:inst6|altsyncram:mem_rtl_0|altsyncram_18f1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 1,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 1,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 65536,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portbre => VCC,
	clk0 => \inst7|inst2|nCBD~clkctrl_outclk\,
	clk1 => \inst7|inst2|ALT_INV_nCBD~clkctrl_outclk\,
	ena0 => GND,
	ena1 => \inst6|mem_rtl_0|auto_generated|rden_decode_b|w_anode717w[3]~0_combout\,
	portadatain => \inst6|mem_rtl_0|auto_generated|ram_block1a33_PORTADATAIN_bus\,
	portaaddr => \inst6|mem_rtl_0|auto_generated|ram_block1a33_PORTAADDR_bus\,
	portbaddr => \inst6|mem_rtl_0|auto_generated|ram_block1a33_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \inst6|mem_rtl_0|auto_generated|ram_block1a33_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X29_Y19_N6
\inst6|data[1]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|data[1]~46_combout\ = (\inst6|data[1]~3_combout\ & ((\inst6|mem_rtl_0|auto_generated|address_reg_b\(1) & (\inst6|mem_rtl_0|auto_generated|ram_block1a49~portbdataout\)) # (!\inst6|mem_rtl_0|auto_generated|address_reg_b\(1) & 
-- ((\inst6|mem_rtl_0|auto_generated|ram_block1a33~portbdataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|mem_rtl_0|auto_generated|address_reg_b\(1),
	datab => \inst6|data[1]~3_combout\,
	datac => \inst6|mem_rtl_0|auto_generated|ram_block1a49~portbdataout\,
	datad => \inst6|mem_rtl_0|auto_generated|ram_block1a33~portbdataout\,
	combout => \inst6|data[1]~46_combout\);

-- Location: LCCOMB_X29_Y16_N30
\inst6|mem_rtl_0|auto_generated|rden_decode_b|w_anode706w[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|mem_rtl_0|auto_generated|rden_decode_b|w_anode706w[3]~0_combout\ = (\PC|data_out\(14) & (!\PC|data_out\(15) & \PC|data_out\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PC|data_out\(14),
	datac => \PC|data_out\(15),
	datad => \PC|data_out\(13),
	combout => \inst6|mem_rtl_0|auto_generated|rden_decode_b|w_anode706w[3]~0_combout\);

-- Location: M9K_X33_Y27_N0
\inst6|mem_rtl_0|auto_generated|ram_block1a25\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "mem_content.mif",
	init_file_layout => "port_a",
	logical_ram_name => "ram:inst6|altsyncram:mem_rtl_0|altsyncram_18f1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 1,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 1,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 65536,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portbre => VCC,
	clk0 => \inst7|inst2|nCBD~clkctrl_outclk\,
	clk1 => \inst7|inst2|ALT_INV_nCBD~clkctrl_outclk\,
	ena0 => GND,
	ena1 => \inst6|mem_rtl_0|auto_generated|rden_decode_b|w_anode706w[3]~0_combout\,
	portadatain => \inst6|mem_rtl_0|auto_generated|ram_block1a25_PORTADATAIN_bus\,
	portaaddr => \inst6|mem_rtl_0|auto_generated|ram_block1a25_PORTAADDR_bus\,
	portbaddr => \inst6|mem_rtl_0|auto_generated|ram_block1a25_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \inst6|mem_rtl_0|auto_generated|ram_block1a25_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X29_Y16_N28
\inst6|mem_rtl_0|auto_generated|rden_decode_b|w_anode684w[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|mem_rtl_0|auto_generated|rden_decode_b|w_anode684w[3]~0_combout\ = (!\PC|data_out\(14) & (!\PC|data_out\(15) & \PC|data_out\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PC|data_out\(14),
	datac => \PC|data_out\(15),
	datad => \PC|data_out\(13),
	combout => \inst6|mem_rtl_0|auto_generated|rden_decode_b|w_anode684w[3]~0_combout\);

-- Location: M9K_X22_Y19_N0
\inst6|mem_rtl_0|auto_generated|ram_block1a9\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "mem_content.mif",
	init_file_layout => "port_a",
	logical_ram_name => "ram:inst6|altsyncram:mem_rtl_0|altsyncram_18f1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 1,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 1,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 65536,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portbre => VCC,
	clk0 => \inst7|inst2|nCBD~clkctrl_outclk\,
	clk1 => \inst7|inst2|ALT_INV_nCBD~clkctrl_outclk\,
	ena0 => GND,
	ena1 => \inst6|mem_rtl_0|auto_generated|rden_decode_b|w_anode684w[3]~0_combout\,
	portadatain => \inst6|mem_rtl_0|auto_generated|ram_block1a9_PORTADATAIN_bus\,
	portaaddr => \inst6|mem_rtl_0|auto_generated|ram_block1a9_PORTAADDR_bus\,
	portbaddr => \inst6|mem_rtl_0|auto_generated|ram_block1a9_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \inst6|mem_rtl_0|auto_generated|ram_block1a9_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X29_Y19_N22
\inst6|data[1]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|data[1]~43_combout\ = (\inst6|mem_rtl_0|auto_generated|address_reg_b\(1) & (\inst6|mem_rtl_0|auto_generated|ram_block1a25~portbdataout\)) # (!\inst6|mem_rtl_0|auto_generated|address_reg_b\(1) & 
-- ((\inst6|mem_rtl_0|auto_generated|ram_block1a9~portbdataout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|mem_rtl_0|auto_generated|address_reg_b\(1),
	datac => \inst6|mem_rtl_0|auto_generated|ram_block1a25~portbdataout\,
	datad => \inst6|mem_rtl_0|auto_generated|ram_block1a9~portbdataout\,
	combout => \inst6|data[1]~43_combout\);

-- Location: LCCOMB_X29_Y16_N8
\inst6|mem_rtl_0|auto_generated|rden_decode_b|w_anode666w[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|mem_rtl_0|auto_generated|rden_decode_b|w_anode666w\(3) = (!\PC|data_out\(14) & (!\PC|data_out\(15) & !\PC|data_out\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PC|data_out\(14),
	datac => \PC|data_out\(15),
	datad => \PC|data_out\(13),
	combout => \inst6|mem_rtl_0|auto_generated|rden_decode_b|w_anode666w\(3));

-- Location: M9K_X33_Y18_N0
\inst6|mem_rtl_0|auto_generated|ram_block1a1\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000037",
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "mem_content.mif",
	init_file_layout => "port_a",
	logical_ram_name => "ram:inst6|altsyncram:mem_rtl_0|altsyncram_18f1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 1,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 1,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 65536,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portbre => VCC,
	clk0 => \inst7|inst2|nCBD~clkctrl_outclk\,
	clk1 => \inst7|inst2|ALT_INV_nCBD~clkctrl_outclk\,
	ena0 => GND,
	ena1 => \inst6|mem_rtl_0|auto_generated|rden_decode_b|w_anode666w\(3),
	portadatain => \inst6|mem_rtl_0|auto_generated|ram_block1a1_PORTADATAIN_bus\,
	portaaddr => \inst6|mem_rtl_0|auto_generated|ram_block1a1_PORTAADDR_bus\,
	portbaddr => \inst6|mem_rtl_0|auto_generated|ram_block1a1_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \inst6|mem_rtl_0|auto_generated|ram_block1a1_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X29_Y16_N22
\inst6|mem_rtl_0|auto_generated|rden_decode_b|w_anode695w[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|mem_rtl_0|auto_generated|rden_decode_b|w_anode695w[3]~0_combout\ = (!\PC|data_out\(13) & (!\PC|data_out\(15) & \PC|data_out\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PC|data_out\(13),
	datac => \PC|data_out\(15),
	datad => \PC|data_out\(14),
	combout => \inst6|mem_rtl_0|auto_generated|rden_decode_b|w_anode695w[3]~0_combout\);

-- Location: M9K_X22_Y30_N0
\inst6|mem_rtl_0|auto_generated|ram_block1a17\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "mem_content.mif",
	init_file_layout => "port_a",
	logical_ram_name => "ram:inst6|altsyncram:mem_rtl_0|altsyncram_18f1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 1,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 1,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 65536,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portbre => VCC,
	clk0 => \inst7|inst2|nCBD~clkctrl_outclk\,
	clk1 => \inst7|inst2|ALT_INV_nCBD~clkctrl_outclk\,
	ena0 => GND,
	ena1 => \inst6|mem_rtl_0|auto_generated|rden_decode_b|w_anode695w[3]~0_combout\,
	portadatain => \inst6|mem_rtl_0|auto_generated|ram_block1a17_PORTADATAIN_bus\,
	portaaddr => \inst6|mem_rtl_0|auto_generated|ram_block1a17_PORTAADDR_bus\,
	portbaddr => \inst6|mem_rtl_0|auto_generated|ram_block1a17_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \inst6|mem_rtl_0|auto_generated|ram_block1a17_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X29_Y19_N2
\inst6|data[1]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|data[1]~44_combout\ = (\inst6|mem_rtl_0|auto_generated|address_reg_b\(1) & ((\inst6|mem_rtl_0|auto_generated|ram_block1a17~portbdataout\))) # (!\inst6|mem_rtl_0|auto_generated|address_reg_b\(1) & 
-- (\inst6|mem_rtl_0|auto_generated|ram_block1a1~portbdataout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|mem_rtl_0|auto_generated|address_reg_b\(1),
	datab => \inst6|mem_rtl_0|auto_generated|ram_block1a1~portbdataout\,
	datad => \inst6|mem_rtl_0|auto_generated|ram_block1a17~portbdataout\,
	combout => \inst6|data[1]~44_combout\);

-- Location: LCCOMB_X29_Y19_N0
\inst6|data[1]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|data[1]~45_combout\ = (!\inst6|mem_rtl_0|auto_generated|address_reg_b\(2) & ((\inst6|mem_rtl_0|auto_generated|address_reg_b\(0) & (\inst6|data[1]~43_combout\)) # (!\inst6|mem_rtl_0|auto_generated|address_reg_b\(0) & 
-- ((\inst6|data[1]~44_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|mem_rtl_0|auto_generated|address_reg_b\(0),
	datab => \inst6|mem_rtl_0|auto_generated|address_reg_b\(2),
	datac => \inst6|data[1]~43_combout\,
	datad => \inst6|data[1]~44_combout\,
	combout => \inst6|data[1]~45_combout\);

-- Location: LCCOMB_X30_Y15_N22
\inst6|mem~25feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|mem~25feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \inst6|mem~25feeder_combout\);

-- Location: FF_X30_Y15_N23
\inst6|mem~25\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|inst2|ALT_INV_nCBD~clkctrl_outclk\,
	d => \inst6|mem~25feeder_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|mem~25_q\);

-- Location: LCCOMB_X30_Y19_N0
\inst6|data[7]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|data[7]~7_combout\ = (\inst6|mem~25_q\ & \inst7|inst2|PC\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|mem~25_q\,
	datad => \inst7|inst2|PC\(0),
	combout => \inst6|data[7]~7_combout\);

-- Location: LCCOMB_X29_Y16_N20
\inst6|data[1]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|data[1]~5_combout\ = (\inst6|mem_rtl_0|auto_generated|address_reg_b\(0) & \inst6|mem_rtl_0|auto_generated|address_reg_b\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|mem_rtl_0|auto_generated|address_reg_b\(0),
	datad => \inst6|mem_rtl_0|auto_generated|address_reg_b\(2),
	combout => \inst6|data[1]~5_combout\);

-- Location: LCCOMB_X29_Y16_N10
\inst6|mem_rtl_0|auto_generated|rden_decode_b|w_anode728w[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|mem_rtl_0|auto_generated|rden_decode_b|w_anode728w[3]~0_combout\ = (!\PC|data_out\(14) & (\PC|data_out\(15) & \PC|data_out\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PC|data_out\(14),
	datac => \PC|data_out\(15),
	datad => \PC|data_out\(13),
	combout => \inst6|mem_rtl_0|auto_generated|rden_decode_b|w_anode728w[3]~0_combout\);

-- Location: M9K_X22_Y22_N0
\inst6|mem_rtl_0|auto_generated|ram_block1a41\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "mem_content.mif",
	init_file_layout => "port_a",
	logical_ram_name => "ram:inst6|altsyncram:mem_rtl_0|altsyncram_18f1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 1,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 1,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 65536,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portbre => VCC,
	clk0 => \inst7|inst2|nCBD~clkctrl_outclk\,
	clk1 => \inst7|inst2|ALT_INV_nCBD~clkctrl_outclk\,
	ena0 => GND,
	ena1 => \inst6|mem_rtl_0|auto_generated|rden_decode_b|w_anode728w[3]~0_combout\,
	portadatain => \inst6|mem_rtl_0|auto_generated|ram_block1a41_PORTADATAIN_bus\,
	portaaddr => \inst6|mem_rtl_0|auto_generated|ram_block1a41_PORTAADDR_bus\,
	portbaddr => \inst6|mem_rtl_0|auto_generated|ram_block1a41_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \inst6|mem_rtl_0|auto_generated|ram_block1a41_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X29_Y16_N24
\inst6|mem_rtl_0|auto_generated|rden_decode_b|w_anode750w[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|mem_rtl_0|auto_generated|rden_decode_b|w_anode750w[3]~0_combout\ = (\PC|data_out\(14) & (\PC|data_out\(15) & \PC|data_out\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PC|data_out\(14),
	datac => \PC|data_out\(15),
	datad => \PC|data_out\(13),
	combout => \inst6|mem_rtl_0|auto_generated|rden_decode_b|w_anode750w[3]~0_combout\);

-- Location: M9K_X22_Y29_N0
\inst6|mem_rtl_0|auto_generated|ram_block1a57\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "mem_content.mif",
	init_file_layout => "port_a",
	logical_ram_name => "ram:inst6|altsyncram:mem_rtl_0|altsyncram_18f1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 1,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 1,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 65536,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portbre => VCC,
	clk0 => \inst7|inst2|nCBD~clkctrl_outclk\,
	clk1 => \inst7|inst2|ALT_INV_nCBD~clkctrl_outclk\,
	ena0 => GND,
	ena1 => \inst6|mem_rtl_0|auto_generated|rden_decode_b|w_anode750w[3]~0_combout\,
	portadatain => \inst6|mem_rtl_0|auto_generated|ram_block1a57_PORTADATAIN_bus\,
	portaaddr => \inst6|mem_rtl_0|auto_generated|ram_block1a57_PORTAADDR_bus\,
	portbaddr => \inst6|mem_rtl_0|auto_generated|ram_block1a57_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \inst6|mem_rtl_0|auto_generated|ram_block1a57_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X29_Y19_N12
\inst6|data[1]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|data[1]~47_combout\ = (\inst6|data[1]~5_combout\ & ((\inst6|mem_rtl_0|auto_generated|address_reg_b\(1) & ((\inst6|mem_rtl_0|auto_generated|ram_block1a57~portbdataout\))) # (!\inst6|mem_rtl_0|auto_generated|address_reg_b\(1) & 
-- (\inst6|mem_rtl_0|auto_generated|ram_block1a41~portbdataout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|mem_rtl_0|auto_generated|address_reg_b\(1),
	datab => \inst6|data[1]~5_combout\,
	datac => \inst6|mem_rtl_0|auto_generated|ram_block1a41~portbdataout\,
	datad => \inst6|mem_rtl_0|auto_generated|ram_block1a57~portbdataout\,
	combout => \inst6|data[1]~47_combout\);

-- Location: LCCOMB_X29_Y19_N10
\inst6|data[1]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|data[1]~48_combout\ = (\inst6|data[1]~46_combout\) # ((\inst6|data[1]~45_combout\) # ((\inst6|data[1]~47_combout\) # (!\inst6|data[7]~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|data[1]~46_combout\,
	datab => \inst6|data[1]~45_combout\,
	datac => \inst6|data[7]~7_combout\,
	datad => \inst6|data[1]~47_combout\,
	combout => \inst6|data[1]~48_combout\);

-- Location: LCCOMB_X29_Y19_N20
\inst8|valor_interno[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|valor_interno[5]~feeder_combout\ = \inst6|data[1]~48_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst6|data[1]~48_combout\,
	combout => \inst8|valor_interno[5]~feeder_combout\);

-- Location: FF_X29_Y19_N21
\inst8|valor_interno[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|inst2|ALT_INV_nCRI~clkctrl_outclk\,
	d => \inst8|valor_interno[5]~feeder_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|valor_interno\(5));

-- Location: LCCOMB_X28_Y19_N2
\inst7|inst5|$00000|auto_generated|result_node[5]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst5|$00000|auto_generated|result_node[5]~6_combout\ = (\inst7|inst3|SELECTOR~1_combout\ & (((\inst8|valor_interno\(5) & \inst7|inst3|SELECTOR~0_combout\)))) # (!\inst7|inst3|SELECTOR~1_combout\ & ((\inst7|inst4|valor_interno\(5)) # 
-- ((\inst8|valor_interno\(5) & \inst7|inst3|SELECTOR~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst3|SELECTOR~1_combout\,
	datab => \inst7|inst4|valor_interno\(5),
	datac => \inst8|valor_interno\(5),
	datad => \inst7|inst3|SELECTOR~0_combout\,
	combout => \inst7|inst5|$00000|auto_generated|result_node[5]~6_combout\);

-- Location: LCCOMB_X27_Y19_N20
\inst7|inst4|valor_interno[6]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst4|valor_interno[6]~21_combout\ = (\inst7|inst5|$00000|auto_generated|result_node[6]~5_combout\ & (!\inst7|inst4|valor_interno[5]~20\)) # (!\inst7|inst5|$00000|auto_generated|result_node[6]~5_combout\ & ((\inst7|inst4|valor_interno[5]~20\) # 
-- (GND)))
-- \inst7|inst4|valor_interno[6]~22\ = CARRY((!\inst7|inst4|valor_interno[5]~20\) # (!\inst7|inst5|$00000|auto_generated|result_node[6]~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|inst5|$00000|auto_generated|result_node[6]~5_combout\,
	datad => VCC,
	cin => \inst7|inst4|valor_interno[5]~20\,
	combout => \inst7|inst4|valor_interno[6]~21_combout\,
	cout => \inst7|inst4|valor_interno[6]~22\);

-- Location: FF_X27_Y19_N21
\inst7|inst4|valor_interno[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst7|inst4|valor_interno[6]~21_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|inst4|valor_interno\(6));

-- Location: M9K_X22_Y27_N0
\inst6|mem_rtl_0|auto_generated|ram_block1a58\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "mem_content.mif",
	init_file_layout => "port_a",
	logical_ram_name => "ram:inst6|altsyncram:mem_rtl_0|altsyncram_18f1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 2,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 2,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 65536,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portbre => VCC,
	clk0 => \inst7|inst2|nCBD~clkctrl_outclk\,
	clk1 => \inst7|inst2|ALT_INV_nCBD~clkctrl_outclk\,
	ena0 => GND,
	ena1 => \inst6|mem_rtl_0|auto_generated|rden_decode_b|w_anode750w[3]~0_combout\,
	portadatain => \inst6|mem_rtl_0|auto_generated|ram_block1a58_PORTADATAIN_bus\,
	portaaddr => \inst6|mem_rtl_0|auto_generated|ram_block1a58_PORTAADDR_bus\,
	portbaddr => \inst6|mem_rtl_0|auto_generated|ram_block1a58_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \inst6|mem_rtl_0|auto_generated|ram_block1a58_PORTBDATAOUT_bus\);

-- Location: M9K_X22_Y25_N0
\inst6|mem_rtl_0|auto_generated|ram_block1a42\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "mem_content.mif",
	init_file_layout => "port_a",
	logical_ram_name => "ram:inst6|altsyncram:mem_rtl_0|altsyncram_18f1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 2,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 2,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 65536,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portbre => VCC,
	clk0 => \inst7|inst2|nCBD~clkctrl_outclk\,
	clk1 => \inst7|inst2|ALT_INV_nCBD~clkctrl_outclk\,
	ena0 => GND,
	ena1 => \inst6|mem_rtl_0|auto_generated|rden_decode_b|w_anode728w[3]~0_combout\,
	portadatain => \inst6|mem_rtl_0|auto_generated|ram_block1a42_PORTADATAIN_bus\,
	portaaddr => \inst6|mem_rtl_0|auto_generated|ram_block1a42_PORTAADDR_bus\,
	portbaddr => \inst6|mem_rtl_0|auto_generated|ram_block1a42_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \inst6|mem_rtl_0|auto_generated|ram_block1a42_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X29_Y19_N30
\inst6|data[2]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|data[2]~41_combout\ = (\inst6|data[1]~5_combout\ & ((\inst6|mem_rtl_0|auto_generated|address_reg_b\(1) & (\inst6|mem_rtl_0|auto_generated|ram_block1a58~portbdataout\)) # (!\inst6|mem_rtl_0|auto_generated|address_reg_b\(1) & 
-- ((\inst6|mem_rtl_0|auto_generated|ram_block1a42~portbdataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|mem_rtl_0|auto_generated|address_reg_b\(1),
	datab => \inst6|data[1]~5_combout\,
	datac => \inst6|mem_rtl_0|auto_generated|ram_block1a58~portbdataout\,
	datad => \inst6|mem_rtl_0|auto_generated|ram_block1a42~portbdataout\,
	combout => \inst6|data[2]~41_combout\);

-- Location: M9K_X22_Y32_N0
\inst6|mem_rtl_0|auto_generated|ram_block1a50\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "mem_content.mif",
	init_file_layout => "port_a",
	logical_ram_name => "ram:inst6|altsyncram:mem_rtl_0|altsyncram_18f1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 2,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 2,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 65536,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portbre => VCC,
	clk0 => \inst7|inst2|nCBD~clkctrl_outclk\,
	clk1 => \inst7|inst2|ALT_INV_nCBD~clkctrl_outclk\,
	ena0 => GND,
	ena1 => \inst6|mem_rtl_0|auto_generated|rden_decode_b|w_anode739w[3]~0_combout\,
	portadatain => \inst6|mem_rtl_0|auto_generated|ram_block1a50_PORTADATAIN_bus\,
	portaaddr => \inst6|mem_rtl_0|auto_generated|ram_block1a50_PORTAADDR_bus\,
	portbaddr => \inst6|mem_rtl_0|auto_generated|ram_block1a50_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \inst6|mem_rtl_0|auto_generated|ram_block1a50_PORTBDATAOUT_bus\);

-- Location: M9K_X33_Y32_N0
\inst6|mem_rtl_0|auto_generated|ram_block1a34\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "mem_content.mif",
	init_file_layout => "port_a",
	logical_ram_name => "ram:inst6|altsyncram:mem_rtl_0|altsyncram_18f1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 2,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 2,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 65536,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portbre => VCC,
	clk0 => \inst7|inst2|nCBD~clkctrl_outclk\,
	clk1 => \inst7|inst2|ALT_INV_nCBD~clkctrl_outclk\,
	ena0 => GND,
	ena1 => \inst6|mem_rtl_0|auto_generated|rden_decode_b|w_anode717w[3]~0_combout\,
	portadatain => \inst6|mem_rtl_0|auto_generated|ram_block1a34_PORTADATAIN_bus\,
	portaaddr => \inst6|mem_rtl_0|auto_generated|ram_block1a34_PORTAADDR_bus\,
	portbaddr => \inst6|mem_rtl_0|auto_generated|ram_block1a34_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \inst6|mem_rtl_0|auto_generated|ram_block1a34_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X29_Y19_N4
\inst6|data[2]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|data[2]~40_combout\ = (\inst6|data[1]~3_combout\ & ((\inst6|mem_rtl_0|auto_generated|address_reg_b\(1) & (\inst6|mem_rtl_0|auto_generated|ram_block1a50~portbdataout\)) # (!\inst6|mem_rtl_0|auto_generated|address_reg_b\(1) & 
-- ((\inst6|mem_rtl_0|auto_generated|ram_block1a34~portbdataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|mem_rtl_0|auto_generated|address_reg_b\(1),
	datab => \inst6|data[1]~3_combout\,
	datac => \inst6|mem_rtl_0|auto_generated|ram_block1a50~portbdataout\,
	datad => \inst6|mem_rtl_0|auto_generated|ram_block1a34~portbdataout\,
	combout => \inst6|data[2]~40_combout\);

-- Location: M9K_X33_Y26_N0
\inst6|mem_rtl_0|auto_generated|ram_block1a10\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "mem_content.mif",
	init_file_layout => "port_a",
	logical_ram_name => "ram:inst6|altsyncram:mem_rtl_0|altsyncram_18f1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 2,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 2,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 65536,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portbre => VCC,
	clk0 => \inst7|inst2|nCBD~clkctrl_outclk\,
	clk1 => \inst7|inst2|ALT_INV_nCBD~clkctrl_outclk\,
	ena0 => GND,
	ena1 => \inst6|mem_rtl_0|auto_generated|rden_decode_b|w_anode684w[3]~0_combout\,
	portadatain => \inst6|mem_rtl_0|auto_generated|ram_block1a10_PORTADATAIN_bus\,
	portaaddr => \inst6|mem_rtl_0|auto_generated|ram_block1a10_PORTAADDR_bus\,
	portbaddr => \inst6|mem_rtl_0|auto_generated|ram_block1a10_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \inst6|mem_rtl_0|auto_generated|ram_block1a10_PORTBDATAOUT_bus\);

-- Location: M9K_X33_Y28_N0
\inst6|mem_rtl_0|auto_generated|ram_block1a26\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "mem_content.mif",
	init_file_layout => "port_a",
	logical_ram_name => "ram:inst6|altsyncram:mem_rtl_0|altsyncram_18f1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 2,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 2,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 65536,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portbre => VCC,
	clk0 => \inst7|inst2|nCBD~clkctrl_outclk\,
	clk1 => \inst7|inst2|ALT_INV_nCBD~clkctrl_outclk\,
	ena0 => GND,
	ena1 => \inst6|mem_rtl_0|auto_generated|rden_decode_b|w_anode706w[3]~0_combout\,
	portadatain => \inst6|mem_rtl_0|auto_generated|ram_block1a26_PORTADATAIN_bus\,
	portaaddr => \inst6|mem_rtl_0|auto_generated|ram_block1a26_PORTAADDR_bus\,
	portbaddr => \inst6|mem_rtl_0|auto_generated|ram_block1a26_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \inst6|mem_rtl_0|auto_generated|ram_block1a26_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X29_Y19_N26
\inst6|data[2]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|data[2]~37_combout\ = (\inst6|mem_rtl_0|auto_generated|address_reg_b\(1) & ((\inst6|mem_rtl_0|auto_generated|ram_block1a26~portbdataout\))) # (!\inst6|mem_rtl_0|auto_generated|address_reg_b\(1) & 
-- (\inst6|mem_rtl_0|auto_generated|ram_block1a10~portbdataout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|mem_rtl_0|auto_generated|address_reg_b\(1),
	datac => \inst6|mem_rtl_0|auto_generated|ram_block1a10~portbdataout\,
	datad => \inst6|mem_rtl_0|auto_generated|ram_block1a26~portbdataout\,
	combout => \inst6|data[2]~37_combout\);

-- Location: M9K_X33_Y25_N0
\inst6|mem_rtl_0|auto_generated|ram_block1a2\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000A5",
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "mem_content.mif",
	init_file_layout => "port_a",
	logical_ram_name => "ram:inst6|altsyncram:mem_rtl_0|altsyncram_18f1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 2,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 2,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 65536,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portbre => VCC,
	clk0 => \inst7|inst2|nCBD~clkctrl_outclk\,
	clk1 => \inst7|inst2|ALT_INV_nCBD~clkctrl_outclk\,
	ena0 => GND,
	ena1 => \inst6|mem_rtl_0|auto_generated|rden_decode_b|w_anode666w\(3),
	portadatain => \inst6|mem_rtl_0|auto_generated|ram_block1a2_PORTADATAIN_bus\,
	portaaddr => \inst6|mem_rtl_0|auto_generated|ram_block1a2_PORTAADDR_bus\,
	portbaddr => \inst6|mem_rtl_0|auto_generated|ram_block1a2_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \inst6|mem_rtl_0|auto_generated|ram_block1a2_PORTBDATAOUT_bus\);

-- Location: M9K_X33_Y33_N0
\inst6|mem_rtl_0|auto_generated|ram_block1a18\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "mem_content.mif",
	init_file_layout => "port_a",
	logical_ram_name => "ram:inst6|altsyncram:mem_rtl_0|altsyncram_18f1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 2,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 2,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 65536,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portbre => VCC,
	clk0 => \inst7|inst2|nCBD~clkctrl_outclk\,
	clk1 => \inst7|inst2|ALT_INV_nCBD~clkctrl_outclk\,
	ena0 => GND,
	ena1 => \inst6|mem_rtl_0|auto_generated|rden_decode_b|w_anode695w[3]~0_combout\,
	portadatain => \inst6|mem_rtl_0|auto_generated|ram_block1a18_PORTADATAIN_bus\,
	portaaddr => \inst6|mem_rtl_0|auto_generated|ram_block1a18_PORTAADDR_bus\,
	portbaddr => \inst6|mem_rtl_0|auto_generated|ram_block1a18_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \inst6|mem_rtl_0|auto_generated|ram_block1a18_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X29_Y19_N24
\inst6|data[2]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|data[2]~38_combout\ = (\inst6|mem_rtl_0|auto_generated|address_reg_b\(1) & ((\inst6|mem_rtl_0|auto_generated|ram_block1a18~portbdataout\))) # (!\inst6|mem_rtl_0|auto_generated|address_reg_b\(1) & 
-- (\inst6|mem_rtl_0|auto_generated|ram_block1a2~portbdataout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|mem_rtl_0|auto_generated|address_reg_b\(1),
	datac => \inst6|mem_rtl_0|auto_generated|ram_block1a2~portbdataout\,
	datad => \inst6|mem_rtl_0|auto_generated|ram_block1a18~portbdataout\,
	combout => \inst6|data[2]~38_combout\);

-- Location: LCCOMB_X29_Y19_N18
\inst6|data[2]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|data[2]~39_combout\ = (!\inst6|mem_rtl_0|auto_generated|address_reg_b\(2) & ((\inst6|mem_rtl_0|auto_generated|address_reg_b\(0) & (\inst6|data[2]~37_combout\)) # (!\inst6|mem_rtl_0|auto_generated|address_reg_b\(0) & 
-- ((\inst6|data[2]~38_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|mem_rtl_0|auto_generated|address_reg_b\(0),
	datab => \inst6|mem_rtl_0|auto_generated|address_reg_b\(2),
	datac => \inst6|data[2]~37_combout\,
	datad => \inst6|data[2]~38_combout\,
	combout => \inst6|data[2]~39_combout\);

-- Location: LCCOMB_X29_Y19_N16
\inst6|data[2]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|data[2]~42_combout\ = (\inst6|data[2]~41_combout\) # ((\inst6|data[2]~40_combout\) # ((\inst6|data[2]~39_combout\) # (!\inst6|data[7]~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|data[2]~41_combout\,
	datab => \inst6|data[2]~40_combout\,
	datac => \inst6|data[7]~7_combout\,
	datad => \inst6|data[2]~39_combout\,
	combout => \inst6|data[2]~42_combout\);

-- Location: FF_X29_Y19_N3
\inst8|valor_interno[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|inst2|ALT_INV_nCRI~clkctrl_outclk\,
	asdata => \inst6|data[2]~42_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|valor_interno\(6));

-- Location: LCCOMB_X28_Y19_N18
\inst7|inst5|$00000|auto_generated|result_node[6]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst5|$00000|auto_generated|result_node[6]~5_combout\ = (\inst7|inst3|SELECTOR~1_combout\ & (((\inst8|valor_interno\(6) & \inst7|inst3|SELECTOR~0_combout\)))) # (!\inst7|inst3|SELECTOR~1_combout\ & ((\inst7|inst4|valor_interno\(6)) # 
-- ((\inst8|valor_interno\(6) & \inst7|inst3|SELECTOR~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst3|SELECTOR~1_combout\,
	datab => \inst7|inst4|valor_interno\(6),
	datac => \inst8|valor_interno\(6),
	datad => \inst7|inst3|SELECTOR~0_combout\,
	combout => \inst7|inst5|$00000|auto_generated|result_node[6]~5_combout\);

-- Location: LCCOMB_X27_Y19_N22
\inst7|inst4|valor_interno[7]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst4|valor_interno[7]~23_combout\ = (\inst7|inst5|$00000|auto_generated|result_node[7]~4_combout\ & (\inst7|inst4|valor_interno[6]~22\ $ (GND))) # (!\inst7|inst5|$00000|auto_generated|result_node[7]~4_combout\ & (!\inst7|inst4|valor_interno[6]~22\ 
-- & VCC))
-- \inst7|inst4|valor_interno[7]~24\ = CARRY((\inst7|inst5|$00000|auto_generated|result_node[7]~4_combout\ & !\inst7|inst4|valor_interno[6]~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|inst5|$00000|auto_generated|result_node[7]~4_combout\,
	datad => VCC,
	cin => \inst7|inst4|valor_interno[6]~22\,
	combout => \inst7|inst4|valor_interno[7]~23_combout\,
	cout => \inst7|inst4|valor_interno[7]~24\);

-- Location: FF_X27_Y19_N23
\inst7|inst4|valor_interno[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst7|inst4|valor_interno[7]~23_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|inst4|valor_interno\(7));

-- Location: LCCOMB_X30_Y15_N12
\inst6|data[0]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|data[0]~26_combout\ = (\inst6|mem~25_q\ & (\inst6|mem_rtl_0|auto_generated|address_reg_b\(2) & !\inst6|mem_rtl_0|auto_generated|address_reg_b\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|mem~25_q\,
	datab => \inst6|mem_rtl_0|auto_generated|address_reg_b\(2),
	datac => \inst6|mem_rtl_0|auto_generated|address_reg_b\(0),
	combout => \inst6|data[0]~26_combout\);

-- Location: M9K_X33_Y4_N0
\inst6|mem_rtl_0|auto_generated|ram_block1a35\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "mem_content.mif",
	init_file_layout => "port_a",
	logical_ram_name => "ram:inst6|altsyncram:mem_rtl_0|altsyncram_18f1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 3,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 3,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 65536,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portbre => VCC,
	clk0 => \inst7|inst2|nCBD~clkctrl_outclk\,
	clk1 => \inst7|inst2|ALT_INV_nCBD~clkctrl_outclk\,
	ena0 => GND,
	ena1 => \inst6|mem_rtl_0|auto_generated|rden_decode_b|w_anode717w[3]~0_combout\,
	portadatain => \inst6|mem_rtl_0|auto_generated|ram_block1a35_PORTADATAIN_bus\,
	portaaddr => \inst6|mem_rtl_0|auto_generated|ram_block1a35_PORTAADDR_bus\,
	portbaddr => \inst6|mem_rtl_0|auto_generated|ram_block1a35_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \inst6|mem_rtl_0|auto_generated|ram_block1a35_PORTBDATAOUT_bus\);

-- Location: M9K_X33_Y14_N0
\inst6|mem_rtl_0|auto_generated|ram_block1a51\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "mem_content.mif",
	init_file_layout => "port_a",
	logical_ram_name => "ram:inst6|altsyncram:mem_rtl_0|altsyncram_18f1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 3,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 3,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 65536,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portbre => VCC,
	clk0 => \inst7|inst2|nCBD~clkctrl_outclk\,
	clk1 => \inst7|inst2|ALT_INV_nCBD~clkctrl_outclk\,
	ena0 => GND,
	ena1 => \inst6|mem_rtl_0|auto_generated|rden_decode_b|w_anode739w[3]~0_combout\,
	portadatain => \inst6|mem_rtl_0|auto_generated|ram_block1a51_PORTADATAIN_bus\,
	portaaddr => \inst6|mem_rtl_0|auto_generated|ram_block1a51_PORTAADDR_bus\,
	portbaddr => \inst6|mem_rtl_0|auto_generated|ram_block1a51_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \inst6|mem_rtl_0|auto_generated|ram_block1a51_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X29_Y15_N22
\inst6|data[3]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|data[3]~34_combout\ = (\inst6|data[0]~26_combout\ & ((\inst6|mem_rtl_0|auto_generated|address_reg_b\(1) & ((\inst6|mem_rtl_0|auto_generated|ram_block1a51~portbdataout\))) # (!\inst6|mem_rtl_0|auto_generated|address_reg_b\(1) & 
-- (\inst6|mem_rtl_0|auto_generated|ram_block1a35~portbdataout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|mem_rtl_0|auto_generated|address_reg_b\(1),
	datab => \inst6|data[0]~26_combout\,
	datac => \inst6|mem_rtl_0|auto_generated|ram_block1a35~portbdataout\,
	datad => \inst6|mem_rtl_0|auto_generated|ram_block1a51~portbdataout\,
	combout => \inst6|data[3]~34_combout\);

-- Location: LCCOMB_X30_Y15_N20
\inst6|data[0]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|data[0]~15_combout\ = (!\inst6|mem_rtl_0|auto_generated|address_reg_b\(2) & \inst6|mem~25_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|mem_rtl_0|auto_generated|address_reg_b\(2),
	datac => \inst6|mem~25_q\,
	combout => \inst6|data[0]~15_combout\);

-- Location: M9K_X33_Y13_N0
\inst6|mem_rtl_0|auto_generated|ram_block1a11\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "mem_content.mif",
	init_file_layout => "port_a",
	logical_ram_name => "ram:inst6|altsyncram:mem_rtl_0|altsyncram_18f1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 3,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 3,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 65536,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portbre => VCC,
	clk0 => \inst7|inst2|nCBD~clkctrl_outclk\,
	clk1 => \inst7|inst2|ALT_INV_nCBD~clkctrl_outclk\,
	ena0 => GND,
	ena1 => \inst6|mem_rtl_0|auto_generated|rden_decode_b|w_anode684w[3]~0_combout\,
	portadatain => \inst6|mem_rtl_0|auto_generated|ram_block1a11_PORTADATAIN_bus\,
	portaaddr => \inst6|mem_rtl_0|auto_generated|ram_block1a11_PORTAADDR_bus\,
	portbaddr => \inst6|mem_rtl_0|auto_generated|ram_block1a11_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \inst6|mem_rtl_0|auto_generated|ram_block1a11_PORTBDATAOUT_bus\);

-- Location: M9K_X33_Y7_N0
\inst6|mem_rtl_0|auto_generated|ram_block1a27\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "mem_content.mif",
	init_file_layout => "port_a",
	logical_ram_name => "ram:inst6|altsyncram:mem_rtl_0|altsyncram_18f1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 3,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 3,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 65536,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portbre => VCC,
	clk0 => \inst7|inst2|nCBD~clkctrl_outclk\,
	clk1 => \inst7|inst2|ALT_INV_nCBD~clkctrl_outclk\,
	ena0 => GND,
	ena1 => \inst6|mem_rtl_0|auto_generated|rden_decode_b|w_anode706w[3]~0_combout\,
	portadatain => \inst6|mem_rtl_0|auto_generated|ram_block1a27_PORTADATAIN_bus\,
	portaaddr => \inst6|mem_rtl_0|auto_generated|ram_block1a27_PORTAADDR_bus\,
	portbaddr => \inst6|mem_rtl_0|auto_generated|ram_block1a27_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \inst6|mem_rtl_0|auto_generated|ram_block1a27_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X29_Y15_N14
\inst6|data[3]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|data[3]~31_combout\ = (\inst6|mem_rtl_0|auto_generated|address_reg_b\(1) & ((\inst6|mem_rtl_0|auto_generated|ram_block1a27~portbdataout\))) # (!\inst6|mem_rtl_0|auto_generated|address_reg_b\(1) & 
-- (\inst6|mem_rtl_0|auto_generated|ram_block1a11~portbdataout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|mem_rtl_0|auto_generated|address_reg_b\(1),
	datac => \inst6|mem_rtl_0|auto_generated|ram_block1a11~portbdataout\,
	datad => \inst6|mem_rtl_0|auto_generated|ram_block1a27~portbdataout\,
	combout => \inst6|data[3]~31_combout\);

-- Location: M9K_X33_Y16_N0
\inst6|mem_rtl_0|auto_generated|ram_block1a19\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "mem_content.mif",
	init_file_layout => "port_a",
	logical_ram_name => "ram:inst6|altsyncram:mem_rtl_0|altsyncram_18f1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 3,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 3,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 65536,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portbre => VCC,
	clk0 => \inst7|inst2|nCBD~clkctrl_outclk\,
	clk1 => \inst7|inst2|ALT_INV_nCBD~clkctrl_outclk\,
	ena0 => GND,
	ena1 => \inst6|mem_rtl_0|auto_generated|rden_decode_b|w_anode695w[3]~0_combout\,
	portadatain => \inst6|mem_rtl_0|auto_generated|ram_block1a19_PORTADATAIN_bus\,
	portaaddr => \inst6|mem_rtl_0|auto_generated|ram_block1a19_PORTAADDR_bus\,
	portbaddr => \inst6|mem_rtl_0|auto_generated|ram_block1a19_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \inst6|mem_rtl_0|auto_generated|ram_block1a19_PORTBDATAOUT_bus\);

-- Location: M9K_X33_Y12_N0
\inst6|mem_rtl_0|auto_generated|ram_block1a3\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000030",
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "mem_content.mif",
	init_file_layout => "port_a",
	logical_ram_name => "ram:inst6|altsyncram:mem_rtl_0|altsyncram_18f1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 3,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 3,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 65536,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portbre => VCC,
	clk0 => \inst7|inst2|nCBD~clkctrl_outclk\,
	clk1 => \inst7|inst2|ALT_INV_nCBD~clkctrl_outclk\,
	ena0 => GND,
	ena1 => \inst6|mem_rtl_0|auto_generated|rden_decode_b|w_anode666w\(3),
	portadatain => \inst6|mem_rtl_0|auto_generated|ram_block1a3_PORTADATAIN_bus\,
	portaaddr => \inst6|mem_rtl_0|auto_generated|ram_block1a3_PORTAADDR_bus\,
	portbaddr => \inst6|mem_rtl_0|auto_generated|ram_block1a3_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \inst6|mem_rtl_0|auto_generated|ram_block1a3_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X29_Y15_N16
\inst6|data[3]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|data[3]~32_combout\ = (\inst6|mem_rtl_0|auto_generated|address_reg_b\(1) & (\inst6|mem_rtl_0|auto_generated|ram_block1a19~portbdataout\)) # (!\inst6|mem_rtl_0|auto_generated|address_reg_b\(1) & 
-- ((\inst6|mem_rtl_0|auto_generated|ram_block1a3~portbdataout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|mem_rtl_0|auto_generated|ram_block1a19~portbdataout\,
	datab => \inst6|mem_rtl_0|auto_generated|address_reg_b\(1),
	datad => \inst6|mem_rtl_0|auto_generated|ram_block1a3~portbdataout\,
	combout => \inst6|data[3]~32_combout\);

-- Location: LCCOMB_X29_Y15_N24
\inst6|data[3]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|data[3]~33_combout\ = (\inst6|data[0]~15_combout\ & ((\inst6|mem_rtl_0|auto_generated|address_reg_b\(0) & (\inst6|data[3]~31_combout\)) # (!\inst6|mem_rtl_0|auto_generated|address_reg_b\(0) & ((\inst6|data[3]~32_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|data[0]~15_combout\,
	datab => \inst6|mem_rtl_0|auto_generated|address_reg_b\(0),
	datac => \inst6|data[3]~31_combout\,
	datad => \inst6|data[3]~32_combout\,
	combout => \inst6|data[3]~33_combout\);

-- Location: LCCOMB_X30_Y15_N6
\inst6|data[0]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|data[0]~28_combout\ = (\inst6|mem~25_q\ & (\inst6|mem_rtl_0|auto_generated|address_reg_b\(2) & \inst6|mem_rtl_0|auto_generated|address_reg_b\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|mem~25_q\,
	datab => \inst6|mem_rtl_0|auto_generated|address_reg_b\(2),
	datac => \inst6|mem_rtl_0|auto_generated|address_reg_b\(0),
	combout => \inst6|data[0]~28_combout\);

-- Location: M9K_X22_Y15_N0
\inst6|mem_rtl_0|auto_generated|ram_block1a43\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "mem_content.mif",
	init_file_layout => "port_a",
	logical_ram_name => "ram:inst6|altsyncram:mem_rtl_0|altsyncram_18f1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 3,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 3,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 65536,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portbre => VCC,
	clk0 => \inst7|inst2|nCBD~clkctrl_outclk\,
	clk1 => \inst7|inst2|ALT_INV_nCBD~clkctrl_outclk\,
	ena0 => GND,
	ena1 => \inst6|mem_rtl_0|auto_generated|rden_decode_b|w_anode728w[3]~0_combout\,
	portadatain => \inst6|mem_rtl_0|auto_generated|ram_block1a43_PORTADATAIN_bus\,
	portaaddr => \inst6|mem_rtl_0|auto_generated|ram_block1a43_PORTAADDR_bus\,
	portbaddr => \inst6|mem_rtl_0|auto_generated|ram_block1a43_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \inst6|mem_rtl_0|auto_generated|ram_block1a43_PORTBDATAOUT_bus\);

-- Location: M9K_X22_Y2_N0
\inst6|mem_rtl_0|auto_generated|ram_block1a59\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "mem_content.mif",
	init_file_layout => "port_a",
	logical_ram_name => "ram:inst6|altsyncram:mem_rtl_0|altsyncram_18f1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 3,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 3,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 65536,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portbre => VCC,
	clk0 => \inst7|inst2|nCBD~clkctrl_outclk\,
	clk1 => \inst7|inst2|ALT_INV_nCBD~clkctrl_outclk\,
	ena0 => GND,
	ena1 => \inst6|mem_rtl_0|auto_generated|rden_decode_b|w_anode750w[3]~0_combout\,
	portadatain => \inst6|mem_rtl_0|auto_generated|ram_block1a59_PORTADATAIN_bus\,
	portaaddr => \inst6|mem_rtl_0|auto_generated|ram_block1a59_PORTAADDR_bus\,
	portbaddr => \inst6|mem_rtl_0|auto_generated|ram_block1a59_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \inst6|mem_rtl_0|auto_generated|ram_block1a59_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X29_Y15_N12
\inst6|data[3]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|data[3]~35_combout\ = (\inst6|data[0]~28_combout\ & ((\inst6|mem_rtl_0|auto_generated|address_reg_b\(1) & ((\inst6|mem_rtl_0|auto_generated|ram_block1a59~portbdataout\))) # (!\inst6|mem_rtl_0|auto_generated|address_reg_b\(1) & 
-- (\inst6|mem_rtl_0|auto_generated|ram_block1a43~portbdataout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|data[0]~28_combout\,
	datab => \inst6|mem_rtl_0|auto_generated|address_reg_b\(1),
	datac => \inst6|mem_rtl_0|auto_generated|ram_block1a43~portbdataout\,
	datad => \inst6|mem_rtl_0|auto_generated|ram_block1a59~portbdataout\,
	combout => \inst6|data[3]~35_combout\);

-- Location: LCCOMB_X29_Y15_N2
\inst6|data[3]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|data[3]~36_combout\ = (\inst6|data[3]~34_combout\) # ((\inst6|data[3]~33_combout\) # ((\inst6|data[3]~35_combout\) # (!\inst7|inst2|PC\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|data[3]~34_combout\,
	datab => \inst6|data[3]~33_combout\,
	datac => \inst7|inst2|PC\(0),
	datad => \inst6|data[3]~35_combout\,
	combout => \inst6|data[3]~36_combout\);

-- Location: LCCOMB_X29_Y15_N20
\inst8|valor_interno[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|valor_interno[7]~feeder_combout\ = \inst6|data[3]~36_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst6|data[3]~36_combout\,
	combout => \inst8|valor_interno[7]~feeder_combout\);

-- Location: FF_X29_Y15_N21
\inst8|valor_interno[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|inst2|ALT_INV_nCRI~clkctrl_outclk\,
	d => \inst8|valor_interno[7]~feeder_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|valor_interno\(7));

-- Location: LCCOMB_X30_Y19_N28
\inst7|inst5|$00000|auto_generated|result_node[7]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst5|$00000|auto_generated|result_node[7]~4_combout\ = (\inst7|inst3|SELECTOR~0_combout\ & ((\inst8|valor_interno\(7)) # ((\inst7|inst4|valor_interno\(7) & !\inst7|inst3|SELECTOR~1_combout\)))) # (!\inst7|inst3|SELECTOR~0_combout\ & 
-- (\inst7|inst4|valor_interno\(7) & ((!\inst7|inst3|SELECTOR~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst3|SELECTOR~0_combout\,
	datab => \inst7|inst4|valor_interno\(7),
	datac => \inst8|valor_interno\(7),
	datad => \inst7|inst3|SELECTOR~1_combout\,
	combout => \inst7|inst5|$00000|auto_generated|result_node[7]~4_combout\);

-- Location: LCCOMB_X27_Y19_N24
\inst7|inst4|valor_interno[8]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst4|valor_interno[8]~25_combout\ = (\inst7|inst5|$00000|auto_generated|result_node[8]~3_combout\ & (!\inst7|inst4|valor_interno[7]~24\)) # (!\inst7|inst5|$00000|auto_generated|result_node[8]~3_combout\ & ((\inst7|inst4|valor_interno[7]~24\) # 
-- (GND)))
-- \inst7|inst4|valor_interno[8]~26\ = CARRY((!\inst7|inst4|valor_interno[7]~24\) # (!\inst7|inst5|$00000|auto_generated|result_node[8]~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst5|$00000|auto_generated|result_node[8]~3_combout\,
	datad => VCC,
	cin => \inst7|inst4|valor_interno[7]~24\,
	combout => \inst7|inst4|valor_interno[8]~25_combout\,
	cout => \inst7|inst4|valor_interno[8]~26\);

-- Location: FF_X27_Y19_N25
\inst7|inst4|valor_interno[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst7|inst4|valor_interno[8]~25_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|inst4|valor_interno\(8));

-- Location: M9K_X33_Y2_N0
\inst6|mem_rtl_0|auto_generated|ram_block1a60\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "mem_content.mif",
	init_file_layout => "port_a",
	logical_ram_name => "ram:inst6|altsyncram:mem_rtl_0|altsyncram_18f1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 4,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 4,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 65536,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portbre => VCC,
	clk0 => \inst7|inst2|nCBD~clkctrl_outclk\,
	clk1 => \inst7|inst2|ALT_INV_nCBD~clkctrl_outclk\,
	ena0 => GND,
	ena1 => \inst6|mem_rtl_0|auto_generated|rden_decode_b|w_anode750w[3]~0_combout\,
	portadatain => \inst6|mem_rtl_0|auto_generated|ram_block1a60_PORTADATAIN_bus\,
	portaaddr => \inst6|mem_rtl_0|auto_generated|ram_block1a60_PORTAADDR_bus\,
	portbaddr => \inst6|mem_rtl_0|auto_generated|ram_block1a60_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \inst6|mem_rtl_0|auto_generated|ram_block1a60_PORTBDATAOUT_bus\);

-- Location: M9K_X22_Y9_N0
\inst6|mem_rtl_0|auto_generated|ram_block1a44\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "mem_content.mif",
	init_file_layout => "port_a",
	logical_ram_name => "ram:inst6|altsyncram:mem_rtl_0|altsyncram_18f1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 4,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 4,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 65536,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portbre => VCC,
	clk0 => \inst7|inst2|nCBD~clkctrl_outclk\,
	clk1 => \inst7|inst2|ALT_INV_nCBD~clkctrl_outclk\,
	ena0 => GND,
	ena1 => \inst6|mem_rtl_0|auto_generated|rden_decode_b|w_anode728w[3]~0_combout\,
	portadatain => \inst6|mem_rtl_0|auto_generated|ram_block1a44_PORTADATAIN_bus\,
	portaaddr => \inst6|mem_rtl_0|auto_generated|ram_block1a44_PORTAADDR_bus\,
	portbaddr => \inst6|mem_rtl_0|auto_generated|ram_block1a44_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \inst6|mem_rtl_0|auto_generated|ram_block1a44_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X29_Y15_N6
\inst6|data[4]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|data[4]~29_combout\ = (\inst6|data[0]~28_combout\ & ((\inst6|mem_rtl_0|auto_generated|address_reg_b\(1) & (\inst6|mem_rtl_0|auto_generated|ram_block1a60~portbdataout\)) # (!\inst6|mem_rtl_0|auto_generated|address_reg_b\(1) & 
-- ((\inst6|mem_rtl_0|auto_generated|ram_block1a44~portbdataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|data[0]~28_combout\,
	datab => \inst6|mem_rtl_0|auto_generated|address_reg_b\(1),
	datac => \inst6|mem_rtl_0|auto_generated|ram_block1a60~portbdataout\,
	datad => \inst6|mem_rtl_0|auto_generated|ram_block1a44~portbdataout\,
	combout => \inst6|data[4]~29_combout\);

-- Location: M9K_X33_Y6_N0
\inst6|mem_rtl_0|auto_generated|ram_block1a52\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "mem_content.mif",
	init_file_layout => "port_a",
	logical_ram_name => "ram:inst6|altsyncram:mem_rtl_0|altsyncram_18f1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 4,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 4,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 65536,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portbre => VCC,
	clk0 => \inst7|inst2|nCBD~clkctrl_outclk\,
	clk1 => \inst7|inst2|ALT_INV_nCBD~clkctrl_outclk\,
	ena0 => GND,
	ena1 => \inst6|mem_rtl_0|auto_generated|rden_decode_b|w_anode739w[3]~0_combout\,
	portadatain => \inst6|mem_rtl_0|auto_generated|ram_block1a52_PORTADATAIN_bus\,
	portaaddr => \inst6|mem_rtl_0|auto_generated|ram_block1a52_PORTAADDR_bus\,
	portbaddr => \inst6|mem_rtl_0|auto_generated|ram_block1a52_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \inst6|mem_rtl_0|auto_generated|ram_block1a52_PORTBDATAOUT_bus\);

-- Location: M9K_X33_Y1_N0
\inst6|mem_rtl_0|auto_generated|ram_block1a36\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "mem_content.mif",
	init_file_layout => "port_a",
	logical_ram_name => "ram:inst6|altsyncram:mem_rtl_0|altsyncram_18f1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 4,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 4,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 65536,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portbre => VCC,
	clk0 => \inst7|inst2|nCBD~clkctrl_outclk\,
	clk1 => \inst7|inst2|ALT_INV_nCBD~clkctrl_outclk\,
	ena0 => GND,
	ena1 => \inst6|mem_rtl_0|auto_generated|rden_decode_b|w_anode717w[3]~0_combout\,
	portadatain => \inst6|mem_rtl_0|auto_generated|ram_block1a36_PORTADATAIN_bus\,
	portaaddr => \inst6|mem_rtl_0|auto_generated|ram_block1a36_PORTAADDR_bus\,
	portbaddr => \inst6|mem_rtl_0|auto_generated|ram_block1a36_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \inst6|mem_rtl_0|auto_generated|ram_block1a36_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X29_Y15_N8
\inst6|data[4]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|data[4]~27_combout\ = (\inst6|data[0]~26_combout\ & ((\inst6|mem_rtl_0|auto_generated|address_reg_b\(1) & (\inst6|mem_rtl_0|auto_generated|ram_block1a52~portbdataout\)) # (!\inst6|mem_rtl_0|auto_generated|address_reg_b\(1) & 
-- ((\inst6|mem_rtl_0|auto_generated|ram_block1a36~portbdataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|mem_rtl_0|auto_generated|address_reg_b\(1),
	datab => \inst6|data[0]~26_combout\,
	datac => \inst6|mem_rtl_0|auto_generated|ram_block1a52~portbdataout\,
	datad => \inst6|mem_rtl_0|auto_generated|ram_block1a36~portbdataout\,
	combout => \inst6|data[4]~27_combout\);

-- Location: M9K_X22_Y12_N0
\inst6|mem_rtl_0|auto_generated|ram_block1a20\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "mem_content.mif",
	init_file_layout => "port_a",
	logical_ram_name => "ram:inst6|altsyncram:mem_rtl_0|altsyncram_18f1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 4,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 4,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 65536,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portbre => VCC,
	clk0 => \inst7|inst2|nCBD~clkctrl_outclk\,
	clk1 => \inst7|inst2|ALT_INV_nCBD~clkctrl_outclk\,
	ena0 => GND,
	ena1 => \inst6|mem_rtl_0|auto_generated|rden_decode_b|w_anode695w[3]~0_combout\,
	portadatain => \inst6|mem_rtl_0|auto_generated|ram_block1a20_PORTADATAIN_bus\,
	portaaddr => \inst6|mem_rtl_0|auto_generated|ram_block1a20_PORTAADDR_bus\,
	portbaddr => \inst6|mem_rtl_0|auto_generated|ram_block1a20_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \inst6|mem_rtl_0|auto_generated|ram_block1a20_PORTBDATAOUT_bus\);

-- Location: M9K_X22_Y7_N0
\inst6|mem_rtl_0|auto_generated|ram_block1a4\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000030",
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "mem_content.mif",
	init_file_layout => "port_a",
	logical_ram_name => "ram:inst6|altsyncram:mem_rtl_0|altsyncram_18f1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 4,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 4,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 65536,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portbre => VCC,
	clk0 => \inst7|inst2|nCBD~clkctrl_outclk\,
	clk1 => \inst7|inst2|ALT_INV_nCBD~clkctrl_outclk\,
	ena0 => GND,
	ena1 => \inst6|mem_rtl_0|auto_generated|rden_decode_b|w_anode666w\(3),
	portadatain => \inst6|mem_rtl_0|auto_generated|ram_block1a4_PORTADATAIN_bus\,
	portaaddr => \inst6|mem_rtl_0|auto_generated|ram_block1a4_PORTAADDR_bus\,
	portbaddr => \inst6|mem_rtl_0|auto_generated|ram_block1a4_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \inst6|mem_rtl_0|auto_generated|ram_block1a4_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X29_Y15_N4
\inst6|data[4]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|data[4]~24_combout\ = (\inst6|mem_rtl_0|auto_generated|address_reg_b\(1) & (\inst6|mem_rtl_0|auto_generated|ram_block1a20~portbdataout\)) # (!\inst6|mem_rtl_0|auto_generated|address_reg_b\(1) & 
-- ((\inst6|mem_rtl_0|auto_generated|ram_block1a4~portbdataout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|mem_rtl_0|auto_generated|address_reg_b\(1),
	datac => \inst6|mem_rtl_0|auto_generated|ram_block1a20~portbdataout\,
	datad => \inst6|mem_rtl_0|auto_generated|ram_block1a4~portbdataout\,
	combout => \inst6|data[4]~24_combout\);

-- Location: M9K_X22_Y4_N0
\inst6|mem_rtl_0|auto_generated|ram_block1a28\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "mem_content.mif",
	init_file_layout => "port_a",
	logical_ram_name => "ram:inst6|altsyncram:mem_rtl_0|altsyncram_18f1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 4,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 4,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 65536,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portbre => VCC,
	clk0 => \inst7|inst2|nCBD~clkctrl_outclk\,
	clk1 => \inst7|inst2|ALT_INV_nCBD~clkctrl_outclk\,
	ena0 => GND,
	ena1 => \inst6|mem_rtl_0|auto_generated|rden_decode_b|w_anode706w[3]~0_combout\,
	portadatain => \inst6|mem_rtl_0|auto_generated|ram_block1a28_PORTADATAIN_bus\,
	portaaddr => \inst6|mem_rtl_0|auto_generated|ram_block1a28_PORTAADDR_bus\,
	portbaddr => \inst6|mem_rtl_0|auto_generated|ram_block1a28_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \inst6|mem_rtl_0|auto_generated|ram_block1a28_PORTBDATAOUT_bus\);

-- Location: M9K_X33_Y8_N0
\inst6|mem_rtl_0|auto_generated|ram_block1a12\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "mem_content.mif",
	init_file_layout => "port_a",
	logical_ram_name => "ram:inst6|altsyncram:mem_rtl_0|altsyncram_18f1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 4,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 4,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 65536,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portbre => VCC,
	clk0 => \inst7|inst2|nCBD~clkctrl_outclk\,
	clk1 => \inst7|inst2|ALT_INV_nCBD~clkctrl_outclk\,
	ena0 => GND,
	ena1 => \inst6|mem_rtl_0|auto_generated|rden_decode_b|w_anode684w[3]~0_combout\,
	portadatain => \inst6|mem_rtl_0|auto_generated|ram_block1a12_PORTADATAIN_bus\,
	portaaddr => \inst6|mem_rtl_0|auto_generated|ram_block1a12_PORTAADDR_bus\,
	portbaddr => \inst6|mem_rtl_0|auto_generated|ram_block1a12_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \inst6|mem_rtl_0|auto_generated|ram_block1a12_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X29_Y15_N10
\inst6|data[4]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|data[4]~23_combout\ = (\inst6|mem_rtl_0|auto_generated|address_reg_b\(1) & (\inst6|mem_rtl_0|auto_generated|ram_block1a28~portbdataout\)) # (!\inst6|mem_rtl_0|auto_generated|address_reg_b\(1) & 
-- ((\inst6|mem_rtl_0|auto_generated|ram_block1a12~portbdataout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|mem_rtl_0|auto_generated|address_reg_b\(1),
	datac => \inst6|mem_rtl_0|auto_generated|ram_block1a28~portbdataout\,
	datad => \inst6|mem_rtl_0|auto_generated|ram_block1a12~portbdataout\,
	combout => \inst6|data[4]~23_combout\);

-- Location: LCCOMB_X29_Y15_N18
\inst6|data[4]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|data[4]~25_combout\ = (\inst6|data[0]~15_combout\ & ((\inst6|mem_rtl_0|auto_generated|address_reg_b\(0) & ((\inst6|data[4]~23_combout\))) # (!\inst6|mem_rtl_0|auto_generated|address_reg_b\(0) & (\inst6|data[4]~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|data[0]~15_combout\,
	datab => \inst6|mem_rtl_0|auto_generated|address_reg_b\(0),
	datac => \inst6|data[4]~24_combout\,
	datad => \inst6|data[4]~23_combout\,
	combout => \inst6|data[4]~25_combout\);

-- Location: LCCOMB_X29_Y15_N28
\inst6|data[4]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|data[4]~30_combout\ = (\inst6|data[4]~29_combout\) # ((\inst6|data[4]~27_combout\) # ((\inst6|data[4]~25_combout\) # (!\inst7|inst2|PC\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|data[4]~29_combout\,
	datab => \inst6|data[4]~27_combout\,
	datac => \inst7|inst2|PC\(0),
	datad => \inst6|data[4]~25_combout\,
	combout => \inst6|data[4]~30_combout\);

-- Location: LCCOMB_X29_Y15_N26
\inst8|valor_interno[8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|valor_interno[8]~feeder_combout\ = \inst6|data[4]~30_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst6|data[4]~30_combout\,
	combout => \inst8|valor_interno[8]~feeder_combout\);

-- Location: FF_X29_Y15_N27
\inst8|valor_interno[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|inst2|ALT_INV_nCRI~clkctrl_outclk\,
	d => \inst8|valor_interno[8]~feeder_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|valor_interno\(8));

-- Location: LCCOMB_X30_Y19_N24
\inst7|inst5|$00000|auto_generated|result_node[8]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst5|$00000|auto_generated|result_node[8]~3_combout\ = (\inst7|inst3|SELECTOR~0_combout\ & ((\inst8|valor_interno\(8)) # ((\inst7|inst4|valor_interno\(8) & !\inst7|inst3|SELECTOR~1_combout\)))) # (!\inst7|inst3|SELECTOR~0_combout\ & 
-- (\inst7|inst4|valor_interno\(8) & ((!\inst7|inst3|SELECTOR~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst3|SELECTOR~0_combout\,
	datab => \inst7|inst4|valor_interno\(8),
	datac => \inst8|valor_interno\(8),
	datad => \inst7|inst3|SELECTOR~1_combout\,
	combout => \inst7|inst5|$00000|auto_generated|result_node[8]~3_combout\);

-- Location: LCCOMB_X27_Y19_N26
\inst7|inst4|valor_interno[9]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst4|valor_interno[9]~27_combout\ = (\inst7|inst5|$00000|auto_generated|result_node[9]~2_combout\ & (\inst7|inst4|valor_interno[8]~26\ $ (GND))) # (!\inst7|inst5|$00000|auto_generated|result_node[9]~2_combout\ & (!\inst7|inst4|valor_interno[8]~26\ 
-- & VCC))
-- \inst7|inst4|valor_interno[9]~28\ = CARRY((\inst7|inst5|$00000|auto_generated|result_node[9]~2_combout\ & !\inst7|inst4|valor_interno[8]~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst5|$00000|auto_generated|result_node[9]~2_combout\,
	datad => VCC,
	cin => \inst7|inst4|valor_interno[8]~26\,
	combout => \inst7|inst4|valor_interno[9]~27_combout\,
	cout => \inst7|inst4|valor_interno[9]~28\);

-- Location: FF_X27_Y19_N27
\inst7|inst4|valor_interno[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst7|inst4|valor_interno[9]~27_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|inst4|valor_interno\(9));

-- Location: M9K_X22_Y13_N0
\inst6|mem_rtl_0|auto_generated|ram_block1a53\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "mem_content.mif",
	init_file_layout => "port_a",
	logical_ram_name => "ram:inst6|altsyncram:mem_rtl_0|altsyncram_18f1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 5,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 5,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 65536,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portbre => VCC,
	clk0 => \inst7|inst2|nCBD~clkctrl_outclk\,
	clk1 => \inst7|inst2|ALT_INV_nCBD~clkctrl_outclk\,
	ena0 => GND,
	ena1 => \inst6|mem_rtl_0|auto_generated|rden_decode_b|w_anode739w[3]~0_combout\,
	portadatain => \inst6|mem_rtl_0|auto_generated|ram_block1a53_PORTADATAIN_bus\,
	portaaddr => \inst6|mem_rtl_0|auto_generated|ram_block1a53_PORTAADDR_bus\,
	portbaddr => \inst6|mem_rtl_0|auto_generated|ram_block1a53_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \inst6|mem_rtl_0|auto_generated|ram_block1a53_PORTBDATAOUT_bus\);

-- Location: M9K_X22_Y11_N0
\inst6|mem_rtl_0|auto_generated|ram_block1a61\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "mem_content.mif",
	init_file_layout => "port_a",
	logical_ram_name => "ram:inst6|altsyncram:mem_rtl_0|altsyncram_18f1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 5,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 5,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 65536,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portbre => VCC,
	clk0 => \inst7|inst2|nCBD~clkctrl_outclk\,
	clk1 => \inst7|inst2|ALT_INV_nCBD~clkctrl_outclk\,
	ena0 => GND,
	ena1 => \inst6|mem_rtl_0|auto_generated|rden_decode_b|w_anode750w[3]~0_combout\,
	portadatain => \inst6|mem_rtl_0|auto_generated|ram_block1a61_PORTADATAIN_bus\,
	portaaddr => \inst6|mem_rtl_0|auto_generated|ram_block1a61_PORTAADDR_bus\,
	portbaddr => \inst6|mem_rtl_0|auto_generated|ram_block1a61_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \inst6|mem_rtl_0|auto_generated|ram_block1a61_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X30_Y15_N10
\inst6|data[5]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|data[5]~20_combout\ = (\inst6|mem_rtl_0|auto_generated|address_reg_b\(1) & ((\inst6|mem_rtl_0|auto_generated|address_reg_b\(0) & ((\inst6|mem_rtl_0|auto_generated|ram_block1a61~portbdataout\))) # (!\inst6|mem_rtl_0|auto_generated|address_reg_b\(0) 
-- & (\inst6|mem_rtl_0|auto_generated|ram_block1a53~portbdataout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|mem_rtl_0|auto_generated|address_reg_b\(0),
	datab => \inst6|mem_rtl_0|auto_generated|address_reg_b\(1),
	datac => \inst6|mem_rtl_0|auto_generated|ram_block1a53~portbdataout\,
	datad => \inst6|mem_rtl_0|auto_generated|ram_block1a61~portbdataout\,
	combout => \inst6|data[5]~20_combout\);

-- Location: LCCOMB_X30_Y15_N24
\inst6|data[0]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|data[0]~19_combout\ = (\inst6|mem_rtl_0|auto_generated|address_reg_b\(2) & \inst6|mem~25_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|mem_rtl_0|auto_generated|address_reg_b\(2),
	datac => \inst6|mem~25_q\,
	combout => \inst6|data[0]~19_combout\);

-- Location: M9K_X33_Y11_N0
\inst6|mem_rtl_0|auto_generated|ram_block1a45\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "mem_content.mif",
	init_file_layout => "port_a",
	logical_ram_name => "ram:inst6|altsyncram:mem_rtl_0|altsyncram_18f1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 5,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 5,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 65536,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portbre => VCC,
	clk0 => \inst7|inst2|nCBD~clkctrl_outclk\,
	clk1 => \inst7|inst2|ALT_INV_nCBD~clkctrl_outclk\,
	ena0 => GND,
	ena1 => \inst6|mem_rtl_0|auto_generated|rden_decode_b|w_anode728w[3]~0_combout\,
	portadatain => \inst6|mem_rtl_0|auto_generated|ram_block1a45_PORTADATAIN_bus\,
	portaaddr => \inst6|mem_rtl_0|auto_generated|ram_block1a45_PORTAADDR_bus\,
	portbaddr => \inst6|mem_rtl_0|auto_generated|ram_block1a45_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \inst6|mem_rtl_0|auto_generated|ram_block1a45_PORTBDATAOUT_bus\);

-- Location: M9K_X33_Y10_N0
\inst6|mem_rtl_0|auto_generated|ram_block1a37\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "mem_content.mif",
	init_file_layout => "port_a",
	logical_ram_name => "ram:inst6|altsyncram:mem_rtl_0|altsyncram_18f1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 5,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 5,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 65536,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portbre => VCC,
	clk0 => \inst7|inst2|nCBD~clkctrl_outclk\,
	clk1 => \inst7|inst2|ALT_INV_nCBD~clkctrl_outclk\,
	ena0 => GND,
	ena1 => \inst6|mem_rtl_0|auto_generated|rden_decode_b|w_anode717w[3]~0_combout\,
	portadatain => \inst6|mem_rtl_0|auto_generated|ram_block1a37_PORTADATAIN_bus\,
	portaaddr => \inst6|mem_rtl_0|auto_generated|ram_block1a37_PORTAADDR_bus\,
	portbaddr => \inst6|mem_rtl_0|auto_generated|ram_block1a37_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \inst6|mem_rtl_0|auto_generated|ram_block1a37_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X30_Y15_N4
\inst6|data[5]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|data[5]~21_combout\ = (!\inst6|mem_rtl_0|auto_generated|address_reg_b\(1) & ((\inst6|mem_rtl_0|auto_generated|address_reg_b\(0) & (\inst6|mem_rtl_0|auto_generated|ram_block1a45~portbdataout\)) # (!\inst6|mem_rtl_0|auto_generated|address_reg_b\(0) & 
-- ((\inst6|mem_rtl_0|auto_generated|ram_block1a37~portbdataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|mem_rtl_0|auto_generated|address_reg_b\(0),
	datab => \inst6|mem_rtl_0|auto_generated|ram_block1a45~portbdataout\,
	datac => \inst6|mem_rtl_0|auto_generated|address_reg_b\(1),
	datad => \inst6|mem_rtl_0|auto_generated|ram_block1a37~portbdataout\,
	combout => \inst6|data[5]~21_combout\);

-- Location: M9K_X33_Y15_N0
\inst6|mem_rtl_0|auto_generated|ram_block1a29\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "mem_content.mif",
	init_file_layout => "port_a",
	logical_ram_name => "ram:inst6|altsyncram:mem_rtl_0|altsyncram_18f1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 5,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 5,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 65536,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portbre => VCC,
	clk0 => \inst7|inst2|nCBD~clkctrl_outclk\,
	clk1 => \inst7|inst2|ALT_INV_nCBD~clkctrl_outclk\,
	ena0 => GND,
	ena1 => \inst6|mem_rtl_0|auto_generated|rden_decode_b|w_anode706w[3]~0_combout\,
	portadatain => \inst6|mem_rtl_0|auto_generated|ram_block1a29_PORTADATAIN_bus\,
	portaaddr => \inst6|mem_rtl_0|auto_generated|ram_block1a29_PORTAADDR_bus\,
	portbaddr => \inst6|mem_rtl_0|auto_generated|ram_block1a29_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \inst6|mem_rtl_0|auto_generated|ram_block1a29_PORTBDATAOUT_bus\);

-- Location: M9K_X22_Y14_N0
\inst6|mem_rtl_0|auto_generated|ram_block1a21\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "mem_content.mif",
	init_file_layout => "port_a",
	logical_ram_name => "ram:inst6|altsyncram:mem_rtl_0|altsyncram_18f1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 5,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 5,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 65536,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portbre => VCC,
	clk0 => \inst7|inst2|nCBD~clkctrl_outclk\,
	clk1 => \inst7|inst2|ALT_INV_nCBD~clkctrl_outclk\,
	ena0 => GND,
	ena1 => \inst6|mem_rtl_0|auto_generated|rden_decode_b|w_anode695w[3]~0_combout\,
	portadatain => \inst6|mem_rtl_0|auto_generated|ram_block1a21_PORTADATAIN_bus\,
	portaaddr => \inst6|mem_rtl_0|auto_generated|ram_block1a21_PORTAADDR_bus\,
	portbaddr => \inst6|mem_rtl_0|auto_generated|ram_block1a21_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \inst6|mem_rtl_0|auto_generated|ram_block1a21_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X30_Y15_N30
\inst6|data[5]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|data[5]~16_combout\ = (\inst6|mem_rtl_0|auto_generated|address_reg_b\(1) & ((\inst6|mem_rtl_0|auto_generated|address_reg_b\(0) & (\inst6|mem_rtl_0|auto_generated|ram_block1a29~portbdataout\)) # (!\inst6|mem_rtl_0|auto_generated|address_reg_b\(0) & 
-- ((\inst6|mem_rtl_0|auto_generated|ram_block1a21~portbdataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|mem_rtl_0|auto_generated|address_reg_b\(0),
	datab => \inst6|mem_rtl_0|auto_generated|address_reg_b\(1),
	datac => \inst6|mem_rtl_0|auto_generated|ram_block1a29~portbdataout\,
	datad => \inst6|mem_rtl_0|auto_generated|ram_block1a21~portbdataout\,
	combout => \inst6|data[5]~16_combout\);

-- Location: M9K_X33_Y17_N0
\inst6|mem_rtl_0|auto_generated|ram_block1a5\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000020",
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "mem_content.mif",
	init_file_layout => "port_a",
	logical_ram_name => "ram:inst6|altsyncram:mem_rtl_0|altsyncram_18f1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 5,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 5,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 65536,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portbre => VCC,
	clk0 => \inst7|inst2|nCBD~clkctrl_outclk\,
	clk1 => \inst7|inst2|ALT_INV_nCBD~clkctrl_outclk\,
	ena0 => GND,
	ena1 => \inst6|mem_rtl_0|auto_generated|rden_decode_b|w_anode666w\(3),
	portadatain => \inst6|mem_rtl_0|auto_generated|ram_block1a5_PORTADATAIN_bus\,
	portaaddr => \inst6|mem_rtl_0|auto_generated|ram_block1a5_PORTAADDR_bus\,
	portbaddr => \inst6|mem_rtl_0|auto_generated|ram_block1a5_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \inst6|mem_rtl_0|auto_generated|ram_block1a5_PORTBDATAOUT_bus\);

-- Location: M9K_X33_Y9_N0
\inst6|mem_rtl_0|auto_generated|ram_block1a13\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "mem_content.mif",
	init_file_layout => "port_a",
	logical_ram_name => "ram:inst6|altsyncram:mem_rtl_0|altsyncram_18f1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 5,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 5,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 65536,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portbre => VCC,
	clk0 => \inst7|inst2|nCBD~clkctrl_outclk\,
	clk1 => \inst7|inst2|ALT_INV_nCBD~clkctrl_outclk\,
	ena0 => GND,
	ena1 => \inst6|mem_rtl_0|auto_generated|rden_decode_b|w_anode684w[3]~0_combout\,
	portadatain => \inst6|mem_rtl_0|auto_generated|ram_block1a13_PORTADATAIN_bus\,
	portaaddr => \inst6|mem_rtl_0|auto_generated|ram_block1a13_PORTAADDR_bus\,
	portbaddr => \inst6|mem_rtl_0|auto_generated|ram_block1a13_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \inst6|mem_rtl_0|auto_generated|ram_block1a13_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X30_Y15_N28
\inst6|data[5]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|data[5]~17_combout\ = (!\inst6|mem_rtl_0|auto_generated|address_reg_b\(1) & ((\inst6|mem_rtl_0|auto_generated|address_reg_b\(0) & ((\inst6|mem_rtl_0|auto_generated|ram_block1a13~portbdataout\))) # (!\inst6|mem_rtl_0|auto_generated|address_reg_b\(0) 
-- & (\inst6|mem_rtl_0|auto_generated|ram_block1a5~portbdataout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|mem_rtl_0|auto_generated|address_reg_b\(0),
	datab => \inst6|mem_rtl_0|auto_generated|ram_block1a5~portbdataout\,
	datac => \inst6|mem_rtl_0|auto_generated|address_reg_b\(1),
	datad => \inst6|mem_rtl_0|auto_generated|ram_block1a13~portbdataout\,
	combout => \inst6|data[5]~17_combout\);

-- Location: LCCOMB_X30_Y15_N2
\inst6|data[5]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|data[5]~18_combout\ = ((\inst6|data[0]~15_combout\ & ((\inst6|data[5]~16_combout\) # (\inst6|data[5]~17_combout\)))) # (!\inst7|inst2|PC\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|data[5]~16_combout\,
	datab => \inst6|data[0]~15_combout\,
	datac => \inst7|inst2|PC\(0),
	datad => \inst6|data[5]~17_combout\,
	combout => \inst6|data[5]~18_combout\);

-- Location: LCCOMB_X30_Y15_N26
\inst6|data[5]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|data[5]~22_combout\ = (\inst6|data[5]~18_combout\) # ((\inst6|data[0]~19_combout\ & ((\inst6|data[5]~20_combout\) # (\inst6|data[5]~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|data[5]~20_combout\,
	datab => \inst6|data[0]~19_combout\,
	datac => \inst6|data[5]~21_combout\,
	datad => \inst6|data[5]~18_combout\,
	combout => \inst6|data[5]~22_combout\);

-- Location: LCCOMB_X30_Y15_N8
\inst8|valor_interno[9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|valor_interno[9]~feeder_combout\ = \inst6|data[5]~22_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst6|data[5]~22_combout\,
	combout => \inst8|valor_interno[9]~feeder_combout\);

-- Location: FF_X30_Y15_N9
\inst8|valor_interno[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|inst2|ALT_INV_nCRI~clkctrl_outclk\,
	d => \inst8|valor_interno[9]~feeder_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|valor_interno\(9));

-- Location: LCCOMB_X30_Y19_N22
\inst7|inst5|$00000|auto_generated|result_node[9]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst5|$00000|auto_generated|result_node[9]~2_combout\ = (\inst7|inst3|SELECTOR~0_combout\ & ((\inst8|valor_interno\(9)) # ((\inst7|inst4|valor_interno\(9) & !\inst7|inst3|SELECTOR~1_combout\)))) # (!\inst7|inst3|SELECTOR~0_combout\ & 
-- (\inst7|inst4|valor_interno\(9) & ((!\inst7|inst3|SELECTOR~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst3|SELECTOR~0_combout\,
	datab => \inst7|inst4|valor_interno\(9),
	datac => \inst8|valor_interno\(9),
	datad => \inst7|inst3|SELECTOR~1_combout\,
	combout => \inst7|inst5|$00000|auto_generated|result_node[9]~2_combout\);

-- Location: LCCOMB_X27_Y19_N28
\inst7|inst4|valor_interno[10]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst4|valor_interno[10]~29_combout\ = (\inst7|inst5|$00000|auto_generated|result_node[10]~1_combout\ & (!\inst7|inst4|valor_interno[9]~28\)) # (!\inst7|inst5|$00000|auto_generated|result_node[10]~1_combout\ & ((\inst7|inst4|valor_interno[9]~28\) # 
-- (GND)))
-- \inst7|inst4|valor_interno[10]~30\ = CARRY((!\inst7|inst4|valor_interno[9]~28\) # (!\inst7|inst5|$00000|auto_generated|result_node[10]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|inst5|$00000|auto_generated|result_node[10]~1_combout\,
	datad => VCC,
	cin => \inst7|inst4|valor_interno[9]~28\,
	combout => \inst7|inst4|valor_interno[10]~29_combout\,
	cout => \inst7|inst4|valor_interno[10]~30\);

-- Location: FF_X27_Y19_N29
\inst7|inst4|valor_interno[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst7|inst4|valor_interno[10]~29_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|inst4|valor_interno\(10));

-- Location: M9K_X33_Y21_N0
\inst6|mem_rtl_0|auto_generated|ram_block1a38\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "mem_content.mif",
	init_file_layout => "port_a",
	logical_ram_name => "ram:inst6|altsyncram:mem_rtl_0|altsyncram_18f1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 6,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 6,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 65536,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portbre => VCC,
	clk0 => \inst7|inst2|nCBD~clkctrl_outclk\,
	clk1 => \inst7|inst2|ALT_INV_nCBD~clkctrl_outclk\,
	ena0 => GND,
	ena1 => \inst6|mem_rtl_0|auto_generated|rden_decode_b|w_anode717w[3]~0_combout\,
	portadatain => \inst6|mem_rtl_0|auto_generated|ram_block1a38_PORTADATAIN_bus\,
	portaaddr => \inst6|mem_rtl_0|auto_generated|ram_block1a38_PORTAADDR_bus\,
	portbaddr => \inst6|mem_rtl_0|auto_generated|ram_block1a38_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \inst6|mem_rtl_0|auto_generated|ram_block1a38_PORTBDATAOUT_bus\);

-- Location: M9K_X22_Y21_N0
\inst6|mem_rtl_0|auto_generated|ram_block1a54\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "mem_content.mif",
	init_file_layout => "port_a",
	logical_ram_name => "ram:inst6|altsyncram:mem_rtl_0|altsyncram_18f1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 6,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 6,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 65536,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portbre => VCC,
	clk0 => \inst7|inst2|nCBD~clkctrl_outclk\,
	clk1 => \inst7|inst2|ALT_INV_nCBD~clkctrl_outclk\,
	ena0 => GND,
	ena1 => \inst6|mem_rtl_0|auto_generated|rden_decode_b|w_anode739w[3]~0_combout\,
	portadatain => \inst6|mem_rtl_0|auto_generated|ram_block1a54_PORTADATAIN_bus\,
	portaaddr => \inst6|mem_rtl_0|auto_generated|ram_block1a54_PORTAADDR_bus\,
	portbaddr => \inst6|mem_rtl_0|auto_generated|ram_block1a54_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \inst6|mem_rtl_0|auto_generated|ram_block1a54_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X30_Y21_N20
\inst6|data[6]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|data[6]~12_combout\ = (\inst6|data[1]~3_combout\ & ((\inst6|mem_rtl_0|auto_generated|address_reg_b\(1) & ((\inst6|mem_rtl_0|auto_generated|ram_block1a54~portbdataout\))) # (!\inst6|mem_rtl_0|auto_generated|address_reg_b\(1) & 
-- (\inst6|mem_rtl_0|auto_generated|ram_block1a38~portbdataout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|data[1]~3_combout\,
	datab => \inst6|mem_rtl_0|auto_generated|address_reg_b\(1),
	datac => \inst6|mem_rtl_0|auto_generated|ram_block1a38~portbdataout\,
	datad => \inst6|mem_rtl_0|auto_generated|ram_block1a54~portbdataout\,
	combout => \inst6|data[6]~12_combout\);

-- Location: M9K_X33_Y20_N0
\inst6|mem_rtl_0|auto_generated|ram_block1a6\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000021",
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "mem_content.mif",
	init_file_layout => "port_a",
	logical_ram_name => "ram:inst6|altsyncram:mem_rtl_0|altsyncram_18f1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 6,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 6,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 65536,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portbre => VCC,
	clk0 => \inst7|inst2|nCBD~clkctrl_outclk\,
	clk1 => \inst7|inst2|ALT_INV_nCBD~clkctrl_outclk\,
	ena0 => GND,
	ena1 => \inst6|mem_rtl_0|auto_generated|rden_decode_b|w_anode666w\(3),
	portadatain => \inst6|mem_rtl_0|auto_generated|ram_block1a6_PORTADATAIN_bus\,
	portaaddr => \inst6|mem_rtl_0|auto_generated|ram_block1a6_PORTAADDR_bus\,
	portbaddr => \inst6|mem_rtl_0|auto_generated|ram_block1a6_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \inst6|mem_rtl_0|auto_generated|ram_block1a6_PORTBDATAOUT_bus\);

-- Location: M9K_X22_Y18_N0
\inst6|mem_rtl_0|auto_generated|ram_block1a22\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "mem_content.mif",
	init_file_layout => "port_a",
	logical_ram_name => "ram:inst6|altsyncram:mem_rtl_0|altsyncram_18f1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 6,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 6,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 65536,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portbre => VCC,
	clk0 => \inst7|inst2|nCBD~clkctrl_outclk\,
	clk1 => \inst7|inst2|ALT_INV_nCBD~clkctrl_outclk\,
	ena0 => GND,
	ena1 => \inst6|mem_rtl_0|auto_generated|rden_decode_b|w_anode695w[3]~0_combout\,
	portadatain => \inst6|mem_rtl_0|auto_generated|ram_block1a22_PORTADATAIN_bus\,
	portaaddr => \inst6|mem_rtl_0|auto_generated|ram_block1a22_PORTAADDR_bus\,
	portbaddr => \inst6|mem_rtl_0|auto_generated|ram_block1a22_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \inst6|mem_rtl_0|auto_generated|ram_block1a22_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X29_Y20_N22
\inst6|data[6]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|data[6]~10_combout\ = (\inst6|mem_rtl_0|auto_generated|address_reg_b\(1) & ((\inst6|mem_rtl_0|auto_generated|ram_block1a22~portbdataout\))) # (!\inst6|mem_rtl_0|auto_generated|address_reg_b\(1) & 
-- (\inst6|mem_rtl_0|auto_generated|ram_block1a6~portbdataout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|mem_rtl_0|auto_generated|address_reg_b\(1),
	datac => \inst6|mem_rtl_0|auto_generated|ram_block1a6~portbdataout\,
	datad => \inst6|mem_rtl_0|auto_generated|ram_block1a22~portbdataout\,
	combout => \inst6|data[6]~10_combout\);

-- Location: M9K_X33_Y22_N0
\inst6|mem_rtl_0|auto_generated|ram_block1a14\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "mem_content.mif",
	init_file_layout => "port_a",
	logical_ram_name => "ram:inst6|altsyncram:mem_rtl_0|altsyncram_18f1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 6,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 6,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 65536,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portbre => VCC,
	clk0 => \inst7|inst2|nCBD~clkctrl_outclk\,
	clk1 => \inst7|inst2|ALT_INV_nCBD~clkctrl_outclk\,
	ena0 => GND,
	ena1 => \inst6|mem_rtl_0|auto_generated|rden_decode_b|w_anode684w[3]~0_combout\,
	portadatain => \inst6|mem_rtl_0|auto_generated|ram_block1a14_PORTADATAIN_bus\,
	portaaddr => \inst6|mem_rtl_0|auto_generated|ram_block1a14_PORTAADDR_bus\,
	portbaddr => \inst6|mem_rtl_0|auto_generated|ram_block1a14_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \inst6|mem_rtl_0|auto_generated|ram_block1a14_PORTBDATAOUT_bus\);

-- Location: M9K_X22_Y23_N0
\inst6|mem_rtl_0|auto_generated|ram_block1a30\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "mem_content.mif",
	init_file_layout => "port_a",
	logical_ram_name => "ram:inst6|altsyncram:mem_rtl_0|altsyncram_18f1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 6,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 6,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 65536,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portbre => VCC,
	clk0 => \inst7|inst2|nCBD~clkctrl_outclk\,
	clk1 => \inst7|inst2|ALT_INV_nCBD~clkctrl_outclk\,
	ena0 => GND,
	ena1 => \inst6|mem_rtl_0|auto_generated|rden_decode_b|w_anode706w[3]~0_combout\,
	portadatain => \inst6|mem_rtl_0|auto_generated|ram_block1a30_PORTADATAIN_bus\,
	portaaddr => \inst6|mem_rtl_0|auto_generated|ram_block1a30_PORTAADDR_bus\,
	portbaddr => \inst6|mem_rtl_0|auto_generated|ram_block1a30_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \inst6|mem_rtl_0|auto_generated|ram_block1a30_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X29_Y20_N28
\inst6|data[6]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|data[6]~9_combout\ = (\inst6|mem_rtl_0|auto_generated|address_reg_b\(1) & ((\inst6|mem_rtl_0|auto_generated|ram_block1a30~portbdataout\))) # (!\inst6|mem_rtl_0|auto_generated|address_reg_b\(1) & 
-- (\inst6|mem_rtl_0|auto_generated|ram_block1a14~portbdataout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|mem_rtl_0|auto_generated|address_reg_b\(1),
	datac => \inst6|mem_rtl_0|auto_generated|ram_block1a14~portbdataout\,
	datad => \inst6|mem_rtl_0|auto_generated|ram_block1a30~portbdataout\,
	combout => \inst6|data[6]~9_combout\);

-- Location: LCCOMB_X29_Y20_N20
\inst6|data[6]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|data[6]~11_combout\ = (!\inst6|mem_rtl_0|auto_generated|address_reg_b\(2) & ((\inst6|mem_rtl_0|auto_generated|address_reg_b\(0) & ((\inst6|data[6]~9_combout\))) # (!\inst6|mem_rtl_0|auto_generated|address_reg_b\(0) & (\inst6|data[6]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|mem_rtl_0|auto_generated|address_reg_b\(0),
	datab => \inst6|mem_rtl_0|auto_generated|address_reg_b\(2),
	datac => \inst6|data[6]~10_combout\,
	datad => \inst6|data[6]~9_combout\,
	combout => \inst6|data[6]~11_combout\);

-- Location: M9K_X33_Y19_N0
\inst6|mem_rtl_0|auto_generated|ram_block1a46\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "mem_content.mif",
	init_file_layout => "port_a",
	logical_ram_name => "ram:inst6|altsyncram:mem_rtl_0|altsyncram_18f1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 6,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 6,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 65536,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portbre => VCC,
	clk0 => \inst7|inst2|nCBD~clkctrl_outclk\,
	clk1 => \inst7|inst2|ALT_INV_nCBD~clkctrl_outclk\,
	ena0 => GND,
	ena1 => \inst6|mem_rtl_0|auto_generated|rden_decode_b|w_anode728w[3]~0_combout\,
	portadatain => \inst6|mem_rtl_0|auto_generated|ram_block1a46_PORTADATAIN_bus\,
	portaaddr => \inst6|mem_rtl_0|auto_generated|ram_block1a46_PORTAADDR_bus\,
	portbaddr => \inst6|mem_rtl_0|auto_generated|ram_block1a46_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \inst6|mem_rtl_0|auto_generated|ram_block1a46_PORTBDATAOUT_bus\);

-- Location: M9K_X33_Y23_N0
\inst6|mem_rtl_0|auto_generated|ram_block1a62\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "mem_content.mif",
	init_file_layout => "port_a",
	logical_ram_name => "ram:inst6|altsyncram:mem_rtl_0|altsyncram_18f1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 6,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 6,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 65536,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portbre => VCC,
	clk0 => \inst7|inst2|nCBD~clkctrl_outclk\,
	clk1 => \inst7|inst2|ALT_INV_nCBD~clkctrl_outclk\,
	ena0 => GND,
	ena1 => \inst6|mem_rtl_0|auto_generated|rden_decode_b|w_anode750w[3]~0_combout\,
	portadatain => \inst6|mem_rtl_0|auto_generated|ram_block1a62_PORTADATAIN_bus\,
	portaaddr => \inst6|mem_rtl_0|auto_generated|ram_block1a62_PORTAADDR_bus\,
	portbaddr => \inst6|mem_rtl_0|auto_generated|ram_block1a62_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \inst6|mem_rtl_0|auto_generated|ram_block1a62_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X32_Y19_N0
\inst6|data[6]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|data[6]~13_combout\ = (\inst6|data[1]~5_combout\ & ((\inst6|mem_rtl_0|auto_generated|address_reg_b\(1) & ((\inst6|mem_rtl_0|auto_generated|ram_block1a62~portbdataout\))) # (!\inst6|mem_rtl_0|auto_generated|address_reg_b\(1) & 
-- (\inst6|mem_rtl_0|auto_generated|ram_block1a46~portbdataout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|data[1]~5_combout\,
	datab => \inst6|mem_rtl_0|auto_generated|address_reg_b\(1),
	datac => \inst6|mem_rtl_0|auto_generated|ram_block1a46~portbdataout\,
	datad => \inst6|mem_rtl_0|auto_generated|ram_block1a62~portbdataout\,
	combout => \inst6|data[6]~13_combout\);

-- Location: LCCOMB_X30_Y19_N12
\inst6|data[6]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|data[6]~14_combout\ = (\inst6|data[6]~12_combout\) # (((\inst6|data[6]~11_combout\) # (\inst6|data[6]~13_combout\)) # (!\inst6|data[7]~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|data[6]~12_combout\,
	datab => \inst6|data[7]~7_combout\,
	datac => \inst6|data[6]~11_combout\,
	datad => \inst6|data[6]~13_combout\,
	combout => \inst6|data[6]~14_combout\);

-- Location: LCCOMB_X30_Y19_N8
\inst8|valor_interno[10]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|valor_interno[10]~feeder_combout\ = \inst6|data[6]~14_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst6|data[6]~14_combout\,
	combout => \inst8|valor_interno[10]~feeder_combout\);

-- Location: FF_X30_Y19_N9
\inst8|valor_interno[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|inst2|ALT_INV_nCRI~clkctrl_outclk\,
	d => \inst8|valor_interno[10]~feeder_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|valor_interno\(10));

-- Location: LCCOMB_X28_Y19_N14
\inst7|inst5|$00000|auto_generated|result_node[10]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst5|$00000|auto_generated|result_node[10]~1_combout\ = (\inst7|inst4|valor_interno\(10) & (((\inst7|inst3|SELECTOR~0_combout\ & \inst8|valor_interno\(10))) # (!\inst7|inst3|SELECTOR~1_combout\))) # (!\inst7|inst4|valor_interno\(10) & 
-- (\inst7|inst3|SELECTOR~0_combout\ & (\inst8|valor_interno\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst4|valor_interno\(10),
	datab => \inst7|inst3|SELECTOR~0_combout\,
	datac => \inst8|valor_interno\(10),
	datad => \inst7|inst3|SELECTOR~1_combout\,
	combout => \inst7|inst5|$00000|auto_generated|result_node[10]~1_combout\);

-- Location: LCCOMB_X27_Y19_N30
\inst7|inst4|valor_interno[11]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst4|valor_interno[11]~31_combout\ = \inst7|inst5|$00000|auto_generated|result_node[11]~0_combout\ $ (!\inst7|inst4|valor_interno[10]~30\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst5|$00000|auto_generated|result_node[11]~0_combout\,
	cin => \inst7|inst4|valor_interno[10]~30\,
	combout => \inst7|inst4|valor_interno[11]~31_combout\);

-- Location: FF_X27_Y19_N31
\inst7|inst4|valor_interno[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst7|inst4|valor_interno[11]~31_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|inst4|valor_interno\(11));

-- Location: M9K_X33_Y24_N0
\inst6|mem_rtl_0|auto_generated|ram_block1a55\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "mem_content.mif",
	init_file_layout => "port_a",
	logical_ram_name => "ram:inst6|altsyncram:mem_rtl_0|altsyncram_18f1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 7,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 7,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 65536,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portbre => VCC,
	clk0 => \inst7|inst2|nCBD~clkctrl_outclk\,
	clk1 => \inst7|inst2|ALT_INV_nCBD~clkctrl_outclk\,
	ena0 => GND,
	ena1 => \inst6|mem_rtl_0|auto_generated|rden_decode_b|w_anode739w[3]~0_combout\,
	portadatain => \inst6|mem_rtl_0|auto_generated|ram_block1a55_PORTADATAIN_bus\,
	portaaddr => \inst6|mem_rtl_0|auto_generated|ram_block1a55_PORTAADDR_bus\,
	portbaddr => \inst6|mem_rtl_0|auto_generated|ram_block1a55_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \inst6|mem_rtl_0|auto_generated|ram_block1a55_PORTBDATAOUT_bus\);

-- Location: M9K_X33_Y31_N0
\inst6|mem_rtl_0|auto_generated|ram_block1a39\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "mem_content.mif",
	init_file_layout => "port_a",
	logical_ram_name => "ram:inst6|altsyncram:mem_rtl_0|altsyncram_18f1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 7,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 7,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 65536,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portbre => VCC,
	clk0 => \inst7|inst2|nCBD~clkctrl_outclk\,
	clk1 => \inst7|inst2|ALT_INV_nCBD~clkctrl_outclk\,
	ena0 => GND,
	ena1 => \inst6|mem_rtl_0|auto_generated|rden_decode_b|w_anode717w[3]~0_combout\,
	portadatain => \inst6|mem_rtl_0|auto_generated|ram_block1a39_PORTADATAIN_bus\,
	portaaddr => \inst6|mem_rtl_0|auto_generated|ram_block1a39_PORTAADDR_bus\,
	portbaddr => \inst6|mem_rtl_0|auto_generated|ram_block1a39_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \inst6|mem_rtl_0|auto_generated|ram_block1a39_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X29_Y20_N26
\inst6|data[7]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|data[7]~4_combout\ = (\inst6|data[1]~3_combout\ & ((\inst6|mem_rtl_0|auto_generated|address_reg_b\(1) & (\inst6|mem_rtl_0|auto_generated|ram_block1a55~portbdataout\)) # (!\inst6|mem_rtl_0|auto_generated|address_reg_b\(1) & 
-- ((\inst6|mem_rtl_0|auto_generated|ram_block1a39~portbdataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|mem_rtl_0|auto_generated|address_reg_b\(1),
	datab => \inst6|data[1]~3_combout\,
	datac => \inst6|mem_rtl_0|auto_generated|ram_block1a55~portbdataout\,
	datad => \inst6|mem_rtl_0|auto_generated|ram_block1a39~portbdataout\,
	combout => \inst6|data[7]~4_combout\);

-- Location: M9K_X22_Y24_N0
\inst6|mem_rtl_0|auto_generated|ram_block1a47\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "mem_content.mif",
	init_file_layout => "port_a",
	logical_ram_name => "ram:inst6|altsyncram:mem_rtl_0|altsyncram_18f1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 7,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 7,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 65536,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portbre => VCC,
	clk0 => \inst7|inst2|nCBD~clkctrl_outclk\,
	clk1 => \inst7|inst2|ALT_INV_nCBD~clkctrl_outclk\,
	ena0 => GND,
	ena1 => \inst6|mem_rtl_0|auto_generated|rden_decode_b|w_anode728w[3]~0_combout\,
	portadatain => \inst6|mem_rtl_0|auto_generated|ram_block1a47_PORTADATAIN_bus\,
	portaaddr => \inst6|mem_rtl_0|auto_generated|ram_block1a47_PORTAADDR_bus\,
	portbaddr => \inst6|mem_rtl_0|auto_generated|ram_block1a47_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \inst6|mem_rtl_0|auto_generated|ram_block1a47_PORTBDATAOUT_bus\);

-- Location: M9K_X22_Y17_N0
\inst6|mem_rtl_0|auto_generated|ram_block1a63\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "mem_content.mif",
	init_file_layout => "port_a",
	logical_ram_name => "ram:inst6|altsyncram:mem_rtl_0|altsyncram_18f1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 7,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 7,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 65536,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portbre => VCC,
	clk0 => \inst7|inst2|nCBD~clkctrl_outclk\,
	clk1 => \inst7|inst2|ALT_INV_nCBD~clkctrl_outclk\,
	ena0 => GND,
	ena1 => \inst6|mem_rtl_0|auto_generated|rden_decode_b|w_anode750w[3]~0_combout\,
	portadatain => \inst6|mem_rtl_0|auto_generated|ram_block1a63_PORTADATAIN_bus\,
	portaaddr => \inst6|mem_rtl_0|auto_generated|ram_block1a63_PORTAADDR_bus\,
	portbaddr => \inst6|mem_rtl_0|auto_generated|ram_block1a63_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \inst6|mem_rtl_0|auto_generated|ram_block1a63_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X29_Y20_N24
\inst6|data[7]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|data[7]~6_combout\ = (\inst6|data[1]~5_combout\ & ((\inst6|mem_rtl_0|auto_generated|address_reg_b\(1) & ((\inst6|mem_rtl_0|auto_generated|ram_block1a63~portbdataout\))) # (!\inst6|mem_rtl_0|auto_generated|address_reg_b\(1) & 
-- (\inst6|mem_rtl_0|auto_generated|ram_block1a47~portbdataout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|mem_rtl_0|auto_generated|address_reg_b\(1),
	datab => \inst6|data[1]~5_combout\,
	datac => \inst6|mem_rtl_0|auto_generated|ram_block1a47~portbdataout\,
	datad => \inst6|mem_rtl_0|auto_generated|ram_block1a63~portbdataout\,
	combout => \inst6|data[7]~6_combout\);

-- Location: M9K_X22_Y26_N0
\inst6|mem_rtl_0|auto_generated|ram_block1a15\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "mem_content.mif",
	init_file_layout => "port_a",
	logical_ram_name => "ram:inst6|altsyncram:mem_rtl_0|altsyncram_18f1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 7,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 7,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 65536,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portbre => VCC,
	clk0 => \inst7|inst2|nCBD~clkctrl_outclk\,
	clk1 => \inst7|inst2|ALT_INV_nCBD~clkctrl_outclk\,
	ena0 => GND,
	ena1 => \inst6|mem_rtl_0|auto_generated|rden_decode_b|w_anode684w[3]~0_combout\,
	portadatain => \inst6|mem_rtl_0|auto_generated|ram_block1a15_PORTADATAIN_bus\,
	portaaddr => \inst6|mem_rtl_0|auto_generated|ram_block1a15_PORTAADDR_bus\,
	portbaddr => \inst6|mem_rtl_0|auto_generated|ram_block1a15_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \inst6|mem_rtl_0|auto_generated|ram_block1a15_PORTBDATAOUT_bus\);

-- Location: M9K_X22_Y28_N0
\inst6|mem_rtl_0|auto_generated|ram_block1a31\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "mem_content.mif",
	init_file_layout => "port_a",
	logical_ram_name => "ram:inst6|altsyncram:mem_rtl_0|altsyncram_18f1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 7,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 7,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 65536,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portbre => VCC,
	clk0 => \inst7|inst2|nCBD~clkctrl_outclk\,
	clk1 => \inst7|inst2|ALT_INV_nCBD~clkctrl_outclk\,
	ena0 => GND,
	ena1 => \inst6|mem_rtl_0|auto_generated|rden_decode_b|w_anode706w[3]~0_combout\,
	portadatain => \inst6|mem_rtl_0|auto_generated|ram_block1a31_PORTADATAIN_bus\,
	portaaddr => \inst6|mem_rtl_0|auto_generated|ram_block1a31_PORTAADDR_bus\,
	portbaddr => \inst6|mem_rtl_0|auto_generated|ram_block1a31_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \inst6|mem_rtl_0|auto_generated|ram_block1a31_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X29_Y20_N8
\inst6|data[7]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|data[7]~0_combout\ = (\inst6|mem_rtl_0|auto_generated|address_reg_b\(1) & ((\inst6|mem_rtl_0|auto_generated|ram_block1a31~portbdataout\))) # (!\inst6|mem_rtl_0|auto_generated|address_reg_b\(1) & 
-- (\inst6|mem_rtl_0|auto_generated|ram_block1a15~portbdataout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|mem_rtl_0|auto_generated|address_reg_b\(1),
	datac => \inst6|mem_rtl_0|auto_generated|ram_block1a15~portbdataout\,
	datad => \inst6|mem_rtl_0|auto_generated|ram_block1a31~portbdataout\,
	combout => \inst6|data[7]~0_combout\);

-- Location: M9K_X22_Y20_N0
\inst6|mem_rtl_0|auto_generated|ram_block1a7\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000005",
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "mem_content.mif",
	init_file_layout => "port_a",
	logical_ram_name => "ram:inst6|altsyncram:mem_rtl_0|altsyncram_18f1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 7,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 7,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 65536,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portbre => VCC,
	clk0 => \inst7|inst2|nCBD~clkctrl_outclk\,
	clk1 => \inst7|inst2|ALT_INV_nCBD~clkctrl_outclk\,
	ena0 => GND,
	ena1 => \inst6|mem_rtl_0|auto_generated|rden_decode_b|w_anode666w\(3),
	portadatain => \inst6|mem_rtl_0|auto_generated|ram_block1a7_PORTADATAIN_bus\,
	portaaddr => \inst6|mem_rtl_0|auto_generated|ram_block1a7_PORTAADDR_bus\,
	portbaddr => \inst6|mem_rtl_0|auto_generated|ram_block1a7_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \inst6|mem_rtl_0|auto_generated|ram_block1a7_PORTBDATAOUT_bus\);

-- Location: M9K_X22_Y31_N0
\inst6|mem_rtl_0|auto_generated|ram_block1a23\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "mem_content.mif",
	init_file_layout => "port_a",
	logical_ram_name => "ram:inst6|altsyncram:mem_rtl_0|altsyncram_18f1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 7,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 7,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 65536,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portbre => VCC,
	clk0 => \inst7|inst2|nCBD~clkctrl_outclk\,
	clk1 => \inst7|inst2|ALT_INV_nCBD~clkctrl_outclk\,
	ena0 => GND,
	ena1 => \inst6|mem_rtl_0|auto_generated|rden_decode_b|w_anode695w[3]~0_combout\,
	portadatain => \inst6|mem_rtl_0|auto_generated|ram_block1a23_PORTADATAIN_bus\,
	portaaddr => \inst6|mem_rtl_0|auto_generated|ram_block1a23_PORTAADDR_bus\,
	portbaddr => \inst6|mem_rtl_0|auto_generated|ram_block1a23_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \inst6|mem_rtl_0|auto_generated|ram_block1a23_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X29_Y20_N18
\inst6|data[7]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|data[7]~1_combout\ = (\inst6|mem_rtl_0|auto_generated|address_reg_b\(1) & ((\inst6|mem_rtl_0|auto_generated|ram_block1a23~portbdataout\))) # (!\inst6|mem_rtl_0|auto_generated|address_reg_b\(1) & 
-- (\inst6|mem_rtl_0|auto_generated|ram_block1a7~portbdataout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|mem_rtl_0|auto_generated|address_reg_b\(1),
	datac => \inst6|mem_rtl_0|auto_generated|ram_block1a7~portbdataout\,
	datad => \inst6|mem_rtl_0|auto_generated|ram_block1a23~portbdataout\,
	combout => \inst6|data[7]~1_combout\);

-- Location: LCCOMB_X29_Y20_N4
\inst6|data[7]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|data[7]~2_combout\ = (!\inst6|mem_rtl_0|auto_generated|address_reg_b\(2) & ((\inst6|mem_rtl_0|auto_generated|address_reg_b\(0) & (\inst6|data[7]~0_combout\)) # (!\inst6|mem_rtl_0|auto_generated|address_reg_b\(0) & ((\inst6|data[7]~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|mem_rtl_0|auto_generated|address_reg_b\(0),
	datab => \inst6|mem_rtl_0|auto_generated|address_reg_b\(2),
	datac => \inst6|data[7]~0_combout\,
	datad => \inst6|data[7]~1_combout\,
	combout => \inst6|data[7]~2_combout\);

-- Location: LCCOMB_X29_Y20_N30
\inst6|data[7]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|data[7]~8_combout\ = (\inst6|data[7]~4_combout\) # ((\inst6|data[7]~6_combout\) # ((\inst6|data[7]~2_combout\) # (!\inst6|data[7]~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|data[7]~4_combout\,
	datab => \inst6|data[7]~6_combout\,
	datac => \inst6|data[7]~2_combout\,
	datad => \inst6|data[7]~7_combout\,
	combout => \inst6|data[7]~8_combout\);

-- Location: FF_X28_Y19_N21
\inst8|valor_interno[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|inst2|ALT_INV_nCRI~clkctrl_outclk\,
	asdata => \inst6|data[7]~8_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|valor_interno\(11));

-- Location: LCCOMB_X28_Y19_N30
\inst7|inst5|$00000|auto_generated|result_node[11]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst5|$00000|auto_generated|result_node[11]~0_combout\ = (\inst7|inst3|SELECTOR~1_combout\ & (((\inst8|valor_interno\(11) & \inst7|inst3|SELECTOR~0_combout\)))) # (!\inst7|inst3|SELECTOR~1_combout\ & ((\inst7|inst4|valor_interno\(11)) # 
-- ((\inst8|valor_interno\(11) & \inst7|inst3|SELECTOR~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst3|SELECTOR~1_combout\,
	datab => \inst7|inst4|valor_interno\(11),
	datac => \inst8|valor_interno\(11),
	datad => \inst7|inst3|SELECTOR~0_combout\,
	combout => \inst7|inst5|$00000|auto_generated|result_node[11]~0_combout\);

-- Location: LCCOMB_X28_Y19_N24
\inst7|inst1|mem~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst1|mem~14_combout\ = (\inst7|inst5|$00000|auto_generated|result_node[11]~0_combout\ & (\inst7|inst5|$00000|auto_generated|result_node[6]~5_combout\ & (\inst7|inst5|$00000|auto_generated|result_node[1]~11_combout\ & 
-- \inst7|inst5|$00000|auto_generated|result_node[5]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst5|$00000|auto_generated|result_node[11]~0_combout\,
	datab => \inst7|inst5|$00000|auto_generated|result_node[6]~5_combout\,
	datac => \inst7|inst5|$00000|auto_generated|result_node[1]~11_combout\,
	datad => \inst7|inst5|$00000|auto_generated|result_node[5]~6_combout\,
	combout => \inst7|inst1|mem~14_combout\);

-- Location: LCCOMB_X28_Y19_N12
\inst7|inst1|mem~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst1|mem~17_combout\ = (\inst7|inst1|mem~13_combout\ & ((\inst7|inst1|mem~14_combout\) # (\inst7|inst1|mem~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|inst1|mem~14_combout\,
	datac => \inst7|inst1|mem~16_combout\,
	datad => \inst7|inst1|mem~13_combout\,
	combout => \inst7|inst1|mem~17_combout\);

-- Location: FF_X28_Y19_N13
\inst7|inst2|instruccion[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst7|inst1|mem~17_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|inst2|instruccion\(0));

-- Location: LCCOMB_X28_Y19_N20
\inst7|inst3|SELECTOR~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst3|SELECTOR~0_combout\ = (\inst7|inst2|instruccion\(1) & !\inst7|inst2|instruccion\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst2|instruccion\(1),
	datad => \inst7|inst2|instruccion\(0),
	combout => \inst7|inst3|SELECTOR~0_combout\);

-- Location: FF_X27_Y19_N17
\inst7|inst4|valor_interno[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst7|inst4|valor_interno[4]~17_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|inst4|valor_interno\(4));

-- Location: M9K_X22_Y3_N0
\inst6|mem_rtl_0|auto_generated|ram_block1a56\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "mem_content.mif",
	init_file_layout => "port_a",
	logical_ram_name => "ram:inst6|altsyncram:mem_rtl_0|altsyncram_18f1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 65536,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portbre => VCC,
	clk0 => \inst7|inst2|nCBD~clkctrl_outclk\,
	clk1 => \inst7|inst2|ALT_INV_nCBD~clkctrl_outclk\,
	ena0 => GND,
	ena1 => \inst6|mem_rtl_0|auto_generated|rden_decode_b|w_anode750w[3]~0_combout\,
	portadatain => \inst6|mem_rtl_0|auto_generated|ram_block1a56_PORTADATAIN_bus\,
	portaaddr => \inst6|mem_rtl_0|auto_generated|ram_block1a56_PORTAADDR_bus\,
	portbaddr => \inst6|mem_rtl_0|auto_generated|ram_block1a56_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \inst6|mem_rtl_0|auto_generated|ram_block1a56_PORTBDATAOUT_bus\);

-- Location: M9K_X22_Y10_N0
\inst6|mem_rtl_0|auto_generated|ram_block1a40\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "mem_content.mif",
	init_file_layout => "port_a",
	logical_ram_name => "ram:inst6|altsyncram:mem_rtl_0|altsyncram_18f1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 65536,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portbre => VCC,
	clk0 => \inst7|inst2|nCBD~clkctrl_outclk\,
	clk1 => \inst7|inst2|ALT_INV_nCBD~clkctrl_outclk\,
	ena0 => GND,
	ena1 => \inst6|mem_rtl_0|auto_generated|rden_decode_b|w_anode728w[3]~0_combout\,
	portadatain => \inst6|mem_rtl_0|auto_generated|ram_block1a40_PORTADATAIN_bus\,
	portaaddr => \inst6|mem_rtl_0|auto_generated|ram_block1a40_PORTAADDR_bus\,
	portbaddr => \inst6|mem_rtl_0|auto_generated|ram_block1a40_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \inst6|mem_rtl_0|auto_generated|ram_block1a40_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X29_Y16_N6
\inst6|data[0]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|data[0]~53_combout\ = (\inst6|data[0]~28_combout\ & ((\inst6|mem_rtl_0|auto_generated|address_reg_b\(1) & (\inst6|mem_rtl_0|auto_generated|ram_block1a56~portbdataout\)) # (!\inst6|mem_rtl_0|auto_generated|address_reg_b\(1) & 
-- ((\inst6|mem_rtl_0|auto_generated|ram_block1a40~portbdataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|mem_rtl_0|auto_generated|address_reg_b\(1),
	datab => \inst6|data[0]~28_combout\,
	datac => \inst6|mem_rtl_0|auto_generated|ram_block1a56~portbdataout\,
	datad => \inst6|mem_rtl_0|auto_generated|ram_block1a40~portbdataout\,
	combout => \inst6|data[0]~53_combout\);

-- Location: M9K_X22_Y5_N0
\inst6|mem_rtl_0|auto_generated|ram_block1a48\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "mem_content.mif",
	init_file_layout => "port_a",
	logical_ram_name => "ram:inst6|altsyncram:mem_rtl_0|altsyncram_18f1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 65536,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portbre => VCC,
	clk0 => \inst7|inst2|nCBD~clkctrl_outclk\,
	clk1 => \inst7|inst2|ALT_INV_nCBD~clkctrl_outclk\,
	ena0 => GND,
	ena1 => \inst6|mem_rtl_0|auto_generated|rden_decode_b|w_anode739w[3]~0_combout\,
	portadatain => \inst6|mem_rtl_0|auto_generated|ram_block1a48_PORTADATAIN_bus\,
	portaaddr => \inst6|mem_rtl_0|auto_generated|ram_block1a48_PORTAADDR_bus\,
	portbaddr => \inst6|mem_rtl_0|auto_generated|ram_block1a48_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \inst6|mem_rtl_0|auto_generated|ram_block1a48_PORTBDATAOUT_bus\);

-- Location: M9K_X33_Y3_N0
\inst6|mem_rtl_0|auto_generated|ram_block1a32\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "mem_content.mif",
	init_file_layout => "port_a",
	logical_ram_name => "ram:inst6|altsyncram:mem_rtl_0|altsyncram_18f1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 65536,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portbre => VCC,
	clk0 => \inst7|inst2|nCBD~clkctrl_outclk\,
	clk1 => \inst7|inst2|ALT_INV_nCBD~clkctrl_outclk\,
	ena0 => GND,
	ena1 => \inst6|mem_rtl_0|auto_generated|rden_decode_b|w_anode717w[3]~0_combout\,
	portadatain => \inst6|mem_rtl_0|auto_generated|ram_block1a32_PORTADATAIN_bus\,
	portaaddr => \inst6|mem_rtl_0|auto_generated|ram_block1a32_PORTAADDR_bus\,
	portbaddr => \inst6|mem_rtl_0|auto_generated|ram_block1a32_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \inst6|mem_rtl_0|auto_generated|ram_block1a32_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X29_Y16_N4
\inst6|data[0]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|data[0]~52_combout\ = (\inst6|data[0]~26_combout\ & ((\inst6|mem_rtl_0|auto_generated|address_reg_b\(1) & (\inst6|mem_rtl_0|auto_generated|ram_block1a48~portbdataout\)) # (!\inst6|mem_rtl_0|auto_generated|address_reg_b\(1) & 
-- ((\inst6|mem_rtl_0|auto_generated|ram_block1a32~portbdataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|mem_rtl_0|auto_generated|address_reg_b\(1),
	datab => \inst6|data[0]~26_combout\,
	datac => \inst6|mem_rtl_0|auto_generated|ram_block1a48~portbdataout\,
	datad => \inst6|mem_rtl_0|auto_generated|ram_block1a32~portbdataout\,
	combout => \inst6|data[0]~52_combout\);

-- Location: M9K_X22_Y16_N0
\inst6|mem_rtl_0|auto_generated|ram_block1a8\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "mem_content.mif",
	init_file_layout => "port_a",
	logical_ram_name => "ram:inst6|altsyncram:mem_rtl_0|altsyncram_18f1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 65536,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portbre => VCC,
	clk0 => \inst7|inst2|nCBD~clkctrl_outclk\,
	clk1 => \inst7|inst2|ALT_INV_nCBD~clkctrl_outclk\,
	ena0 => GND,
	ena1 => \inst6|mem_rtl_0|auto_generated|rden_decode_b|w_anode684w[3]~0_combout\,
	portadatain => \inst6|mem_rtl_0|auto_generated|ram_block1a8_PORTADATAIN_bus\,
	portaaddr => \inst6|mem_rtl_0|auto_generated|ram_block1a8_PORTAADDR_bus\,
	portbaddr => \inst6|mem_rtl_0|auto_generated|ram_block1a8_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \inst6|mem_rtl_0|auto_generated|ram_block1a8_PORTBDATAOUT_bus\);

-- Location: M9K_X33_Y5_N0
\inst6|mem_rtl_0|auto_generated|ram_block1a24\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "mem_content.mif",
	init_file_layout => "port_a",
	logical_ram_name => "ram:inst6|altsyncram:mem_rtl_0|altsyncram_18f1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 65536,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portbre => VCC,
	clk0 => \inst7|inst2|nCBD~clkctrl_outclk\,
	clk1 => \inst7|inst2|ALT_INV_nCBD~clkctrl_outclk\,
	ena0 => GND,
	ena1 => \inst6|mem_rtl_0|auto_generated|rden_decode_b|w_anode706w[3]~0_combout\,
	portadatain => \inst6|mem_rtl_0|auto_generated|ram_block1a24_PORTADATAIN_bus\,
	portaaddr => \inst6|mem_rtl_0|auto_generated|ram_block1a24_PORTAADDR_bus\,
	portbaddr => \inst6|mem_rtl_0|auto_generated|ram_block1a24_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \inst6|mem_rtl_0|auto_generated|ram_block1a24_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X29_Y16_N26
\inst6|data[0]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|data[0]~49_combout\ = (\inst6|mem_rtl_0|auto_generated|address_reg_b\(1) & ((\inst6|mem_rtl_0|auto_generated|ram_block1a24~portbdataout\))) # (!\inst6|mem_rtl_0|auto_generated|address_reg_b\(1) & 
-- (\inst6|mem_rtl_0|auto_generated|ram_block1a8~portbdataout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|mem_rtl_0|auto_generated|ram_block1a8~portbdataout\,
	datab => \inst6|mem_rtl_0|auto_generated|address_reg_b\(1),
	datad => \inst6|mem_rtl_0|auto_generated|ram_block1a24~portbdataout\,
	combout => \inst6|data[0]~49_combout\);

-- Location: M9K_X22_Y8_N0
\inst6|mem_rtl_0|auto_generated|ram_block1a16\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "mem_content.mif",
	init_file_layout => "port_a",
	logical_ram_name => "ram:inst6|altsyncram:mem_rtl_0|altsyncram_18f1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 65536,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portbre => VCC,
	clk0 => \inst7|inst2|nCBD~clkctrl_outclk\,
	clk1 => \inst7|inst2|ALT_INV_nCBD~clkctrl_outclk\,
	ena0 => GND,
	ena1 => \inst6|mem_rtl_0|auto_generated|rden_decode_b|w_anode695w[3]~0_combout\,
	portadatain => \inst6|mem_rtl_0|auto_generated|ram_block1a16_PORTADATAIN_bus\,
	portaaddr => \inst6|mem_rtl_0|auto_generated|ram_block1a16_PORTAADDR_bus\,
	portbaddr => \inst6|mem_rtl_0|auto_generated|ram_block1a16_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \inst6|mem_rtl_0|auto_generated|ram_block1a16_PORTBDATAOUT_bus\);

-- Location: M9K_X22_Y6_N0
\inst6|mem_rtl_0|auto_generated|ram_block1a0\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010",
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "mem_content.mif",
	init_file_layout => "port_a",
	logical_ram_name => "ram:inst6|altsyncram:mem_rtl_0|altsyncram_18f1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 65536,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portbre => VCC,
	clk0 => \inst7|inst2|nCBD~clkctrl_outclk\,
	clk1 => \inst7|inst2|ALT_INV_nCBD~clkctrl_outclk\,
	ena0 => GND,
	ena1 => \inst6|mem_rtl_0|auto_generated|rden_decode_b|w_anode666w\(3),
	portadatain => \inst6|mem_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \inst6|mem_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\,
	portbaddr => \inst6|mem_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \inst6|mem_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X29_Y16_N12
\inst6|data[0]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|data[0]~50_combout\ = (\inst6|mem_rtl_0|auto_generated|address_reg_b\(1) & (\inst6|mem_rtl_0|auto_generated|ram_block1a16~portbdataout\)) # (!\inst6|mem_rtl_0|auto_generated|address_reg_b\(1) & 
-- ((\inst6|mem_rtl_0|auto_generated|ram_block1a0~portbdataout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|mem_rtl_0|auto_generated|ram_block1a16~portbdataout\,
	datab => \inst6|mem_rtl_0|auto_generated|address_reg_b\(1),
	datad => \inst6|mem_rtl_0|auto_generated|ram_block1a0~portbdataout\,
	combout => \inst6|data[0]~50_combout\);

-- Location: LCCOMB_X29_Y16_N2
\inst6|data[0]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|data[0]~51_combout\ = (\inst6|data[0]~15_combout\ & ((\inst6|mem_rtl_0|auto_generated|address_reg_b\(0) & (\inst6|data[0]~49_combout\)) # (!\inst6|mem_rtl_0|auto_generated|address_reg_b\(0) & ((\inst6|data[0]~50_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|data[0]~15_combout\,
	datab => \inst6|mem_rtl_0|auto_generated|address_reg_b\(0),
	datac => \inst6|data[0]~49_combout\,
	datad => \inst6|data[0]~50_combout\,
	combout => \inst6|data[0]~51_combout\);

-- Location: LCCOMB_X29_Y16_N0
\inst6|data[0]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|data[0]~54_combout\ = (\inst6|data[0]~53_combout\) # ((\inst6|data[0]~52_combout\) # ((\inst6|data[0]~51_combout\) # (!\inst7|inst2|PC\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|data[0]~53_combout\,
	datab => \inst6|data[0]~52_combout\,
	datac => \inst7|inst2|PC\(0),
	datad => \inst6|data[0]~51_combout\,
	combout => \inst6|data[0]~54_combout\);

-- Location: LCCOMB_X29_Y16_N16
\inst8|valor_interno[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|valor_interno[4]~feeder_combout\ = \inst6|data[0]~54_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst6|data[0]~54_combout\,
	combout => \inst8|valor_interno[4]~feeder_combout\);

-- Location: FF_X29_Y16_N17
\inst8|valor_interno[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|inst2|ALT_INV_nCRI~clkctrl_outclk\,
	d => \inst8|valor_interno[4]~feeder_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|valor_interno\(4));

-- Location: LCCOMB_X30_Y19_N26
\inst7|inst5|$00000|auto_generated|result_node[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst5|$00000|auto_generated|result_node[4]~7_combout\ = (\inst7|inst3|SELECTOR~0_combout\ & ((\inst8|valor_interno\(4)) # ((\inst7|inst4|valor_interno\(4) & !\inst7|inst3|SELECTOR~1_combout\)))) # (!\inst7|inst3|SELECTOR~0_combout\ & 
-- (\inst7|inst4|valor_interno\(4) & (!\inst7|inst3|SELECTOR~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst3|SELECTOR~0_combout\,
	datab => \inst7|inst4|valor_interno\(4),
	datac => \inst7|inst3|SELECTOR~1_combout\,
	datad => \inst8|valor_interno\(4),
	combout => \inst7|inst5|$00000|auto_generated|result_node[4]~7_combout\);

-- Location: LCCOMB_X27_Y19_N2
\inst7|inst5|$00000|auto_generated|result_node[2]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst5|$00000|auto_generated|result_node[2]~10_combout\ = (\inst7|inst4|valor_interno\(2) & ((\inst7|inst2|instruccion\(0) & ((\inst7|inst2|B4~q\))) # (!\inst7|inst2|instruccion\(0) & (!\inst7|inst2|instruccion\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst4|valor_interno\(2),
	datab => \inst7|inst2|instruccion\(1),
	datac => \inst7|inst2|instruccion\(0),
	datad => \inst7|inst2|B4~q\,
	combout => \inst7|inst5|$00000|auto_generated|result_node[2]~10_combout\);

-- Location: LCCOMB_X30_Y19_N18
\inst7|inst1|mem~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst1|mem~6_combout\ = (!\inst7|inst5|$00000|auto_generated|result_node[9]~2_combout\ & !\inst7|inst5|$00000|auto_generated|result_node[8]~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst7|inst5|$00000|auto_generated|result_node[9]~2_combout\,
	datad => \inst7|inst5|$00000|auto_generated|result_node[8]~3_combout\,
	combout => \inst7|inst1|mem~6_combout\);

-- Location: LCCOMB_X30_Y19_N14
\inst7|inst1|mem~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst1|mem~7_combout\ = (!\inst7|inst5|$00000|auto_generated|result_node[4]~7_combout\ & (!\inst7|inst5|$00000|auto_generated|result_node[7]~4_combout\ & (!\inst7|inst5|$00000|auto_generated|result_node[2]~10_combout\ & 
-- \inst7|inst1|mem~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst5|$00000|auto_generated|result_node[4]~7_combout\,
	datab => \inst7|inst5|$00000|auto_generated|result_node[7]~4_combout\,
	datac => \inst7|inst5|$00000|auto_generated|result_node[2]~10_combout\,
	datad => \inst7|inst1|mem~6_combout\,
	combout => \inst7|inst1|mem~7_combout\);

-- Location: LCCOMB_X28_Y19_N0
\inst7|inst1|mem~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst1|mem~11_combout\ = (\inst7|inst1|mem~9_combout\) # ((!\inst7|inst5|$00000|auto_generated|result_node[6]~5_combout\ & \inst7|inst1|mem~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|inst5|$00000|auto_generated|result_node[6]~5_combout\,
	datac => \inst7|inst1|mem~9_combout\,
	datad => \inst7|inst1|mem~10_combout\,
	combout => \inst7|inst1|mem~11_combout\);

-- Location: LCCOMB_X28_Y19_N26
\inst7|inst1|mem~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst1|mem~12_combout\ = (\inst7|inst1|mem~7_combout\ & (\inst7|inst5|$00000|auto_generated|result_node[1]~11_combout\ & (!\inst7|inst5|$00000|auto_generated|result_node[0]~12_combout\ & \inst7|inst1|mem~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst1|mem~7_combout\,
	datab => \inst7|inst5|$00000|auto_generated|result_node[1]~11_combout\,
	datac => \inst7|inst5|$00000|auto_generated|result_node[0]~12_combout\,
	datad => \inst7|inst1|mem~11_combout\,
	combout => \inst7|inst1|mem~12_combout\);

-- Location: FF_X28_Y19_N27
\inst7|inst2|instruccion[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst7|inst1|mem~12_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|inst2|instruccion\(1));

-- Location: LCCOMB_X28_Y19_N8
\inst7|inst5|$00000|auto_generated|result_node[0]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst5|$00000|auto_generated|result_node[0]~8_combout\ = (!\inst7|inst2|instruccion\(1) & (!\inst7|inst2|B4~q\ & \inst7|inst2|instruccion\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst2|instruccion\(1),
	datac => \inst7|inst2|B4~q\,
	datad => \inst7|inst2|instruccion\(0),
	combout => \inst7|inst5|$00000|auto_generated|result_node[0]~8_combout\);

-- Location: LCCOMB_X28_Y19_N28
\inst7|inst1|mem~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst1|mem~20_combout\ = (\inst7|inst5|$00000|auto_generated|result_node[0]~12_combout\ & (\inst7|inst5|$00000|auto_generated|result_node[1]~11_combout\ & (\inst7|inst1|mem~9_combout\ & \inst7|inst1|mem~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst5|$00000|auto_generated|result_node[0]~12_combout\,
	datab => \inst7|inst5|$00000|auto_generated|result_node[1]~11_combout\,
	datac => \inst7|inst1|mem~9_combout\,
	datad => \inst7|inst1|mem~7_combout\,
	combout => \inst7|inst1|mem~20_combout\);

-- Location: FF_X28_Y19_N29
\inst7|inst2|liga[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst7|inst1|mem~20_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|inst2|liga\(0));

-- Location: LCCOMB_X27_Y19_N0
\inst7|inst5|$00000|auto_generated|result_node[0]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst5|$00000|auto_generated|result_node[0]~12_combout\ = (\inst7|inst4|valor_interno\(0) & (((\inst7|inst5|$00000|auto_generated|result_node[0]~8_combout\ & \inst7|inst2|liga\(0))) # (!\inst7|inst3|SELECTOR~1_combout\))) # 
-- (!\inst7|inst4|valor_interno\(0) & (\inst7|inst5|$00000|auto_generated|result_node[0]~8_combout\ & ((\inst7|inst2|liga\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst4|valor_interno\(0),
	datab => \inst7|inst5|$00000|auto_generated|result_node[0]~8_combout\,
	datac => \inst7|inst3|SELECTOR~1_combout\,
	datad => \inst7|inst2|liga\(0),
	combout => \inst7|inst5|$00000|auto_generated|result_node[0]~12_combout\);

-- Location: LCCOMB_X28_Y19_N22
\inst7|inst1|mem~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst1|mem~18_combout\ = (!\inst7|inst5|$00000|auto_generated|result_node[0]~12_combout\ & (\inst7|inst5|$00000|auto_generated|result_node[1]~11_combout\ & (\inst7|inst1|mem~9_combout\ & \inst7|inst1|mem~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst5|$00000|auto_generated|result_node[0]~12_combout\,
	datab => \inst7|inst5|$00000|auto_generated|result_node[1]~11_combout\,
	datac => \inst7|inst1|mem~9_combout\,
	datad => \inst7|inst1|mem~7_combout\,
	combout => \inst7|inst1|mem~18_combout\);

-- Location: FF_X28_Y19_N23
\inst7|inst2|CZ\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst7|inst1|mem~18_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|inst2|CZ~q\);

-- Location: LCCOMB_X28_Y16_N30
\ACCB|data_out[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ACCB|data_out[7]~feeder_combout\ = \inst6|data[7]~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst6|data[7]~8_combout\,
	combout => \ACCB|data_out[7]~feeder_combout\);

-- Location: LCCOMB_X28_Y19_N16
\inst7|inst1|mem~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst1|mem~22_combout\ = (\inst7|inst5|$00000|auto_generated|result_node[0]~12_combout\ & (!\inst7|inst5|$00000|auto_generated|result_node[1]~11_combout\ & (\inst7|inst1|mem~9_combout\ & \inst7|inst1|mem~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst5|$00000|auto_generated|result_node[0]~12_combout\,
	datab => \inst7|inst5|$00000|auto_generated|result_node[1]~11_combout\,
	datac => \inst7|inst1|mem~9_combout\,
	datad => \inst7|inst1|mem~7_combout\,
	combout => \inst7|inst1|mem~22_combout\);

-- Location: FF_X28_Y19_N17
\inst7|inst2|EB[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst7|inst1|mem~22_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|inst2|EB\(0));

-- Location: FF_X28_Y16_N31
\ACCB|data_out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \ACCB|data_out[7]~feeder_combout\,
	ena => \inst7|inst2|EB\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ACCB|data_out\(7));

-- Location: LCCOMB_X29_Y15_N30
\ACCB|data_out[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ACCB|data_out[4]~feeder_combout\ = \inst6|data[4]~30_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst6|data[4]~30_combout\,
	combout => \ACCB|data_out[4]~feeder_combout\);

-- Location: FF_X29_Y15_N31
\ACCB|data_out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \ACCB|data_out[4]~feeder_combout\,
	ena => \inst7|inst2|EB\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ACCB|data_out\(4));

-- Location: FF_X29_Y15_N17
\ACCB|data_out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst6|data[5]~22_combout\,
	sload => VCC,
	ena => \inst7|inst2|EB\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ACCB|data_out\(5));

-- Location: LCCOMB_X29_Y15_N0
\ACCB|data_out[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ACCB|data_out[3]~feeder_combout\ = \inst6|data[3]~36_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst6|data[3]~36_combout\,
	combout => \ACCB|data_out[3]~feeder_combout\);

-- Location: FF_X29_Y15_N1
\ACCB|data_out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \ACCB|data_out[3]~feeder_combout\,
	ena => \inst7|inst2|EB\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ACCB|data_out\(3));

-- Location: FF_X29_Y19_N29
\ACCB|data_out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst6|data[6]~14_combout\,
	sload => VCC,
	ena => \inst7|inst2|EB\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ACCB|data_out\(6));

-- Location: LCCOMB_X28_Y15_N8
\inst5|inst10|output~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst10|output~1_combout\ = (!\ACCB|data_out\(4) & (!\ACCB|data_out\(5) & (!\ACCB|data_out\(3) & !\ACCB|data_out\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ACCB|data_out\(4),
	datab => \ACCB|data_out\(5),
	datac => \ACCB|data_out\(3),
	datad => \ACCB|data_out\(6),
	combout => \inst5|inst10|output~1_combout\);

-- Location: LCCOMB_X28_Y16_N20
\ACCB|data_out[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ACCB|data_out[0]~feeder_combout\ = \inst6|data[0]~54_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst6|data[0]~54_combout\,
	combout => \ACCB|data_out[0]~feeder_combout\);

-- Location: FF_X28_Y16_N21
\ACCB|data_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \ACCB|data_out[0]~feeder_combout\,
	ena => \inst7|inst2|EB\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ACCB|data_out\(0));

-- Location: LCCOMB_X29_Y19_N14
\ACCB|data_out[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ACCB|data_out[2]~feeder_combout\ = \inst6|data[2]~42_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst6|data[2]~42_combout\,
	combout => \ACCB|data_out[2]~feeder_combout\);

-- Location: FF_X29_Y19_N15
\ACCB|data_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \ACCB|data_out[2]~feeder_combout\,
	ena => \inst7|inst2|EB\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ACCB|data_out\(2));

-- Location: LCCOMB_X29_Y19_N8
\ACCB|data_out[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ACCB|data_out[1]~feeder_combout\ = \inst6|data[1]~48_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst6|data[1]~48_combout\,
	combout => \ACCB|data_out[1]~feeder_combout\);

-- Location: FF_X29_Y19_N9
\ACCB|data_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \ACCB|data_out[1]~feeder_combout\,
	ena => \inst7|inst2|EB\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ACCB|data_out\(1));

-- Location: LCCOMB_X28_Y15_N18
\inst5|inst10|output~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst10|output~0_combout\ = (!\ACCB|data_out\(0) & (!\ACCB|data_out\(2) & (!\ACCB|data_out\(1) & \inst7|inst2|B4~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ACCB|data_out\(0),
	datab => \ACCB|data_out\(2),
	datac => \ACCB|data_out\(1),
	datad => \inst7|inst2|B4~q\,
	combout => \inst5|inst10|output~0_combout\);

-- Location: LCCOMB_X28_Y15_N24
\inst5|inst10|output~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst10|output~2_combout\ = (!\ACCB|data_out\(7) & (\inst5|inst10|output~1_combout\ & \inst5|inst10|output~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ACCB|data_out\(7),
	datac => \inst5|inst10|output~1_combout\,
	datad => \inst5|inst10|output~0_combout\,
	combout => \inst5|inst10|output~2_combout\);

-- Location: FF_X28_Y15_N25
\inst5|inst2|valor_interno\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|inst2|ALT_INV_CZ~q\,
	d => \inst5|inst10|output~2_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|inst2|valor_interno~q\);

-- Location: FF_X28_Y19_N5
\inst7|inst2|CN\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst7|inst1|mem~18_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|inst2|CN~q\);

-- Location: LCCOMB_X27_Y16_N24
\inst1|Banderas[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Banderas[2]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \inst1|Banderas[2]~feeder_combout\);

-- Location: FF_X27_Y16_N25
\inst1|Banderas[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|Banderas[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|Banderas\(2));

-- Location: LCCOMB_X28_Y16_N0
\inst5|inst11|output~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst11|output~0_combout\ = (\inst7|inst2|B4~q\ & ((\ACCB|data_out\(7)))) # (!\inst7|inst2|B4~q\ & (\inst1|Banderas\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Banderas\(2),
	datac => \ACCB|data_out\(7),
	datad => \inst7|inst2|B4~q\,
	combout => \inst5|inst11|output~0_combout\);

-- Location: FF_X28_Y16_N1
\inst5|inst3|valor_interno\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|inst2|ALT_INV_CN~q\,
	d => \inst5|inst11|output~0_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|inst3|valor_interno~q\);

-- Location: LCCOMB_X2_Y1_N28
\inst1|Q[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Q[6]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \inst1|Q[6]~feeder_combout\);

-- Location: FF_X2_Y1_N29
\inst1|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|Q[6]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|Q\(6));

-- Location: LCCOMB_X6_Y1_N28
\inst1|Q[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Q[5]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \inst1|Q[5]~feeder_combout\);

-- Location: FF_X6_Y1_N29
\inst1|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|Q[5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|Q\(5));

-- Location: LCCOMB_X32_Y33_N0
\inst1|Q[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Q[4]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \inst1|Q[4]~feeder_combout\);

-- Location: FF_X32_Y33_N1
\inst1|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|Q[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|Q\(4));

-- Location: LCCOMB_X50_Y32_N4
\inst1|Q[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Q[3]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \inst1|Q[3]~feeder_combout\);

-- Location: FF_X50_Y32_N5
\inst1|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|Q[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|Q\(3));

-- Location: LCCOMB_X1_Y24_N16
\inst1|Q[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Q[2]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \inst1|Q[2]~feeder_combout\);

-- Location: FF_X1_Y24_N17
\inst1|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|Q[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|Q\(2));

-- Location: LCCOMB_X40_Y1_N20
\inst1|Q[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Q[1]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \inst1|Q[1]~feeder_combout\);

-- Location: FF_X40_Y1_N21
\inst1|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|Q[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|Q\(1));

-- Location: LCCOMB_X52_Y22_N20
\inst1|Q[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Q[0]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \inst1|Q[0]~feeder_combout\);

-- Location: FF_X52_Y22_N21
\inst1|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|Q[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|Q\(0));

-- Location: LCCOMB_X1_Y25_N16
\inst1|Yupa_interno[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Yupa_interno[6]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \inst1|Yupa_interno[6]~feeder_combout\);

-- Location: FF_X1_Y25_N17
\inst1|Yupa_interno[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|Yupa_interno[6]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|Yupa_interno\(6));

-- Location: LCCOMB_X8_Y33_N0
\inst1|Yupa_interno[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Yupa_interno[5]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \inst1|Yupa_interno[5]~feeder_combout\);

-- Location: FF_X8_Y33_N1
\inst1|Yupa_interno[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|Yupa_interno[5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|Yupa_interno\(5));

-- Location: LCCOMB_X45_Y32_N8
\inst1|Yupa_interno[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Yupa_interno[4]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \inst1|Yupa_interno[4]~feeder_combout\);

-- Location: FF_X45_Y32_N9
\inst1|Yupa_interno[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|Yupa_interno[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|Yupa_interno\(4));

-- Location: LCCOMB_X45_Y1_N28
\inst1|Yupa_interno[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Yupa_interno[3]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \inst1|Yupa_interno[3]~feeder_combout\);

-- Location: FF_X45_Y1_N29
\inst1|Yupa_interno[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|Yupa_interno[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|Yupa_interno\(3));

-- Location: LCCOMB_X52_Y9_N4
\inst1|Yupa_interno[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Yupa_interno[2]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \inst1|Yupa_interno[2]~feeder_combout\);

-- Location: FF_X52_Y9_N5
\inst1|Yupa_interno[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|Yupa_interno[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|Yupa_interno\(2));

-- Location: LCCOMB_X35_Y33_N0
\inst1|Yupa_interno[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Yupa_interno[1]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \inst1|Yupa_interno[1]~feeder_combout\);

-- Location: FF_X35_Y33_N1
\inst1|Yupa_interno[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|Yupa_interno[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|Yupa_interno\(1));

-- Location: IOIBUF_X47_Y0_N22
\IRQn~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IRQn,
	o => \IRQn~input_o\);

-- Location: IOIBUF_X0_Y16_N8
\XIRQn~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_XIRQn,
	o => \XIRQn~input_o\);

ww_Flag_C <= \Flag_C~output_o\;

ww_Flag_V <= \Flag_V~output_o\;

ww_Flag_Z <= \Flag_Z~output_o\;

ww_Flag_N <= \Flag_N~output_o\;

ww_Flag_I <= \Flag_I~output_o\;

ww_Flag_H <= \Flag_H~output_o\;

ww_Flag_X <= \Flag_X~output_o\;

ww_Flag_S <= \Flag_S~output_o\;

ww_ACCA_D(7) <= \ACCA_D[7]~output_o\;

ww_ACCA_D(6) <= \ACCA_D[6]~output_o\;

ww_ACCA_D(5) <= \ACCA_D[5]~output_o\;

ww_ACCA_D(4) <= \ACCA_D[4]~output_o\;

ww_ACCA_D(3) <= \ACCA_D[3]~output_o\;

ww_ACCA_D(2) <= \ACCA_D[2]~output_o\;

ww_ACCA_D(1) <= \ACCA_D[1]~output_o\;

ww_ACCA_D(0) <= \ACCA_D[0]~output_o\;

ww_ACCB_D(7) <= \ACCB_D[7]~output_o\;

ww_ACCB_D(6) <= \ACCB_D[6]~output_o\;

ww_ACCB_D(5) <= \ACCB_D[5]~output_o\;

ww_ACCB_D(4) <= \ACCB_D[4]~output_o\;

ww_ACCB_D(3) <= \ACCB_D[3]~output_o\;

ww_ACCB_D(2) <= \ACCB_D[2]~output_o\;

ww_ACCB_D(1) <= \ACCB_D[1]~output_o\;

ww_ACCB_D(0) <= \ACCB_D[0]~output_o\;

ww_AP_D(15) <= \AP_D[15]~output_o\;

ww_AP_D(14) <= \AP_D[14]~output_o\;

ww_AP_D(13) <= \AP_D[13]~output_o\;

ww_AP_D(12) <= \AP_D[12]~output_o\;

ww_AP_D(11) <= \AP_D[11]~output_o\;

ww_AP_D(10) <= \AP_D[10]~output_o\;

ww_AP_D(9) <= \AP_D[9]~output_o\;

ww_AP_D(8) <= \AP_D[8]~output_o\;

ww_AP_D(7) <= \AP_D[7]~output_o\;

ww_AP_D(6) <= \AP_D[6]~output_o\;

ww_AP_D(5) <= \AP_D[5]~output_o\;

ww_AP_D(4) <= \AP_D[4]~output_o\;

ww_AP_D(3) <= \AP_D[3]~output_o\;

ww_AP_D(2) <= \AP_D[2]~output_o\;

ww_AP_D(1) <= \AP_D[1]~output_o\;

ww_AP_D(0) <= \AP_D[0]~output_o\;

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

ww_Debug_Q(7) <= \Debug_Q[7]~output_o\;

ww_Debug_Q(6) <= \Debug_Q[6]~output_o\;

ww_Debug_Q(5) <= \Debug_Q[5]~output_o\;

ww_Debug_Q(4) <= \Debug_Q[4]~output_o\;

ww_Debug_Q(3) <= \Debug_Q[3]~output_o\;

ww_Debug_Q(2) <= \Debug_Q[2]~output_o\;

ww_Debug_Q(1) <= \Debug_Q[1]~output_o\;

ww_Debug_Q(0) <= \Debug_Q[0]~output_o\;

ww_Debug_Yupa(7) <= \Debug_Yupa[7]~output_o\;

ww_Debug_Yupa(6) <= \Debug_Yupa[6]~output_o\;

ww_Debug_Yupa(5) <= \Debug_Yupa[5]~output_o\;

ww_Debug_Yupa(4) <= \Debug_Yupa[4]~output_o\;

ww_Debug_Yupa(3) <= \Debug_Yupa[3]~output_o\;

ww_Debug_Yupa(2) <= \Debug_Yupa[2]~output_o\;

ww_Debug_Yupa(1) <= \Debug_Yupa[1]~output_o\;

ww_Debug_Yupa(0) <= \Debug_Yupa[0]~output_o\;

ww_Edo_Pres(11) <= \Edo_Pres[11]~output_o\;

ww_Edo_Pres(10) <= \Edo_Pres[10]~output_o\;

ww_Edo_Pres(9) <= \Edo_Pres[9]~output_o\;

ww_Edo_Pres(8) <= \Edo_Pres[8]~output_o\;

ww_Edo_Pres(7) <= \Edo_Pres[7]~output_o\;

ww_Edo_Pres(6) <= \Edo_Pres[6]~output_o\;

ww_Edo_Pres(5) <= \Edo_Pres[5]~output_o\;

ww_Edo_Pres(4) <= \Edo_Pres[4]~output_o\;

ww_Edo_Pres(3) <= \Edo_Pres[3]~output_o\;

ww_Edo_Pres(2) <= \Edo_Pres[2]~output_o\;

ww_Edo_Pres(1) <= \Edo_Pres[1]~output_o\;

ww_Edo_Pres(0) <= \Edo_Pres[0]~output_o\;

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

ww_X_D(15) <= \X_D[15]~output_o\;

ww_X_D(14) <= \X_D[14]~output_o\;

ww_X_D(13) <= \X_D[13]~output_o\;

ww_X_D(12) <= \X_D[12]~output_o\;

ww_X_D(11) <= \X_D[11]~output_o\;

ww_X_D(10) <= \X_D[10]~output_o\;

ww_X_D(9) <= \X_D[9]~output_o\;

ww_X_D(8) <= \X_D[8]~output_o\;

ww_X_D(7) <= \X_D[7]~output_o\;

ww_X_D(6) <= \X_D[6]~output_o\;

ww_X_D(5) <= \X_D[5]~output_o\;

ww_X_D(4) <= \X_D[4]~output_o\;

ww_X_D(3) <= \X_D[3]~output_o\;

ww_X_D(2) <= \X_D[2]~output_o\;

ww_X_D(1) <= \X_D[1]~output_o\;

ww_X_D(0) <= \X_D[0]~output_o\;

ww_Y_D(15) <= \Y_D[15]~output_o\;

ww_Y_D(14) <= \Y_D[14]~output_o\;

ww_Y_D(13) <= \Y_D[13]~output_o\;

ww_Y_D(12) <= \Y_D[12]~output_o\;

ww_Y_D(11) <= \Y_D[11]~output_o\;

ww_Y_D(10) <= \Y_D[10]~output_o\;

ww_Y_D(9) <= \Y_D[9]~output_o\;

ww_Y_D(8) <= \Y_D[8]~output_o\;

ww_Y_D(7) <= \Y_D[7]~output_o\;

ww_Y_D(6) <= \Y_D[6]~output_o\;

ww_Y_D(5) <= \Y_D[5]~output_o\;

ww_Y_D(4) <= \Y_D[4]~output_o\;

ww_Y_D(3) <= \Y_D[3]~output_o\;

ww_Y_D(2) <= \Y_D[2]~output_o\;

ww_Y_D(1) <= \Y_D[1]~output_o\;

ww_Y_D(0) <= \Y_D[0]~output_o\;
END structure;


