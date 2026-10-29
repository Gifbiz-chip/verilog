module blocking_swap;
    reg a, b, c;
    initial begin
        a = 0;
        b = 1;
        c = a;
        a = b;
        b = c;
        $display("a=%d, b=%d", a, b);
        $finish;
    end
endmodule