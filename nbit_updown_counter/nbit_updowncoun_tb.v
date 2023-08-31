module nbit_updown_tb;
parameter N=4;
reg clk,reset,updown;
wire [N-1:0] q;
	
nbit_updowncoun updown1(q,clk,reset,updown);
initial 
begin
	clk = 0;
	reset = 1;
	updown = 0;
	#15 reset=0;
	#50 updown=1;
	#40 updown=0;
	#100 $finish();
end
always #5 clk=~clk;      
endmodule

