`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/20/2024 05:36:19 PM
// Design Name: 
// Module Name: mux2Always_TB
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


module mux2Always_TB(

    );
    
    reg [3:0]a ;
    reg [5:0]b ;
    reg [6:0]c ;
    reg [7:0]d ;
    reg [1:0]sel ;
    
    wire [7:0]o ;
    
    
    mux2Always mux2Always_inst(
        .a(a),
        .b(b),
        .c(c),
        .d(d),
        .sel(sel),
        .o(o)
    );
    
    initial begin 
    
        a = 4'b1111 ;
        b = 6'b11_1111 ;
        c = 7'b111_1111 ;
        d = 8'b1111_1111 ;
        sel = 2'b11 ;
        
        #100 
        sel = 2'b00 ;
        
        #100 
        sel = 2'b01 ;
        
        #100 
        sel = 2'b10 ;
        
    
    end 
    
endmodule
