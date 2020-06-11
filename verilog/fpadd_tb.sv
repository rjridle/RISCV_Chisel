module tb;

   logic [31:0] a, b;   
   logic [31:0] s;
   
   logic 	clk;
   integer 	handle3;
   integer 	desc3;

   fpadd dut (a, b, s);
   
   initial 
     begin	
	clk = 1'b1;
	forever #5 clk = ~clk;
     end

   initial
     begin
	handle3 = $fopen("fpadd.out");
	#700 $finish;		
     end

   always 
     begin
	desc3 = handle3;
	#5 $fdisplay(desc3, "%h %h | %h", a, b, s);
     end

   initial
     begin
	#0  a = 32'h3F75_0000;
	#0  b = 32'h3FC0_0000;		
     end

endmodule // tb






