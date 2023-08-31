module jk_ff_tb;
reg j,k,clk,reset;
wire q,qb;

jk_ff jk(q,qb,j,k,clk,reset);
initial
begin
	j=0;
	k=0;
	clk=0;
	reset=1;
	#15 reset=0;
	#100 $finish;
end
always #5 clk=~clk;
always #10 j=~j;
always #20 k=~k;
endmodule
