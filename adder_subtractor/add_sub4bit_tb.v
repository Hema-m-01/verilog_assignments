module add_sub4bit_tb;
reg [3:0] a,b;
reg ctrl;
wire [3:0] s;
wire cout;

add_sub4bit add_sub(s,cout,a,b,ctrl);
initial
begin		
	a = 0;
	b = 0;
	ctrl = 0;
	#30 ctrl=1;
	#50 $finish();	
end
always #5 a=$random;
always #10 b=$random;      
endmodule
