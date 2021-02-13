# VGA_DE0

## Description 
VGA code writen for DE0 FPGA developement board. This board is running a Cyclone III FPGA developed by Altera/Intel. Synthesis done using Quartus Prime 2 ver 13.1
This program was developed running the 50MHz clock on the DE0, and meant for a 640x480 resolution.

### Display
Display is the top level component

### Patterns
The Patterns component determines which pattern is displayed to the VGA monitor

### VGA_SYNC
The VGA_Sync component handles the timing of the Hsync and Vsync signals, calculates col/row count, and sends a signal when VGA output should be on/off for display.