module d_flipflop_tb;
    reg clk, a;
    wire y;
    d_flipflop dut(
        .clk(clk),
        .a(a),
        .y(y)
    );
    initial begin 
        $dumpfile("d_flipflop.vcd");
        $dumpvars(0, d_flipflop_tb);
    end
    initial begin
        $monitor("clk=%b, a=%b | y=%b", clk, a, y);
        clk=0;a=0;#10;
        clk=1;a=1;#10;
        $finish;
    end
endmodule