module nbit_updowncoun(
					output reg [N-1:0]q,
					input clk,reset,updown);
parameter N=4;
always@(posedge clk)
begin
	if(reset)
		q<=0;
	else
	begin
		if(!updown)
			q<=q+1;
		else
			q<=q-1;
	end
end
endmodule
