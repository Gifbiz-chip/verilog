module mem_tb();
    reg clk , en ;
    reg [ADDR_WIDTH-1 :0] radd , wadd ;
    reg [DATA_WIDTH -1:0] din ;
    wire [DATA_WIDTH-1:0] dout ;
    mem dut(
        .clk(clk),
        .en(en),
        .radd(radd),
        .wadd(wadd),
        .din(din),
        .dout(dout)
    );
    initial clk =0 ;
    always #5 clk=~clk;
    initial begin
        $monitor("time=%d  en=%b clk=%b  radd=%b wadd=%b din=%b | dout=%b );
        en=1;clk=1;radd=
