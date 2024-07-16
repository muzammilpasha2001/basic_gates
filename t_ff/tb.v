module tb;
reg clk,rst;
reg t;
wire q,qb;
initial begin
$dumpfile("my.vcd");
$dumpvars;
end
t_ff dut(clk,rst,t,q,qb);
initial 
	begin
		clk=0;rst=1;t=0;
	end
always #5 clk=~clk;
initial begin
$monitor($time, "clk=%b, rst=%b, t=%b, q=%b, qb=%b", clk, rst,t,q,qb);
#10 rst=0;
#10 t=1'b0;
#10 t=1'b1;
#10 t=1'b0;
#10
$finish;
end
endmodule