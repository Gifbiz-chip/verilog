module de_tb;
    reg a;
    wire y;
    de dut(
        .a(a),
        .y(y)
    );
    initial begin 
        $dumpfile("decrement.vcd");
        $dumpvars();
    end
    initial begin
        $monitor("a=%b | y=%b", a, y);
        a=0;#10;
        a=1;#10;
        $finish;
    end
endmodule