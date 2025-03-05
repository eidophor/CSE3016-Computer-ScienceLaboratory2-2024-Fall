`timescale 1ns / 1ps


module converter(
    input a,b,c,d,
    output q,w,e,r
    );
    
assign q = (a|c|d)&(a|b);
assign w = (a|b)&(a|c|~d);
assign e = (a|b|c)&(a|c|d)&(~b|~c);
assign r = d;

endmodule
