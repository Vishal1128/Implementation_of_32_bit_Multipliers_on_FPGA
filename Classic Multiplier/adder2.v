`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.10.2019 03:21:28
// Design Name: 
// Module Name: adder2
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


module adder2(A,B,C);
    input [1:0] A;
    input [1:0] B;
    output [1:0] C;
    wire [1:0] c;
    halfadder h1(A[0],B[0],C[0],c[0]);
    fulladder f1(A[1],B[1],c[0],C[1],c[1]);    
    
    
endmodule
