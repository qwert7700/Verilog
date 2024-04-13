`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/08/2024 06:58:31 PM
// Design Name: 
// Module Name: counter_TB
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


module counter_TB(

    );
   
    reg rst_n ;
    reg clk ;
    reg enable ;
    
    wire count_pulse ;
    
    counter counter_inst(
                .rst_n(rst_n),
                .clk(clk),
                .enable(enable),

                .count_pulse(count_pulse)
    ) ;
    
    always #100 clk = ~clk ;
    
    initial begin 
    
        rst_n = 0 ;
        clk = 0 ;
        enable = 0 ;
        
        @(posedge clk) ;
        rst_n = 1 ;
        enable = 1 ;
        
        #3000 ;
        enable = 0 ;
        
        
    end 
   

endmodule
