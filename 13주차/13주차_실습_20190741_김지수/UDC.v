`timescale 1ns / 1ps

module UDC(
input clock, reset, updown,
output reg [4:1] out, reg [7:1] seg, 
output dp, outw
    );
    
assign dp = 1; assign outw = 1;    
    
always @(posedge clock) begin
    if(!reset) out = 4'b0000;
    else if(updown == 1) out = out + 1;
    else out = out - 1;    
    
    //fixed segment  
    seg[1] = 0; seg[2] = 1; seg[3] = 1;
    seg[4] = 1; seg[5] = 1; 
    
    //changing segment
    if (updown == 0) begin
        //down counter
        seg[6] = 0; seg[7] = 1;
    end
    else begin
        seg[6] = 1; seg[7] = 0;
    end    

end
endmodule
