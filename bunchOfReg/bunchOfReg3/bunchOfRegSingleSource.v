`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/21/2024 10:48:26 AM
// Design Name: 
// Module Name: bunchOfRegSingleSource
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


module bunchOfRegSingleSource(
    input wire clk,
    input wire rst_n,
    input wire [7:0] d,
    output reg [7:0] q0,
    output reg [7:0] q1,
    output reg [7:0] q2
    );
    
    always @(posedge clk or negedge rst_n) begin 
        if(!rst_n) begin 
            q0 <= 8'h00 ;
            q1 <= 8'h00 ;
            q2 <= 8'h00 ;
        end else begin 
            q0 <= d ;
            q1 <= d ;
            q2 <= d ;
        end 
    
    end 
    
endmodule