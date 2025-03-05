`timescale 1ns / 1ps
module bcd_decoder_tb;

reg A0, A1, A2, A3;
wire D1, D2, D3, D4, D5, D6, D7, D8, D9;

bcd_decoder u_test(
.A0 (A0), .A1 (A1), .A2 (A2), .A3 (A3),
.D1 (D1), .D2 (D2), .D3 (D3), .D4 (D4), .D5 (D5), .D6 (D6), .D7 (D7), .D8 (D8), .D9 (D9)
);

initial begin 
A0 = 1'b0;
A1 = 1'b0;
A2 = 1'b0;
A3 = 1'b0;
end

always @(A0 or A1 or A2 or A3) begin
    A0 <= #400 ~A0;
    A1 <= #200 ~A1;
    A2 <= #100 ~A2;
    A3 <= #50 ~A3;
end

initial begin
    #800
    $finish;
end


endmodule
