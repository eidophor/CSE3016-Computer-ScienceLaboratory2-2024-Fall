`timescale 1ns / 1ps

module encoder(
    input a, b, c, d,
    output E0, E1
    );
    
assign E0 = a | b;
assign E1 = a | c;
    
endmodule
