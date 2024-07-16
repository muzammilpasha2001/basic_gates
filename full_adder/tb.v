module tb;
reg a,b,cin;
wire sum,cout;
initial 
begin
$dumpfile("my.vcd");
$dumpvars;
end
FA dut(a,b,cin,sum,cout);
initial begin
$monitor($time, "a=%b,b=%b,cin=%b,sum=%b,cout=%b", a,b,cin,sum,cout);
a=1'b0;b=1'b0;cin=1'b0;
#10 a=1'b0;b=1'b0;cin=1'b1;
#10 a=1'b0;b=1'b1;cin=1'b0;
#10 a=1'b0;b=1'b1;cin=1'b1;
#10 a=1'b1;b=1'b0;cin=1'b0;
#10 a=1'b1;b=1'b0;cin=1'b1;
#10 a=1'b0;b=1'b1;cin=1'b0;
#10 a=1'b1;b=1'b1;cin=1'b1;
#10 $finish;
end
endmodule