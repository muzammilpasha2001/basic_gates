module tb;
reg [7:0]in;
reg en;
wire [2:0]out;
initial
begin
$dumpfile("my.vcd");
$dumpvars;
end
encoder dut(in,en,out);
initial begin
	$monitor($time, "in=%b, en=%b, out=%b", in, en,out);
	in=1; en=0;
	#10 in=1; en=1;
	#10 in=2; en=1;
	#10 in=4; en=1;
	#10 in=8; en=1;
	#10 in=16; en=1;
	#10 in=32; en=1;
	#10 in=64; en=1;
	#10 in=128; en=1;
	#10 $finish;
end 
endmodule

