module booth_encoder(q,plus,minus);
	input 	[1:0] q;	// q[1] is q_i, q[0] is q_i_minus_1
	output reg	plus,minus;
	always @ (*)
		begin
			case (q)
			2'b00: begin plus = 0; minus = 0; end
			2'b01: begin plus = 1; minus = 0; end
			2'b10: begin plus = 0; minus = 1; end
			2'b11: begin plus = 0; minus = 0; end
			endcase
		end
endmodule