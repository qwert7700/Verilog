`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/20/2024 04:53:48 PM
// Design Name: 
// Module Name: multiplexerM3_TB
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


module multiplexerM3_TB(
);
   
    reg a ;
    reg b ;
    reg sel ;
    
    wire o ;
    
    multiplexerM3 multiplexerM3_inst(
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
