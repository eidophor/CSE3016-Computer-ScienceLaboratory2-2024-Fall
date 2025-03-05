`timescale 1ns / 1ps

module decoder(
    input a, b,
    output D0, D1, D2, D3
    );
    
assign D0 = ~a & ~b;
assign D1 = ~a & b;
assign D2 = a & ~b;
assign D3 = a & b;

endmodule
