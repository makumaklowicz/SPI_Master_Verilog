`timescale 1ps / 1fs
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:14:42 01/23/2022 
// Design Name: 
// Module Name:    Dzielnik_10000 
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
module Dzielnik_10000(
    input in_clock,
    output out_clock
    );
reg [15:0] counter;
reg clock_state;

initial
	begin
		counter = 16'b0000000000000001;
		clock_state = 1'b0;
	end
	
	
always @(posedge in_clock)
begin 
counter=counter+1;
if (counter==16'b1100001101010000)
begin
clock_state=!clock_state;
counter=16'b0000000000000001;
end

end
	
assign out_clock=clock_state;	
	
	
endmodule
