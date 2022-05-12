/* 
This is the Auto-Generated testbench. 
Written by Himanshu Nakrani and Mohit Agarwal K.
*/

`include "timescale.v"
module tb_sr_latch;

reg         S    ;
reg         R    ;
wire        Q    ;

sr_latch uut (
    .S    (    S    ),
    .R    (    R    ),
    .Q    (    Q    )
);

parameter PERIOD = 10;

initial begin
    $dumpfile("db_tb_sr_latch.vcd");
    $dumpvars(0, tb_sr_latch);
    clk = 1'b0;
    #(PERIOD/2);
    forever
        #(PERIOD/2) clk = ~clk;

	#10 
	S = 1'b0, R = 1'b0
	#30 
	S = 1'b0, R = 1'b1
	#50 
	S = 1'b1, R = 1'b0
	#70 
	S = 1'b1, R = 1'b1

end
endmodule
