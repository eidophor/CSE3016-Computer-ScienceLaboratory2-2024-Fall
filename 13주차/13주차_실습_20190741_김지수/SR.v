`timescale 1ns / 1ps

module SR(
    input clock, reset, in,
    output reg [4:1] out
    );
    
initial out = 4'b0000;

always @(posedge clock) begin
    if (!reset) out = 4'b0000;
    else begin
        out = out << 1;
        out[1] = in;
    end
end
    
endmodule
