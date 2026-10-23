module half_sub(input a,b,output,D,B);
wire c;
xor(D,a,b);
not(c,a);
and(B,c,b);
endmodule
