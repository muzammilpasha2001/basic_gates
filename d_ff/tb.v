module tb;
reg clk,rst;
reg d;
wire q,qb;
initial begin
$dumpfile("my.vcd");
$dumpvars;
end
d_ff dut(clk,rst,d,q,qb);
initial 
	begin
		clk=0;rst=1;d=0;
#10 rst=1;d=1;
	end
always #5 clk=~clk;
initial begin
$monitor($time, "clk=%b, rst=%b, d=%b, q=%b, qb=%b", clk, rst,d,q,qb);
#20 rst=0;
#20 d=1'b0;
#20 d=1'b1;
#20 d=1'b0;
$finish;
end
endmodule