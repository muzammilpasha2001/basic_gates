module tb;
reg clk,rst,load;
reg [3:0]din;
reg sin;
wire [3:0]out;

initial 
	begin
		$dumpfile("my.vcd");
		$dumpvars;
	end

left_shift dut(clk,rst,din,load,sin,out);
always #10 clk=~clk;
initial 
begin 
clk=0;rst=1;din=4'b0101;load=0;
#20 rst=0;sin=0;
#10 load=1;
#20 load=0;
repeat (7) @ (posedge clk)
	sin <= ~sin;
repeat (7) @ (posedge clk);
#10 load=1; din=4'b1000;
#20 load=0;
repeat (7) @ (posedge clk)
	sin <= ~sin;
#5 $finish;
end
initial
$monitor($time, "rst=%b, din=%b, load=%b, sin=%b, out=%b",rst,din,load,sin,out);
endmodule
