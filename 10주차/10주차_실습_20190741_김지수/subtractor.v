`timescale 1ns / 1ps

module subtractor(
input bin,
input [3:0]A,
input [3:0]B,

output [4:1]b,
output [3:0]D
    );
    
assign D[0] = A[0]^B[0]^bin;
assign b[1] = (~(A[0]^B[0])&bin) | (~A[0]&B[0]);
    
assign D[1] = A[1]^B[1]^b[1];
assign b[2] = (~(A[1]^B[1])&b[1]) | (~A[1]&B[1]);
    
assign D[2] = A[2]^B[2]^b[2];
assign b[3] = (~(A[2]^B[2])&b[2]) | (~A[2]&B[2]);
    
assign D[3] = A[3]^B[3]^b[3];
assign b[4] = (~(A[3]^B[3])&b[3]) | (~A[3]&B[3]);   
    
endmodule
