--------RISCV Single Cycle Architecture in Chisel--------

This repository holds a working RISCV Single Cycle processor that was made in Chisel. 

Current working instructions:
AND	OR	XOR
ADD	SUB	SLT
SLL	SLTU	SLR
MUL	ADDI	ANDI
ORI	SUBI	XORI
SLTI	SLLI	SLTUI
SLRI	LD	SW
BEQ	BNE	BGE
BLTU	BGEU	JAL

The file riscvSingle.scala located at MyChiselProject/src/main/scala/riscvSingle
is the main file containing the whole architecture. 

To simulate the processor:
1. Open riscvSingle.scala located at MyChiselProject/src/main/scala/riscvSingle
   in a test editor
2. Replace the path inside of the "loadMemoryFromFile" function with your
   absolute path. Should look like
	 /absolute/path/to/risc-v-chisel/MyChiselProject/tests/some_test.x
   Located in tests/ there are example hex files (\*.x) and machine
   language files (\*.s) that can be used.
3. Navigate back the MyChiselProjects/  
4. Once inside MyChiselProjects/, run the command
	sbt 'runMain riscvSingle.top'

For more information about Chisel and the RISCV processor, see the
LaTeX documentation.

Once the command is ran, information about each cycle will be printed
to the command line. The output will look messy and complicated due to
how Chisel jumps aroundthe program and executes the print statements.
I've tried to make it as clear as possible but sometimes values that
have been inserted into the regfile will not show up until the next cycle. 


