`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/09/2024 07:23:32 PM
// Design Name: 
// Module Name: countUpDown
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


module countUpDown(
    input wire rst_n,
    input wire clk,
    input wire enable,
    input wire countUpDown,
    
    output reg [3:0] count 
    );
  
    always@(posedge clk or negedge rst_n) begin 
        if(!rst_n) begin 
            count <= 4'h0 ;
        end else begin 
            if(enable) begin 
                if(countUpDown) begin 
                    count <= count + 1'b1 ;
                end else begin 
                    count <= count - 1'b1 ;
                end
             end else begin 
                // count <= count 
             end
        end 
    end   
    
    
endmodule
