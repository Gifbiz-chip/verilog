module full_sub(input a,b,c,output D,B);
    assign D=a?(b?c:~c):(b?~c:c);
    assign B=a?(b?c:0):(b?1:c);
endmodule