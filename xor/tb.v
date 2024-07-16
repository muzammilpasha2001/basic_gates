module tb;
reg in1,in2;
wire out;
initial begin
  $dumpfile("my.vcd");
  $dumpvars;
end
myxor dut(in1,in2,out);
initial 
begin
$monitor($time, "in1=%b, in2=%b, out=%b", in1,in2,out);
in1=1'b0; in2=1'b0;
#10 in1=1'b0; in2=1'b1;
#10 in1=1'b1; in2=1'b0;
#10 in1=1'b1; in2=1'b1;
#10 $finish;
end
endmodule