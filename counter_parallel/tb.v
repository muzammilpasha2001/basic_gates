module tb;
wire [7:0] out;
reg [7:0] data;
reg load, enable, clk, reset;
initial begin 
$dumpfile("my.vcd");
$dumpvars;
end
up_counter_load dut(
out      ,  
data     ,  
load     ,  
enable   ,  
clk      ,  
reset       
);

initial 
begin
	clk=0;reset=1;
end
always #5 clk=~clk;
initial 
begin
$monitor($time, "clk=%b, reset=%b, enable=%b, load=%b, data=%b, out=%b", clk, reset,enable,load,data,out);
#10 reset=0;enable=1;data=5;
#100 reset=1;
#10 reset=0;load=1;
#20 load=0;
#20
$finish;
end
endmodule
