module tb ();
logic [3:0] a,b,sum;
logic cin,cout;
initial begin
	$dumpfile(my.vcd);
	$dumpvars;
end

adder dut(.a(a),.b(b),.cin(cin),.sum(sum),.cout(cout));
initial
begin
	$monitor($time, "a=%b, b=%b, cin=%b, sum=%b, cout=$b", a,b,cin,cout);

#10;
a=10,b=5;
#10;
a=5,b=10;
#10;
$finish;
end 
endmodule: tb
