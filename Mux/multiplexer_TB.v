`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/18/2024 02:01:50 PM
// Design Name: 
// Module Name: multiplexer_TB
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


module multiplexer_TB(

    );
    
    
    reg a ;
    reg b ;
    reg sel ;
    
    wire o ;
    
    multiplexer multiplexer_inst(
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
