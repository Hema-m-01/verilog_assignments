module d_ff_tb;
reg d,clk,rst_n;
wire q,qb;
	
d_ff dff(q,qb,d,clk,rst_n);
initial
begin
	d = 0;
	clk = 0;
	rst_n = 0;
	#20 rst_n=1; 
	#100 $finish;
end  
always #5 clk=~clk;
always #10 d=~d;
endmodule
