module half_adder_tb();
reg a,b;
wire sum,carry;
half_adder hf(sum,carry,a,b);
initial
begin
	a = 0;
	b = 0;	
	#50 $finish();
end
always #5 a=~a;
always #10 b=~b;      
endmodule
