`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.10.2019 18:25:09
// Design Name: 
// Module Name: Sixteen_Bits_vedic
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


module Sixteen_Bits_vedic(a,b,c);
    input [15:0] a;
    input [15:0] b;
    output [31:0] c;

wire [15:0]d0;	
wire [15:0]d1;	
wire [15:0]d2;
wire [15:0]d3;
wire [15:0]d4;
wire [23:0]d5;
wire [23:0]d6;	
wire [31:0]c;
wire [15:0]n1;
wire [23:0]n2;
wire [23:0]n3;
wire [23:0]n4;

Eight_Bits_vedic z1(a[7:0],b[7:0],d0[15:0]);
Eight_Bits_vedic z2(a[15:8],b[7:0],d1[15:0]);
Eight_Bits_vedic z3(a[7:0],b[15:8],d2[15:0]);
Eight_Bits_vedic z4(a[15:8],b[15:8],d3[15:0]);

assign n1 ={8'b0,d0[15:8]};
adder16 z5(d1[15:0],n1,d4);
assign n2 ={8'b0,d2[15:0]};
assign n3 ={d3[15:0],8'b0};
adder24 z6(n2,n3,d5);
assign n4={8'b0,d4[15:0]};
adder24 z7(n4,d5,d6);
assign c[7:0]=d0[7:0];
assign c[31:8]=d6[23:0];

endmodule
