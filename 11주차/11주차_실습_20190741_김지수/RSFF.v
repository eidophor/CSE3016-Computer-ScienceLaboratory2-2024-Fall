`timescale 1ns / 1ps

module RSFF(
    input s, r, clock,
    output Q, NQ
    );
    
assign Q = ~(~(clock & s) & NQ);
assign NQ = ~(~(clock & r) & Q);
    
endmodule
