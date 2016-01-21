module full_adder (A, B, Cin, Sout, Cout);
	input A, B, Cin;
	output Cout, Sout;
	assign Cout = (A & B) | (A & Cin) | (B & Cin);
	assign Sout = A ^ B ^ Cin;
endmodule
