module decoder_2to4(input a,b,output y0,y1,y2,y3);
    wire p,q;
    not(p,b);
    not(q,a);
    and(y0,p,q);
    and(y1,q,b);
    and(y2,a,p);
    and(y3,a,b);
endmodule