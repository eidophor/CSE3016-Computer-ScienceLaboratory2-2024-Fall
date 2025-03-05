`timescale 1ns / 1ps

module DC2421_tb;
reg clk, reset;
wire [4:1] out;

DC2421 u_test (
    .clk (clk), .reset (reset), 
    .out (out)
);

initial begin
    reset = 1'b0;
    clk = 1'b1;
end

always @(reset or clk) begin
    reset <= #240 ~reset;
    clk <= #5 ~clk;
end

initial begin 
    #1000
    $finish;
end

endmodule