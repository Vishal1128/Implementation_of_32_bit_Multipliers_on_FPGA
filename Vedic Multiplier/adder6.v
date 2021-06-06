`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.10.2019 17:13:04
// Design Name: 
// Module Name: adder6
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


module adder6(A,B,S);
    input [5:0] A;
    input [5:0] B;
    output [5:0] S;
    
  wire [5:0] c;
  
  ha f(A[0],B[0],S[0],c[0]);
  fa f1(A[1],B[1],c[0],S[1],c[1]);
  fa f2(A[2],B[2],c[1],S[2],c[2]);
  fa f3(A[3],B[3],c[2],S[3],c[3]);
  fa f4(A[4],B[4],c[3],S[4],c[4]);
  fa f5(A[5],B[5],c[4],S[5],c[4]);
   
endmodule
