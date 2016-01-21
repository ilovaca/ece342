module full_adder_booth_encoded (A, B, Cin, plus, minus, Cout, Sout);
	input A, B, Cin, plus, minus;
	output Cout, Sout;
	wire A_in = (A & plus) | (~A & minus);
	full_adder FA (A_in, B, Cin, Sout, Cout);
endmodule 