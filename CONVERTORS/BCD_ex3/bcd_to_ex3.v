module bcd_ex3(
    input [3:0] BCD, 
    output [3:0] e
    );
    assign e = BCD + 4'b0011 ;
endmodule