module full_adder_tb;
reg a,b,cin;
wire sum,cout;
full_adder fa(sum,cout,a,b,cin);
initial
begin
	a=0;b=0;cin=0;
	#100 $finish();
end
always #5 a=~a;
always #10 b=~b;
always #20 cin=~cin;
endmodule
