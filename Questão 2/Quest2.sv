module Quest2(input logic clock,
              output logic f);

logic[8:0] count;

always_ff @(posedge clock) begin
  if (count == 9'd499) count <= 9'd0;
    else count <= count + 9'd1;
  if (count > 19 && count < 90) f <= 1'b0;
    else f <= 1'b1;
end

endmodule 
