module carry_save_multiplier_8bit (M, Q, Pout);
	input [7:0] M,Q;
	output [15:0] Pout;
	wire [7:0] Cout_0, Cout_1, Cout_2, Cout_3, Cout_4, Cout_5, Cout_6, Cout_7;
	wire [7:0] Sout_0, Sout_1, Sout_2, Sout_3, Sout_4, Sout_5, Sout_6, Sout_7;
	
	partial_product_8bit PARTIAL_0 (M, Q[0], 0, 0, Cout_0, Sout_0);
	partial_product_8bit PARTIAL_1 (M, Q[1], {0, Sout_0[7:1]}, Cout_0, Cout_1, Sout_1);
	partial_product_8bit PARTIAL_2 (M, Q[2], {0, Sout_1[7:1]}, Cout_1, Cout_2, Sout_2);
	partial_product_8bit PARTIAL_3 (M, Q[3], {0, Sout_2[7:1]}, Cout_2, Cout_3, Sout_3);
	partial_product_8bit PARTIAL_4 (M, Q[4], {0, Sout_3[7:1]}, Cout_3, Cout_4, Sout_4;
	partial_product_8bit PARTIAL_5 (M, Q[5], {0, Sout_4[7:1]}, Cout_4, Cout_5, Sout_5);
	partial_product_8bit PARTIAL_6 (M, Q[6], {0, Sout_5[7:1]}, Cout_5, Cout_6, Sout_6);
	partial_product_8bit PARTIAL_7 (M, Q[7], {0, Sout_6[7:1]}, Cout_6, Cout_7, Sout_7);
	
	/* The lower 8 bits of the final product are the LSBs of the Sum output of each partial product*/
	assign Pout[0] = Sout_0[0];
	assign Pout[1] = Sout_1[0];
	assign Pout[2] = Sout_2[0];
	assign Pout[3] = Sout_3[0];
	assign Pout[4] = Sout_4[0];
	assign Pout[5] = Sout_5[0];
	assign Pout[6] = Sout_6[0];
	assign Pout[7] = Sout_7[0];
	assign Pout[15] = Cout_7[7];
	
	/* The rest of the final product bits come from the sum of last row's Cout and Sout*/
	
	wire [6 : 0] adder_Ain;
	wire [6 : 0] adder_Bin;
	
	assign adder_Ain = ;
	assign adder_Bin = ;
	
	full_adder #(.SIZE(7)) ADDER (adder_Ain, adder_Bin, Cout_7[0], Pout[15], Pout[14:8]);
	
	

endmodule
