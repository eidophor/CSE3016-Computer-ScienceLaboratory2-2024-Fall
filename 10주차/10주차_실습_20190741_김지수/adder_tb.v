`timescale 1ns / 1ps

module adder_tb;

reg Cin;
reg [3:0] A;
reg [3:0] B;
wire [4:1] C;
wire [3:0] S;

adder u_test(
 .Cin (Cin ),
.A (A), 
.B (B),
.C (C),
.S (S)
);

initial begin
    Cin = 1'b0;
    A = 4'b0;
    B = 4'b0;
end

always @(Cin or A[0] or A[1] or A[2] or A[3] or B[0] or B[1] or B[2] or B[3]) begin
    Cin <= #256 ~Cin;
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
