module demux_2to1(input S,D,output y0,y1);
    assign y0=S?0:D;
    assign y1=S?D:0;
endmodule