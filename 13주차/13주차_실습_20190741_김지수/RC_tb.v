`timescale 1ns / 1ps

module RC_tb;
  
reg clock, reset;
wire [4:1] out;

RC u_test (
 .clock (clock), .reset (reset),
 .out (out)
);

initial begin 
    clock = 1'b0;
    reset = 1'b0;
end

always @(reset or clock) begin
    reset <= #240 ~reset;
    clock <= #5 ~clock;
end

initial begin 
    #1000
    $finish;
end

endmodule