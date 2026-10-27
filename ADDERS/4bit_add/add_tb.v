module tb_adder4;
    reg [3:0] A, B;
    wire [3:0] sum;
    wire cout;
    add_4bit uut(A, B, sum, cout);
    initial begin
        $dumpfile("adder.vcd");
        $dumpvars();
    end
    initial begin
        $monitor( "A= %b B=%b | sum=%b cout=%b" , A,B,sum,cout);
        A = 4'b0000; B = 4'b0000;#10;
        A = 4'b0011; B = 4'b0010;#10;
        A = 4'b0111; B = 4'b0001;#10;
        A = 4'b1111; B = 4'b0001;#10;
        $finish;
    end
endmodule