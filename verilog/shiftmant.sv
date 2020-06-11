module shiftmant (input logic alessb,
		  input logic [23:0] manta, mantb,
		  input logic [7:0] shamt,
		  output logic [23:0] shmant);
   
   logic [23:0] 		      shiftedval;
   logic 			      ovf;   

   assign shiftedval = alessb ?
		       (manta >> shamt) : (mantb >> shamt);
   assign ovf = (shamt[7] | shamt[6] | shamt[5] |
		 (shamt[4] & shamt[3]));
   assign shmant = ovf ? 24'h0 : shiftedval;

endmodule // shiftmant
