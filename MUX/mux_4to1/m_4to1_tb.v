module mux_4to1_tb;
    reg  [3:0]i;
    reg  [1:0]s;
    wire  y;
    mux_4to1 dut (.i(i), .s(s), .y(y));
    initial begin
        $dumpfile("mux_4to1.vcd");
        $dumpvars();
    end
    initial begin
        $monitor("time=%0t | i=%b  s=%b  y=%b", $time, i, s, y);
        i = 4'b1010;
        s = 2'b00; #10;   
        s = 2'b01; #10;   
        s = 2'b10; #10;   
        s = 2'b11; #10;   
        #60;
        i = 4'b0101;
        s = 2'b00; #10;   
        s = 2'b01; #10;   
        s = 2'b10; #10;   
        s = 2'b11; #10; 
        $finish;
    end
endmodule