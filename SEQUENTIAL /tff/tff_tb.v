module t_flipflop_tb;
    reg clk, a;
    wire y;

    t_flipflop dut(
        .clk(clk),
        .a(a),
        .y(y)
    );
    initial begin 
        $dumpfile("t_flipflop.vcd");
        $dumpvars(0, t_flipflop_tb);
    end
    initial clk = 0;
    always #5 clk = ~clk;
    initial begin
        $monitor("clk=%b, a=%b | y=%b", clk, a, y);
        clk=1;a=0;#10;
        clk=1;a=1;#10;
        clk=1;a=0;#10;
        clk=1;a=1;#10;
        $finish;
    end
endmodule