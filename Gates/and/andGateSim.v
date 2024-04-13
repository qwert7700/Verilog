`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/05/2024 07:12:30 PM
// Design Name: 
// Module Name: andGateSim
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


module andGateSim(

    );
    
    reg in1 ;
    reg in2 ;
    wire out ;
    
    andGate andGate_inst(
            .A(in1),
            .B(in2),
            .O(out)
    );
    
    reg clk ;
    
    initial begin 
        in1 = 1'b0 ;
        in2 = 1'b0 ;
        
        clk = 0 ;
        @(posedge clk) ;
        in1 = 1 ; 
        in2 = 0 ;
        repeat(2) @(posedge clk) ;
        in2 = 1 ;
        @(posedge clk) ;
        in1 = 0 ;
        @(posedge clk) ;
        in2 = 0 ;
        
    end 
    
        always #100 clk = ~clk ;
endmodule
