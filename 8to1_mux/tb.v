module tb;
reg in0,in1,in2,in3,in4,in5,in6,in7;
reg [2:0]sel;
wire out;
initial 
begin
$dumpfile("my.vcd");
$dumpvars;
end
mux uut(in0,in1,in2,in3,in4,in5,in6,in7,sel,out);
initial 
begin
	$monitor($time, "in0=%b,in1=%b,in2=%b,in3=%b,in4=%b,in5=%b,in6=%b,in7=%b,sel=%b,out=%b", in0,in1,in2,in3,in4,in5,in6,in7,sel,out);
	 in0=1;in1=0;in2=0;in3=0;in4=1;in5=1;in6=0;in7=1;
	 sel=0;
#10	 sel=1;
#10	 sel=2;
#10	 sel=3;
#10	 sel=4;
#10	 sel=5;
#10	 sel=6;
#10	 sel=7;
#10 	 $finish;
end
endmodule
