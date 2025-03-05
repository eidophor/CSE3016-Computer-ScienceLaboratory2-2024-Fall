`timescale 1ns / 1ps

module pbc(
    input a, b, c, d, p,
    output pec
    );
    
//Check Even Parity: XOR result�� 1�̸� pec�� 1 
assign pec = a^b^c^d^p;
    
endmodule