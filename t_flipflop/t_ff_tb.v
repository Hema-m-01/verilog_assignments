module t_ff_tb;

reg t,clk,reset;
wire q,qb;

t_ff t1(q,qb,t,clk,reset);
initial
begin
	t=0;
	clk=0;
	reset=1;
	#15 reset=0;
	#100 $finish;
end
always #5 clk=~clk;
always #10 t=~t;
endmodule
