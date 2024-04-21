`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/21/2024 10:48:43 AM
// Design Name: 
// Module Name: bunchOfRegSingleSource_TB
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


module bunchOfRegSingleSource_TB(

    );
    
    reg clk ;
    reg rst_n ;
    reg [7:0] d ;
    
    wire [7:0] q0 ;
    wire [7:0] q1 ;
    wire [7:0] q2 ;
    
    bunchOfRegSingleSource bunchOfRegSingleSource_inst(
            .clk(clk),
            .rst_n(rst_n),
            .d(d),
            .q0(q0),
            .q1(q1),
            .q2(q2)
    );
    
    
    always #100 clk = ~clk ;
    
    initial begin 
        rst_n = 0 ;
        clk = 0 ;
        d = 8'h01 ;
        
        #100 ;
        rst_n = 1 ;
        
        #100 
        d = 8'hFF ;
        
        #100 
        d = 8'hAA ;    
    end 
    
    
    
endmodule
