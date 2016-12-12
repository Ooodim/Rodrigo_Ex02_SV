module RingCounter (input logic CLK,
				 output logic[12:0] OUT);

always_ff @(negedge CLK) begin
	if (OUT == 13'd45999) OUT <= 13'd0;
	else OUT <= OUT + 13'd1;
end

endmodule 