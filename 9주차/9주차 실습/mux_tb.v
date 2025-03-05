`timescale 1ns / 1ps

module mux_tb;
reg s0, s1, aa, bb, cc, dd;
wire f;

mux u_test(
.s0 (s0), .s1 (s1), .a (aa), .b (bb), .c (cc), .d (dd),
.f (f)
);

initial begin 
s0 = 1'b0;
s1 = 1'b0;
aa = 1'b0;
bb = 1'b0;
cc = 1'b0;
dd = 1'b0;
end

always @(s0 or s1 or aa or bb or cc or dd) begin
    s0 <= #800 ~s0;
    s1 <= #400 ~s1;
    aa <= #200 ~aa;
    bb <= #100 ~bb;
    cc <= #50 ~cc;
    dd <= #25 ~dd;
end

initial begin
    #1600
    $finish;
end

endmodule
