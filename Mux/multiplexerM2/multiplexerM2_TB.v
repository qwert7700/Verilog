
`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/20/2024 04:28:04 PM
// Design Name: 
// Module Name: multiplexerM2_TB
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


module multiplexerM2_TB(

    );
    
    
    reg a ;
    reg b ;
    reg sel ;
    
    wire o ;
    
    multiplexerM2 multiplexerM2_inst(
        .a(a),
        .b(b),
        .sel(sel),
        .o(o)
    );
    
    initial begin 
        a = 0 ;
        b = 0 ;
        sel = 0 ;
        
        #100 ;
        a = 0 ;
        b = 1 ;
        
        #100 ;
        sel = 1 ;
        
        #100 ;
        a = 1 ;
        
        #100 ;
        sel = 0 ;
        
        #100 ;
        a = 0;
        
    end
    
endmodule
