module non_blocking_sub;
    reg [3:0] a, b;
    reg [4:0] y;
    initial begin
    a = 5;
    b = 4;
    y <= a - b;
    #1;
    $display("a=%d, b=%d | y=%d", a, b, y);
    end
endmodule