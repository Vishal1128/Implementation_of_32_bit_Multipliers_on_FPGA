`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.10.2019 03:23:34
// Design Name: 
// Module Name: adder16
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


module adder16(input [15:0] a, input [15:0] b, output [15:0] out);

wire [15:0] c;
halfadder h1(a[0],b[0],out[0],c[0]);
fulladder fu1(a[1],b[1],c[0],out[1],c[1]);
fulladder fu2(a[2],b[2],c[1],out[2],c[2]);
fulladder fu3(a[3],b[3],c[2],out[3],c[3]);
fulladder fu4(a[4],b[4],c[3],out[4],c[4]);
fulladder fu5(a[5],b[5],c[4],out[5],c[5]); 
fulladder fu6(a[6],b[6],c[5],out[6],c[6]); 
fulladder fu7(a[7],b[7],c[6],out[7],c[7]); 
fulladder fu8(a[8],b[8],c[7],out[8],c[8]); 
fulladder fu9(a[9],b[9],c[8],out[9],c[9]); 
fulladder fu10(a[10],b[10],c[9],out[10],c[10]); 
fulladder fu11(a[11],b[11],c[10],out[11],c[11]); 
fulladder fu12(a[12],b[12],c[11],out[12],c[12]); 
fulladder fu13(a[13],b[13],c[12],out[13],c[13]); 
fulladder fu14(a[14],b[14],c[13],out[14],c[14]); 
fulladder fu15(a[15],b[15],c[14],out[15],c[15]); 

endmodule
