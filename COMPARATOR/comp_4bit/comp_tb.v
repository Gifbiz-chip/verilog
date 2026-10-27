module comparator_4bit_tb;
    reg [3:0]a;
    reg [3:0]b;
    wire y;
    comparator_4bit dut (
        .a(a),
        .b(b),
        .y(y)
    );
    initial begin
        $dumpfile("comparator_4bit.vcd");
        $dumpvars();
    end 
    initial begin
        $monitor("a=%b  b=%b | y=%b", a, b, y);
        a=4'b0000;b=4'b0110;#10;
        a=4'b0100;b=4'b0100;#10;
        $finish;
    end
endmodule