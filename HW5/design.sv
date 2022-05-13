module PRPG(clock, clr, a_out);
input clr;
input clock;

output [3:1] a_out;
reg [3:1] sreg;
initial sreg = 3'b1;
always@ (posedge clock)
    begin
        if (clr)
            sreg<=1;
        else
            sreg<={sreg[3:1],sreg[3]^sreg[1]};
    end
    
assign  a_out = sreg;
endmodule