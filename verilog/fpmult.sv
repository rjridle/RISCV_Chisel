module fpmult (input logic [31:0] a, b,
	       output logic [31:0] m);

   logic [7:0] 			  expa, expb, exp;
   logic [23:0] 		  manta, mantb;
   logic [22:0] 		  fract;
   logic [47:0] 		  result;

   assign {expa, manta} = {a[30:23], 1'b1, a[22:0]};
   assign {expb, mantb} = {b[30:23], 1'b1, b[22:0]};
   assign m = {1'b0, exp, fract};

   assign result = manta * mantb;
   assign fract = result[47] ?
		  result[46:24] :
		  result[45:23];
   assign exp = result[47] ?
		(expa + expb - 126) :
		(expa + expb - 127);

endmodule // fpmult
