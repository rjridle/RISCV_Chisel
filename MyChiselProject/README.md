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

When first downloading the repo run ./installDependencies.sh to install things like 
java and sbt which are needed to run Chisel. After that, projects are ready to be ran.

To simulate the processor:
3. Navigate to MyChiselProjects/  
4. Once inside MyChiselProjects/, run the command script

	./runProject.sh [project file name] [test file name]

   DO NOT USE EXTENSIONS or else it will not work. project file name should be the name of
   the main file and it MUST be located in src/main/scala/. Test files are found in tests/
   and the path starting from tests must be entered. For example:

	./runProject.sh riscvSingle beqTests/simpBeq
   or
	./runProject.sh riscvSingle fib

For more information about Chisel and the RISCV processor, see the
LaTeX documentation.

Once the command is ran, information about each cycle will be printed
to the command line. The output will look messy and complicated due to
how Chisel jumps aroundthe program and executes the print statements.
I've tried to make it as clear as possible but sometimes values that
have been inserted into the regfile will not show up until the next cycle. 


