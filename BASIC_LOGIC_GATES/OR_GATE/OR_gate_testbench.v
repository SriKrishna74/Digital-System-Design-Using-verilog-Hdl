module or_tb;

	// Inputs
	reg in1;
	reg in2;

	// Outputs
	wire out;

	// Instantiate the Unit Under Test (UUT)
	OR_gate uut (
		.in1(in1), 
		.in2(in2), 
		.out(out)
	);

	initial begin
		// Initialize Inputs
		in1 = 0;
		in2 = 0;

		// Wait 100 ns for global reset to finish
		#100;
		in1 = 1'b0;in2 = 1'b0;
		
		#100;
		in1 = 1'b0;in2 = 1'b1;
		
		#100;
		in1 = 1'b1;in2 = 1'b0;
		
		#100;
		in1 = 1'b1;in2 = 1'b1;
        
		// Add stimulus here

	end
      
endmodule
