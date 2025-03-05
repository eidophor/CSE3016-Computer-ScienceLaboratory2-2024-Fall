`timescale 1ns / 1ps

module comp_tb;
reg aa, bb, cc, dd;
wire f1, f2, f3;

comp u_test(
.a (aa), .b (bb), .c (cc), .d (dd),
.f1 (f1), .f2 (f2), .f3 (f3)
);

initial begin 
aa = 1'b0;
bb = 1'b0;
cc = 1'b0;
dd = 1'b0;
end

always @(aa or bb or cc or dd) begin
    aa <= #400 ~aa;
    bb <= #200 ~bb;
    cc <= #100 ~cc;
    dd <= #50 ~dd;
end

initial begin
    #800
    $finish;
end
endmodule