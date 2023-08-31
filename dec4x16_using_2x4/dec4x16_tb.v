module dec4x16_2x4_tb;
reg [3:0] i;
reg en;
wire [15:0] y;

dec4x16_2x4 dec1(y,i,en);
initial 
begin
	i = 0;
	en = 0;
	#15 en=1;
	#90 $finish();
end
always #5 i[0]=~i[0];
always #10 i[1]=~i[1]; 
always #20 i[2]=~i[2]; 
always #40 i[3]=~i[3];      
endmodule
