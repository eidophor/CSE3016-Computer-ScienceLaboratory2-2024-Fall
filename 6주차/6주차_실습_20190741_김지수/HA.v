`timescale 1ns / 1ps

module HA(
    input a,b,
    output s,c
    );

//sum = A XOR B 
assign s = (~a&b)|(a&~b);
//Carry = A AND B
assign c = a&b;     
    
endmodule
