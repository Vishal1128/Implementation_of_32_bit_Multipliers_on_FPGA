`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.10.2019 18:59:27
// Design Name: 
// Module Name: Thirtytwo_Bits_vedic
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


module Thirtytwo_Bits_vedic(a,b,c);
    input [31:0] a;
    input [31:0] b;
    output [63:0] c;

wire [31:0]d0;	
wire [31:0]d1;	
wire [31:0]d2;
wire [31:0]d3;
wire [31:0]d4;
wire [47:0]d5;
wire [47:0]d6;	
wire [63:0]c;
wire [31:0]n1;
wire [47:0]n2;
wire [47:0]n3;
wire [47:0]n4;

Sixteen_Bits_vedic z1(a[15:0],b[15:0],d0[31:0]);
Sixteen_Bits_vedic z2(a[31:16],b[15:0],d1[31:0]);
Sixteen_Bits_vedic z3(a[15:0],b[31:16],d2[31:0]);
Sixteen_Bits_vedic z4(a[31:16],b[31:16],d3[31:0]);

assign n1 ={16'b0,d0[31:16]};
adder32 z5(d1[31:0],n1,d4);
assign n2 ={16'b0,d2[31:0]};
assign n3 ={d3[31:0],16'b0};
adder48 z6(n2,n3,d5);
assign n4={16'b0,d4[31:0]};
adder48 z7(n4,d5,d6);
assign c[15:0]=d0[15:0];
assign c[63:16]=d6[47:0];

endmodule
