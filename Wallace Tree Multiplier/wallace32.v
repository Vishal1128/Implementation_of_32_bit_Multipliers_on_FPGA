`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.10.2019 00:40:24
// Design Name: 
// Module Name: wallace32
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module wallace32(input [31:0] a, input [31:0] b, output [63:0] out);
wire [31:0] out1,out2,out3,out4,out5,out6,out7,out8;
wallace16 w11(a[15:0],b[15:0],out1[31:0]);
wallace16 w12(a[31:16],b[15:0],out2[31:0]);
wallace16 w13(a[15:0],b[31:16],out3[31:0]);
wallace16 w14(a[31:16],b[31:16],out4[31:0]);
assign out[63:48]=out4[31:16];
assign out[15:0]=out1[15:0];
assign out5[31:16]={16'b0};
assign out5[15:0]=out1[31:16];
assign out6[31:16]=out4[15:0];
assign out6[15:0]={16'b0};
adder32 add1(out5[31:0],out2[31:0],out7[31:0]);
adder32 add2(out3[31:0],out6[31:0],out8[31:0]);
adder32 add3(out7[31:0],out8[31:0],out[47:16]);

endmodule
