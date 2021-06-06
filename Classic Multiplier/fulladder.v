`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.10.2019 03:25:16
// Design Name: 
// Module Name: fulladder
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



module fulladder(input a,input b,input cin,output sum1,output carry);
xor #4 x1(sum1,a,b,cin);
wire s1,s2,s3;
and #1 a1(s1,a,b);
and #1 a2(s2,a,cin);
and #1 a3(s3,b,cin);
or #3 o1(carry,s1,s2,s3);

endmodule


