module modNcounter(
				output reg [SIZE:0]q,
				input clk,reset);
parameter N=9;
parameter SIZE=4;
always @(posedge clk)
begin
	if(reset)
		q<=0;
	else if(q==N-1)
		q<=0;
	else
		q<=q+1;
end
endmodule


