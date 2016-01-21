module full_adder (Ain, Bin, Cin, Cout, Sum);
	parameter SIZE = 0;
	input [SIZE - 1 : 0] Ain, Bin;
	input Cin;
	wire [SIZE + 1 : 0] carry_internal;
	assign carry_internal[0] = Cin;
	output [SIZE - 1 : 0] Sum;
	output Cout;
	integer i;
	for (i = 0; i < SIZE; i = i + 1) begin
		Sum[i] = Ain[i] ^ Bin[i] ^ carry_internal[i];
		carry_internal[i + 1] = (Ain[i] & Bin[i]) | (Ain[i] & carry_internal[i]) | (Bin[i] & carry_internal[i]);
	end
	assign Cout = carry_internal [SIZE];
endmodule
