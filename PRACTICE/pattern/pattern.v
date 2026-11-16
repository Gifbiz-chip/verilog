module trianle ();
    integer i,j,k;
    initial begin
        for (i=1;i<=5;i=i+1)
            begin
            for(j=1;j<=5-i;j=j+1)
                $write(" ");
            for(k=1;k<=(2*i-1);k=k+1)
                $write("%0d",i);
            $display("");
            end
    end
endmodule