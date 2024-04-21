`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/21/2024 11:04:06 AM
// Design Name: 
// Module Name: bunchOfRegSelectLine
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


module bunchOfRegSelectLine(
    input wire clk,
    input wire rst_n,
    input wire [7:0] d,
    input wire [1:0] addr,
    output reg [7:0] q0,
    output reg [7:0] q1,
    output reg [7:0] q2
    );

    reg sel0 ;
    reg sel1 ;
    reg sel2 ;
    
    always @(posedge clk or negedge rst_n) begin 
    
        sel0 = (addr == 2'b00) ;
        sel1 = (addr == 2'b01) ;
        sel2 = (addr == 2'b10) ;
        
        if(!rst_n) begin 
           q0 <= 8'h00 ; 
           q1 <= 8'h00 ; 
           q2 <= 8'h00 ; 
        end else begin 
            if(sel0) begin 
                q0 <= d ;
            end else if (sel1) begin 
                q1 <= d ;
            end else if (sel2) begin 
                q2 <= d ;
            end 
        end  

    end 


    
endmodule