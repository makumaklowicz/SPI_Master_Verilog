`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:09:07 01/23/2022 
// Design Name: 
// Module Name:    Register 
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
module Register(
    input start,
    input [7:0] input_data,
	 input in_clock,
    output [7:0] output_data,
    input MISO,
    output MOSI
    );
	 
reg buf_wej;
reg buf_wyj;
reg [7:0] register;
reg [7:0] input_temp;
integer i;
integer temp;
	 
initial
begin
i=0;
temp=0;
end

always @(negedge start)
begin
 input_temp<=input_data;
 temp=0;
end

always @(posedge in_clock)
begin
if(temp==0)
begin
register=input_temp;
temp=1;
end
for (i=0;i<7;i=(i+1))
begin
register[7-i]=register[6-i];
end
  register[0]=buf_wej;
end

always @(negedge in_clock)
begin
buf_wyj<=input_temp[7];
buf_wej<=MISO;
end

assign MOSI=buf_wyj;
assign output_data=register;
endmodule
