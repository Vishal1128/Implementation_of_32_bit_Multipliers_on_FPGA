`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.10.2019 02:55:44
// Design Name: 
// Module Name: test_122
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


module test_122( );

reg [31:0] a;
reg [31:0] b;

wire [63:0] out;
 
  wallace32 vis(.a(a),.b(b),.out(out));
 
 initial begin
 
 a = 2147483648 ;
 b = 2147483648 ;
 
 #10 $display("%b",out);
 
 end
 
 endmodule


