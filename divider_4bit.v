`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.06.2023 21:45:39
// Design Name: 
// Module Name: divider_4bit
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


module divider_4bit(
    input [3:0]dividend,
    input [3:0]divisor,
    output reg [3:0]quotient,
    output reg [3:0]remainder
    );
 always@(dividend,divisor)
 begin
 quotient=0;
 remainder=dividend;
 while(remainder>=divisor)
 begin
 remainder=remainder - divisor;
 quotient=quotient+1;
 end
 end   
endmodule
