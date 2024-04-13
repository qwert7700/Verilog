`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/06/2024 05:56:55 PM
// Design Name: 
// Module Name: latch
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


module latch(
    input wire rst_n,
    input wire enable,
    input wire d,
    
    output reg q
    );
    
   always@(*) begin          //Latch with negative enable and negative reset 
        if(!rst_n) begin 
            q = 1'b0 ;
        end else begin
            if(enable) begin 
                q = d ;
            end else begin 
                q = q ; 
            end   
        end 
   end  
endmodule
