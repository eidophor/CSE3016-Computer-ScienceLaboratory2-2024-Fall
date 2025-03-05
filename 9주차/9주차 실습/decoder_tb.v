`timescale 1ns / 1ps

module decoder_tb;
reg aa, bb;
wire D0, D1, D2, D3;

decoder u_test(
.a (aa), .b (bb),
.D0 (D0), .D1 (D1), .D2 (D2), .D3 (D3)
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
