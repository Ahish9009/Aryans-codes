`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:19:25 11/11/2019 
// Design Name: 
// Module Name:    shift_reg 
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
module shift_reg(
	input clk,
	input p_in0,
	input p_in1,
	input p_in2,
	input p_in3,
	input left_shift_inp,
	input right_shift_inp,
	input select1,
	input select0,
	output reg p_out3=0,
	output reg p_out2=0,
	output reg p_out1=0,
	output reg p_out0=0
);

always@(negedge clk) begin
	if (select1 == 1 && select0 == 1) begin
		p_out0 <= p_in0;
		p_out1 <= p_in1;
		p_out2 <= p_in2;
		p_out3 <= p_in3;

	end
	// left shift
	else if (select1 == 0 && select0 == 1) begin
		p_out3 <= p_out2;
		p_out2 <= p_out1;
		p_out1 <= p_out0;
		p_out0 <= left_shift_inp;
	end
	// right shift
	else if (select1 == 1 && select0 == 0) begin	
		p_out0 <= p_out1;
		p_out1 <= p_out2;
		p_out2 <= p_out3;
		p_out3 <= right_shift_inp;

	end
end
endmodule
