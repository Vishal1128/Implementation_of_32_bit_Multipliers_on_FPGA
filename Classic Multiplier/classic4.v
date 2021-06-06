`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.10.2019 03:17:22
// Design Name: 
// Module Name: classic4
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


module classic4(input [3:0] a,input [3:0] b,output [7:0] out);
wire [3:0] out1,out2,out3,out4,out5,out6,out7,out8;
classic2 c1(a[1:0],b[1:0],out1[3:0]);
classic2 c2(a[3:2],b[1:0],out2[3:0]);
classic2 c3(a[1:0],b[3:2],out3[3:0]);
classic2 c4(a[3:2],b[3:2],out4[3:0]);
assign out[7:6]=out4[3:2];
assign out[1:0]=out1[1:0];
assign out5={2'b0,out1[3:2]};
assign out6={out4[1:0],2'b0};
adder4 add1(out5[3:0],out2[3:0],out7[3:0]);
adder4 add2(out3[3:0],out6[3:0],out8[3:0]);
adder4 add3(out7[3:0],out8[3:0],out[5:2]);
endmodule
