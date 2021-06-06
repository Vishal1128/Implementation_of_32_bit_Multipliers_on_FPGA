`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.10.2019 16:59:44
// Design Name: 
// Module Name: Full_adder
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


module fa(A,B,CIN,S,COUT);
    input A;
    input B;
    input CIN;
    output S;
    output COUT;
    assign #3 S = A^B^CIN;
       assign #2 COUT = (CIN&B) | (CIN&A) |(A&B);
endmodule
