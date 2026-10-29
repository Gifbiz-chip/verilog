module sr_flipflop_tb;
    reg clk, a, b;
    wire y;
    sr_flipflop dut(
        .clk(clk),
        .a(a),
        .b(b),
        .y(y)
    );
    initial begin 
        $dumpfile("sr_flipflop.vcd");
        $dumpvars();
    end 
    initial clk = 0;
    always #5 clk = ~clk;
    initial begin
        $monitor("clk=%b  a=%b  b=%b | y=%b", clk, a, b, y);
        clk=1;a=0;b=0;#10;
        clk=1;a=0;b=1;#10;
        clk=1;a=1;b=0;#10;
        clk=1;a=0;b=1;#10;
        $finish;
    end
endmodule