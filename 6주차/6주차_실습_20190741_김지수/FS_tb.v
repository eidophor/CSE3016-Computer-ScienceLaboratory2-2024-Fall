`timescale 1ns / 1ps

module FS_tb;
reg aa, bb, bin;
wire dif, bout;

FS u_test(
.a (aa), .b (bb), .bin (bin),
.dif (dif), .bout (bout)
);

initial begin 
aa = 1'b0;
bb = 1'b0;
bin = 1'b0;
end

always @(aa or bb or bin) begin
     aa <= #200 ~aa;
     bb <= #100 ~bb;
     bin <= #50 ~bin;
end

initial begin
    #400
    $finish;
end
endmodule
