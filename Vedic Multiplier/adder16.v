`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.10.2019 18:11:36
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


module adder16(A,B,C);
    input [15:0] A;
    input [15:0] B;
    output [15:0] C;
  
  wire [15:0] c;
   
  ha f(A[0],B[0],C[0],c[0]);
  fa f1(A[1],B[1],c[0],C[1],c[1]);
  fa f2(A[2],B[2],c[1],C[2],c[2]);
  fa f3(A[3],B[3],c[2],C[3],c[3]);
  fa f4(A[4],B[4],c[3],C[4],c[4]);
  fa f5(A[5],B[5],c[4],C[5],c[5]);
  fa f6(A[6],B[6],c[5],C[6],c[6]);
  fa f7(A[7],B[7],c[6],C[7],c[7]);
  fa f8(A[8],B[8],c[7],C[8],c[8]);
  fa f9(A[9],B[9],c[8],C[9],c[9]);
  fa f10(A[10],B[10],c[9],C[10],c[10]);
  fa f11(A[11],B[11],c[10],C[11],c[11]);
  fa f12(A[12],B[12],c[11],C[12],c[12]); 
  fa f13(A[13],B[13],c[12],C[13],c[13]); 
  fa f14(A[14],B[14],c[13],C[14],c[14]);
  fa f15(A[15],B[15],c[14],C[15],c[15]);
    
endmodule
