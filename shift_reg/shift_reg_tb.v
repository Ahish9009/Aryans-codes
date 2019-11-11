`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   22:38:30 11/11/2019
// Design Name:   shift_reg
// Module Name:   /home/ahish/Desktop/VLSI-Assignment-Aryan/shift_reg/shift_reg_tb.v
// Project Name:  shift_reg
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: shift_reg
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module shift_reg_tb;

	// Inputs
	reg clk;
	reg p_in0;
	reg p_in1;
	reg p_in2;
	reg p_in3;
	reg left_shift_inp;
	reg right_shift_inp;
	reg select1;
	reg select0;

	// Outputs
	wire p_out3;
	wire p_out2;
	wire p_out1;
	wire p_out0;

	// Instantiate the Unit Under Test (UUT)
	shift_reg uut (
		.clk(clk), 
		.p_in0(p_in0), 
		.p_in1(p_in1), 
		.p_in2(p_in2), 
		.p_in3(p_in3), 
		.left_shift_inp(left_shift_inp), 
		.right_shift_inp(right_shift_inp), 
		.select1(select1), 
		.select0(select0), 
		.p_out3(p_out3), 
		.p_out2(p_out2), 
		.p_out1(p_out1), 
		.p_out0(p_out0)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		p_in0 = 0;
		p_in1 = 0;
		p_in2 = 0;
		p_in3 = 0;
		left_shift_inp = 0;
		right_shift_inp = 0;
		select1 = 0;
		select0 = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
	always #1 clk=~clk;
	always #2 p_in0=~p_in0;
	always #3 p_in1=~p_in1;
	always #4 p_in2=~p_in2;
	always #5 p_in3=~p_in3;
	always #6 left_shift_inp=~left_shift_inp;
	always #7 right_shift_inp=~right_shift_inp;
	always #8 select1=~select1;
	always #9 select0=~select0;
      
endmodule

