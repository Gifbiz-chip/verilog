module assign1;
    reg [3:0] a,b;
    initial begin
        a = 1;
        $display("a=%0d", a);
        b = a;
        $display("b=%0d", b);
    end
endmodule