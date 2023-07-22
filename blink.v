// create module
	module blink (
	input wire clk, // 50MHz input clock
	output wire LED // LED ouput
	);

// create a binary counter
	reg [31:0] cnt; // 32-bit counter

initial begin

cnt <= 32'h00000000; // start at zero

end

always @(posedge clk) begin

cnt <= cnt + 1; // count up

end

//assign LED to 25th bit of the counter to blink the LED at a few Hz
assign LED = cnt[20];

    // For variation in timing, I have to just change the counter bit to lower or higher number so i changed that to 24 (like - cnt[24]) and the remaining code is same for both scenarios.
