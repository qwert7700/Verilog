`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/08/2024 06:55:40 PM
// Design Name: 
// Module Name: counter
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

module counter (
    input wire rst_n,
    input wire clk,
    input wire enable,

    output wire count_pulse
    ) ;

    reg [3:0] count ;
    
    always@(posedge clk or negedge rst_n) begin 
        if(!rst_n) begin 
           count <= 4'b0000 ; 
           //count = 4'hF ; 
        end else begin 
            if(enable) begin 
                count <= count + 4'b0001 ;
//              count <= count + 4'h1 ;
            end else begin 
                count <= count ;
            end 
        end 
    end 

    assign count_pulse = (count == 4'b1010) ;

endmodule 