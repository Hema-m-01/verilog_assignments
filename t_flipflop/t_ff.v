module t_ff(q,qb,t,clk,reset);
output reg q;
output qb;
input t,clk,reset;
always@(posedge clk)
begin
if(!reset)
begin
		if(t==0)
			q<=q;
		else
			q<=~q;
end
else
	q<=0;
end
assign qb=~q;
endmodule
