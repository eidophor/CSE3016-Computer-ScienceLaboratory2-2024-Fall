`timescale 1ns / 1ps

module DFF_tb;

reg clock, d;
wire Q, NQ;

DFF u_test (
    .clock (clock), .d (d), .Q (Q), .NQ (NQ)
);

initial begin
    clock = 1'b0;
    d = 1'b0;
end

always @(clock or d) begin 
    clock <= #20 ~clock;
    d <= #10 ~d;
end

initial begin 
    #40
    $finish;
end

endmodule
