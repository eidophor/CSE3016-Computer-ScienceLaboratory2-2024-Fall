`timescale 1ns / 1ps

module RSFF_tb;

reg clock, s,r;
wire Q, NQ;

RSFF u_test (
    .clock (clock), .s (s), .r (r), .Q (Q), .NQ (NQ)
);

initial begin
    clock = 1'b0;
    s = 1'b0;
    r = 1'b0;
end

always @(clock or s or r) begin 
    clock <= #20 ~clock;
    s <= #10 ~s;
    r <= #5 ~r;
end

initial begin 
    #80
    $finish;
end

endmodule