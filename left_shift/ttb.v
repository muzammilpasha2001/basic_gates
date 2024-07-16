module tb_sr;
	parameter MSB = 16; // [Optional] Declare a parameter to represent number of bits in shift register
	
	reg data; 
	reg clk; 
	reg en; 
	//reg dir; 
	reg rstn; 
	wire [MSB-1:0] out; 
initial begin 
$dumpfile("my.vcd");
$dumpvars;
end

	shift_reg #(MSB) sr0 ( .d (data),
	.clk (clk),
	.en (en),
	.rstn (rstn),
	.out (out));
	
	always #10 clk = ~clk;
	
	initial 
	begin
	clk <= 0;
	rstn <= 1;
	en <= 0;
	//dir <= 0;
	data <= 'h1;
	end
	
	// Drive main stimulus to the design to verify if this works
	initial begin
	
	// 1. Apply reset and deassert reset after some time
	rstn <= 1;
	#20 rstn <= 0;
	en <= 1;
	
	// 2. For 7 clocks, drive alternate values to data pin
	repeat (10) @ (posedge clk)
	data <= ~data;
	
	
	// 5. Drive nothing for next 7 clocks, allow shift register to simply shift based on dir
	repeat (7) @ (posedge clk);
	
	// 6. Finish the simulation
	$finish;
	end
	
	// Monitor values of these variables and print them into the logfile for debug
	initial
	$monitor ("rstn=%0b, en=%0b, data=%b, out=%b", rstn, en, data, out);
	endmodule