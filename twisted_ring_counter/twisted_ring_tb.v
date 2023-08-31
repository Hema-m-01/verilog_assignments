module twisted_ring_tb;
reg clk,reset;
wire [3:0] q;

twisted_ring twist(q,clk,reset);
initial 
begin
	clk = 0;
	reset = 1;
	#15 reset=0;
	#150 $finish();
end
always #5 clk=~clk;      
endmodule
