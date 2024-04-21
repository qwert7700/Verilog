`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/20/2024 06:12:59 PM
// Design Name: 
// Module Name: mux2Case
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


module mux2Case(
        input wire [3:0]a,
        input wire [5:0]b,
        input wire [6:0]c,
        input wire [7:0]d,
        input wire [1:0] sel,
        output reg [7:0]o
    );

    always @(*) begin 
        case(sel)
            2'b00 : o[7:0] = {4'b0,a[3:0]};
            2'b01 : o[7:0] = {2'b0,b[5:0]};
            2'b10 : o[7:0] = {1'b0,c[6:0]};
            2'b11 : o[7:0] = d[7:0] ;
            default: o[7:0] = 8'h00 ;
        endcase 
            
    end 
    
endmodule
