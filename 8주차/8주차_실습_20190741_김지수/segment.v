`timescale 1ns / 1ps
module segment(
    input a,b,c,d,
    output A, B, C, D, E, F, G, Dp, outw
);

assign A = (~a&c)|(b&c)|(a&~d)|(~b&~d)|(a&~b&~c)|(~a&b&d);
assign B = (~a&~c&~d)|(~a&c&d)|(~b&~d)|(a&~c&d)|(~a&~b);
assign C = (~a&b)|(a&~b)|(~c&d)|(~b&~c)|(~b&d);
assign D = (b&~c&d)|(~b&c&d)|(~a&~b&~d)|(b&c&~d)|(a&~c&~d);
assign E = (~b&~d)|(c&~d)|(a&c)|(a&b);
assign F = (~c&~d)|(~a&b&~c)|(b&~d)|(a&~b)|(a&c);
assign G = (~b&c)|(a&~b)|(~a&b&~c)|(c&~d)|(a&d);
assign Dp = 1;
assign outw = 1;

endmodule
