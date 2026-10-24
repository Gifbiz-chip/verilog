module mux_2_1(input s,i0,i1,output y);
    wire a,b,c;
    not(a,s);
    and(b,a,i0);
    and(c,i1,s);
    or(y,b,c);
endmodule
