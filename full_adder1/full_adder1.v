module full_adder1(input a,b,c,output sum,carry);
    wire s1,c1,c2;
    xor(s1,a,b);
    xor(sum,s1,c);
    and(c1,a,b);
    and(c2,s1,c);
    or(carry,c1,c2);
endmodule
