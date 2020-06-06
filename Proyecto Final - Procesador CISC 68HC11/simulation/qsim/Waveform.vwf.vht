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

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "05/30/2020 02:01:26"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          m68hc11
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY m68hc11_vhd_vec_tst IS
END m68hc11_vhd_vec_tst;
ARCHITECTURE m68hc11_arch OF m68hc11_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL ACCA_D : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL ACCB_D : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL ADDRESS : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL AP_D : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL AUX_D : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL BOTON : STD_LOGIC;
SIGNAL CLK : STD_LOGIC;
SIGNAL Debug_Q : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL Debug_Yupa : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL Edo_Pres : STD_LOGIC_VECTOR(11 DOWNTO 0);
SIGNAL enaY_D : STD_LOGIC;
SIGNAL Flag_C : STD_LOGIC;
SIGNAL Flag_H : STD_LOGIC;
SIGNAL Flag_I : STD_LOGIC;
SIGNAL Flag_N : STD_LOGIC;
SIGNAL Flag_S : STD_LOGIC;
SIGNAL Flag_V : STD_LOGIC;
SIGNAL Flag_X : STD_LOGIC;
SIGNAL Flag_Z : STD_LOGIC;
SIGNAL INSTRUC_D : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL INT_D : STD_LOGIC;
SIGNAL IRQn : STD_LOGIC;
SIGNAL led1 : STD_LOGIC;
SIGNAL led2 : STD_LOGIC;
SIGNAL led3 : STD_LOGIC;
SIGNAL led4 : STD_LOGIC;
SIGNAL led5 : STD_LOGIC;
SIGNAL led6 : STD_LOGIC;
SIGNAL led7 : STD_LOGIC;
SIGNAL led8 : STD_LOGIC;
SIGNAL led9 : STD_LOGIC;
SIGNAL O0 : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL O1 : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL O2 : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL O3 : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL O4 : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL O5 : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL PC_D : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL RAM : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL REG_INTI_D : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL REG_INTX_D : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL RESET : STD_LOGIC;
SIGNAL sel0 : STD_LOGIC;
SIGNAL sel1 : STD_LOGIC;
SIGNAL sel2 : STD_LOGIC;
SIGNAL X_D : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL XIRQn : STD_LOGIC;
SIGNAL Y_D : STD_LOGIC_VECTOR(15 DOWNTO 0);
COMPONENT m68hc11
	PORT (
	ACCA_D : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	ACCB_D : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	ADDRESS : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	AP_D : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	AUX_D : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	BOTON : IN STD_LOGIC;
	CLK : IN STD_LOGIC;
	Debug_Q : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	Debug_Yupa : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	Edo_Pres : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
	enaY_D : OUT STD_LOGIC;
	Flag_C : OUT STD_LOGIC;
	Flag_H : OUT STD_LOGIC;
	Flag_I : OUT STD_LOGIC;
	Flag_N : OUT STD_LOGIC;
	Flag_S : OUT STD_LOGIC;
	Flag_V : OUT STD_LOGIC;
	Flag_X : OUT STD_LOGIC;
	Flag_Z : OUT STD_LOGIC;
	INSTRUC_D : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	INT_D : OUT STD_LOGIC;
	IRQn : IN STD_LOGIC;
	led1 : OUT STD_LOGIC;
	led2 : OUT STD_LOGIC;
	led3 : OUT STD_LOGIC;
	led4 : OUT STD_LOGIC;
	led5 : OUT STD_LOGIC;
	led6 : OUT STD_LOGIC;
	led7 : OUT STD_LOGIC;
	led8 : OUT STD_LOGIC;
	led9 : OUT STD_LOGIC;
	O0 : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	O1 : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	O2 : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	O3 : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	O4 : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	O5 : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	PC_D : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	RAM : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	REG_INTI_D : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	REG_INTX_D : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	RESET : IN STD_LOGIC;
	sel0 : IN STD_LOGIC;
	sel1 : IN STD_LOGIC;
	sel2 : IN STD_LOGIC;
	X_D : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	XIRQn : IN STD_LOGIC;
	Y_D : OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : m68hc11
	PORT MAP (
-- list connections between master ports and signals
	ACCA_D => ACCA_D,
	ACCB_D => ACCB_D,
	ADDRESS => ADDRESS,
	AP_D => AP_D,
	AUX_D => AUX_D,
	BOTON => BOTON,
	CLK => CLK,
	Debug_Q => Debug_Q,
	Debug_Yupa => Debug_Yupa,
	Edo_Pres => Edo_Pres,
	enaY_D => enaY_D,
	Flag_C => Flag_C,
	Flag_H => Flag_H,
	Flag_I => Flag_I,
	Flag_N => Flag_N,
	Flag_S => Flag_S,
	Flag_V => Flag_V,
	Flag_X => Flag_X,
	Flag_Z => Flag_Z,
	INSTRUC_D => INSTRUC_D,
	INT_D => INT_D,
	IRQn => IRQn,
	led1 => led1,
	led2 => led2,
	led3 => led3,
	led4 => led4,
	led5 => led5,
	led6 => led6,
	led7 => led7,
	led8 => led8,
	led9 => led9,
	O0 => O0,
	O1 => O1,
	O2 => O2,
	O3 => O3,
	O4 => O4,
	O5 => O5,
	PC_D => PC_D,
	RAM => RAM,
	REG_INTI_D => REG_INTI_D,
	REG_INTX_D => REG_INTX_D,
	RESET => RESET,
	sel0 => sel0,
	sel1 => sel1,
	sel2 => sel2,
	X_D => X_D,
	XIRQn => XIRQn,
	Y_D => Y_D
	);

-- CLK
t_prcs_CLK: PROCESS
BEGIN
LOOP
	CLK <= '0';
	WAIT FOR 1000 ps;
	CLK <= '1';
	WAIT FOR 1000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_CLK;

-- RESET
t_prcs_RESET: PROCESS
BEGIN
	RESET <= '1';
WAIT;
END PROCESS t_prcs_RESET;

-- XIRQn
t_prcs_XIRQn: PROCESS
BEGIN
	XIRQn <= '1';
	WAIT FOR 371000 ps;
	XIRQn <= '0';
	WAIT FOR 2000 ps;
	XIRQn <= '1';
WAIT;
END PROCESS t_prcs_XIRQn;

-- IRQn
t_prcs_IRQn: PROCESS
BEGIN
	IRQn <= '1';
	WAIT FOR 371000 ps;
	IRQn <= '0';
	WAIT FOR 2000 ps;
	IRQn <= '1';
WAIT;
END PROCESS t_prcs_IRQn;
END m68hc11_arch;
