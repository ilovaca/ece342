module booth_multiplier_8bit (A,B,P);
	input 	[7:0] A, B;
	output 	[8:0] P;

	full_adder_booth_encoded_8bit ROW_0 ();
	full_adder_booth_encoded_8bit ROW_1 ();
	full_adder_booth_encoded_8bit ROW_2 ();
	full_adder_booth_encoded_8bit ROW_3 ();
	full_adder_booth_encoded_8bit ROW_4 ();
	full_adder_booth_encoded_8bit ROW_5 ();
	full_adder_booth_encoded_8bit ROW_6 ();
	full_adder_booth_encoded_8bit ROW_7 ();

endmodule
