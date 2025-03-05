`timescale 1ns / 1ps

module FA_tb;
reg aa, bb, cin;
wire sum, cout;

FA u_test(
.a (aa), .b (bb), .cin (cin),
.sum (sum), .cout (cout)
);

initial begin 
aa = 1'b0;
bb = 1'b0;
cin = 1'b0;
end

always @(cin or aa or bb) begin
     aa <= #200 ~aa;
     bb <= #100 ~bb;
     cin <= #50 ~cin;
end

initial begin
    #400
    $finish;
end
endmodule
