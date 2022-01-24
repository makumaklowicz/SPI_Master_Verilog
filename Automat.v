`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:06:57 01/23/2022 
// Design Name: 
// Module Name:    Automat 
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
module Automat(
    input in_clock,
    input start,
    output out_clock,
    output ncs
    );
	 
reg out_state;	
reg cs_state1;
reg cs_state2;
integer counter;
reg temp;


	 
initial
	begin
		out_state=1;
		counter=0;
		cs_state1=0;
		cs_state2=0;
		temp=0;
	end	 
	
always @(negedge start)	
begin
  //counter=0;
  cs_state1=!cs_state1;
end

 
always @(negedge in_clock)
begin
end

always @(posedge in_clock)
begin
	if (counter<8 & (cs_state1^cs_state2))
	begin
		counter=counter+1;
		temp=1;
	end
	else if(temp==1 & counter>=8)
	begin
		cs_state2=!cs_state2;
		temp=0;
		counter=0;
	end
end

assign clk=!(in_clock&temp);
//posedge clk or negedge clk
always @(posedge clk or negedge clk)
begin
		out_state=!out_state;
	
end

assign out_clock=!out_state;
assign ncs=!(cs_state1^cs_state2);

endmodule
