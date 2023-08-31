module LFSR(output reg [3:0]q,
				input clk,reset );

always@(posedge clk)
begin
	if(reset)
		q<=4'b1000;
	else
	begin
		q<=q>>1;
		q[3]<=(q[1]^q[0]);
	end
end
endmodule
