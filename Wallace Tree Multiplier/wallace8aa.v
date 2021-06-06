`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.10.2019 00:46:02
// Design Name: 
// Module Name: wallace8
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


module wallace8aa (input [7:0] a,input [7:0] b,output [15:0] out);

wire [63:0] sum, carry;
wire [7:0] p0,p1,p2,p3,p4,p5,p6,p7;
genvar i;
generate
for(i=0;i<8;i=i+1) begin

and #1 u1(p0[i],a[0],b[i]);
and #1 u2(p1[i],a[1],b[i]);
and #1 u3(p2[i],a[2],b[i]);
and #1 u4(p3[i],a[3],b[i]);
and #1 u5(p4[i],a[4],b[i]);
and #1 u6(p5[i],a[5],b[i]);
and #1 u7(p6[i],a[6],b[i]);
and #1 u8(p7[i],a[7],b[i]);

end
endgenerate

assign out[0]=p0[0];
halfadder h1(p0[1],p1[0],out[1],carry[0]);
fulladder f1(p1[1],p2[0],carry[0],sum[1],carry[1]);
halfadder h2(p0[2],sum[1],out[2],carry[2]);
fulladder f2(p2[1],p3[0],carry[1],sum[3],carry[3]);
fulladder f3(sum[3],carry[2],p1[2],sum[4],carry[4]);
halfadder h3(sum[4],p0[3],out[3],carry[5]);
fulladder f47(p4[0],p3[1],carry[3],sum[6],carry[6]);
fulladder f4(p2[2],sum[6],carry[4],sum[7],carry[7]);
fulladder f5(sum[7],carry[5],p1[3],sum[8],carry[8]);
halfadder h4(p0[4],sum[8],out[4],carry[9]);
fulladder f6(p4[1],p5[0],carry[6],sum[10],carry[10]);
fulladder f7(sum[10],carry[7],p3[2],sum[11],carry[11]);
fulladder f8(sum[11],carry[8],p2[3],sum[12],carry[12]);
fulladder f9(sum[12],carry[9],p1[4],sum[13],carry[13]);
halfadder h5(sum[13],p0[4],out[5],carry[14]);
fulladder f10(p6[0],p5[1],carry[10],sum[15],carry[15]);
fulladder f11(sum[15],carry[11],p4[2],sum[16],carry[16]);
fulladder f12(sum[16],carry[12],p3[3],sum[17],carry[17]);
fulladder f13(sum[17],carry[13],p2[4],sum[18],carry[18]);
halfadder h6(sum[18],p1[5],sum[19],carry[19]);
halfadder h7(sum[19],p0[6],out[6],carry[20]);
fulladder f14(p7[0],carry[15],p6[1],sum[21],carry[21]);
fulladder f15(sum[21],carry[16],p5[2],sum[22],carry[22]);
fulladder f16(sum[22],carry[17],p4[3],sum[23],carry[23]);
fulladder f17(sum[23],carry[18],p3[4],sum[24],carry[24]);
fulladder f18(sum[24],carry[19],p2[5],sum[25],carry[25]);
fulladder f19(sum[25],carry[20],p1[6],sum[26],carry[26]);
halfadder h8(sum[26],p0[7],out[7],carry[27]);
fulladder f20(p6[2],carry[21],p7[1],sum[28],carry[28]);
fulladder f21(sum[28],carry[22],p5[3],sum[29],carry[29]);
fulladder f22(sum[29],carry[23],p4[4],sum[30],carry[30]);
fulladder f23(sum[30],carry[24],p3[5],sum[31],carry[31]);
fulladder f24(sum[31],carry[25],p2[6],sum[32],carry[32]);
fulladder f25(sum[32],carry[26],p1[7],sum[33],carry[33]);
halfadder h9(sum[33],carry[27],out[8],carry[34]);
fulladder f26(p6[3],carry[28],p7[2],sum[35],carry[35]);
fulladder f27(sum[35],carry[29],p5[4],sum[36],carry[36]);
fulladder f28(sum[36],carry[30],p4[5],sum[37],carry[37]);
fulladder f29(sum[37],carry[31],p3[6],sum[38],carry[38]);
fulladder f30(sum[38],carry[32],p2[7],sum[39],carry[39]);
fulladder f31(sum[39],carry[33],carry[34],out[9],carry[40]);
fulladder f32(p6[4],carry[35],p7[3],sum[41],carry[41]);
fulladder f33(sum[41],carry[36],p5[5],sum[42],carry[42]);
fulladder f34(sum[42],carry[37],p4[6],sum[43],carry[43]);
fulladder f35(sum[43],carry[38],p3[7],sum[44],carry[44]);
fulladder f36(sum[44],carry[39],carry[40],out[10],carry[45]);
fulladder f37(p6[5],carry[41],p7[4],sum[46],carry[46]);
fulladder f38(sum[46],carry[42],p5[6],sum[47],carry[47]);
fulladder f39(sum[47],carry[43],p4[7],sum[48],carry[48]);
fulladder f40(sum[48],carry[44],carry[45],out[11],carry[49]);
fulladder f41(p6[6],carry[46],p7[5],sum[50],carry[50]);
fulladder f42(sum[50],carry[47],p5[7],sum[51],carry[51]);
fulladder f43(sum[51],carry[48],carry[49],out[12],carry[52]);
fulladder f44(p6[7],carry[50],p7[6],sum[53],carry[53]);
fulladder f45(sum[53],carry[51],carry[52],out[13],carry[54]);
fulladder f46(carry[53],carry[54],p7[7],out[14],carry[55]);
assign out[15]=carry[55];

endmodule
