`timescale 1ns / 1ps

module pbg(
    input a, b, c, d,
    output e
    );
    
//Even Parity: XOR result�� 1�̸� parity�� 1 
assign e = a^b^c^d;
    
endmodule
