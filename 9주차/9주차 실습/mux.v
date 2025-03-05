`timescale 1ns / 1ps

module mux(
    input s0, s1, a, b, c, d,
    output f
    );
    
assign f = (~s0 & ~s1 & a) | (s0 & ~s1 & b) | (~s0 & s1 & c) | (s0 & s1 & d);

endmodule
