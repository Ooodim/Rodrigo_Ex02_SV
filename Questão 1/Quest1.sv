module Quest1 (input logic swap, input logic enable,
               input logic clock,
               output logic[3:0] upcount,
               utput logic[3:0] downcount);

always_ff @(posedge clock)
    if (enable)
        if (swap) begin
            upcount <= downcount;
            downcount <= upcount;
        end else begin
            upcount <= upcount + 4'd1;
            downcount <= downcount - 4'd1;
        end
    else begin
        upcount <= upcount;
        downcount <= downcount;
    end

endmodule 
