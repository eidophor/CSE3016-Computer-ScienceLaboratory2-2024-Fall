`timescale 1ns / 1ps

module bcd (
    input Cin,              // 초기 입력 캐리
    
    // A 입력 비트
    input [4:1] A,
    
    // B 입력 비트
    input [4:1] B,
    
    // 결과 비트
    output [4:1] Sum,
    
    // 최종 출력 캐리
    output Cout
);

wire SumTemp[4:1];
wire Carry[4:1];
wire AdjustedCarry[4:1];

// 초기 덧셈 수행
assign SumTemp[1] = A[1] ^ B[1] ^ Cin;
assign Carry[1] = Cin & (A[1] ^ B[1]) | (A[1] & B[1]);

assign SumTemp[2] = A[2] ^ B[2] ^ Carry[1];
assign Carry[2] = Carry[1] & (A[2] ^ B[2]) | (A[2] & B[2]);

assign SumTemp[3] = A[3] ^ B[3] ^ Carry[2];
assign Carry[3] = Carry[2] & (A[3] ^ B[3]) || (A[3] & B[3]);

assign SumTemp[4] = A[4] ^ B[4] ^ Carry[3];
assign Carry[4] = Carry[3] & (A[4] ^ B[4]) | (A[4] & B[4]);

// BCD 보정 캐리 계산
assign Cout = Carry[4] | (SumTemp[3] & SumTemp[4]) | (SumTemp[2] & SumTemp[4]);

// 보정 덧셈 수행
assign Sum[1] = SumTemp[1];
assign AdjustedCarry[1] = 0 & (SumTemp[1] ^ 0) | (SumTemp[1] & 0);

assign Sum[2] = SumTemp[2] ^ Cout ^ AdjustedCarry[1];
assign AdjustedCarry[2] = AdjustedCarry[1] & (SumTemp[2] ^ Cout) | (SumTemp[2] & Cout);

assign Sum[3] = SumTemp[3] ^ Cout ^ AdjustedCarry[2];
assign AdjustedCarry[3] = AdjustedCarry[2] & (SumTemp[3] ^ Cout) | (SumTemp[3] & Cout);

assign Sum[4] = SumTemp[4] ^ 0 ^ AdjustedCarry[3];
assign AdjustedCarry[4] = AdjustedCarry[3] & (SumTemp[4] ^ 0) | (SumTemp[4] & 0);

endmodule
