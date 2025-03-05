`timescale 1ns / 1ps

module FS(
    input a,b,bin,
    output dif,bout
    );

//dif = (A XOR B) XOR bin
assign dif = ~(~a&b|a&~b)&bin | (~a&b|a&~b)&~bin;

//bout = (A XOR B)' * bin + A' * B
assign bout = (~(~a&b|a&~b)&bin) | (~(a)&b);     
    
endmodule
