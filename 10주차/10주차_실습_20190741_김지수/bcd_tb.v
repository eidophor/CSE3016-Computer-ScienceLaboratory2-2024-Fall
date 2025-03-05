`timescale 1ns / 1ps

module bcd_tb;
reg Cin;
reg [4:1] A, B;

wire [4:1]Sum;
wire Cout;

bcd u_test (
    .Cin (Cin), 
    .A(A), .B(B),
    .Sum(Sum),
    .Cout (Cout)
);

initial begin
    Cin = 1'b0;
    A = 4'b0;
    B = 4'b0;
end

always@(Cin or A[1] or A[2] or A[3] or A[4] or B[1] or B[2] or B[3] or B[4]) begin
    Cin <=#256 ~Cin;
    A[1] <= #128 ~A[1];
    A[2] <= #64 ~A[2];
    A[3] <= #32 ~A[3];
    A[4] <= #16 ~A[4];

    B[1] <= #8 ~B[1];
    B[2] <= #4 ~B[2];
    B[3] <= #2 ~B[3];
    B[4] <= #1 ~B[4];
end

initial begin
    #512
    $finish;
end
    
endmodule
