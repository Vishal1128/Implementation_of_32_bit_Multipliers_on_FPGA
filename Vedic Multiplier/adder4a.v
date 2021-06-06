`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.10.2019 17:14:11
// Design Name: 
// Module Name: adder4a
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


module adder4a(A,B,C);
    input [3:0] A;
    input [3:0] B;
    output [3:0] C;
    
    
 
  wire [3:0] c;
  
  ha f(A[0],B[0],C[0],c[0]);
  fa f1(A[1],B[1],c[0],C[1],c[1]);
  fa f2(A[2],B[2],c[1],C[2],c[2]);
  fa f3(A[3],B[3],c[2],C[3],c[3]); 
    
    
endmodule
