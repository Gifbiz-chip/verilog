module bcd_ex3_tb;
    reg  [3:0] BCD;
    wire [3:0] e;
    bcd_ex3 dut (.BCD(BCD) , .e(e));
    initial begin
        $dumpfile("bcd_ex3.vcd");
        $dumpvars();
    end
    initial begin
        $monitor("time=%0t | BCD=%b e=%b ", $time, e, BCD);
        BCD = 4'b0011; #1;   
        BCD = 4'b0100; #1;   
        BCD = 4'b0101; #1;   
        BCD = 4'b0110; #1;   
        BCD = 4'b0111; #1;   
        BCD = 4'b1000; #1;   
        BCD = 4'b1001; #1;   
        BCD = 4'b1010; #1;   
        BCD = 4'b1011; #1;   
        BCD = 4'b1100; #1;   
        $finish;
    end
endmodule