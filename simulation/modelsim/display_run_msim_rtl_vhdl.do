transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/16144/Desktop/Code/vhdl/VGA_Monitor/display.vhd}
vcom -93 -work work {C:/Users/16144/Desktop/Code/vhdl/VGA_Monitor/map_clk.vhd}
vcom -93 -work work {C:/Users/16144/Desktop/Code/vhdl/VGA_Monitor/patterns.vhd}
vcom -93 -work work {C:/Users/16144/Desktop/Code/vhdl/VGA_Monitor/vga_sync.vhd}

