`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.10.2019 03:19:59
// Design Name: 
// Module Name: classic16
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


module classic16(input [15:0] a,input [15:0] b,output [31:0] out);

wire [15:0] out1,out2,out3,out4,out5,out6,out7,out8;
classic8 w1(a[7:0],b[7:0],out1[15:0]);
classic8 w2(a[15:8],b[7:0],out2[15:0]);
classic8 w3(a[7:0],b[15:8],out3[15:0]);
classic8 w4(a[15:8],b[15:8],out4[15:0]);
assign out[7:0]=out1[7:0];
assign out[31:24]=out4[15:8];
assign out5[15:8]={8'b0};
assign out5[7:0]=out1[15:8];
assign out6[15:8]=out4[7:0];
assign out6[7:0]={8'b0};
adder16 aad1(out5[15:0],out2[15:0],out7[15:0]);
adder16 aad2(out3[15:0],out6[15:0],out8[15:0]);
adder16 aad3(out7[15:0],out8[15:0],out[23:8]);

endmodule
