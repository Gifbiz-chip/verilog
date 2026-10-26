module demux_1to2(input D,S, output y0,y1);
    assign y0= D&~S;
    assign y1= D&S;
endmodule