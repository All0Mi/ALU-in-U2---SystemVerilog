`include "u2_to_sm_synth.sv"

module u2_to_sm_tb_synth;
	parameter M=8;
	//input
	reg [M-1:0] u2;
	//output
	wire [M-1:0] sm;
	wire ERROR;
	
	u2_to_sm_synth uut (.u2(u2), .sm(sm), .ERROR(ERROR));
		initial begin
		$dumpfile("u2_to_sm.vcd");
		$dumpvars(0, u2_to_sm_tb_synth);
		// poprawny u2<0
			u2 = -120;
			#10;
		// poprawny u2 > 0
			u2 = 120;
			#10;
		// niepoprawny
			u2 = -128;
			#10;
		end
		
endmodule