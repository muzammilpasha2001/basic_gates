module tb;
reg clk,rst;
reg [1:0]SR;
wire q,qb;
initial begin
$dumpfile("my.vcd");
$dumpvars;
end
sr_ff dut(clk,rst,SR,q,qb);
initial 
	begin
		clk=0;rst=1;SR=2'b00;
	end
always #5 clk=~clk;
initial begin
$monitor($time, "clk=%b, rst=%b, SR=%b, q=%b, qb=%b", clk, rst,SR,q,qb);
#10 rst=0; SR=2'b01;
#10 SR=2'b10;
#10 SR=2'b11;
#10 SR=2'b00;
#10 SR=2'b01;
#10 SR=2'b10;
#10 SR=2'b11;
#10 $finish;
end 
endmodule