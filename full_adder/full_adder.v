module full_adder(
   			 output sum,cout,
			 input a,b,cin);
wire w1,w2,w3;
half_adder ha1(w1,w2,a,b);
half_adder ha2(sum,w3,w1,cin);
or or1(cout,w2,w3);
endmodule

module half_adder(
		output reg sum,carry,
		input a,b);
always(*)
begin
sum=a?(b?0:1):(b?1:0);
carry=a?(b?1:0):(b?0:0);
end
endmodule
