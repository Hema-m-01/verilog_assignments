module full_sub_tb;
reg a,b,bin;
wire diff,borr;
full_sub f_s(diff,borr,a,b,bin);
initial 
begin
	a = 0;
	b = 0;
	bin = 0;
	#150 $finish();
end
always #5 a=~a;
always #10 b=~b;  
always #20 bin=~bin;   
endmodule
