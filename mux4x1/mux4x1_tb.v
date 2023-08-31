module mux4x1_tb();
reg [3:0] i;
reg [1:0] s;
wire y;

mux4x1 m1(y,i,s);
initial
begin
	i = 0;
	s = 0;
	#80 $finish();
end
always #5 s[0]=~s[0];
always #10 s[1]=~s[1];
always #20 i=$random;

endmodule
