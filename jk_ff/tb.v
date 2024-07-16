module tb;
reg clk,rst;
reg [1:0]JK;
wire q,qb;
initial begin
$dumpfile("my.vcd");
$dumpvars;
end
jk_ff dut(clk,rst,JK,q,qb);
initial 
	begin
		clk=0;rst=1;JK=2'b00;
	end
always #5 clk=~clk;
initial begin
$monitor($time, "clk=%b, rst=%b, JK=%b, q=%b, qb=%b", clk, rst,JK,q,qb);
#10 rst=0;JK=2'b01;
#10 JK=2'b10;
#10 JK=2'b11;
#10 JK=2'b00;
#10 JK=2'b01;
#10 JK=2'b10;
#10 JK=2'b11;
#10 $finish;
end 
endmodule