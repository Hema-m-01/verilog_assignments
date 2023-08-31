module jk_ff(q,qb,j,k,clk,reset);

input j,k,clk,reset;
output qb;
output reg q;

always@(posedge clk)
begin
if(!reset)
begin
	if(j==0&&k==0)
		q<=q;
	else if(j==0&&k==1)
		q<=0;
	else if(j==1&&k==0)
		q<=1;
	else
		q<=~q;
end
else
	q<=0;
end
assign qb=~q;
endmodule
