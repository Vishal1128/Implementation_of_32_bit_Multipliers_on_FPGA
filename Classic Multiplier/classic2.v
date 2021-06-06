`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.10.2019 03:16:20
// Design Name: 
// Module Name: classic2
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


module classic2(input [1:0] a,input [1:0] b,output [3:0] out);
wire w1,w2,w3;
wire carry1,carry2;
and #1 a1(out[0],a[0],b[0]);
and #1 a2(w1,b[0],a[1]);
and #1 a3(w2,b[1],a[0]);
halfadder h1(w1,w2,out[1],carry1);
and #1 a4(w3,a[1],b[1]);
halfadder h2(w3,carry1,out[2],carry2);
assign out[3]=carry2;
endmodule
