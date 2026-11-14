module mem(
    input [2:0] addr ,
    output [3:0] data 
);
    reg [3:0] mem [7:0];
    initial
    begin
        mem[0]= 8'b10;
        mem[1]= 8'h10;
        mem[2]= 8'd10;
        mem[3]= 8'o10;
        mem[4]= 8'b1001;
        mem[5]= 8'hA;
        mem[6]= 8'd32;
        mem[7]= 8'o41;
    end
    assign data = mem[addr];
endmodule
        
