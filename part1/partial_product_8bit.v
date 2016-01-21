module partial_product_8bit (m, q, Bin, Cin, Cout, Sout);
	input [7:0] m;
	input q, Cin;
	output [7:0] Cout, Sout;
	
	full_adder ADDER_0 (m[0] & q, Bin, Cin, Cout[0], Sout[0]);
	full_adder ADDER_1 (m[1] & q, Bin, Cin, Cout[1], Sout[1]);
	full_adder ADDER_2 (m[2] & q, Bin, Cin, Cout[2], Sout[2]);
	full_adder ADDER_3 (m[3] & q, Bin, Cin, Cout[3], Sout[3]);
	full_adder ADDER_4 (m[4] & q, Bin, Cin, Cout[4], Sout[4]);
	full_adder ADDER_5 (m[5] & q, Bin, Cin, Cout[5], Sout[5]);
	full_adder ADDER_6 (m[6] & q, Bin, Cin, Cout[6], Sout[6]);
	full_adder ADDER_7 (m[7] & q, Bin, Cin, Cout[7], Sout[7]);

endmodule
