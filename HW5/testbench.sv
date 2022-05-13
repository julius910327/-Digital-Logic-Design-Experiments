module PRPG_tb;
reg clock,clr;    //輸入
wire [3:1] a_out;   //輸出

initial begin
    #0;
    forever
    begin
        clock = 1'b0;
        #5 clock = 1'b1;
        #5;
    end
end

initial begin
    #0 clr=1'b1;  
    #10 clr=1'b0;
    #190 $finish;
end

PRPG PRPG_tb(.clock(clock), .clr(clr), .a_out(a_out));
initial begin
    $dumpfile("PRPG.vcd");
    $dumpvars(0, PRPG_tb);
end
endmodule