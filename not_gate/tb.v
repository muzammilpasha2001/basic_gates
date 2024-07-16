module tb;
reg ina;
wire outa;

initial begin
  $dumpfile("my.vcd");
  $dumpvars;
end

mynot dut(.in(ina), .out(outa));
initial 
begin
$monitor($time, "in=%b, out=%b", ina,outa);
ina=1'b0;
#10 ina=1'b1;
#10 $finish;
end
endmodule