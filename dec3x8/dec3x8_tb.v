module dec3x8_tb;
reg [2:0] i;
reg en;
wire [7:0] y;
dec3x8 dec(y,i,en);
initial
begin
	i=0;
	en=0;
	#15 en=1;
	#80 $finish();
end
always #5 i[0]=~i[0];
always #10 i[1]=~i[1];
always #20 i[2]=~i[2];
endmodule
