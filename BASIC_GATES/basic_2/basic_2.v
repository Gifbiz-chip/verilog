module basic_2(input a,b,output A,B,C,D);
    nand(A,a,b);
    nor(B,a,b);
    xor(C,a,b);
    xnor(D,a,b);
endmodule
