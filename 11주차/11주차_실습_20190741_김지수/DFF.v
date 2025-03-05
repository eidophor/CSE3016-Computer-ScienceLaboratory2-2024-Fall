`timescale 1ns / 1ps

module DFF(
    input d, clock,
    output Q, NQ
    );

assign Q = ~((clock & ~d) | NQ);
assign NQ = ~((clock & d) | Q);
    
endmodule
