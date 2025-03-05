`timescale 1ns / 1ps

module RSFF2(
    input s, r, clock,
    output Q, NQ
    );
    
assign Q = ~((clock & r) | NQ);
assign NQ = ~((clock & s) | Q);
    
endmodule