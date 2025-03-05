`timescale 1ns / 1ps

module UDC_tb;
reg clock, reset, updown;
wire [4:1] out;
wire [7:1] seg;
wire dp, outw;

UDC u_test (
 .clock (clock), .reset (reset), .updown (updown),
 .out (out), .seg (seg),
 .dp (dp), .outw (outw)
);

initial begin 
    clock = 1'b0;
    reset = 1'b0;
    updown = 1;
end

always @(reset or clock or updown) begin
    updown <= #480 ~updown;
    reset <= #240 ~reset;
    clock <= #5 ~clock;
end

initial begin 
    #1000
    $finish;
end


endmodule
