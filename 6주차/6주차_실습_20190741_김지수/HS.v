`timescale 1ns / 1ps

module HS(
    input a,b,
    output dif,bout
    );

//dif = A XOR B 
assign dif = (~a&b)|(a&~b);
//borrow out = A' AND B
assign bout = (~a)&b;     
    
endmodule
