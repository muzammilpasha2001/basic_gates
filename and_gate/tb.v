module tb;
reg a,b;
wire out;

initial begin
  $dumpfile("my.vcd");
  $dumpvars;
end

myand dut(.a(a), .b(b), .out(out));
initial 
begin
$monitor($time, "a=%b, b=%b, out=%b", a,b,out);
a=1'b0;b=1'b0;
#10 a=1'b0;b=1'b1;
#10 a=1'b1;b=1'b0;
#10 a=1'b1;b=1'b1;
#10 $finish;
end
endmodule
