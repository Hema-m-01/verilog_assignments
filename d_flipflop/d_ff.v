module d_ff(output reg q,output qb,input d,clk,rst_n);

always@(posedge clk,negedge rst_n)
begin
	if(!rst_n)
		q<=0;
	else
		q<=d;
end
assign qb=~q;
endmodule
