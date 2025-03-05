`timescale 1ns / 1ps

module subtractor_tb;

reg bin;
reg [3:0] A;
reg [3:0] B;
wire [4:1] b;
wire [3:0] D;

subtractor u_test(
 .bin (bin ),
.A (A), 
.B (B),
.b (b),
.D (D)
);

initial begin
    bin = 1'b0;
    A = 4'b0;
    B = 4'b0;
end

always @(bin or A[0] or A[1] or A[2] or A[3] or B[0] or B[1] or B[2] or B[3]) begin
    bin <= #256 ~bin;
    A[0] <= #128 ~A[0];
    A[1] <= #64 ~A[1];
    A[2] <= #32 ~A[2];
    A[3] <= #16 ~A[3];
    B[0] <= #8 ~B[0];
    B[1] <= #4 ~B[1];
    B[2] <= #2 ~B[2];
    B[3] <= #1 ~B[3];
end

initial begin
    #512
    $finish;
end


endmodule