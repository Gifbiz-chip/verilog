module half_adder(input a,b,output sum,carry);
    assign sum=a?~b:b;
    assign carry=a?b:0;;
endmodule