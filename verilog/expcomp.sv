module expcomp (input logic [7:0] expa, expb,
		output logic alessb,
		output logic [7:0] exponent, shamt);

   logic [7:0] 			  aminusb, bminusa;

   assign aminusb = expa - expb;
   assign bminusa = expb - expa;
   assign alessb = aminusb[7];

   assign exponent = alessb ? expb : expa;
   assign shamt = alessb ? bminusa : aminusb;

endmodule // expcomp
