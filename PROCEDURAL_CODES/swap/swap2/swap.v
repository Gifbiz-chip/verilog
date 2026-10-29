module non_blocking_swap;
    reg a, b;
    initial begin
        a = 0;
        b = 1;
        a <= b;
        b <= a;
        #3;
        $display("a=%d, b=%d", a, b);
        $finish;
    end
endmodule