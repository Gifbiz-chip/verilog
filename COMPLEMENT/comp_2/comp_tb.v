module comp_2s_tb;
    reg [3:0]a;
    wire [3:0]y;
    comp_2s dut(
        .a(a),
        .y(y)
    );
    initial begin
        $dumpfile("complement_2s.vcd");
        $dumpvars();
    end 
    initial begin
        $monitor("a=%b | y=%b", a, y);
        a=4'b0000;#10;
        a=4'b0011;#10;
        a=4'b0101;#10;
        $finish;
    end
endmodule