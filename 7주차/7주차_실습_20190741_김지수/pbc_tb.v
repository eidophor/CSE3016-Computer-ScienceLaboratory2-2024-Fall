`timescale 1ns / 1ps

module pbc_tb;
reg aa, bb, cc, dd, pp;
wire pec;

pbc u_test(
.a (aa), .b (bb), .c (cc), .d (dd), .p(pp),
.pec (pec)
);

initial begin 
aa = 1'b0;
bb = 1'b0;
cc = 1'b0;
dd = 1'b0;
pp = 1'b0;
end

always @(aa or bb or cc or dd or pp) begin
    aa <= #800 ~aa;
    bb <= #400 ~bb;
    cc <= #200 ~cc;
    dd <= #100 ~dd;
    pp <= #50 ~pp;
end

initial begin
    #1600
    $finish;
end
endmodule