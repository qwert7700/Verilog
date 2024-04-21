`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/20/2024 08:01:09 PM
// Design Name: 
// Module Name: bunchOfRegEnable
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


module bunchOfRegEnable(
    input wire clk,
    input wire rst_n,
    input wire enable,
    input wire [7:0] d0,
    input wire [7:0] d1,
    input wire [7:0] d2,
    output reg [7:0] q0,
    output reg [7:0] q1,
    output reg [7:0] q2
    );
    
    always @(posedge clk or negedge rst_n) begin 
        if(!rst_n) begin 
            q0 <= 8'h00 ;
            q1 <= 8'h00 ;
            q2 <= 8'h00 ;
        
        end else if(enable)begin 
            q0 <= d0 ;
            q1 <= d1 ;
            q2 <= d2 ;
        
        end else begin 
            q0 <= q0 ;
            q1 <= q1 ;
            q2 <= q2 ;
        
        end 
    
    
    end 
    
    
endmodule