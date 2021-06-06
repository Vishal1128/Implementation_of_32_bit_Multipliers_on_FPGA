`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.10.2019 16:52:55
// Design Name: 
// Module Name: Four_Bitss_vedic
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


module Four_Bitss_vedic(a,b,c);
    input [3:0] a;
    input [3:0] b;
    output [7:0] c;
    
wire [3:0]d0;	
wire [3:0]d1;	
wire [3:0]d2;
wire [3:0]d3;
wire [3:0]d4;
wire [5:0]d5;
wire [5:0]d6;	
wire [7:0]c;
wire [3:0]n1;
wire [5:0]n2;
wire [5:0]n3;
wire [5:0]n4;

Two_Bits_vedic z1(a[1:0],b[1:0],d0[3:0]);
Two_Bits_vedic z2(a[3:2],b[1:0],d1[3:0]);
Two_Bits_vedic z3(a[1:0],b[3:2],d2[3:0]);
Two_Bits_vedic z4(a[3:2],b[3:2],d3[3:0]);

assign n1 ={2'b0,d0[3:2]};
adder4a z5(d1[3:0],n1,d4);
assign n2 ={2'b0,d2[3:0]};
assign n3 ={d3[3:0],2'b0};
adder6 z6(n2,n3,d5);
assign n4={2'b0,d4[3:0]};
adder6 z7(n4,d5,d6);
 
assign c[1:0]=d0[1:0];
assign c[7:2]=d6[5:0];

endmodule
