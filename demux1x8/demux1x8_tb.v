module demux1x8_tb;
reg i;
reg [2:0] s;
wire [7:0] y;
initial
begin
	i = 0;
	s = 0;
	#10 i=1;
	#80 $finish();
end
always #5 s[0]=~s[0];
always #10 s[1]=~s[1];
always #20 s[2]=~s[2];
endmodule
