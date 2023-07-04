`timescale 1ns/10ps
module tb;

// clock set for 100MHZ 
    bit clock, reset;
    localparam PERIOD_100MHZ = 8;
    initial
    begin
        reset = 1'b1;
        #10 
        reset = 1'b0;
    end
   
    initial 
    begin
        clock = 1'b1;
        forever #(PERIOD_100MHZ/2) clock = ~clock;
    end
// actual tb





top DUT(.clock(clock), .reset(reset));

endmodule;