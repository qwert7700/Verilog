`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/05/2024 07:59:47 PM
// Design Name: 
// Module Name: orGate_TB
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


module orGate_TB(

    );
    
    
    reg in1 ;
    reg in2 ;
    wire out ;
    
    orGate orGate_inst(
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
