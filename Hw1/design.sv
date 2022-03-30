module decoder_2_4(E , In , Out);

    input E;            //宣告輸入E
    input [1:0] In;     //宣告輸入In[0],In[1]
    output [3:0] Out;   //宣告輸出Out[0]~Out[3]
    wire [3:0] Out;     //宣告輸出Out為連接線

    assign Out = E ? 1'b1 << In : 4'h0;

endmodule

module decoder_3_8(E , In , Out);

    input E;            
    input [2:0] In;     
    output [7:0] Out;   
    wire E1, G1 , G2;   
    
    not u1(E1, In[2]);      //致能線E1與輸入In[2]NOT
    and a1(G1, E, In[2]);   //致能線E1與輸入In[2]NOT
    and a2(G2, E, E1);      //致能線E與輸入E1AND

    decoder_2_4 block1(G1 , In[1 : 0] , Out[7 : 4]);        //Out[7:4]=G1 & In[0:1]輸入decoder_2_4
    decoder_2_4 block2(G2 , In[1 : 0] , Out[3 : 0]);        //Out[3:0]=G2 & In[0:1]輸入decoder_2_4

endmodule

//clock
module clkgen(clka, clkb, clka_out, clkb_out);

    input clka, clkb;           //宣告輸入clka及clkb
    output clka_out, clkb_out;  //宣告輸出clka_out及clkb_out
    reg clka_out, clkb_out;     //將clka_out及clkb_out連接暫存器

    always @(clka) begin        //always當@()有括弧裡的變數時執行

        clka_out = clka;
    
    end
    
    always @(clkb) begin

        clkb_out = clkb;

    end

endmodule