module tb_counter;
    reg Clk;
    reg reset;
    reg UpOrDown;
    wire [3:0]Count;
initial begin
$dumpfile("my.vcd");
$dumpvars;
end
    upordown_counter uut (
        .Clk(Clk), 
        .reset(reset), 
        .UpOrDown(UpOrDown), 
        .Count(Count)
    );
    initial begin Clk = 0; reset=1; end
    always #10 Clk = ~Clk;
    initial 
	begin
$monitor($time, "Clk=%b, reset=%b, UpOrDown=%b, Count=%b", Clk,reset, UpOrDown, Count);
   #10     reset = 0;
        UpOrDown = 1;
        #150;UpOrDown = 0;
        #90;reset = 1;
	#10;UpOrDown = 1;
        #50;reset = 0;
	#10;UpOrDown = 0;
#150 $finish; 
    end
      
endmodule