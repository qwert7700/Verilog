`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/09/2024 03:08:06 PM
// Design Name: 
// Module Name: counterShiftRegister
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


module counterShiftRegister(
    input wire rst_n,
    input wire clk,
    input wire enable,

    output wire count_pulse
    ) ;

    reg [15:0] count ;
    
    always@(posedge clk or negedge rst_n) begin 
        if(!rst_n) begin 
           count <= 16'h0001 ; 
        end else begin 
            if(enable) begin 
//                count <= count << 1 ;
                count <= {count[14:0],count[15]};
            end else begin 
                count <= count ;
            end 
        end 
    end 

    assign count_pulse = count[9] ;

endmodule 