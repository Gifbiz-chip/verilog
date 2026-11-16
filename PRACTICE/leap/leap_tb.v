module leap_tb();
    reg [15:0] year;
    wire leap;
    leap dut(
        .year(year),
        .leap(leap)
    );
    initial begin
        $monitor("year =%d | leap =%b", year, leap);
        year=2000;#10;
        year=1974;#10;
        year=2024;#10;
        year=1996;#10;
        year=2026;#10;
        year=2001;#10;
        $finish;
    end
endmodule