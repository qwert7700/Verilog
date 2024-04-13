`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/09/2024 07:33:59 PM
// Design Name: 
// Module Name: countUpDown_TB
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


module countUpDown_TB(

    );
    
    reg rst_n ;
    reg clk ;
    reg enable ;
    reg countUpDown ;
    
    wire [3:0] count ;
    
    countUpDown countUpDown_inst(
                .rst_n(rst_n),
                .clk(clk),
                .enable(enable),
                .countUpDown(countUpDown),
    
                .count(count) 
    );
    
    always #100 clk = ~clk ;
    
    initial begin 
        clk = 0 ;
        rst_n = 1 ;
        enable = 0 ;
        countUpDown = 0 ;
        
        @(posedge clk) ; 
        rst_n = 0 ;
        
        @(posedge clk) ; 
        rst_n = 1 ;
        
        @(posedge clk) ;
        enable = 1 ;
        countUpDown = 1 ;
        
        repeat(10) @(posedge clk) ;
        countUpDown = 0 ;
        
    end 
endmodule
