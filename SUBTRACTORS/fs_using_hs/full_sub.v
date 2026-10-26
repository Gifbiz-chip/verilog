module half_sub(input a,b,output diff,borrow);
    assign diff=a?~b:b;
    assign borrow=a?0:b;
endmodule
module full_sub(input a,b,cin,output diff,bout);
    wire D1,B1,B2,n1,n2;
    half_sub hs1 (.a(a), .b(b), .diff(D1), .borrow(B1));
    half_sub hs2 (.a(D1), .b(cin), .diff(diff), .borrow(B2));
    assign bout=B1|B2;
endmodule
