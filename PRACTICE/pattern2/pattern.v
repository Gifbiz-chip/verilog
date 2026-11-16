module pattern();
    integer i,j,k;
    initial begin
        for(i=1;i<=5;i=i+1)
        begin
            k=(i<=5) ? i : (10-i);
            for(j=0;j<=(9-k);j=j+1)
                $write(" ");
            for(j=0;j<k;j=j+1)
                $write("%0d ",k);
                $display("");
        end
    end
endmodule