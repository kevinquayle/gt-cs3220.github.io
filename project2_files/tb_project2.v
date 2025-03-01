`timescale 1ns/1ns

module tb_project2();

 reg clk;
 reg reset;


project2_frame myprj(
	.clk(clk),
	.reset(reset)
);

integer i; 

initial begin	
	clk = 0;
	reset = 0;

	#2 reset = 1;
//	i = 0;
	
	#10 reset = 0; 

end

always #10  clk = ~clk;
/*
   always @(posedge clk)
   begin 
       // i = i+1;
        // if ((i% 100) == 0) begin  
		begin 
            $display ("i:%d sim_clk=%b KEY=%b rest:%b hex0:%h hex1:%h ledr:%b",i, clk, KEY, reset, HEX0, HEX1, LEDR);
            // please use this results for only test 
            if (HEX0 == 'h01) begin 
             $display ("congratulations! you passed test cases if you are testing test[1-5]");
             end   
         end
          
    end
*/
endmodule
