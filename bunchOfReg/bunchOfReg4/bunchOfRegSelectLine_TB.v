`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/21/2024 12:28:51 PM
// Design Name: 
// Module Name: bunchOfRegSelectLine_TB
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


module bunchOfRegSelectLine_TB(

    );

reg clk ;
reg rst_n ;
reg [7:0] d ;
reg [1:0] addr ;

wire [7:0] q0 ;
wire [7:0] q1 ;
wire [7:0] q2 ;

bunchOfRegSelectLine bunchOfRegSelectLine_inst(
    .clk(clk),
    .rst_n(rst_n),
    .d(d),
    .addr(addr),
    .q0(q0),
    .q1(q1),
    .q2(q2)
    );

always #100 clk = ~clk ;

initial begin 
    clk = 0 ;
    rst_n = 0 ;
    d = 8'h00 ;
    addr = 2'b00 ;

    #100 
    d = 8'hFF ; 
    addr = 2'b01 ;

    #100 
    d = 8'hAA ;
    
    #100 
    addr = 2'b10 ;

    #100 
    addr = 2'b00 ;

end 

endmodule