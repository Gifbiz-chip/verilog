module full_adder1(input a,b,c,output sum,carry);
    assign sum=a?(b?c:~c):(b?~c:c);
    assign carry=a?(b?1:c):(b?c:0);
endmodule