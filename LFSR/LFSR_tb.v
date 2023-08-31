module LFSR_tb;
reg clk,reset;
wire [3:0] q;

LFSR lfsr(q,clk,reset);
initial
begin
	clk = 0;
	reset = 1;
	#15 reset=0;
	#160 $finish();
end
always #5 clk=~clk;   
endmodule
