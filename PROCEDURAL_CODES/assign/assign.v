module assign_demo ;
    reg [3:0] a,b;
    initial begin
        a = 1;
        $display("a=%0d", a);
        b = 7;
        $display("b=%0d", b);
    end
endmodule