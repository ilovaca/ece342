module full_adder_booth_encoded_8bit (m, B, q, Sout, Cout);
	input [7:0] m, B, plus, minus;
	input [1:0] q;
	output [7:0] Sout;
	output Cout;
	wire plus, minus;
	wire [7:0] Cout_internal;
	booth_encoder (q, plus, minus);
	full_adder_booth_encoded ADDER_0 (m[0], B[0], minus, plus, minus, Cout_internal[0], Sout[0]);
	full_adder_booth_encoded ADDER_1 (m[1], B[1], Cout_internal[0], plus, minus, Cout_internal[1], Sout[1]);
	full_adder_booth_encoded ADDER_2 (m[2], B[2], Cout_internal[1], plus, minus, Cout_internal[2], Sout[2]);
	full_adder_booth_encoded ADDER_3 (m[3], B[3], Cout_internal[2], plus, minus, Cout_internal[3], Sout[3]);
	full_adder_booth_encoded ADDER_4 (m[4], B[4], Cout_internal[3], plus, minus, Cout_internal[4], Sout[4]);
	full_adder_booth_encoded ADDER_5 (m[5], B[5], Cout_internal[4], plus, minus, Cout_internal[5], Sout[5]);
	full_adder_booth_encoded ADDER_6 (m[6], B[6], Cout_internal[5], plus, minus, Cout_internal[6], Sout[6]);
	full_adder_booth_encoded ADDER_7 (m[7], B[7], Cout_internal[6], plus, minus, Cout_internal[7], Sout[7]);
	assign Cout = Cout_internal[7];
endmodule
