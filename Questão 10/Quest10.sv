module Quest10 (input logic CLK,
					 output logic O1,
					 output logic O2);

logic[12:0] COUNT;

always_ff @(negedge CLK) begin
	if(COUNT >= 13'd3849 && COUNT < 13'd4149) O1 <= 13'd0;
	else O1 <= 13'd1;
	if (COUNT >= 13'd3199 && COUNT < 13'd3799) O2 <= 13'd0;
	else O2 <= 13'd1;
end

RingCounter Counter (.CLK(CLK), .OUT(COUNT));

endmodule 