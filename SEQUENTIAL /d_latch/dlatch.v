module d_latch (
    input d , 
    input en , 
    output reg q
);
    always @(*) 
        if (en) 
            q = d;
endmodule
