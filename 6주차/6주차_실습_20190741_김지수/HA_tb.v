`timescale 1ns / 1ps

module HA_tb;
reg aa, bb;
wire ss, cc;

HA u_test(
.a (aa), .b (bb), 
.c (cc), .s (ss)
);

initial begin 
aa = 1'b0;
bb = 1'b0;
end

always @(aa or bb) begin
    aa <= #100 ~aa;
    bb <= #50 ~bb;
end

initial begin
    #200
    $finish;
end
endmodule