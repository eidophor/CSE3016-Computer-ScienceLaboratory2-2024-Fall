`timescale 1ns / 1ps

module fourand(
    
    input a,b,c,d,
    output e,f,g
    
    );

assign e = a&b;
assign f = e&c;
assign g = f&d;
    
endmodule
