`timescale 1ns / 1ps

module comp(
     input a, b, c, d,
     output f1,f2,f3
    );

//f1 is 1 iff A > B. f1 = ac'+bc'd'+abd'
assign f1 = (a&~c)|(b&~c&~d)|(a&b&~d);
//f2 is 1 iff A = B. (00, 01, 10, 11) 
assign f2 = (~a&~b&~c&~d)|(~a&b&~c&d)|(a&~b&c&~d)|(a&b&c&d);
//f3 is 1 iff A < B. f2 = a'c+b'cd+a'b'd   
assign f3 = (~a&c)|(~b&c&d)|(~a&~b&d);
endmodule
