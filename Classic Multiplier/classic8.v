`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.10.2019 03:18:27
// Design Name: 
// Module Name: classic8
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



module classic8(input [7:0] a, input [7:0] b,output [15:0] out);
wire [7:0] out1,out2,out3,out4,out5,out6,out7,out8;
classic4 c11(a[3:0],b[3:0],out1[7:0]);
classic4 c12(a[7:4],b[3:0],out2[7:0]);
classic4 c13(a[3:0],b[7:4],out3[7:0]);
classic4 c14(a[7:4],b[7:4],out4[7:0]);
assign out[15:12]=out4[7:4];
assign out[3:0]=out1[3:0];
assign out5={4'b0,out1[7:4]};
assign out6={out4[3:0],4'b0};
adder8 ad1(out5[7:0],out2[7:0],out7[7:0]);
adder8 ad2(out3[7:0],out6[7:0],out8[7:0]);
adder8 ad3(out7[7:0],out8[7:0],out[11:4]);
endmodule

