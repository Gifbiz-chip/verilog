module mux_16to1_tb;
    reg  [15:0]d;
    reg  [3:0]s;
    wire y;
    mux_16to1 dut (.d(d), .s(s), .y(y));
    initial begin
        $dumpfile("mux_16to1.vcd");
        $dumpvars();
    end
    initial begin
        $monitor("time=%0t | s=%0d | y=%b", $time, s, y);
        d = 16'hA5C3;        
        s = 4'd0;  #1;      
        s = 4'd2;  #2;      
        s = 4'd5;  #1;      
        s = 4'd7;  #2;      
        s = 4'd9;  #1;      
        s = 4'd10; #2;      
        s = 4'd12; #1;      
        s = 4'd15; #2;
        $finish;
    end
endmodule