module carry_save_multiplier_8bit (M, Q, Pout);
	input [7:0] M,Q;
	output [15:0] Pout;
	wire [7:0] Cout_0, Cout_1, Cout_2, Cout_3, Cout_4, Cout_5, Cout_6, Cout_7;
	wire [7:0] Sout_0, Sout_1, Sout_2, Sout_3, Sout_4, Sout_5, Sout_6, Sout_7;
	
	partial_product_8bit PARTIAL_0 (M, Q[0], 0, 0, Cout_0, Sout_0);
	partial_product_8bit PARTIAL_0 (M, Q[0], 0, 0, Cout_1, Sout_1);
	partial_product_8bit PARTIAL_0 (M, Q[0], 0, 0, Cout_2, Sout_2);
	partial_product_8bit PARTIAL_0 (M, Q[0], 0, 0, Cout_3, Sout_3);
	partial_product_8bit PARTIAL_0 (M, Q[0], 0, 0, Cout_4, Sout_4);
	partial_product_8bit PARTIAL_0 (M, Q[0], 0, 0, Cout_5, Sout_5);
	partial_product_8bit PARTIAL_0 (M, Q[0], 0, 0, Cout_6, Sout_6);
	partial_product_8bit PARTIAL_0 (M, Q[0], 0, 0, Cout_7, Sout_7);
	
endmodule
