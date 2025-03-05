`timescale 1ns / 1ps

module pbg(
    input a, b, c, d,
    output e
    );
    
//Even Parity: XOR result가 1이면 parity가 1 
assign e = a^b^c^d;
    
endmodule
