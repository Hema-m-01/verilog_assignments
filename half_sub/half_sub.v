module half_sub(
    			output diff,borr,
			 input a,b);
assign diff= a^b;
assign borr= ~a&b;
endmodule
