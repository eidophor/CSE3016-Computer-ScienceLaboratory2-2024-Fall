`timescale 1ns / 1ps

module pbc(
    input a, b, c, d, p,
    output pec
    );
    
//Check Even Parity: XOR result가 1이면 pec가 1 
assign pec = a^b^c^d^p;
    
endmodule