module register_tb();
    reg clk,rst, data_in;
    wire data_out;
    register dut (
        .clk(clk),
        .rst(rst),
        .data_in(data_in),
        .data_out(data_out)
    );
    initial 
    clk =0 ;
    always #5 clk =~clk ;
    initial begin
        rst=0;
        data_in=0;
        $monitor ("rst=%b  data_in=%b | data_out=%b", rst,data_in,data_out );
        #10 rst=1;
        data_in=1;
        #10;
        rst=0;
        data_in=0;
        #10;
        data_in=1;
        #10 $finish;
    end
endmodule