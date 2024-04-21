`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/20/2024 07:25:29 PM
// Design Name: 
// Module Name: bunchOfReg_TB
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


module bunchOfReg_TB(

    );
    
    reg clk ;
    reg rst_n ;
    reg [7:0] d0 ;
    reg [7:0] d1 ;
    reg [7:0] d2 ;

    wire [7:0] q0 ;
    wire [7:0] q1 ;
    wire [7:0] q2 ;

    bunchOfReg bunchOfReg_inst(
            .clk(clk),
            .rst_n(rst_n),
            .d0(d0),
            .d1(d1),
            .d2(d2),
            .q0(q0),
            .q1(q1),
            .q2(q2)
    );
    
    always #100 clk = ~clk ;
    
    initial begin 
        clk = 0 ;
        rst_n = 0 ;
        d0 = 8'h01 ;
        d1 = 8'h0F ;
        d2 = 8'hF0 ;
        
        @(posedge clk) ;
        rst_n <= 1 ;
        d1 <= 8'hFF ;
        
        @(posedge clk) ;
        d1 <= 8'hAA ;
    end 
    
    
endmodule
