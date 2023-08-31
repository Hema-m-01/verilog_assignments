module mux8x1_2x1_tb;
reg [2:0] s;
reg [7:0] i;
wire y;
mux8x1_2x1 m1(y,i,s);
initial 
begin
	s = 0;
	i = 0;
	#100 $finish();
end
always #5 s[0]=~s[0];
always #10 s[1]=~s[1];
always #20 s[2]=~s[2];
always #40 i=$random;     
endmodule
