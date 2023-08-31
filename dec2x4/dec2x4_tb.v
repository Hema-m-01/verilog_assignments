module dec2x4_tb;
reg [1:0]i;
reg en;
wire [3:0]y;

dec2x4 dec(y,i,en);
initial 
begin
	i = 0;
	en = 0;
	#15 en=1;
	#40 $finish();
end
always #5 i[0]=~i[0];
always #10 i[1]=~i[1];    
endmodule
