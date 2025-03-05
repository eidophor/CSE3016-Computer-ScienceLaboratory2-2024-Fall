`timescale 1ns / 1ps

module HS_tb;
reg aa, bb;
wire dif, bout;

HS u_test(
.a (aa), .b (bb), 
.dif (dif), .bout (bout)
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