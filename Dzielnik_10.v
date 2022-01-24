`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:14:02 01/23/2022 
// Design Name: 
// Module Name:    Dzielnik_10 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module Dzielnik_10(
    input in_clock,
    output out_clock
    );

integer counter;
reg clock_state;

initial
	begin
		counter = 0;
		clock_state = 1'b0;
	end
	
	
always @(posedge in_clock)
begin 
if (counter<10)
begin
clock_state=1'b0;
counter= counter+1;
end
else
begin
clock_state=1'b1;
counter=0;
end
end
	
assign out_clock=clock_state;	
	
	
endmodule
