module sign_extension_array (Sign_in, Cin, Sign_out, Sout);
	parameter SIZE = 1;
	input Sign_in, Cin;
	output Cout;
	output [SIZE - 1: 0] Sout;
	wire [SIZE : 0] Cout_internal;
	genvar i;
	generate for (i = 0; i < SIZE; i = i + 1) begin
		if (i == 0) 
			full_adder SE (0, Sign_in, Cin, Sout[i], Cout_internal[i]);
		else 
			full_adder SE (0, Sign_in, Cout_internal[i - 1], Sout[i], Cout_internal[i]);
	end endgenerate
	assign Cout = Cout[SIZE - 1];
endmodule
