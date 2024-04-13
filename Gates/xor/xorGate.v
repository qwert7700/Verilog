`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/06/2024 01:47:30 PM
// Design Name: 
// Module Name: xorGate
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
module xorGate(
    input wire A,
    input wire B,
    output wire O
    );
    
    assign O = A ^ B ;
    
    
endmodule
