`timescale 1ns / 1ps

module demux(
    input ina, inb, A,
    output out1, out2, out3, out4
    );
    
assign out1 = ~ina & ~inb & A;
assign out2 = ~ina & inb & A;
assign out3 = ina & ~inb & A;
assign out4 = ina & inb & A;

endmodule
