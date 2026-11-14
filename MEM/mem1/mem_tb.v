module mem_tb();
    reg [2:0] addr;
    wire [3:0] data;
    mem dut (
        .addr(addr),
        .data(data)
    );
    integer i;
    initial begin
        $monitor("Time=%0t | addr=%d | data=%b",  $time, addr, data);
        for (i = 0; i < 8; i = i + 1)
        begin
            addr = i;
            #10;
        end
        $finish;
    end
endmodule