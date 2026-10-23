module full_sub(input a,b,c,output D,B);
wire D1,B1,B2,n1,n2;
xor(D1,a,b);
xor(D,D1,c);
not(n1,a);
not(n2,D1);
and(B1,n1,b);
and(B2,n2,c);
or(B,B1,B2);
endmodule
