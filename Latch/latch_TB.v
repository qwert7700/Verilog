`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/06/2024 05:58:38 PM
// Design Name: 
// Module Name: latch_TB
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

module latch_TB(

    );
    
reg rst_n ;
reg enable ;
reg d1 ;

wire q1 ;

latch latch_inst(
     .rst_n(rst_n),
     .enable(enable),
     .d(d1),
    
     .q(q1)
    );

initial begin 
    rst_n = 0 ;
    enable = 1 ;
    d1 = 0 ;

    #100
    enable = 0 ;
    rst_n = 1 ;

    #100
    d1 = 1 ;
    #100 
    d1 = 0 ;

    enable = 1 ;
    #100 
    d1 = 1 ;
    
    #100
    enable = 0 ;
    
    #100 
    d1 = 0 ;
end 
    
endmodule
