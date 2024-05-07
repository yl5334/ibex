`timescale 1 ns/ 1ps

module DMEM(
	   
   input                    clock,
   input                    cen,
   input                    wen,
   input [7:0]              addr,
   input [31:0]             data_w,
   output reg [31:0]            data_r

);

dmem dmem0(
	.A(addr),
	.D(data_w),
	.Q(data_r),
	.WEN(wen),
	.CEN(cen),
	.CLK(clock)			
);

endmodule
