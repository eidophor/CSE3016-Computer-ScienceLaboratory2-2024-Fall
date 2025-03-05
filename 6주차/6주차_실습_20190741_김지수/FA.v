`timescale 1ns / 1ps

module FA(
    input a,b,cin,
    output sum,cout
    );

//sum = (A XOR B) XOR C(in)
assign sum = ~(~a&b|a&~b)&cin | (~a&b|a&~b)&~cin;

//Carry out = Cin(A XOR B) + AB
assign cout = cin&(~a&b|a&~b)|(a&b);     
    
endmodule