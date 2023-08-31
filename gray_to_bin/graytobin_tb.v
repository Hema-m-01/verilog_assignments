module graytobin_8bit_tb;
reg [7:0] g;
wire [7:0] b;

graytobin_8bit gtob(b,g);
initial
begin
	g = 0;
	#200 $finish();
end
always #5 g=$random;      
endmodule
