`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.06.2023 21:49:42
// Design Name: 
// Module Name: divider_4bit_tb
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


module divider_4bit_tb(

    );
    reg [3:0]dividend,divisor;
    wire [3:0]quotient,remainder;
    divider_4bit aab(.dividend(dividend),.remainder(remainder),.quotient(quotient),.divisor(divisor));
    always begin
    dividend=$random;
    divisor=$random;
    #10;
    end
    initial
    begin $monitor("%d /%0d = %0d with remainder %0d",dividend,divisor,quotient,remainder);
    #100 $finish;
    end
    
endmodule
