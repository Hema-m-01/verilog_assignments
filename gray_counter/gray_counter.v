module gray_counter(
				output reg[3:0]q,
				input clk,reset);
reg [3:0]Q;
always @(posedge clk)
begin
	if(reset)
	begin
		Q<=0;
		q<=0;
	end
	else
	begin
		Q<=Q+1;
		q<={Q[3],(Q[3]^Q[2]),(Q[2]^Q[1]),(Q[1]^Q[0])};
	end
end
endmodule
