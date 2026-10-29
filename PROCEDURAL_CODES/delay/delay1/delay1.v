module nonblocking_demo;
    reg a, b, c;
    initial begin
        a <= #5 1'b1;
        b <= #15 1'b0;
        c <= #10 1'b1;
        #16 $display("a=%b b=%b c=%b ",a,b,c );
    end
endmodule