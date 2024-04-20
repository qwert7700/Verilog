`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/18/2024 02:17:34 PM
// Design Name: 
// Module Name: multiplexerM2
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


module multiplexerM2(
        input wire a,
        input wire b,
        input wire sel,
        output reg o
    );

    always @(*) begin 
        if(sel) begin 
            o = b ;
        end else begin 
            o = a ;
        end 
    
    end 
    
    
    
endmodule
