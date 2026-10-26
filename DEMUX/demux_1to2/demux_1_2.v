module demux_1_2(input D,S,output y0,y1);
    wire a; 
    not(a,S);
    and(y0,D,a);
    and(y1,D,S);
endmodule