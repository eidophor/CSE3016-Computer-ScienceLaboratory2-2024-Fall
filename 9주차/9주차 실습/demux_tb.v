`timescale 1ns / 1ps

module demux_tb;

reg ina, inb, A;
wire out1, out2, out3, out4;

demux u_test(
.ina (ina), .inb (inb), .A (A),
.out1 (out1), .out2 (out2), .out3 (out3), .out4 (out4)
);

initial begin 
ina = 1'b0;
inb = 1'b0;
A = 1'b0;
end

always @(ina or inb or A) begin
    ina <= #200 ~ina;
    inb <= #100 ~inb;
    A <= #50 ~A;
end

initial begin
    #400
    $finish;
end

endmodule
