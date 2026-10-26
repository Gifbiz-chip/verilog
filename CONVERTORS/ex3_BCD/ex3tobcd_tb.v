module tb_excess3_bcd;
    reg  [3:0]e;
    wire [3:0]BCD;
    excess3_bcd dut (.e(e), .BCD(BCD));
    initial begin
        $dumpfile("excess3_bcd.vcd");
        $dumpvars();
    end
    initial begin
        $monitor("time=%0t | e=%b | BCD=%b", $time, e, BCD);
        e = 4'b0011; #10;   
        e = 4'b0100; #10;   
        e = 4'b0101; #10;   
        e = 4'b0110; #10;   
        e = 4'b0111; #10;   
        e = 4'b1000; #10;   
        e = 4'b1001; #10;   
        e = 4'b1010; #10;   
        e = 4'b1011; #10;   
        e = 4'b1100; #10;   
        $finish;
    end
endmodule