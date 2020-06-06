transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {D:/VHDL/68HC11/CISC/RAM/ram.vhd}
vcom -93 -work work {D:/VHDL/68HC11/CISC/Interrupciones/ctrl_interrupciones.vhd}
vcom -93 -work work {D:/VHDL/68HC11/CISC/flags/registro.vhd}
vcom -93 -work work {D:/VHDL/68HC11/CISC/flags/mux3.vhd}
vcom -93 -work work {D:/VHDL/68HC11/CISC/flags/mux2.vhd}
vcom -93 -work work {D:/VHDL/68HC11/CISC/flags/mux1.vhd}
vcom -93 -work work {D:/VHDL/68HC11/CISC/flags/divisor_datos.vhd}
vcom -93 -work work {D:/VHDL/68HC11/CISC/flags/concatenador_datos.vhd}
vcom -93 -work work {D:/VHDL/68HC11/CISC/Contador/contador_id.vhd}
vcom -93 -work work {D:/VHDL/68HC11/CISC/Contador/contador.vhd}
vcom -93 -work work {D:/VHDL/68HC11/CISC/Acumulador/acumulador.vhd}
vcom -93 -work work {D:/VHDL/68HC11/CISC/UPA/upa.vhd}
vcom -93 -work work {D:/VHDL/68HC11/CISC/Secuenciador/memory.vhd}
vcom -93 -work work {D:/VHDL/68HC11/CISC/Secuenciador/registro_sec.vhd}
vcom -93 -work work {D:/VHDL/68HC11/CISC/Secuenciador/logica_seleccion.vhd}
vcom -93 -work work {D:/VHDL/68HC11/CISC/Secuenciador/registro_MicroInst.vhd}
vcom -93 -work work {D:/VHDL/68HC11/CISC/registro_instruccion.vhd}
vcom -93 -work work {D:/VHDL/68HC11/CISC/registro_direccion.vhd}
vcom -93 -work work {D:/VHDL/68HC11/CISC/concatenador_entradas.vhd}
vcom -93 -work work {D:/VHDL/68HC11/CISC/enaY_gen.vhdl}

