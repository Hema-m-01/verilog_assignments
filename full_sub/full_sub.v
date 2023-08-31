module full_sub(
   output diff,borr,
	input a,b,bin);
wire w1,w2,w3;
half_sub hs1(w1,w2,a,b);
half_sub hs2(diff,w3,w1,bin);
or or1(borr,w2,w3);
endmodule

module half_sub(
    output diff,borr,
	 input a,b);
assign diff= a^b;
assign borr= ~a&b;

endmodule
