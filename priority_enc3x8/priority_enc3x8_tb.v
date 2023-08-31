module priority_enc8x3_tb;
reg [7:0] i;
reg en;
wire [2:0] b;
priority_enc8x3 penc(b,i,en);
initial
begin
	i=0;en=0;
	#10 en=1;
	#150 $finish();
end
always #5 i=$random();
      
endmodule	
