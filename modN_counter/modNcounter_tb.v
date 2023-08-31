module modNcounter_tb;
parameter N=9;
parameter SIZE=4;
reg clk,reset;
wire [SIZE:0] q;
modNcounter coun(q,clk,reset);
initial
begin
	clk = 0;
	reset = 1;
	#15 reset=0;
	#200 $finish();
end
always #5 clk=~clk;  
endmodule
