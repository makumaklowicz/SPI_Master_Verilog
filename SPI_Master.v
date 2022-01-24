////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____ 
//  /   /\/   / 
// /___/  \  /    Vendor: Xilinx 
// \   \   \/     Version : 14.7
//  \   \         Application : sch2hdl
//  /   /         Filename : SPI_Master.vf
// /___/   /\     Timestamp : 01/23/2022 19:59:02
// \   \  /  \ 
//  \___\/\___\ 
//
//Command: sch2hdl -intstyle ise -family xbr -verilog C:/Users/miste/Desktop/Verilog_SPI/SPI_Master/SPI_Master.vf -w C:/Users/miste/Desktop/Verilog_SPI/SPI_Master/SPI_Master.sch
//Design Name: SPI_Master
//Device: xbr
//Purpose:
//    This verilog netlist is translated from an ECS schematic.It can be 
//    synthesized and simulated, but it should not be modified. 
//
`timescale 1ns / 1ps

module SPI_Master(btn0, 
                  Input_data, 
                  In_clock, 
                  MISO, 
                  MOSI, 
                  NCS, 
                  Output_data, 
                  Out_clock);

    input btn0;
    input [7:0] Input_data;
    input In_clock;
    input MISO;
   output MOSI;
   output NCS;
   output [7:0] Output_data;
   output Out_clock;
   
   wire XLXN_2;
   wire XLXN_3;
   wire NCS_DUMMY;
   
   assign NCS = NCS_DUMMY;
   Dzielnik_10  XLXI_1 (.in_clock(XLXN_2), 
                       .out_clock(XLXN_3));
   Dzielnik_10000  XLXI_2 (.in_clock(In_clock), 
                          .out_clock(XLXN_2));
   Register  XLXI_4 (.input_data(Input_data[7:0]), 
                    .in_clock(NCS_DUMMY), 
                    .MISO(MISO), 
                    .start(btn0), 
                    .MOSI(MOSI), 
                    .output_data(Output_data[7:0]));
   Automat  XLXI_5 (.in_clock(XLXN_3), 
                   .start(btn0), 
                   .ncs(NCS_DUMMY), 
                   .out_clock(Out_clock));
endmodule
