module half_sub_tb;
reg a,b;
wire diff,borr;
half_sub hs(diff,borr,a,b);

initial
begin
	a=0;b=0;
	#70 $finish();
end 
always #5 a=~a;
always #10 b=~b;

endmodule
