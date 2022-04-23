// Code your testbench here
// or browse Examples
module RTL_tb;

    reg [3:0] I;        //輸入
    wire [2:0] O;      //輸出

//產生波型
initial begin
    #0 I = 4'b0000;
    #1 I = 4'b0001;
    #1 I = 4'b0010;
    #1 I = 4'b0011;
    #1 I = 4'b0100;
    #1 I = 4'b0101;
    #1 I = 4'b0110;
    #1 I = 4'b0111;
    #1 I = 4'b1000;
    #1 I = 4'b1001;
    #1 I = 4'b1010;
    #1 I = 4'b1011;
    #1 I = 4'b1100;
    #1 I = 4'b1101;
    #1 I = 4'b1110;
    #1 I = 4'b1111;
    #1 $finish;
end
voter_if RTL_tb(.I(I), .O(O));      //輸入RTL.v檔的輸入輸出

initial begin
    $dumpfile("RTL.vcd");
    $dumpvars(0, RTL_tb);
end
endmodule