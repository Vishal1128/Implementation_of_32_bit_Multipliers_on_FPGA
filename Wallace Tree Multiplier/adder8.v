`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.10.2019 00:49:50
// Design Name: 
// Module Name: adder8
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


module adder8(input [7:0] a,input [7:0] b, output [7:0] out);

wire [7:0] c;
halfadder h1(a[0],b[0],out[0],c[0]);
fulladder f1(a[1],b[1],c[0],out[1],c[1]);
fulladder f2(a[2],b[2],c[1],out[2],c[2]);
fulladder f3(a[3],b[3],c[2],out[3],c[3]);
fulladder f4(a[4],b[4],c[3],out[4],c[4]);
fulladder f5(a[5],b[5],c[4],out[5],c[5]); 
fulladder f6(a[6],b[6],c[5],out[6],c[6]); 
fulladder f7(a[7],b[7],c[6],out[7],c[7]); 

endmodule
