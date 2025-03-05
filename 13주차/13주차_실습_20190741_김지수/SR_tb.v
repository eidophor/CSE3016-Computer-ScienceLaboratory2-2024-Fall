`timescale 1ns / 1ps

module SR_tb;
  
reg clock, reset, in;
wire [4:1] out;

SR u_test (
 .clock (clock), .reset (reset), .in (in),
 .out (out)
);

initial begin 
    clock = 1'b0;
    reset = 1'b0;
    in = 1'b0;
end

always @(reset or clock or in) begin
    reset <= #240 ~reset;
    in <= #50 ~in;
    clock <= #5 ~clock;
end

initial begin 
    #1000
    $finish;
end

endmodule
    