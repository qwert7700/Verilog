`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/06/2024 05:28:14 PM
// Design Name: 
// Module Name: dff_tb
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

module dff_tb(

    );
    
reg rst_n ;
reg clk;
reg d1 ;

wire q1 ;

dff dff_inst(
     .rst_n(rst_n),
     .clk(clk),
     .d(d1),
    
     .q(q1)
    );

always #100 clk = ~clk ;

initial begin 
    rst_n = 0 ;
    clk = 0 ;
    d1 = 0 ;
    
    @(posedge clk) ;
    rst_n <= 1 ;
    
    @(posedge clk) ;
    d1 <= 1 ;

    @(posedge clk) ;
    d1 <= 0 ;
    

end 
    
endmodule
