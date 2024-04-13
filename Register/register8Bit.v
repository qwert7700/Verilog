`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/06/2024 06:38:20 PM
// Design Name: 
// Module Name: register8Bit
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


module register8Bit(
    input wire rst_n,
    input wire clk,
    input wire [7:0] d,
    
    output reg [7:0] q
    );
    
    always@(posedge clk or negedge rst_n) begin // DFF with asynchronous reset (negative) 
        if(!rst_n) begin 
            //q <= 8'h00 ;
            q <= 8'b0000_0000 ;
            //q <= WIDTH'b{WIDTH{0}} ;

        end else begin 
            q <= d ;
        end 
    end 

endmodule
