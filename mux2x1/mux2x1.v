module mux2x1(
    output y,//reg y,
	 input [1:0]i,
	 input s );
	
wire sb;
wire w1,w2;
not n1(sb,s);
and a1(w1,sb,i[0]),
	 a2(w2,s,i[1]);
or or1(y,w1,w2);	
endmodule
