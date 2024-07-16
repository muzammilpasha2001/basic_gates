module tb;
reg rst,clk;
wire [3:0]count;
initial begin 
$dumpfile("my.vcd");
$dumpvars;
end
mycounter dut(clk,rst,count);
initial 
begin
	clk=0;rst=1;
end
always #5 clk=~clk;
initial 
begin
$monitor($time, "clk=%b, rst=%b, count=%b", clk, rst,count);
#10 rst=0;
#100 rst=1;
#10 rst=0;
#60
$finish;
end
endmodule