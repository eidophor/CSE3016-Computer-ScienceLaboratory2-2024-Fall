`timescale 1ns / 1ps

module bcd (
    input Cin,              // �ʱ� �Է� ĳ��
    
    // A �Է� ��Ʈ
    input [4:1] A,
    
    // B �Է� ��Ʈ
    input [4:1] B,
    
    // ��� ��Ʈ
    output [4:1] Sum,
    
    // ���� ��� ĳ��
    output Cout
);

wire SumTemp[4:1];
wire Carry[4:1];
wire AdjustedCarry[4:1];

// �ʱ� ���� ����
assign SumTemp[1] = A[1] ^ B[1] ^ Cin;
assign Carry[1] = Cin & (A[1] ^ B[1]) | (A[1] & B[1]);

assign SumTemp[2] = A[2] ^ B[2] ^ Carry[1];
assign Carry[2] = Carry[1] & (A[2] ^ B[2]) | (A[2] & B[2]);

assign SumTemp[3] = A[3] ^ B[3] ^ Carry[2];
assign Carry[3] = Carry[2] & (A[3] ^ B[3]) || (A[3] & B[3]);

assign SumTemp[4] = A[4] ^ B[4] ^ Carry[3];
assign Carry[4] = Carry[3] & (A[4] ^ B[4]) | (A[4] & B[4]);

// BCD ���� ĳ�� ���
assign Cout = Carry[4] | (SumTemp[3] & SumTemp[4]) | (SumTemp[2] & SumTemp[4]);

// ���� ���� ����
assign Sum[1] = SumTemp[1];
assign AdjustedCarry[1] = 0 & (SumTemp[1] ^ 0) | (SumTemp[1] & 0);

assign Sum[2] = SumTemp[2] ^ Cout ^ AdjustedCarry[1];
assign AdjustedCarry[2] = AdjustedCarry[1] & (SumTemp[2] ^ Cout) | (SumTemp[2] & Cout);

assign Sum[3] = SumTemp[3] ^ Cout ^ AdjustedCarry[2];
assign AdjustedCarry[3] = AdjustedCarry[2] & (SumTemp[3] ^ Cout) | (SumTemp[3] & Cout);

assign Sum[4] = SumTemp[4] ^ 0 ^ AdjustedCarry[3];
assign AdjustedCarry[4] = AdjustedCarry[3] & (SumTemp[4] ^ 0) | (SumTemp[4] & 0);

endmodule
