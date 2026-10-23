module basic_1(input a,b,output A,B,C,D);
    and(A,a,b);
    or(B,a,b);
    not(C,a);
    buf(D,b);
endmodule
