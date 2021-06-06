`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.10.2019 16:37:15
// Design Name: 
// Module Name: Two_Bits_vedic
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


module Two_Bits_vedic(a,b,c);
    input [1:0] a;
    input [1:0] b;
    output [3:0] c;
    
wire [3:0]c;
wire [3:0]n;

assign c[0]=a[0]&b[0]; 
assign n[0]=a[1]&b[0];
assign n[1]=a[0]&b[1];
assign n[2]=a[1]&b[1];

ha a1(n[0],n[1],c[1],n[3]);
ha a2(n[2],n[3],c[2],c[3]);

endmodule
