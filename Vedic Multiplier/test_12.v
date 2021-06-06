`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.10.2019 03:51:34
// Design Name: 
// Module Name: test_12
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


module test_12( );

reg [31:0] a;
reg [31:0] b;

wire [63:0] c;
 
 Thirtytwo_Bits_vedic vis(.a(a),.b(b),.c(c));
 
 initial begin
 
 a = 2147483648  ;
 b = 2147483648 ;
 
 #10 $display("%b",c);
 
 end
 
 endmodule




