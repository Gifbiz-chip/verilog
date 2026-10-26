module half_sub(input a,b,output D,B);
    assign D=a?~b:b;
    assign B=a?0:b;
endmodule