`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.10.2019 17:43:27
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


module adder8(A,B,S);
    input [7:0] A;
    input [7:0] B;
    output [7:0] S;
   
  wire [7:0] c;
 
  ha f(A[0],B[0],S[0],c[0]);
  fa f1(A[1],B[1],c[0],S[1],c[1]);
  fa f2(A[2],B[2],c[1],S[2],c[2]);
  fa f3(A[3],B[3],c[2],S[3],c[3]);
  fa f4(A[4],B[4],c[3],S[4],c[4]);
  fa f5(A[5],B[5],c[4],S[5],c[5]);  
  fa f6(A[6],B[6],c[5],S[6],c[6]);
  fa f7(A[7],B[7],c[6],S[7],c[7]);
  
endmodule





