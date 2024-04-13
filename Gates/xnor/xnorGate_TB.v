`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/06/2024 02:17:21 PM
// Design Name: 
// Module Name: xnorGate_TB
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


module xnorGate_TB(


    );
    
    
    reg in1 ;
    reg in2 ;
    wire out ;
    
    xnorGate xnorGate_inst(
            .A(in1),
            .B(in2),
            .O(out)
    );
    
    reg clk ;
    
    always #100 clk = ~clk ;
            
    initial begin 
        clk = 0 ;        //initializations 
        in1 = 1'b0 ;
        in2 = 1'b0 ;
        
        
        @(posedge clk) ; // 00
        in1 = 1'b0 ;
        in2 = 1'b0 ;
        
        @(posedge clk) ; // 10
        in1 = 1'b1 ; 
        in2 = 1'b0 ;
        
        @(posedge clk) ; //11
        //in1 = 1 ;
        in2 = 1 ;
        
        @(posedge clk) ; //01
        in1 = 0 ;
        //in2 = 1 ;

        
    end 
   
        
endmodule