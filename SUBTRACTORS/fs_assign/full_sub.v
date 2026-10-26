module full_sub(input a,b,c,output D,B);
    assign D=a^b^c;
    assign B=~a&b|~a&c|b&c;
endmodule