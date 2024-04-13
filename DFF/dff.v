`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/06/2024 03:47:16 PM
// Design Name: 
// Module Name: dff
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


module dff(
    input wire rst_n,
    input wire clk,
    input wire d,
    
    output reg q
    );
    
    always@(posedge clk or negedge rst_n) begin // DFF with asynchronous reset (positive) 
        if(!rst_n) begin 
            q <= 1'b0 ;
        end else begin 
            q <= d ;
        end 
    
    
    end 
endmodule
