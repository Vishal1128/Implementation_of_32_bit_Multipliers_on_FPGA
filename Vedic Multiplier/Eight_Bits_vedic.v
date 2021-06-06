`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.10.2019 17:52:23
// Design Name: 
// Module Name: Eight_Bits_vedic
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


module Eight_Bits_vedic(a,b,c);
    input [7:0] a;
    input [7:0] b;
    output [15:0] c;

wire [7:0]d0;	
wire [7:0]d1;	
wire [7:0]d2;
wire [7:0]d3;
wire [7:0]d4;
wire [11:0]d5;
wire [11:0]d6;	
wire [15:0]c;
wire [7:0]n1;
wire [11:0]n2;
wire [11:0]n3;
wire [11:0]n4;

Four_Bitss_vedic z1(a[3:0],b[3:0],d0[7:0]);
Four_Bitss_vedic z2(a[7:4],b[3:0],d1[7:0]);
Four_Bitss_vedic z3(a[3:0],b[7:4],d2[7:0]);
Four_Bitss_vedic z4(a[7:4],b[7:4],d3[7:0]);

assign n1 ={4'b0,d0[7:4]};
adder8 z5(d1[7:0],n1,d4);
assign n2 ={4'b0,d2[7:0]};
assign n3 ={d3[7:0],4'b0};
adder12 z6(n2,n3,d5);
assign n4={4'b0,d4[7:0]};
adder12 z7(n4,d5,d6);
assign c[3:0]=d0[3:0];
assign c[15:4]=d6[11:0];

endmodule
