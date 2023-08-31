module gray_counter_tb;
reg clk,reset;
wire [3:0] q;

gray_counter coun(q,clk,reset);
initial 
begin
	clk = 0;
	reset = 1;
	#15 reset=0;
	#180 $finish();
end
always #5 clk=~clk;      
endmodule
