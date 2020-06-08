[0m[[0m[0minfo[0m] [0m[0mLoading settings from plugins.sbt ...[0m
[0m[[0m[0minfo[0m] [0m[0mLoading project definition from /home/rjridle/risc-v-chisel/MyChiselProject/project[0m
[0m[[0m[0minfo[0m] [0m[0mLoading settings from build.sbt ...[0m
[0m[[0m[0minfo[0m] [0m[0mSet current project to RISCV_Single_Cycle (in build file:/home/rjridle/risc-v-chisel/MyChiselProject/)[0m
[0m[[0m[0minfo[0m] [0m[0mCompiling 1 Scala source to /home/rjridle/risc-v-chisel/MyChiselProject/target/scala-2.11/classes ...[0m
[0m[[0m[33mwarn[0m] [0m[0mthere were 424 feature warnings; re-run with -feature for details[0m
[0m[[0m[33mwarn[0m] [0m[0mone warning found[0m
[0m[[0m[0minfo[0m] [0m[0mDone compiling.[0m
[0m[[0m[33mwarn[0m] [0m[0mMultiple main classes detected.  Run 'show discoveredMainClasses' to see the list[0m
[0m[[0m[0minfo[0m] [0m[0mPackaging /home/rjridle/risc-v-chisel/MyChiselProject/target/scala-2.11/riscv_single_cycle_2.11-3.1.1.jar ...[0m
[0m[[0m[0minfo[0m] [0m[0mDone packaging.[0m
[0m[[0m[0minfo[0m] [0m[0mRunning riscvSingle.top [0m
[[35minfo[0m] [0.003] Elaborating design...
[[35minfo[0m] [1.828] Done elaborating.
Total FIRRTL Compile Time: 3166.4 ms
Total FIRRTL Compile Time: 1227.5 ms
file loaded in 1.7999075 seconds, 940 symbols, 636 statements
[[35minfo[0m] [0.003] SEED 1591594955445
[[35minfo[0m] [0.004] **********STARTING riscvSingleTest*******
[[35minfo[0m] [0.007] CYCLE: 1
[[35minfo[0m] [0.007] STARTING NEXT CYCLE: 1
[[35minfo[0m] [0.008] valid = 1



___________________________
|regfile Module:
|  regWriteEnable  : b1
|  regReadAddress1 : b0
|  regReadAddress2 : b100
|  regWriteAddress : b1
|  regWriteData    : 0x4
|  regReadData1    : 0x0
|  regReadData2    : 0x0
|___________________________



___________________________
| rf(0) = 0
| rf(1) = 4
| rf(2) = 0
| rf(3) = 0
| rf(4) = 0
| rf(5) = 0
| rf(6) = 0
| rf(7) = 0
| rf(8) = 0
| rf(9) = 0
| rf(10) = 0
| rf(11) = 0
| rf(12) = 0
| rf(13) = 0
| rf(14) = 0
| rf(15) = 0
| rf(16) = 0
| rf(17) = 0
| rf(18) = 0
| rf(19) = 0
| rf(20) = 0
| rf(21) = 0
| rf(22) = 0
| rf(23) = 0
| rf(24) = 0
| rf(25) = 0
| rf(26) = 0
| rf(27) = 0
| rf(28) = 0
| rf(29) = 0
| rf(30) = 0
| rf(31) = 0
|___________________________



___________________________
|alu Module:
|  a               : 0x0
|  b               : 0x4
|  out             : 0x4
|  aluControl      : b10
|  zeroFlag        : b0
|  lessThanFlag    : b1
|  greaterThanFlag : b0
|___________________________



___________________________
|extend Module:
|  instr12     : b10000000000
|  instr20     : b10
|  immsrc      : b0
|  extImm      : 0x400
|___________________________



___________________________
|extend Module:
|  instr12     : b100
|  instr20     : b10
|  immsrc      : b0
|  extImm      : 0x4
|___________________________



___________________________
|datapath Module:
|  inst            : 0x400093
|  memToReg        : b0
|  memImm          : b1
|  memAddress      : 0x1
|  memReadData     : 0x0
|  memWriteData    : 0x0
|  aluOut          : 0x4
|  pcNext          : 0x4
|  branchExtImm    : 0x400
|  extImm          : 0x4
|  regReadData2    : 0x0
|  regWriteData    : 0x4
|  regSrc          : 0x0
|  pcBranch        : 0x404
|  pcRegBranch     : 0x4
|  pcPlus4         : 0x4
|  branchSrc       : b0
|___________________________



___________________________
|decoder Module:
|  branchSrc          : b0
|  opcode             : b10011
|  funct3             : b0
|  regSrc             : b0
|  immSrc             : b0
|  aluSrc             : b1
|  pcSrc              : b0
|  regWriteEnable     : b1
|  aluControl         : b10
|  memToReg           : b0
|  memWriteEnable     : b0
|  zeroFlag           : b0
|  lessThanFlag       : b1
|  greaterThanFlag    : b0
|___________________________
___________________________
|riscv Module:
|  instr          : 0x400093
|  memWriteEnable : b0
|  memWriteData   : b0
|  memAddress     : b1
|  memReadData    : 0x0
|___________________________



Memory___________________________
| mem(0) = 0
| mem(1) = 0
| mem(2) = 0
| mem(3) = 0
| mem(4) = 0
| mem(5) = 0
| mem(6) = 0
| mem(7) = 0
| mem(8) = 0
| mem(9) = 0
| mem(10) = 0
| mem(11) = 0
| mem(12) = 0
| mem(13) = 0
| mem(14) = 0
| mem(15) = 0
| mem(16) = 0
| mem(17) = 0
| mem(18) = 0
| mem(19) = 0
| mem(20) = 0
| mem(21) = 0
| mem(22) = 0
| mem(23) = 0
| mem(24) = 0
| mem(25) = 0
| mem(26) = 0
| mem(27) = 0
| mem(28) = 0
| mem(29) = 0
| mem(30) = 0
| mem(31) = 0
|________________________________



___________________________
|dmem Module:
|  memAddress      : 0x1
|  memWriteData    : 0x0
|  memWriteEnable  : b0
|  memReadData     : 0x0
|___________________________



___________________________
|top Module:
|  instr pulled       : 0x400093
|  pc pulled          : b0
|  memWriteEnable     : b0
|  memWriteData       : 0x0
|  memAddress         : 0x1
|  memReadData        : 0x0
|___________________________
[[35minfo[0m] [0.073] STARTING NEXT CYCLE: 2
[[35minfo[0m] [0.074] valid = 1



___________________________
|regfile Module:
|  regWriteEnable  : b1
|  regReadAddress1 : b0
|  regReadAddress2 : b10
|  regWriteAddress : b10
|  regWriteData    : 0x2
|  regReadData1    : 0x0
|  regReadData2    : 0x0
|___________________________



___________________________
| rf(0) = 0
| rf(1) = 4
| rf(2) = 0
| rf(3) = 0
| rf(4) = 0
| rf(5) = 0
| rf(6) = 0
| rf(7) = 0
| rf(8) = 0
| rf(9) = 0
| rf(10) = 0
| rf(11) = 0
| rf(12) = 0
| rf(13) = 0
| rf(14) = 0
| rf(15) = 0
| rf(16) = 0
| rf(17) = 0
| rf(18) = 0
| rf(19) = 0
| rf(20) = 0
| rf(21) = 0
| rf(22) = 0
| rf(23) = 0
| rf(24) = 0
| rf(25) = 0
| rf(26) = 0
| rf(27) = 0
| rf(28) = 0
| rf(29) = 0
| rf(30) = 0
| rf(31) = 0
|___________________________



___________________________
|alu Module:
|  a               : 0x0
|  b               : 0x2
|  out             : 0x2
|  aluControl      : b10
|  zeroFlag        : b0
|  lessThanFlag    : b1
|  greaterThanFlag : b0
|___________________________



___________________________
|extend Module:
|  instr12     : b1
|  instr20     : b1
|  immsrc      : b0
|  extImm      : 0x1
|___________________________



___________________________
|extend Module:
|  instr12     : b10
|  instr20     : b1
|  immsrc      : b0
|  extImm      : 0x2
|___________________________



___________________________
|datapath Module:
|  inst            : 0x200113
|  memToReg        : b0
|  memImm          : b10
|  memAddress      : 0x2
|  memReadData     : 0x0
|  memWriteData    : 0x0
|  aluOut          : 0x2
|  pcNext          : 0x8
|  branchExtImm    : 0x1
|  extImm          : 0x2
|  regReadData2    : 0x0
|  regWriteData    : 0x2
|  regSrc          : 0x0
|  pcBranch        : 0x9
|  pcRegBranch     : 0x2
|  pcPlus4         : 0x8
|  branchSrc       : b0
|___________________________



___________________________
|decoder Module:
|  branchSrc          : b0
|  opcode             : b10011
|  funct3             : b0
|  regSrc             : b0
|  immSrc             : b0
|  aluSrc             : b1
|  pcSrc              : b0
|  regWriteEnable     : b1
|  aluControl         : b10
|  memToReg           : b0
|  memWriteEnable     : b0
|  zeroFlag           : b0
|  lessThanFlag       : b1
|  greaterThanFlag    : b0
|___________________________
___________________________
|riscv Module:
|  instr          : 0x200113
|  memWriteEnable : b0
|  memWriteData   : b0
|  memAddress     : b10
|  memReadData    : 0x0
|___________________________



Memory___________________________
| mem(0) = 0
| mem(1) = 0
| mem(2) = 0
| mem(3) = 0
| mem(4) = 0
| mem(5) = 0
| mem(6) = 0
| mem(7) = 0
| mem(8) = 0
| mem(9) = 0
| mem(10) = 0
| mem(11) = 0
| mem(12) = 0
| mem(13) = 0
| mem(14) = 0
| mem(15) = 0
| mem(16) = 0
| mem(17) = 0
| mem(18) = 0
| mem(19) = 0
| mem(20) = 0
| mem(21) = 0
| mem(22) = 0
| mem(23) = 0
| mem(24) = 0
| mem(25) = 0
| mem(26) = 0
| mem(27) = 0
| mem(28) = 0
| mem(29) = 0
| mem(30) = 0
| mem(31) = 0
|________________________________



___________________________
|dmem Module:
|  memAddress      : 0x2
|  memWriteData    : 0x0
|  memWriteEnable  : b0
|  memReadData     : 0x0
|___________________________



___________________________
|top Module:
|  instr pulled       : 0x200113
|  pc pulled          : b1
|  memWriteEnable     : b0
|  memWriteData       : 0x0
|  memAddress         : 0x2
|  memReadData        : 0x0
|___________________________
[[35minfo[0m] [0.118] STARTING NEXT CYCLE: 3
[[35minfo[0m] [0.119] valid = 1



___________________________
|regfile Module:
|  regWriteEnable  : b0
|  regReadAddress1 : b1
|  regReadAddress2 : b10
|  regWriteAddress : b100
|  regWriteData    : 0x0
|  regReadData1    : 0x4
|  regReadData2    : 0x2
|___________________________



___________________________
| rf(0) = 0
| rf(1) = 4
| rf(2) = 2
| rf(3) = 0
| rf(4) = 0
| rf(5) = 0
| rf(6) = 0
| rf(7) = 0
| rf(8) = 0
| rf(9) = 0
| rf(10) = 0
| rf(11) = 0
| rf(12) = 0
| rf(13) = 0
| rf(14) = 0
| rf(15) = 0
| rf(16) = 0
| rf(17) = 0
| rf(18) = 0
| rf(19) = 0
| rf(20) = 0
| rf(21) = 0
| rf(22) = 0
| rf(23) = 0
| rf(24) = 0
| rf(25) = 0
| rf(26) = 0
| rf(27) = 0
| rf(28) = 0
| rf(29) = 0
| rf(30) = 0
| rf(31) = 0
|___________________________



___________________________
|alu Module:
|  a               : 0x4
|  b               : 0x2
|  out             : 0x0
|  aluControl      : b0
|  zeroFlag        : b0
|  lessThanFlag    : b0
|  greaterThanFlag : b1
|___________________________



___________________________
|extend Module:
|  instr12     : b10
|  instr20     : b1
|  immsrc      : b0
|  extImm      : 0x2
|___________________________



___________________________
|extend Module:
|  instr12     : b10
|  instr20     : b1
|  immsrc      : b0
|  extImm      : 0x2
|___________________________



___________________________
|datapath Module:
|  inst            : 0x20a223
|  memToReg        : b0
|  memImm          : b100
|  memAddress      : 0x8
|  memReadData     : 0x0
|  memWriteData    : 0x2
|  aluOut          : 0x0
|  pcNext          : 0xc
|  branchExtImm    : 0x2
|  extImm          : 0x2
|  regReadData2    : 0x2
|  regWriteData    : 0x0
|  regSrc          : 0x0
|  pcBranch        : 0xe
|  pcRegBranch     : 0x0
|  pcPlus4         : 0xc
|  branchSrc       : b0
|___________________________



___________________________
|decoder Module:
|  branchSrc          : b0
|  opcode             : b100011
|  funct3             : b10
|  regSrc             : b0
|  immSrc             : b0
|  aluSrc             : b1
|  pcSrc              : b0
|  regWriteEnable     : b0
|  aluControl         : b0
|  memToReg           : b0
|  memWriteEnable     : b1
|  zeroFlag           : b0
|  lessThanFlag       : b0
|  greaterThanFlag    : b1
|___________________________
___________________________
|riscv Module:
|  instr          : 0x20a223
|  memWriteEnable : b1
|  memWriteData   : b10
|  memAddress     : b1000
|  memReadData    : 0x0
|___________________________



Memory___________________________
| mem(0) = 0
| mem(1) = 0
| mem(2) = 0
| mem(3) = 0
| mem(4) = 0
| mem(5) = 0
| mem(6) = 0
| mem(7) = 0
| mem(8) = 0
| mem(9) = 0
| mem(10) = 0
| mem(11) = 0
| mem(12) = 0
| mem(13) = 0
| mem(14) = 0
| mem(15) = 0
| mem(16) = 0
| mem(17) = 0
| mem(18) = 0
| mem(19) = 0
| mem(20) = 0
| mem(21) = 0
| mem(22) = 0
| mem(23) = 0
| mem(24) = 0
| mem(25) = 0
| mem(26) = 0
| mem(27) = 0
| mem(28) = 0
| mem(29) = 0
| mem(30) = 0
| mem(31) = 0
|________________________________



___________________________
|dmem Module:
|  memAddress      : 0x8
|  memWriteData    : 0x2
|  memWriteEnable  : b1
|  memReadData     : 0x0
|___________________________



___________________________
|top Module:
|  instr pulled       : 0x20a223
|  pc pulled          : b10
|  memWriteEnable     : b1
|  memWriteData       : 0x2
|  memAddress         : 0x8
|  memReadData        : 0x0
|___________________________
[[35minfo[0m] [0.172] STARTING NEXT CYCLE: 4
[[35minfo[0m] [0.172] valid = 1



___________________________
|regfile Module:
|  regWriteEnable  : b0
|  regReadAddress1 : b10
|  regReadAddress2 : b1
|  regWriteAddress : b0
|  regWriteData    : 0x0
|  regReadData1    : 0x2
|  regReadData2    : 0x4
|___________________________



___________________________
| rf(0) = 0
| rf(1) = 4
| rf(2) = 2
| rf(3) = 0
| rf(4) = 0
| rf(5) = 0
| rf(6) = 0
| rf(7) = 0
| rf(8) = 0
| rf(9) = 0
| rf(10) = 0
| rf(11) = 0
| rf(12) = 0
| rf(13) = 0
| rf(14) = 0
| rf(15) = 0
| rf(16) = 0
| rf(17) = 0
| rf(18) = 0
| rf(19) = 0
| rf(20) = 0
| rf(21) = 0
| rf(22) = 0
| rf(23) = 0
| rf(24) = 0
| rf(25) = 0
| rf(26) = 0
| rf(27) = 0
| rf(28) = 0
| rf(29) = 0
| rf(30) = 0
| rf(31) = 0
|___________________________



___________________________
|alu Module:
|  a               : 0x2
|  b               : 0x1
|  out             : 0x0
|  aluControl      : b0
|  zeroFlag        : b0
|  lessThanFlag    : b0
|  greaterThanFlag : b1
|___________________________



___________________________
|extend Module:
|  instr12     : b0
|  instr20     : b10000000000
|  immsrc      : b0
|  extImm      : 0x0
|___________________________



___________________________
|extend Module:
|  instr12     : b1
|  instr20     : b10000000000
|  immsrc      : b0
|  extImm      : 0x1
|___________________________



___________________________
|datapath Module:
|  inst            : 0x112023
|  memToReg        : b0
|  memImm          : b0
|  memAddress      : 0x2
|  memReadData     : 0x2
|  memWriteData    : 0x4
|  aluOut          : 0x0
|  pcNext          : 0x10
|  branchExtImm    : 0x0
|  extImm          : 0x1
|  regReadData2    : 0x4
|  regWriteData    : 0x0
|  regSrc          : 0x0
|  pcBranch        : 0x10
|  pcRegBranch     : 0x0
|  pcPlus4         : 0x10
|  branchSrc       : b0
|___________________________



___________________________
|decoder Module:
|  branchSrc          : b0
|  opcode             : b100011
|  funct3             : b10
|  regSrc             : b0
|  immSrc             : b0
|  aluSrc             : b1
|  pcSrc              : b0
|  regWriteEnable     : b0
|  aluControl         : b0
|  memToReg           : b0
|  memWriteEnable     : b1
|  zeroFlag           : b0
|  lessThanFlag       : b0
|  greaterThanFlag    : b1
|___________________________
___________________________
|riscv Module:
|  instr          : 0x112023
|  memWriteEnable : b1
|  memWriteData   : b100
|  memAddress     : b10
|  memReadData    : 0x2
|___________________________



Memory___________________________
| mem(0) = 0
| mem(1) = 0
| mem(2) = 0
| mem(3) = 0
| mem(4) = 0
| mem(5) = 0
| mem(6) = 0
| mem(7) = 0
| mem(8) = 2
| mem(9) = 0
| mem(10) = 0
| mem(11) = 0
| mem(12) = 0
| mem(13) = 0
| mem(14) = 0
| mem(15) = 0
| mem(16) = 0
| mem(17) = 0
| mem(18) = 0
| mem(19) = 0
| mem(20) = 0
| mem(21) = 0
| mem(22) = 0
| mem(23) = 0
| mem(24) = 0
| mem(25) = 0
| mem(26) = 0
| mem(27) = 0
| mem(28) = 0
| mem(29) = 0
| mem(30) = 0
| mem(31) = 0
|________________________________



___________________________
|dmem Module:
|  memAddress      : 0x2
|  memWriteData    : 0x4
|  memWriteEnable  : b1
|  memReadData     : 0x2
|___________________________



___________________________
|top Module:
|  instr pulled       : 0x112023
|  pc pulled          : b11
|  memWriteEnable     : b1
|  memWriteData       : 0x4
|  memAddress         : 0x2
|  memReadData        : 0x2
|___________________________
[[35minfo[0m] [0.204] STARTING NEXT CYCLE: 5
[[35minfo[0m] [0.205] valid = 1



___________________________
|regfile Module:
|  regWriteEnable  : b0
|  regReadAddress1 : b10
|  regReadAddress2 : b1
|  regWriteAddress : b0
|  regWriteData    : 0x0
|  regReadData1    : 0x2
|  regReadData2    : 0x4
|___________________________



___________________________
| rf(0) = 0
| rf(1) = 4
| rf(2) = 2
| rf(3) = 0
| rf(4) = 0
| rf(5) = 0
| rf(6) = 0
| rf(7) = 0
| rf(8) = 0
| rf(9) = 0
| rf(10) = 0
| rf(11) = 0
| rf(12) = 0
| rf(13) = 0
| rf(14) = 0
| rf(15) = 0
| rf(16) = 0
| rf(17) = 0
| rf(18) = 0
| rf(19) = 0
| rf(20) = 0
| rf(21) = 0
| rf(22) = 0
| rf(23) = 0
| rf(24) = 0
| rf(25) = 0
| rf(26) = 0
| rf(27) = 0
| rf(28) = 0
| rf(29) = 0
| rf(30) = 0
| rf(31) = 0
|___________________________



___________________________
|alu Module:
|  a               : 0x2
|  b               : 0x1
|  out             : 0x0
|  aluControl      : b0
|  zeroFlag        : b0
|  lessThanFlag    : b0
|  greaterThanFlag : b1
|___________________________



___________________________
|extend Module:
|  instr12     : b0
|  instr20     : b10000000000
|  immsrc      : b0
|  extImm      : 0x0
|___________________________



___________________________
|extend Module:
|  instr12     : b1
|  instr20     : b10000000000
|  immsrc      : b0
|  extImm      : 0x1
|___________________________



___________________________
|datapath Module:
|  inst            : 0x112023
|  memToReg        : b0
|  memImm          : b0
|  memAddress      : 0x2
|  memReadData     : 0x4
|  memWriteData    : 0x4
|  aluOut          : 0x0
|  pcNext          : 0x14
|  branchExtImm    : 0x0
|  extImm          : 0x1
|  regReadData2    : 0x4
|  regWriteData    : 0x0
|  regSrc          : 0x0
|  pcBranch        : 0x14
|  pcRegBranch     : 0x0
|  pcPlus4         : 0x14
|  branchSrc       : b0
|___________________________



___________________________
|decoder Module:
|  branchSrc          : b0
|  opcode             : b100011
|  funct3             : b10
|  regSrc             : b0
|  immSrc             : b0
|  aluSrc             : b1
|  pcSrc              : b0
|  regWriteEnable     : b0
|  aluControl         : b0
|  memToReg           : b0
|  memWriteEnable     : b1
|  zeroFlag           : b0
|  lessThanFlag       : b0
|  greaterThanFlag    : b1
|___________________________
___________________________
|riscv Module:
|  instr          : 0x112023
|  memWriteEnable : b1
|  memWriteData   : b100
|  memAddress     : b10
|  memReadData    : 0x4
|___________________________



Memory___________________________
| mem(0) = 0
| mem(1) = 0
| mem(2) = 4
| mem(3) = 0
| mem(4) = 0
| mem(5) = 0
| mem(6) = 0
| mem(7) = 0
| mem(8) = 2
| mem(9) = 0
| mem(10) = 0
| mem(11) = 0
| mem(12) = 0
| mem(13) = 0
| mem(14) = 0
| mem(15) = 0
| mem(16) = 0
| mem(17) = 0
| mem(18) = 0
| mem(19) = 0
| mem(20) = 0
| mem(21) = 0
| mem(22) = 0
| mem(23) = 0
| mem(24) = 0
| mem(25) = 0
| mem(26) = 0
| mem(27) = 0
| mem(28) = 0
| mem(29) = 0
| mem(30) = 0
| mem(31) = 0
|________________________________



___________________________
|dmem Module:
|  memAddress      : 0x2
|  memWriteData    : 0x4
|  memWriteEnable  : b1
|  memReadData     : 0x4
|___________________________



___________________________
|top Module:
|  instr pulled       : 0x112023
|  pc pulled          : b100
|  memWriteEnable     : b1
|  memWriteData       : 0x4
|  memAddress         : 0x2
|  memReadData        : 0x4
|___________________________
[[35minfo[0m] [0.236] STARTING NEXT CYCLE: 6
[[35minfo[0m] [0.238] valid = 1



___________________________
|regfile Module:
|  regWriteEnable  : b1
|  regReadAddress1 : b0
|  regReadAddress2 : b11
|  regWriteAddress : b11
|  regWriteData    : 0x3
|  regReadData1    : 0x0
|  regReadData2    : 0x0
|___________________________



___________________________
| rf(0) = 0
| rf(1) = 4
| rf(2) = 2
| rf(3) = 0
| rf(4) = 0
| rf(5) = 0
| rf(6) = 0
| rf(7) = 0
| rf(8) = 0
| rf(9) = 0
| rf(10) = 0
| rf(11) = 0
| rf(12) = 0
| rf(13) = 0
| rf(14) = 0
| rf(15) = 0
| rf(16) = 0
| rf(17) = 0
| rf(18) = 0
| rf(19) = 0
| rf(20) = 0
| rf(21) = 0
| rf(22) = 0
| rf(23) = 0
| rf(24) = 0
| rf(25) = 0
| rf(26) = 0
| rf(27) = 0
| rf(28) = 0
| rf(29) = 0
| rf(30) = 0
| rf(31) = 0
|___________________________



___________________________
|alu Module:
|  a               : 0x0
|  b               : 0x3
|  out             : 0x3
|  aluControl      : b10
|  zeroFlag        : b0
|  lessThanFlag    : b1
|  greaterThanFlag : b0
|___________________________



___________________________
|extend Module:
|  instr12     : b10000000001
|  instr20     : b10000000001
|  immsrc      : b0
|  extImm      : 0x401
|___________________________



___________________________
|extend Module:
|  instr12     : b11
|  instr20     : b10000000001
|  immsrc      : b0
|  extImm      : 0x3
|___________________________



___________________________
|datapath Module:
|  inst            : 0x300193
|  memToReg        : b0
|  memImm          : b11
|  memAddress      : 0x3
|  memReadData     : 0x4
|  memWriteData    : 0x0
|  aluOut          : 0x3
|  pcNext          : 0x18
|  branchExtImm    : 0x401
|  extImm          : 0x3
|  regReadData2    : 0x0
|  regWriteData    : 0x3
|  regSrc          : 0x0
|  pcBranch        : 0x419
|  pcRegBranch     : 0x2
|  pcPlus4         : 0x18
|  branchSrc       : b0
|___________________________



___________________________
|decoder Module:
|  branchSrc          : b0
|  opcode             : b10011
|  funct3             : b0
|  regSrc             : b0
|  immSrc             : b0
|  aluSrc             : b1
|  pcSrc              : b0
|  regWriteEnable     : b1
|  aluControl         : b10
|  memToReg           : b0
|  memWriteEnable     : b0
|  zeroFlag           : b0
|  lessThanFlag       : b1
|  greaterThanFlag    : b0
|___________________________
___________________________
|riscv Module:
|  instr          : 0x300193
|  memWriteEnable : b0
|  memWriteData   : b0
|  memAddress     : b11
|  memReadData    : 0x4
|___________________________



Memory___________________________
| mem(0) = 0
| mem(1) = 0
| mem(2) = 4
| mem(3) = 0
| mem(4) = 0
| mem(5) = 0
| mem(6) = 0
| mem(7) = 0
| mem(8) = 2
| mem(9) = 0
| mem(10) = 0
| mem(11) = 0
| mem(12) = 0
| mem(13) = 0
| mem(14) = 0
| mem(15) = 0
| mem(16) = 0
| mem(17) = 0
| mem(18) = 0
| mem(19) = 0
| mem(20) = 0
| mem(21) = 0
| mem(22) = 0
| mem(23) = 0
| mem(24) = 0
| mem(25) = 0
| mem(26) = 0
| mem(27) = 0
| mem(28) = 0
| mem(29) = 0
| mem(30) = 0
| mem(31) = 0
|________________________________



___________________________
|dmem Module:
|  memAddress      : 0x3
|  memWriteData    : 0x0
|  memWriteEnable  : b0
|  memReadData     : 0x4
|___________________________



___________________________
|top Module:
|  instr pulled       : 0x300193
|  pc pulled          : b101
|  memWriteEnable     : b0
|  memWriteData       : 0x0
|  memAddress         : 0x3
|  memReadData        : 0x4
|___________________________
[[35minfo[0m] [0.267] STARTING NEXT CYCLE: 7
[[35minfo[0m] [0.267] valid = 1



___________________________
|regfile Module:
|  regWriteEnable  : b1
|  regReadAddress1 : b1
|  regReadAddress2 : b10
|  regWriteAddress : b100
|  regWriteData    : 0x6
|  regReadData1    : 0x4
|  regReadData2    : 0x2
|___________________________



___________________________
| rf(0) = 0
| rf(1) = 4
| rf(2) = 2
| rf(3) = 3
| rf(4) = 0
| rf(5) = 0
| rf(6) = 0
| rf(7) = 0
| rf(8) = 0
| rf(9) = 0
| rf(10) = 0
| rf(11) = 0
| rf(12) = 0
| rf(13) = 0
| rf(14) = 0
| rf(15) = 0
| rf(16) = 0
| rf(17) = 0
| rf(18) = 0
| rf(19) = 0
| rf(20) = 0
| rf(21) = 0
| rf(22) = 0
| rf(23) = 0
| rf(24) = 0
| rf(25) = 0
| rf(26) = 0
| rf(27) = 0
| rf(28) = 0
| rf(29) = 0
| rf(30) = 0
| rf(31) = 0
|___________________________



___________________________
|alu Module:
|  a               : 0x4
|  b               : 0x2
|  out             : 0x6
|  aluControl      : b10
|  zeroFlag        : b0
|  lessThanFlag    : b0
|  greaterThanFlag : b1
|___________________________



___________________________
|extend Module:
|  instr12     : b10
|  instr20     : b1
|  immsrc      : b0
|  extImm      : 0x2
|___________________________



___________________________
|extend Module:
|  instr12     : b10
|  instr20     : b1
|  immsrc      : b0
|  extImm      : 0x2
|___________________________



___________________________
|datapath Module:
|  inst            : 0x208233
|  memToReg        : b0
|  memImm          : b100
|  memAddress      : 0x8
|  memReadData     : 0x0
|  memWriteData    : 0x2
|  aluOut          : 0x6
|  pcNext          : 0x1c
|  branchExtImm    : 0x2
|  extImm          : 0x2
|  regReadData2    : 0x2
|  regWriteData    : 0x6
|  regSrc          : 0x0
|  pcBranch        : 0x1e
|  pcRegBranch     : 0x6
|  pcPlus4         : 0x1c
|  branchSrc       : b0
|___________________________



___________________________
|decoder Module:
|  branchSrc          : b0
|  opcode             : b110011
|  funct3             : b0
|  regSrc             : b0
|  immSrc             : b0
|  aluSrc             : b0
|  pcSrc              : b0
|  regWriteEnable     : b1
|  aluControl         : b10
|  memToReg           : b0
|  memWriteEnable     : b0
|  zeroFlag           : b0
|  lessThanFlag       : b0
|  greaterThanFlag    : b1
|___________________________
___________________________
|riscv Module:
|  instr          : 0x208233
|  memWriteEnable : b0
|  memWriteData   : b10
|  memAddress     : b1000
|  memReadData    : 0x0
|___________________________



Memory___________________________
| mem(0) = 0
| mem(1) = 0
| mem(2) = 4
| mem(3) = 0
| mem(4) = 0
| mem(5) = 0
| mem(6) = 0
| mem(7) = 0
| mem(8) = 2
| mem(9) = 0
| mem(10) = 0
| mem(11) = 0
| mem(12) = 0
| mem(13) = 0
| mem(14) = 0
| mem(15) = 0
| mem(16) = 0
| mem(17) = 0
| mem(18) = 0
| mem(19) = 0
| mem(20) = 0
| mem(21) = 0
| mem(22) = 0
| mem(23) = 0
| mem(24) = 0
| mem(25) = 0
| mem(26) = 0
| mem(27) = 0
| mem(28) = 0
| mem(29) = 0
| mem(30) = 0
| mem(31) = 0
|________________________________



___________________________
|dmem Module:
|  memAddress      : 0x8
|  memWriteData    : 0x2
|  memWriteEnable  : b0
|  memReadData     : 0x0
|___________________________



___________________________
|top Module:
|  instr pulled       : 0x208233
|  pc pulled          : b110
|  memWriteEnable     : b0
|  memWriteData       : 0x2
|  memAddress         : 0x8
|  memReadData        : 0x0
|___________________________
[[35minfo[0m] [0.310] STARTING NEXT CYCLE: 8
[[35minfo[0m] [0.311] valid = 1



___________________________
|regfile Module:
|  regWriteEnable  : b1
|  regReadAddress1 : b0
|  regReadAddress2 : b101
|  regWriteAddress : b101
|  regWriteData    : 0x5
|  regReadData1    : 0x0
|  regReadData2    : 0x0
|___________________________



___________________________
| rf(0) = 0
| rf(1) = 4
| rf(2) = 2
| rf(3) = 3
| rf(4) = 6
| rf(5) = 0
| rf(6) = 0
| rf(7) = 0
| rf(8) = 0
| rf(9) = 0
| rf(10) = 0
| rf(11) = 0
| rf(12) = 0
| rf(13) = 0
| rf(14) = 0
| rf(15) = 0
| rf(16) = 0
| rf(17) = 0
| rf(18) = 0
| rf(19) = 0
| rf(20) = 0
| rf(21) = 0
| rf(22) = 0
| rf(23) = 0
| rf(24) = 0
| rf(25) = 0
| rf(26) = 0
| rf(27) = 0
| rf(28) = 0
| rf(29) = 0
| rf(30) = 0
| rf(31) = 0
|___________________________



___________________________
|alu Module:
|  a               : 0x0
|  b               : 0x5
|  out             : 0x5
|  aluControl      : b10
|  zeroFlag        : b0
|  lessThanFlag    : b1
|  greaterThanFlag : b0
|___________________________



___________________________
|extend Module:
|  instr12     : b10000000010
|  instr20     : b10000000010
|  immsrc      : b0
|  extImm      : 0x402
|___________________________



___________________________
|extend Module:
|  instr12     : b101
|  instr20     : b10000000010
|  immsrc      : b0
|  extImm      : 0x5
|___________________________



___________________________
|datapath Module:
|  inst            : 0x500293
|  memToReg        : b0
|  memImm          : b101
|  memAddress      : 0x5
|  memReadData     : 0x2
|  memWriteData    : 0x0
|  aluOut          : 0x5
|  pcNext          : 0x20
|  branchExtImm    : 0x402
|  extImm          : 0x5
|  regReadData2    : 0x0
|  regWriteData    : 0x5
|  regSrc          : 0x0
|  pcBranch        : 0x422
|  pcRegBranch     : 0x4
|  pcPlus4         : 0x20
|  branchSrc       : b0
|___________________________



___________________________
|decoder Module:
|  branchSrc          : b0
|  opcode             : b10011
|  funct3             : b0
|  regSrc             : b0
|  immSrc             : b0
|  aluSrc             : b1
|  pcSrc              : b0
|  regWriteEnable     : b1
|  aluControl         : b10
|  memToReg           : b0
|  memWriteEnable     : b0
|  zeroFlag           : b0
|  lessThanFlag       : b1
|  greaterThanFlag    : b0
|___________________________
___________________________
|riscv Module:
|  instr          : 0x500293
|  memWriteEnable : b0
|  memWriteData   : b0
|  memAddress     : b101
|  memReadData    : 0x2
|___________________________



Memory___________________________
| mem(0) = 0
| mem(1) = 0
| mem(2) = 4
| mem(3) = 0
| mem(4) = 0
| mem(5) = 0
| mem(6) = 0
| mem(7) = 0
| mem(8) = 2
| mem(9) = 0
| mem(10) = 0
| mem(11) = 0
| mem(12) = 0
| mem(13) = 0
| mem(14) = 0
| mem(15) = 0
| mem(16) = 0
| mem(17) = 0
| mem(18) = 0
| mem(19) = 0
| mem(20) = 0
| mem(21) = 0
| mem(22) = 0
| mem(23) = 0
| mem(24) = 0
| mem(25) = 0
| mem(26) = 0
| mem(27) = 0
| mem(28) = 0
| mem(29) = 0
| mem(30) = 0
| mem(31) = 0
|________________________________



___________________________
|dmem Module:
|  memAddress      : 0x5
|  memWriteData    : 0x0
|  memWriteEnable  : b0
|  memReadData     : 0x2
|___________________________



___________________________
|top Module:
|  instr pulled       : 0x500293
|  pc pulled          : b111
|  memWriteEnable     : b0
|  memWriteData       : 0x0
|  memAddress         : 0x5
|  memReadData        : 0x2
|___________________________
[[35minfo[0m] [0.366] STARTING NEXT CYCLE: 9
[[35minfo[0m] [0.367] valid = 1



___________________________
|regfile Module:
|  regWriteEnable  : b1
|  regReadAddress1 : b100
|  regReadAddress2 : b1
|  regWriteAddress : b110
|  regWriteData    : 0x4
|  regReadData1    : 0x6
|  regReadData2    : 0x4
|___________________________



___________________________
| rf(0) = 0
| rf(1) = 4
| rf(2) = 2
| rf(3) = 3
| rf(4) = 6
| rf(5) = 5
| rf(6) = 0
| rf(7) = 0
| rf(8) = 0
| rf(9) = 0
| rf(10) = 0
| rf(11) = 0
| rf(12) = 0
| rf(13) = 0
| rf(14) = 0
| rf(15) = 0
| rf(16) = 0
| rf(17) = 0
| rf(18) = 0
| rf(19) = 0
| rf(20) = 0
| rf(21) = 0
| rf(22) = 0
| rf(23) = 0
| rf(24) = 0
| rf(25) = 0
| rf(26) = 0
| rf(27) = 0
| rf(28) = 0
| rf(29) = 0
| rf(30) = 0
| rf(31) = 0
|___________________________



___________________________
|alu Module:
|  a               : 0x6
|  b               : 0x4
|  out             : 0x4
|  aluControl      : b0
|  zeroFlag        : b0
|  lessThanFlag    : b0
|  greaterThanFlag : b1
|___________________________



___________________________
|extend Module:
|  instr12     : b11
|  instr20     : b110000000000
|  immsrc      : b0
|  extImm      : 0x3
|___________________________



___________________________
|extend Module:
|  instr12     : b1
|  instr20     : b110000000000
|  immsrc      : b0
|  extImm      : 0x1
|___________________________



___________________________
|datapath Module:
|  inst            : 0x127333
|  memToReg        : b0
|  memImm          : b110
|  memAddress      : 0xc
|  memReadData     : 0x0
|  memWriteData    : 0x4
|  aluOut          : 0x4
|  pcNext          : 0x24
|  branchExtImm    : 0x3
|  extImm          : 0x1
|  regReadData2    : 0x4
|  regWriteData    : 0x4
|  regSrc          : 0x0
|  pcBranch        : 0x27
|  pcRegBranch     : 0x4
|  pcPlus4         : 0x24
|  branchSrc       : b0
|___________________________



___________________________
|decoder Module:
|  branchSrc          : b0
|  opcode             : b110011
|  funct3             : b111
|  regSrc             : b0
|  immSrc             : b0
|  aluSrc             : b0
|  pcSrc              : b0
|  regWriteEnable     : b1
|  aluControl         : b0
|  memToReg           : b0
|  memWriteEnable     : b0
|  zeroFlag           : b0
|  lessThanFlag       : b0
|  greaterThanFlag    : b1
|___________________________
___________________________
|riscv Module:
|  instr          : 0x127333
|  memWriteEnable : b0
|  memWriteData   : b100
|  memAddress     : b1100
|  memReadData    : 0x0
|___________________________



Memory___________________________
| mem(0) = 0
| mem(1) = 0
| mem(2) = 4
| mem(3) = 0
| mem(4) = 0
| mem(5) = 0
| mem(6) = 0
| mem(7) = 0
| mem(8) = 2
| mem(9) = 0
| mem(10) = 0
| mem(11) = 0
| mem(12) = 0
| mem(13) = 0
| mem(14) = 0
| mem(15) = 0
| mem(16) = 0
| mem(17) = 0
| mem(18) = 0
| mem(19) = 0
| mem(20) = 0
| mem(21) = 0
| mem(22) = 0
| mem(23) = 0
| mem(24) = 0
| mem(25) = 0
| mem(26) = 0
| mem(27) = 0
| mem(28) = 0
| mem(29) = 0
| mem(30) = 0
| mem(31) = 0
|________________________________



___________________________
|dmem Module:
|  memAddress      : 0xc
|  memWriteData    : 0x4
|  memWriteEnable  : b0
|  memReadData     : 0x0
|___________________________



___________________________
|top Module:
|  instr pulled       : 0x127333
|  pc pulled          : b1000
|  memWriteEnable     : b0
|  memWriteData       : 0x4
|  memAddress         : 0xc
|  memReadData        : 0x0
|___________________________
[[35minfo[0m] [0.393] STARTING NEXT CYCLE: 10
[[35minfo[0m] [0.393] valid = 1



___________________________
|regfile Module:
|  regWriteEnable  : b1
|  regReadAddress1 : b0
|  regReadAddress2 : b111
|  regWriteAddress : b111
|  regWriteData    : 0x7
|  regReadData1    : 0x0
|  regReadData2    : 0x0
|___________________________



___________________________
| rf(0) = 0
| rf(1) = 4
| rf(2) = 2
| rf(3) = 3
| rf(4) = 6
| rf(5) = 5
| rf(6) = 4
| rf(7) = 0
| rf(8) = 0
| rf(9) = 0
| rf(10) = 0
| rf(11) = 0
| rf(12) = 0
| rf(13) = 0
| rf(14) = 0
| rf(15) = 0
| rf(16) = 0
| rf(17) = 0
| rf(18) = 0
| rf(19) = 0
| rf(20) = 0
| rf(21) = 0
| rf(22) = 0
| rf(23) = 0
| rf(24) = 0
| rf(25) = 0
| rf(26) = 0
| rf(27) = 0
| rf(28) = 0
| rf(29) = 0
| rf(30) = 0
| rf(31) = 0
|___________________________



___________________________
|alu Module:
|  a               : 0x0
|  b               : 0x7
|  out             : 0x7
|  aluControl      : b10
|  zeroFlag        : b0
|  lessThanFlag    : b1
|  greaterThanFlag : b0
|___________________________



___________________________
|extend Module:
|  instr12     : b10000000011
|  instr20     : b10000000011
|  immsrc      : b0
|  extImm      : 0x403
|___________________________



___________________________
|extend Module:
|  instr12     : b111
|  instr20     : b10000000011
|  immsrc      : b0
|  extImm      : 0x7
|___________________________



___________________________
|datapath Module:
|  inst            : 0x700393
|  memToReg        : b0
|  memImm          : b111
|  memAddress      : 0x7
|  memReadData     : 0x0
|  memWriteData    : 0x0
|  aluOut          : 0x7
|  pcNext          : 0x28
|  branchExtImm    : 0x403
|  extImm          : 0x7
|  regReadData2    : 0x0
|  regWriteData    : 0x7
|  regSrc          : 0x0
|  pcBranch        : 0x42b
|  pcRegBranch     : 0x6
|  pcPlus4         : 0x28
|  branchSrc       : b0
|___________________________



___________________________
|decoder Module:
|  branchSrc          : b0
|  opcode             : b10011
|  funct3             : b0
|  regSrc             : b0
|  immSrc             : b0
|  aluSrc             : b1
|  pcSrc              : b0
|  regWriteEnable     : b1
|  aluControl         : b10
|  memToReg           : b0
|  memWriteEnable     : b0
|  zeroFlag           : b0
|  lessThanFlag       : b1
|  greaterThanFlag    : b0
|___________________________
___________________________
|riscv Module:
|  instr          : 0x700393
|  memWriteEnable : b0
|  memWriteData   : b0
|  memAddress     : b111
|  memReadData    : 0x0
|___________________________



Memory___________________________
| mem(0) = 0
| mem(1) = 0
| mem(2) = 4
| mem(3) = 0
| mem(4) = 0
| mem(5) = 0
| mem(6) = 0
| mem(7) = 0
| mem(8) = 2
| mem(9) = 0
| mem(10) = 0
| mem(11) = 0
| mem(12) = 0
| mem(13) = 0
| mem(14) = 0
| mem(15) = 0
| mem(16) = 0
| mem(17) = 0
| mem(18) = 0
| mem(19) = 0
| mem(20) = 0
| mem(21) = 0
| mem(22) = 0
| mem(23) = 0
| mem(24) = 0
| mem(25) = 0
| mem(26) = 0
| mem(27) = 0
| mem(28) = 0
| mem(29) = 0
| mem(30) = 0
| mem(31) = 0
|________________________________



___________________________
|dmem Module:
|  memAddress      : 0x7
|  memWriteData    : 0x0
|  memWriteEnable  : b0
|  memReadData     : 0x0
|___________________________



___________________________
|top Module:
|  instr pulled       : 0x700393
|  pc pulled          : b1001
|  memWriteEnable     : b0
|  memWriteData       : 0x0
|  memAddress         : 0x7
|  memReadData        : 0x0
|___________________________
[[35minfo[0m] [0.416] STARTING NEXT CYCLE: 11
[[35minfo[0m] [0.416] valid = 1



___________________________
|regfile Module:
|  regWriteEnable  : b1
|  regReadAddress1 : b111
|  regReadAddress2 : b100
|  regWriteAddress : b1000
|  regWriteData    : 0x1
|  regReadData1    : 0x7
|  regReadData2    : 0x6
|___________________________



___________________________
| rf(0) = 0
| rf(1) = 4
| rf(2) = 2
| rf(3) = 3
| rf(4) = 6
| rf(5) = 5
| rf(6) = 4
| rf(7) = 7
| rf(8) = 0
| rf(9) = 0
| rf(10) = 0
| rf(11) = 0
| rf(12) = 0
| rf(13) = 0
| rf(14) = 0
| rf(15) = 0
| rf(16) = 0
| rf(17) = 0
| rf(18) = 0
| rf(19) = 0
| rf(20) = 0
| rf(21) = 0
| rf(22) = 0
| rf(23) = 0
| rf(24) = 0
| rf(25) = 0
| rf(26) = 0
| rf(27) = 0
| rf(28) = 0
| rf(29) = 0
| rf(30) = 0
| rf(31) = 0
|___________________________



___________________________
|alu Module:
|  a               : 0x7
|  b               : 0x6
|  out             : 0x1
|  aluControl      : b110
|  zeroFlag        : b0
|  lessThanFlag    : b0
|  greaterThanFlag : b1
|___________________________



___________________________
|extend Module:
|  instr12     : b100
|  instr20     : b10
|  immsrc      : b0
|  extImm      : 0x4
|___________________________



___________________________
|extend Module:
|  instr12     : b100
|  instr20     : b10
|  immsrc      : b0
|  extImm      : 0x4
|___________________________



___________________________
|datapath Module:
|  inst            : 0x43c433
|  memToReg        : b0
|  memImm          : b1000
|  memAddress      : 0xf
|  memReadData     : 0x0
|  memWriteData    : 0x6
|  aluOut          : 0x1
|  pcNext          : 0x2c
|  branchExtImm    : 0x4
|  extImm          : 0x4
|  regReadData2    : 0x6
|  regWriteData    : 0x1
|  regSrc          : 0x0
|  pcBranch        : 0x30
|  pcRegBranch     : 0x0
|  pcPlus4         : 0x2c
|  branchSrc       : b0
|___________________________



___________________________
|decoder Module:
|  branchSrc          : b0
|  opcode             : b110011
|  funct3             : b100
|  regSrc             : b0
|  immSrc             : b0
|  aluSrc             : b0
|  pcSrc              : b0
|  regWriteEnable     : b1
|  aluControl         : b110
|  memToReg           : b0
|  memWriteEnable     : b0
|  zeroFlag           : b0
|  lessThanFlag       : b0
|  greaterThanFlag    : b1
|___________________________
___________________________
|riscv Module:
|  instr          : 0x43c433
|  memWriteEnable : b0
|  memWriteData   : b110
|  memAddress     : b1111
|  memReadData    : 0x0
|___________________________



Memory___________________________
| mem(0) = 0
| mem(1) = 0
| mem(2) = 4
| mem(3) = 0
| mem(4) = 0
| mem(5) = 0
| mem(6) = 0
| mem(7) = 0
| mem(8) = 2
| mem(9) = 0
| mem(10) = 0
| mem(11) = 0
| mem(12) = 0
| mem(13) = 0
| mem(14) = 0
| mem(15) = 0
| mem(16) = 0
| mem(17) = 0
| mem(18) = 0
| mem(19) = 0
| mem(20) = 0
| mem(21) = 0
| mem(22) = 0
| mem(23) = 0
| mem(24) = 0
| mem(25) = 0
| mem(26) = 0
| mem(27) = 0
| mem(28) = 0
| mem(29) = 0
| mem(30) = 0
| mem(31) = 0
|________________________________



___________________________
|dmem Module:
|  memAddress      : 0xf
|  memWriteData    : 0x6
|  memWriteEnable  : b0
|  memReadData     : 0x0
|___________________________



___________________________
|top Module:
|  instr pulled       : 0x43c433
|  pc pulled          : b1010
|  memWriteEnable     : b0
|  memWriteData       : 0x6
|  memAddress         : 0xf
|  memReadData        : 0x0
|___________________________
[[35minfo[0m] [0.450] STARTING NEXT CYCLE: 12
[[35minfo[0m] [0.451] valid = 1



___________________________
|regfile Module:
|  regWriteEnable  : b1
|  regReadAddress1 : b0
|  regReadAddress2 : b1000
|  regWriteAddress : b1001
|  regWriteData    : 0x8
|  regReadData1    : 0x0
|  regReadData2    : 0x1
|___________________________



___________________________
| rf(0) = 0
| rf(1) = 4
| rf(2) = 2
| rf(3) = 3
| rf(4) = 6
| rf(5) = 5
| rf(6) = 4
| rf(7) = 7
| rf(8) = 1
| rf(9) = 0
| rf(10) = 0
| rf(11) = 0
| rf(12) = 0
| rf(13) = 0
| rf(14) = 0
| rf(15) = 0
| rf(16) = 0
| rf(17) = 0
| rf(18) = 0
| rf(19) = 0
| rf(20) = 0
| rf(21) = 0
| rf(22) = 0
| rf(23) = 0
| rf(24) = 0
| rf(25) = 0
| rf(26) = 0
| rf(27) = 0
| rf(28) = 0
| rf(29) = 0
| rf(30) = 0
| rf(31) = 0
|___________________________



___________________________
|alu Module:
|  a               : 0x0
|  b               : 0x8
|  out             : 0x8
|  aluControl      : b10
|  zeroFlag        : b0
|  lessThanFlag    : b1
|  greaterThanFlag : b0
|___________________________



___________________________
|extend Module:
|  instr12     : b10000000100
|  instr20     : b100
|  immsrc      : b0
|  extImm      : 0x404
|___________________________



___________________________
|extend Module:
|  instr12     : b1000
|  instr20     : b100
|  immsrc      : b0
|  extImm      : 0x8
|___________________________



___________________________
|datapath Module:
|  inst            : 0x800493
|  memToReg        : b0
|  memImm          : b1001
|  memAddress      : 0x9
|  memReadData     : 0x0
|  memWriteData    : 0x1
|  aluOut          : 0x8
|  pcNext          : 0x30
|  branchExtImm    : 0x404
|  extImm          : 0x8
|  regReadData2    : 0x1
|  regWriteData    : 0x8
|  regSrc          : 0x0
|  pcBranch        : 0x434
|  pcRegBranch     : 0x8
|  pcPlus4         : 0x30
|  branchSrc       : b0
|___________________________



___________________________
|decoder Module:
|  branchSrc          : b0
|  opcode             : b10011
|  funct3             : b0
|  regSrc             : b0
|  immSrc             : b0
|  aluSrc             : b1
|  pcSrc              : b0
|  regWriteEnable     : b1
|  aluControl         : b10
|  memToReg           : b0
|  memWriteEnable     : b0
|  zeroFlag           : b0
|  lessThanFlag       : b1
|  greaterThanFlag    : b0
|___________________________
___________________________
|riscv Module:
|  instr          : 0x800493
|  memWriteEnable : b0
|  memWriteData   : b1
|  memAddress     : b1001
|  memReadData    : 0x0
|___________________________



Memory___________________________
| mem(0) = 0
| mem(1) = 0
| mem(2) = 4
| mem(3) = 0
| mem(4) = 0
| mem(5) = 0
| mem(6) = 0
| mem(7) = 0
| mem(8) = 2
| mem(9) = 0
| mem(10) = 0
| mem(11) = 0
| mem(12) = 0
| mem(13) = 0
| mem(14) = 0
| mem(15) = 0
| mem(16) = 0
| mem(17) = 0
| mem(18) = 0
| mem(19) = 0
| mem(20) = 0
| mem(21) = 0
| mem(22) = 0
| mem(23) = 0
| mem(24) = 0
| mem(25) = 0
| mem(26) = 0
| mem(27) = 0
| mem(28) = 0
| mem(29) = 0
| mem(30) = 0
| mem(31) = 0
|________________________________



___________________________
|dmem Module:
|  memAddress      : 0x9
|  memWriteData    : 0x1
|  memWriteEnable  : b0
|  memReadData     : 0x0
|___________________________



___________________________
|top Module:
|  instr pulled       : 0x800493
|  pc pulled          : b1011
|  memWriteEnable     : b0
|  memWriteData       : 0x1
|  memAddress         : 0x9
|  memReadData        : 0x0
|___________________________
[[35minfo[0m] [0.507] STARTING NEXT CYCLE: 13
[[35minfo[0m] [0.508] valid = 1



___________________________
|regfile Module:
|  regWriteEnable  : b1
|  regReadAddress1 : b1001
|  regReadAddress2 : b10
|  regWriteAddress : b1010
|  regWriteData    : 0xa
|  regReadData1    : 0x8
|  regReadData2    : 0x2
|___________________________



___________________________
| rf(0) = 0
| rf(1) = 4
| rf(2) = 2
| rf(3) = 3
| rf(4) = 6
| rf(5) = 5
| rf(6) = 4
| rf(7) = 7
| rf(8) = 1
| rf(9) = 8
| rf(10) = 0
| rf(11) = 0
| rf(12) = 0
| rf(13) = 0
| rf(14) = 0
| rf(15) = 0
| rf(16) = 0
| rf(17) = 0
| rf(18) = 0
| rf(19) = 0
| rf(20) = 0
| rf(21) = 0
| rf(22) = 0
| rf(23) = 0
| rf(24) = 0
| rf(25) = 0
| rf(26) = 0
| rf(27) = 0
| rf(28) = 0
| rf(29) = 0
| rf(30) = 0
| rf(31) = 0
|___________________________



___________________________
|alu Module:
|  a               : 0x8
|  b               : 0x2
|  out             : 0xa
|  aluControl      : b1
|  zeroFlag        : b0
|  lessThanFlag    : b0
|  greaterThanFlag : b1
|___________________________



___________________________
|extend Module:
|  instr12     : b101
|  instr20     : b1
|  immsrc      : b0
|  extImm      : 0x5
|___________________________



___________________________
|extend Module:
|  instr12     : b10
|  instr20     : b1
|  immsrc      : b0
|  extImm      : 0x2
|___________________________



___________________________
|datapath Module:
|  inst            : 0x24e533
|  memToReg        : b0
|  memImm          : b1010
|  memAddress      : 0x12
|  memReadData     : 0x0
|  memWriteData    : 0x2
|  aluOut          : 0xa
|  pcNext          : 0x34
|  branchExtImm    : 0x5
|  extImm          : 0x2
|  regReadData2    : 0x2
|  regWriteData    : 0xa
|  regSrc          : 0x0
|  pcBranch        : 0x39
|  pcRegBranch     : 0xa
|  pcPlus4         : 0x34
|  branchSrc       : b0
|___________________________



___________________________
|decoder Module:
|  branchSrc          : b0
|  opcode             : b110011
|  funct3             : b110
|  regSrc             : b0
|  immSrc             : b0
|  aluSrc             : b0
|  pcSrc              : b0
|  regWriteEnable     : b1
|  aluControl         : b1
|  memToReg           : b0
|  memWriteEnable     : b0
|  zeroFlag           : b0
|  lessThanFlag       : b0
|  greaterThanFlag    : b1
|___________________________
___________________________
|riscv Module:
|  instr          : 0x24e533
|  memWriteEnable : b0
|  memWriteData   : b10
|  memAddress     : b10010
|  memReadData    : 0x0
|___________________________



Memory___________________________
| mem(0) = 0
| mem(1) = 0
| mem(2) = 4
| mem(3) = 0
| mem(4) = 0
| mem(5) = 0
| mem(6) = 0
| mem(7) = 0
| mem(8) = 2
| mem(9) = 0
| mem(10) = 0
| mem(11) = 0
| mem(12) = 0
| mem(13) = 0
| mem(14) = 0
| mem(15) = 0
| mem(16) = 0
| mem(17) = 0
| mem(18) = 0
| mem(19) = 0
| mem(20) = 0
| mem(21) = 0
| mem(22) = 0
| mem(23) = 0
| mem(24) = 0
| mem(25) = 0
| mem(26) = 0
| mem(27) = 0
| mem(28) = 0
| mem(29) = 0
| mem(30) = 0
| mem(31) = 0
|________________________________



___________________________
|dmem Module:
|  memAddress      : 0x12
|  memWriteData    : 0x2
|  memWriteEnable  : b0
|  memReadData     : 0x0
|___________________________



___________________________
|top Module:
|  instr pulled       : 0x24e533
|  pc pulled          : b1100
|  memWriteEnable     : b0
|  memWriteData       : 0x2
|  memAddress         : 0x12
|  memReadData        : 0x0
|___________________________
[[35minfo[0m] [0.578] STARTING NEXT CYCLE: 14
[[35minfo[0m] [0.579] valid = 1



___________________________
|regfile Module:
|  regWriteEnable  : b1
|  regReadAddress1 : b0
|  regReadAddress2 : b1011
|  regWriteAddress : b1011
|  regWriteData    : 0xb
|  regReadData1    : 0x0
|  regReadData2    : 0x0
|___________________________



___________________________
| rf(0) = 0
| rf(1) = 4
| rf(2) = 2
| rf(3) = 3
| rf(4) = 6
| rf(5) = 5
| rf(6) = 4
| rf(7) = 7
| rf(8) = 1
| rf(9) = 8
| rf(10) = 10
| rf(11) = 0
| rf(12) = 0
| rf(13) = 0
| rf(14) = 0
| rf(15) = 0
| rf(16) = 0
| rf(17) = 0
| rf(18) = 0
| rf(19) = 0
| rf(20) = 0
| rf(21) = 0
| rf(22) = 0
| rf(23) = 0
| rf(24) = 0
| rf(25) = 0
| rf(26) = 0
| rf(27) = 0
| rf(28) = 0
| rf(29) = 0
| rf(30) = 0
| rf(31) = 0
|___________________________



___________________________
|alu Module:
|  a               : 0x0
|  b               : 0xb
|  out             : 0xb
|  aluControl      : b10
|  zeroFlag        : b0
|  lessThanFlag    : b1
|  greaterThanFlag : b0
|___________________________



___________________________
|extend Module:
|  instr12     : b10000000101
|  instr20     : b10000000101
|  immsrc      : b0
|  extImm      : 0x405
|___________________________



___________________________
|extend Module:
|  instr12     : b1011
|  instr20     : b10000000101
|  immsrc      : b0
|  extImm      : 0xb
|___________________________



___________________________
|datapath Module:
|  inst            : 0xb00593
|  memToReg        : b0
|  memImm          : b1011
|  memAddress      : 0xb
|  memReadData     : 0x0
|  memWriteData    : 0x0
|  aluOut          : 0xb
|  pcNext          : 0x38
|  branchExtImm    : 0x405
|  extImm          : 0xb
|  regReadData2    : 0x0
|  regWriteData    : 0xb
|  regSrc          : 0x0
|  pcBranch        : 0x43d
|  pcRegBranch     : 0xa
|  pcPlus4         : 0x38
|  branchSrc       : b0
|___________________________



___________________________
|decoder Module:
|  branchSrc          : b0
|  opcode             : b10011
|  funct3             : b0
|  regSrc             : b0
|  immSrc             : b0
|  aluSrc             : b1
|  pcSrc              : b0
|  regWriteEnable     : b1
|  aluControl         : b10
|  memToReg           : b0
|  memWriteEnable     : b0
|  zeroFlag           : b0
|  lessThanFlag       : b1
|  greaterThanFlag    : b0
|___________________________
___________________________
|riscv Module:
|  instr          : 0xb00593
|  memWriteEnable : b0
|  memWriteData   : b0
|  memAddress     : b1011
|  memReadData    : 0x0
|___________________________



Memory___________________________
| mem(0) = 0
| mem(1) = 0
| mem(2) = 4
| mem(3) = 0
| mem(4) = 0
| mem(5) = 0
| mem(6) = 0
| mem(7) = 0
| mem(8) = 2
| mem(9) = 0
| mem(10) = 0
| mem(11) = 0
| mem(12) = 0
| mem(13) = 0
| mem(14) = 0
| mem(15) = 0
| mem(16) = 0
| mem(17) = 0
| mem(18) = 0
| mem(19) = 0
| mem(20) = 0
| mem(21) = 0
| mem(22) = 0
| mem(23) = 0
| mem(24) = 0
| mem(25) = 0
| mem(26) = 0
| mem(27) = 0
| mem(28) = 0
| mem(29) = 0
| mem(30) = 0
| mem(31) = 0
|________________________________



___________________________
|dmem Module:
|  memAddress      : 0xb
|  memWriteData    : 0x0
|  memWriteEnable  : b0
|  memReadData     : 0x0
|___________________________



___________________________
|top Module:
|  instr pulled       : 0xb00593
|  pc pulled          : b1101
|  memWriteEnable     : b0
|  memWriteData       : 0x0
|  memAddress         : 0xb
|  memReadData        : 0x0
|___________________________
[[35minfo[0m] [0.605] STARTING NEXT CYCLE: 15
[[35minfo[0m] [0.606] valid = 1



___________________________
|regfile Module:
|  regWriteEnable  : b1
|  regReadAddress1 : b111
|  regReadAddress2 : b11
|  regWriteAddress : b1100
|  regWriteData    : 0x3
|  regReadData1    : 0x7
|  regReadData2    : 0x3
|___________________________



___________________________
| rf(0) = 0
| rf(1) = 4
| rf(2) = 2
| rf(3) = 3
| rf(4) = 6
| rf(5) = 5
| rf(6) = 4
| rf(7) = 7
| rf(8) = 1
| rf(9) = 8
| rf(10) = 10
| rf(11) = 11
| rf(12) = 0
| rf(13) = 0
| rf(14) = 0
| rf(15) = 0
| rf(16) = 0
| rf(17) = 0
| rf(18) = 0
| rf(19) = 0
| rf(20) = 0
| rf(21) = 0
| rf(22) = 0
| rf(23) = 0
| rf(24) = 0
| rf(25) = 0
| rf(26) = 0
| rf(27) = 0
| rf(28) = 0
| rf(29) = 0
| rf(30) = 0
| rf(31) = 0
|___________________________



___________________________
|alu Module:
|  a               : 0x7
|  b               : 0x3
|  out             : 0x3
|  aluControl      : b0
|  zeroFlag        : b0
|  lessThanFlag    : b0
|  greaterThanFlag : b1
|___________________________



___________________________
|extend Module:
|  instr12     : b110
|  instr20     : b110000000001
|  immsrc      : b0
|  extImm      : 0x6
|___________________________



___________________________
|extend Module:
|  instr12     : b11
|  instr20     : b110000000001
|  immsrc      : b0
|  extImm      : 0x3
|___________________________



___________________________
|datapath Module:
|  inst            : 0x33f613
|  memToReg        : b0
|  memImm          : b1100
|  memAddress      : 0x13
|  memReadData     : 0x0
|  memWriteData    : 0x3
|  aluOut          : 0x3
|  pcNext          : 0x3c
|  branchExtImm    : 0x6
|  extImm          : 0x3
|  regReadData2    : 0x3
|  regWriteData    : 0x3
|  regSrc          : 0x0
|  pcBranch        : 0x42
|  pcRegBranch     : 0x2
|  pcPlus4         : 0x3c
|  branchSrc       : b0
|___________________________



___________________________
|decoder Module:
|  branchSrc          : b0
|  opcode             : b10011
|  funct3             : b111
|  regSrc             : b0
|  immSrc             : b0
|  aluSrc             : b1
|  pcSrc              : b0
|  regWriteEnable     : b1
|  aluControl         : b0
|  memToReg           : b0
|  memWriteEnable     : b0
|  zeroFlag           : b0
|  lessThanFlag       : b0
|  greaterThanFlag    : b1
|___________________________
___________________________
|riscv Module:
|  instr          : 0x33f613
|  memWriteEnable : b0
|  memWriteData   : b11
|  memAddress     : b10011
|  memReadData    : 0x0
|___________________________



Memory___________________________
| mem(0) = 0
| mem(1) = 0
| mem(2) = 4
| mem(3) = 0
| mem(4) = 0
| mem(5) = 0
| mem(6) = 0
| mem(7) = 0
| mem(8) = 2
| mem(9) = 0
| mem(10) = 0
| mem(11) = 0
| mem(12) = 0
| mem(13) = 0
| mem(14) = 0
| mem(15) = 0
| mem(16) = 0
| mem(17) = 0
| mem(18) = 0
| mem(19) = 0
| mem(20) = 0
| mem(21) = 0
| mem(22) = 0
| mem(23) = 0
| mem(24) = 0
| mem(25) = 0
| mem(26) = 0
| mem(27) = 0
| mem(28) = 0
| mem(29) = 0
| mem(30) = 0
| mem(31) = 0
|________________________________



___________________________
|dmem Module:
|  memAddress      : 0x13
|  memWriteData    : 0x3
|  memWriteEnable  : b0
|  memReadData     : 0x0
|___________________________



___________________________
|top Module:
|  instr pulled       : 0x33f613
|  pc pulled          : b1110
|  memWriteEnable     : b0
|  memWriteData       : 0x3
|  memAddress         : 0x13
|  memReadData        : 0x0
|___________________________
[[35minfo[0m] [0.628] STARTING NEXT CYCLE: 16
[[35minfo[0m] [0.628] valid = 1



___________________________
|regfile Module:
|  regWriteEnable  : b1
|  regReadAddress1 : b1001
|  regReadAddress2 : b1111
|  regWriteAddress : b1101
|  regWriteData    : 0x7
|  regReadData1    : 0x8
|  regReadData2    : 0x0
|___________________________



___________________________
| rf(0) = 0
| rf(1) = 4
| rf(2) = 2
| rf(3) = 3
| rf(4) = 6
| rf(5) = 5
| rf(6) = 4
| rf(7) = 7
| rf(8) = 1
| rf(9) = 8
| rf(10) = 10
| rf(11) = 11
| rf(12) = 3
| rf(13) = 0
| rf(14) = 0
| rf(15) = 0
| rf(16) = 0
| rf(17) = 0
| rf(18) = 0
| rf(19) = 0
| rf(20) = 0
| rf(21) = 0
| rf(22) = 0
| rf(23) = 0
| rf(24) = 0
| rf(25) = 0
| rf(26) = 0
| rf(27) = 0
| rf(28) = 0
| rf(29) = 0
| rf(30) = 0
| rf(31) = 0
|___________________________



___________________________
|alu Module:
|  a               : 0x8
|  b               : 0xf
|  out             : 0x7
|  aluControl      : b110
|  zeroFlag        : b0
|  lessThanFlag    : b1
|  greaterThanFlag : b0
|___________________________



___________________________
|extend Module:
|  instr12     : b10000000110
|  instr20     : b10000000111
|  immsrc      : b0
|  extImm      : 0x406
|___________________________



___________________________
|extend Module:
|  instr12     : b1111
|  instr20     : b10000000111
|  immsrc      : b0
|  extImm      : 0xf
|___________________________



___________________________
|datapath Module:
|  inst            : 0xf4c693
|  memToReg        : b0
|  memImm          : b1101
|  memAddress      : 0x15
|  memReadData     : 0x0
|  memWriteData    : 0x0
|  aluOut          : 0x7
|  pcNext          : 0x40
|  branchExtImm    : 0x406
|  extImm          : 0xf
|  regReadData2    : 0x0
|  regWriteData    : 0x7
|  regSrc          : 0x0
|  pcBranch        : 0x446
|  pcRegBranch     : 0x6
|  pcPlus4         : 0x40
|  branchSrc       : b0
|___________________________



___________________________
|decoder Module:
|  branchSrc          : b0
|  opcode             : b10011
|  funct3             : b100
|  regSrc             : b0
|  immSrc             : b0
|  aluSrc             : b1
|  pcSrc              : b0
|  regWriteEnable     : b1
|  aluControl         : b110
|  memToReg           : b0
|  memWriteEnable     : b0
|  zeroFlag           : b0
|  lessThanFlag       : b1
|  greaterThanFlag    : b0
|___________________________
___________________________
|riscv Module:
|  instr          : 0xf4c693
|  memWriteEnable : b0
|  memWriteData   : b0
|  memAddress     : b10101
|  memReadData    : 0x0
|___________________________



Memory___________________________
| mem(0) = 0
| mem(1) = 0
| mem(2) = 4
| mem(3) = 0
| mem(4) = 0
| mem(5) = 0
| mem(6) = 0
| mem(7) = 0
| mem(8) = 2
| mem(9) = 0
| mem(10) = 0
| mem(11) = 0
| mem(12) = 0
| mem(13) = 0
| mem(14) = 0
| mem(15) = 0
| mem(16) = 0
| mem(17) = 0
| mem(18) = 0
| mem(19) = 0
| mem(20) = 0
| mem(21) = 0
| mem(22) = 0
| mem(23) = 0
| mem(24) = 0
| mem(25) = 0
| mem(26) = 0
| mem(27) = 0
| mem(28) = 0
| mem(29) = 0
| mem(30) = 0
| mem(31) = 0
|________________________________



___________________________
|dmem Module:
|  memAddress      : 0x15
|  memWriteData    : 0x0
|  memWriteEnable  : b0
|  memReadData     : 0x0
|___________________________



___________________________
|top Module:
|  instr pulled       : 0xf4c693
|  pc pulled          : b1111
|  memWriteEnable     : b0
|  memWriteData       : 0x0
|  memAddress         : 0x15
|  memReadData        : 0x0
|___________________________
[[35minfo[0m] [0.650] STARTING NEXT CYCLE: 17
[[35minfo[0m] [0.650] valid = 1



___________________________
|regfile Module:
|  regWriteEnable  : b1
|  regReadAddress1 : b1001
|  regReadAddress2 : b111
|  regWriteAddress : b1110
|  regWriteData    : 0xf
|  regReadData1    : 0x8
|  regReadData2    : 0x7
|___________________________



___________________________
| rf(0) = 0
| rf(1) = 4
| rf(2) = 2
| rf(3) = 3
| rf(4) = 6
| rf(5) = 5
| rf(6) = 4
| rf(7) = 7
| rf(8) = 1
| rf(9) = 8
| rf(10) = 10
| rf(11) = 11
| rf(12) = 3
| rf(13) = 7
| rf(14) = 0
| rf(15) = 0
| rf(16) = 0
| rf(17) = 0
| rf(18) = 0
| rf(19) = 0
| rf(20) = 0
| rf(21) = 0
| rf(22) = 0
| rf(23) = 0
| rf(24) = 0
| rf(25) = 0
| rf(26) = 0
| rf(27) = 0
| rf(28) = 0
| rf(29) = 0
| rf(30) = 0
| rf(31) = 0
|___________________________



___________________________
|alu Module:
|  a               : 0x8
|  b               : 0x7
|  out             : 0xf
|  aluControl      : b1
|  zeroFlag        : b0
|  lessThanFlag    : b0
|  greaterThanFlag : b1
|___________________________



___________________________
|extend Module:
|  instr12     : b111
|  instr20     : b10000000011
|  immsrc      : b0
|  extImm      : 0x7
|___________________________



___________________________
|extend Module:
|  instr12     : b111
|  instr20     : b10000000011
|  immsrc      : b0
|  extImm      : 0x7
|___________________________



___________________________
|datapath Module:
|  inst            : 0x74e713
|  memToReg        : b0
|  memImm          : b1110
|  memAddress      : 0x16
|  memReadData     : 0x0
|  memWriteData    : 0x7
|  aluOut          : 0xf
|  pcNext          : 0x44
|  branchExtImm    : 0x7
|  extImm          : 0x7
|  regReadData2    : 0x7
|  regWriteData    : 0xf
|  regSrc          : 0x0
|  pcBranch        : 0x4b
|  pcRegBranch     : 0xe
|  pcPlus4         : 0x44
|  branchSrc       : b0
|___________________________



___________________________
|decoder Module:
|  branchSrc          : b0
|  opcode             : b10011
|  funct3             : b110
|  regSrc             : b0
|  immSrc             : b0
|  aluSrc             : b1
|  pcSrc              : b0
|  regWriteEnable     : b1
|  aluControl         : b1
|  memToReg           : b0
|  memWriteEnable     : b0
|  zeroFlag           : b0
|  lessThanFlag       : b0
|  greaterThanFlag    : b1
|___________________________
___________________________
|riscv Module:
|  instr          : 0x74e713
|  memWriteEnable : b0
|  memWriteData   : b111
|  memAddress     : b10110
|  memReadData    : 0x0
|___________________________



Memory___________________________
| mem(0) = 0
| mem(1) = 0
| mem(2) = 4
| mem(3) = 0
| mem(4) = 0
| mem(5) = 0
| mem(6) = 0
| mem(7) = 0
| mem(8) = 2
| mem(9) = 0
| mem(10) = 0
| mem(11) = 0
| mem(12) = 0
| mem(13) = 0
| mem(14) = 0
| mem(15) = 0
| mem(16) = 0
| mem(17) = 0
| mem(18) = 0
| mem(19) = 0
| mem(20) = 0
| mem(21) = 0
| mem(22) = 0
| mem(23) = 0
| mem(24) = 0
| mem(25) = 0
| mem(26) = 0
| mem(27) = 0
| mem(28) = 0
| mem(29) = 0
| mem(30) = 0
| mem(31) = 0
|________________________________



___________________________
|dmem Module:
|  memAddress      : 0x16
|  memWriteData    : 0x7
|  memWriteEnable  : b0
|  memReadData     : 0x0
|___________________________



___________________________
|top Module:
|  instr pulled       : 0x74e713
|  pc pulled          : b10000
|  memWriteEnable     : b0
|  memWriteData       : 0x7
|  memAddress         : 0x16
|  memReadData        : 0x0
|___________________________
[[35minfo[0m] [0.672] STARTING NEXT CYCLE: 18
[[35minfo[0m] [0.672] valid = 1



___________________________
|regfile Module:
|  regWriteEnable  : b1
|  regReadAddress1 : b0
|  regReadAddress2 : b1111
|  regWriteAddress : b1111
|  regWriteData    : 0xf
|  regReadData1    : 0x0
|  regReadData2    : 0x0
|___________________________



___________________________
| rf(0) = 0
| rf(1) = 4
| rf(2) = 2
| rf(3) = 3
| rf(4) = 6
| rf(5) = 5
| rf(6) = 4
| rf(7) = 7
| rf(8) = 1
| rf(9) = 8
| rf(10) = 10
| rf(11) = 11
| rf(12) = 3
| rf(13) = 7
| rf(14) = 15
| rf(15) = 0
| rf(16) = 0
| rf(17) = 0
| rf(18) = 0
| rf(19) = 0
| rf(20) = 0
| rf(21) = 0
| rf(22) = 0
| rf(23) = 0
| rf(24) = 0
| rf(25) = 0
| rf(26) = 0
| rf(27) = 0
| rf(28) = 0
| rf(29) = 0
| rf(30) = 0
| rf(31) = 0
|___________________________



___________________________
|alu Module:
|  a               : 0x0
|  b               : 0xf
|  out             : 0xf
|  aluControl      : b10
|  zeroFlag        : b0
|  lessThanFlag    : b1
|  greaterThanFlag : b0
|___________________________



___________________________
|extend Module:
|  instr12     : b10000000111
|  instr20     : b10000000111
|  immsrc      : b0
|  extImm      : 0x407
|___________________________



___________________________
|extend Module:
|  instr12     : b1111
|  instr20     : b10000000111
|  immsrc      : b0
|  extImm      : 0xf
|___________________________



___________________________
|datapath Module:
|  inst            : 0xf00793
|  memToReg        : b0
|  memImm          : b1111
|  memAddress      : 0xf
|  memReadData     : 0x0
|  memWriteData    : 0x0
|  aluOut          : 0xf
|  pcNext          : 0x48
|  branchExtImm    : 0x407
|  extImm          : 0xf
|  regReadData2    : 0x0
|  regWriteData    : 0xf
|  regSrc          : 0x0
|  pcBranch        : 0x44f
|  pcRegBranch     : 0xe
|  pcPlus4         : 0x48
|  branchSrc       : b0
|___________________________



___________________________
|decoder Module:
|  branchSrc          : b0
|  opcode             : b10011
|  funct3             : b0
|  regSrc             : b0
|  immSrc             : b0
|  aluSrc             : b1
|  pcSrc              : b0
|  regWriteEnable     : b1
|  aluControl         : b10
|  memToReg           : b0
|  memWriteEnable     : b0
|  zeroFlag           : b0
|  lessThanFlag       : b1
|  greaterThanFlag    : b0
|___________________________
___________________________
|riscv Module:
|  instr          : 0xf00793
|  memWriteEnable : b0
|  memWriteData   : b0
|  memAddress     : b1111
|  memReadData    : 0x0
|___________________________



Memory___________________________
| mem(0) = 0
| mem(1) = 0
| mem(2) = 4
| mem(3) = 0
| mem(4) = 0
| mem(5) = 0
| mem(6) = 0
| mem(7) = 0
| mem(8) = 2
| mem(9) = 0
| mem(10) = 0
| mem(11) = 0
| mem(12) = 0
| mem(13) = 0
| mem(14) = 0
| mem(15) = 0
| mem(16) = 0
| mem(17) = 0
| mem(18) = 0
| mem(19) = 0
| mem(20) = 0
| mem(21) = 0
| mem(22) = 0
| mem(23) = 0
| mem(24) = 0
| mem(25) = 0
| mem(26) = 0
| mem(27) = 0
| mem(28) = 0
| mem(29) = 0
| mem(30) = 0
| mem(31) = 0
|________________________________



___________________________
|dmem Module:
|  memAddress      : 0xf
|  memWriteData    : 0x0
|  memWriteEnable  : b0
|  memReadData     : 0x0
|___________________________



___________________________
|top Module:
|  instr pulled       : 0xf00793
|  pc pulled          : b10001
|  memWriteEnable     : b0
|  memWriteData       : 0x0
|  memAddress         : 0xf
|  memReadData        : 0x0
|___________________________
[[35minfo[0m] [0.695] STARTING NEXT CYCLE: 19
[[35minfo[0m] [0.695] valid = 1



___________________________
|regfile Module:
|  regWriteEnable  : b1
|  regReadAddress1 : b1111
|  regReadAddress2 : b111
|  regWriteAddress : b10000
|  regWriteData    : 0x8
|  regReadData1    : 0xf
|  regReadData2    : 0x7
|___________________________



___________________________
| rf(0) = 0
| rf(1) = 4
| rf(2) = 2
| rf(3) = 3
| rf(4) = 6
| rf(5) = 5
| rf(6) = 4
| rf(7) = 7
| rf(8) = 1
| rf(9) = 8
| rf(10) = 10
| rf(11) = 11
| rf(12) = 3
| rf(13) = 7
| rf(14) = 15
| rf(15) = 15
| rf(16) = 0
| rf(17) = 0
| rf(18) = 0
| rf(19) = 0
| rf(20) = 0
| rf(21) = 0
| rf(22) = 0
| rf(23) = 0
| rf(24) = 0
| rf(25) = 0
| rf(26) = 0
| rf(27) = 0
| rf(28) = 0
| rf(29) = 0
| rf(30) = 0
| rf(31) = 0
|___________________________



___________________________
|alu Module:
|  a               : 0xf
|  b               : 0x7
|  out             : 0x8
|  aluControl      : b1100
|  zeroFlag        : b0
|  lessThanFlag    : b0
|  greaterThanFlag : b1
|___________________________



___________________________
|extend Module:
|  instr12     : b1000001000
|  instr20     : b11000000011
|  immsrc      : b0
|  extImm      : 0x208
|___________________________



___________________________
|extend Module:
|  instr12     : b10000000111
|  instr20     : b11000000011
|  immsrc      : b0
|  extImm      : 0x407
|___________________________



___________________________
|datapath Module:
|  inst            : 0x40778833
|  memToReg        : b0
|  memImm          : b10000010000
|  memAddress      : 0x41f
|  memReadData     : 0x0
|  memWriteData    : 0x7
|  aluOut          : 0x8
|  pcNext          : 0x4c
|  branchExtImm    : 0x208
|  extImm          : 0x407
|  regReadData2    : 0x7
|  regWriteData    : 0x8
|  regSrc          : 0x0
|  pcBranch        : 0x254
|  pcRegBranch     : 0x8
|  pcPlus4         : 0x4c
|  branchSrc       : b0
|___________________________



___________________________
|decoder Module:
|  branchSrc          : b0
|  opcode             : b110011
|  funct3             : b0
|  regSrc             : b0
|  immSrc             : b0
|  aluSrc             : b0
|  pcSrc              : b0
|  regWriteEnable     : b1
|  aluControl         : b1100
|  memToReg           : b0
|  memWriteEnable     : b0
|  zeroFlag           : b0
|  lessThanFlag       : b0
|  greaterThanFlag    : b1
|___________________________
___________________________
|riscv Module:
|  instr          : 0x40778833
|  memWriteEnable : b0
|  memWriteData   : b111
|  memAddress     : b10000011111
|  memReadData    : 0x0
|___________________________



Memory___________________________
| mem(0) = 0
| mem(1) = 0
| mem(2) = 4
| mem(3) = 0
| mem(4) = 0
| mem(5) = 0
| mem(6) = 0
| mem(7) = 0
| mem(8) = 2
| mem(9) = 0
| mem(10) = 0
| mem(11) = 0
| mem(12) = 0
| mem(13) = 0
| mem(14) = 0
| mem(15) = 0
| mem(16) = 0
| mem(17) = 0
| mem(18) = 0
| mem(19) = 0
| mem(20) = 0
| mem(21) = 0
| mem(22) = 0
| mem(23) = 0
| mem(24) = 0
| mem(25) = 0
| mem(26) = 0
| mem(27) = 0
| mem(28) = 0
| mem(29) = 0
| mem(30) = 0
| mem(31) = 0
|________________________________



___________________________
|dmem Module:
|  memAddress      : 0x41f
|  memWriteData    : 0x7
|  memWriteEnable  : b0
|  memReadData     : 0x0
|___________________________



___________________________
|top Module:
|  instr pulled       : 0x40778833
|  pc pulled          : b10010
|  memWriteEnable     : b0
|  memWriteData       : 0x7
|  memAddress         : 0x41f
|  memReadData        : 0x0
|___________________________
[[35minfo[0m] [0.788] STARTING NEXT CYCLE: 20
[[35minfo[0m] [0.789] valid = 1



___________________________
|regfile Module:
|  regWriteEnable  : b1
|  regReadAddress1 : b10
|  regReadAddress2 : b10
|  regWriteAddress : b10001
|  regWriteData    : 0x8
|  regReadData1    : 0x2
|  regReadData2    : 0x2
|___________________________



___________________________
| rf(0) = 0
| rf(1) = 4
| rf(2) = 2
| rf(3) = 3
| rf(4) = 6
| rf(5) = 5
| rf(6) = 4
| rf(7) = 7
| rf(8) = 1
| rf(9) = 8
| rf(10) = 10
| rf(11) = 11
| rf(12) = 3
| rf(13) = 7
| rf(14) = 15
| rf(15) = 15
| rf(16) = 8
| rf(17) = 0
| rf(18) = 0
| rf(19) = 0
| rf(20) = 0
| rf(21) = 0
| rf(22) = 0
| rf(23) = 0
| rf(24) = 0
| rf(25) = 0
| rf(26) = 0
| rf(27) = 0
| rf(28) = 0
| rf(29) = 0
| rf(30) = 0
| rf(31) = 0
|___________________________



___________________________
|alu Module:
|  a               : 0x2
|  b               : 0x2
|  out             : 0x8
|  aluControl      : b11
|  zeroFlag        : b0
|  lessThanFlag    : b0
|  greaterThanFlag : b0
|___________________________



___________________________
|extend Module:
|  instr12     : b10000001000
|  instr20     : b100000000001
|  immsrc      : b0
|  extImm      : 0x408
|___________________________



___________________________
|extend Module:
|  instr12     : b10
|  instr20     : b100000000001
|  immsrc      : b0
|  extImm      : 0x2
|___________________________



___________________________
|datapath Module:
|  inst            : 0x2118b3
|  memToReg        : b0
|  memImm          : b10001
|  memAddress      : 0x13
|  memReadData     : 0x0
|  memWriteData    : 0x2
|  aluOut          : 0x8
|  pcNext          : 0x50
|  branchExtImm    : 0x408
|  extImm          : 0x2
|  regReadData2    : 0x2
|  regWriteData    : 0x8
|  regSrc          : 0x0
|  pcBranch        : 0x458
|  pcRegBranch     : 0x8
|  pcPlus4         : 0x50
|  branchSrc       : b0
|___________________________



___________________________
|decoder Module:
|  branchSrc          : b0
|  opcode             : b110011
|  funct3             : b1
|  regSrc             : b0
|  immSrc             : b0
|  aluSrc             : b0
|  pcSrc              : b0
|  regWriteEnable     : b1
|  aluControl         : b11
|  memToReg           : b0
|  memWriteEnable     : b0
|  zeroFlag           : b0
|  lessThanFlag       : b0
|  greaterThanFlag    : b0
|___________________________
___________________________
|riscv Module:
|  instr          : 0x2118b3
|  memWriteEnable : b0
|  memWriteData   : b10
|  memAddress     : b10011
|  memReadData    : 0x0
|___________________________



Memory___________________________
| mem(0) = 0
| mem(1) = 0
| mem(2) = 4
| mem(3) = 0
| mem(4) = 0
| mem(5) = 0
| mem(6) = 0
| mem(7) = 0
| mem(8) = 2
| mem(9) = 0
| mem(10) = 0
| mem(11) = 0
| mem(12) = 0
| mem(13) = 0
| mem(14) = 0
| mem(15) = 0
| mem(16) = 0
| mem(17) = 0
| mem(18) = 0
| mem(19) = 0
| mem(20) = 0
| mem(21) = 0
| mem(22) = 0
| mem(23) = 0
| mem(24) = 0
| mem(25) = 0
| mem(26) = 0
| mem(27) = 0
| mem(28) = 0
| mem(29) = 0
| mem(30) = 0
| mem(31) = 0
|________________________________



___________________________
|dmem Module:
|  memAddress      : 0x13
|  memWriteData    : 0x2
|  memWriteEnable  : b0
|  memReadData     : 0x0
|___________________________



___________________________
|top Module:
|  instr pulled       : 0x2118b3
|  pc pulled          : b10011
|  memWriteEnable     : b0
|  memWriteData       : 0x2
|  memAddress         : 0x13
|  memReadData        : 0x0
|___________________________
[[35minfo[0m] [0.806] STARTING NEXT CYCLE: 21
[[35minfo[0m] [0.806] valid = 1



___________________________
|regfile Module:
|  regWriteEnable  : b1
|  regReadAddress1 : b10
|  regReadAddress2 : b11
|  regWriteAddress : b10011
|  regWriteData    : 0x1
|  regReadData1    : 0x2
|  regReadData2    : 0x3
|___________________________



___________________________
| rf(0) = 0
| rf(1) = 4
| rf(2) = 2
| rf(3) = 3
| rf(4) = 6
| rf(5) = 5
| rf(6) = 4
| rf(7) = 7
| rf(8) = 1
| rf(9) = 8
| rf(10) = 10
| rf(11) = 11
| rf(12) = 3
| rf(13) = 7
| rf(14) = 15
| rf(15) = 15
| rf(16) = 8
| rf(17) = 8
| rf(18) = 0
| rf(19) = 0
| rf(20) = 0
| rf(21) = 0
| rf(22) = 0
| rf(23) = 0
| rf(24) = 0
| rf(25) = 0
| rf(26) = 0
| rf(27) = 0
| rf(28) = 0
| rf(29) = 0
| rf(30) = 0
| rf(31) = 0
|___________________________



___________________________
|alu Module:
|  a               : 0x2
|  b               : 0x3
|  out             : 0x1
|  aluControl      : b1001
|  zeroFlag        : b0
|  lessThanFlag    : b1
|  greaterThanFlag : b0
|___________________________



___________________________
|extend Module:
|  instr12     : b10000001001
|  instr20     : b10000000001
|  immsrc      : b0
|  extImm      : 0x409
|___________________________



___________________________
|extend Module:
|  instr12     : b11
|  instr20     : b10000000001
|  immsrc      : b0
|  extImm      : 0x3
|___________________________



___________________________
|datapath Module:
|  inst            : 0x3129b3
|  memToReg        : b0
|  memImm          : b10011
|  memAddress      : 0x15
|  memReadData     : 0x0
|  memWriteData    : 0x3
|  aluOut          : 0x1
|  pcNext          : 0x54
|  branchExtImm    : 0x409
|  extImm          : 0x3
|  regReadData2    : 0x3
|  regWriteData    : 0x1
|  regSrc          : 0x0
|  pcBranch        : 0x45d
|  pcRegBranch     : 0x0
|  pcPlus4         : 0x54
|  branchSrc       : b0
|___________________________



___________________________
|decoder Module:
|  branchSrc          : b0
|  opcode             : b110011
|  funct3             : b10
|  regSrc             : b0
|  immSrc             : b0
|  aluSrc             : b0
|  pcSrc              : b0
|  regWriteEnable     : b1
|  aluControl         : b1001
|  memToReg           : b0
|  memWriteEnable     : b0
|  zeroFlag           : b0
|  lessThanFlag       : b1
|  greaterThanFlag    : b0
|___________________________
___________________________
|riscv Module:
|  instr          : 0x3129b3
|  memWriteEnable : b0
|  memWriteData   : b11
|  memAddress     : b10101
|  memReadData    : 0x0
|___________________________



Memory___________________________
| mem(0) = 0
| mem(1) = 0
| mem(2) = 4
| mem(3) = 0
| mem(4) = 0
| mem(5) = 0
| mem(6) = 0
| mem(7) = 0
| mem(8) = 2
| mem(9) = 0
| mem(10) = 0
| mem(11) = 0
| mem(12) = 0
| mem(13) = 0
| mem(14) = 0
| mem(15) = 0
| mem(16) = 0
| mem(17) = 0
| mem(18) = 0
| mem(19) = 0
| mem(20) = 0
| mem(21) = 0
| mem(22) = 0
| mem(23) = 0
| mem(24) = 0
| mem(25) = 0
| mem(26) = 0
| mem(27) = 0
| mem(28) = 0
| mem(29) = 0
| mem(30) = 0
| mem(31) = 0
|________________________________



___________________________
|dmem Module:
|  memAddress      : 0x15
|  memWriteData    : 0x3
|  memWriteEnable  : b0
|  memReadData     : 0x0
|___________________________



___________________________
|top Module:
|  instr pulled       : 0x3129b3
|  pc pulled          : b10100
|  memWriteEnable     : b0
|  memWriteData       : 0x3
|  memAddress         : 0x15
|  memReadData        : 0x0
|___________________________
[[35minfo[0m] [0.822] STARTING NEXT CYCLE: 22
[[35minfo[0m] [0.822] valid = 1



___________________________
|regfile Module:
|  regWriteEnable  : b1
|  regReadAddress1 : b1001
|  regReadAddress2 : b11
|  regWriteAddress : b10100
|  regWriteData    : 0x0
|  regReadData1    : 0x8
|  regReadData2    : 0x3
|___________________________



___________________________
| rf(0) = 0
| rf(1) = 4
| rf(2) = 2
| rf(3) = 3
| rf(4) = 6
| rf(5) = 5
| rf(6) = 4
| rf(7) = 7
| rf(8) = 1
| rf(9) = 8
| rf(10) = 10
| rf(11) = 11
| rf(12) = 3
| rf(13) = 7
| rf(14) = 15
| rf(15) = 15
| rf(16) = 8
| rf(17) = 8
| rf(18) = 0
| rf(19) = 1
| rf(20) = 0
| rf(21) = 0
| rf(22) = 0
| rf(23) = 0
| rf(24) = 0
| rf(25) = 0
| rf(26) = 0
| rf(27) = 0
| rf(28) = 0
| rf(29) = 0
| rf(30) = 0
| rf(31) = 0
|___________________________



___________________________
|alu Module:
|  a               : 0x8
|  b               : 0x3
|  out             : 0x0
|  aluControl      : b1001
|  zeroFlag        : b0
|  lessThanFlag    : b0
|  greaterThanFlag : b1
|___________________________



___________________________
|extend Module:
|  instr12     : b1010
|  instr20     : b10000000001
|  immsrc      : b0
|  extImm      : 0xa
|___________________________



___________________________
|extend Module:
|  instr12     : b11
|  instr20     : b10000000001
|  immsrc      : b0
|  extImm      : 0x3
|___________________________



___________________________
|datapath Module:
|  inst            : 0x34aa33
|  memToReg        : b0
|  memImm          : b10100
|  memAddress      : 0x1c
|  memReadData     : 0x0
|  memWriteData    : 0x3
|  aluOut          : 0x0
|  pcNext          : 0x58
|  branchExtImm    : 0xa
|  extImm          : 0x3
|  regReadData2    : 0x3
|  regWriteData    : 0x0
|  regSrc          : 0x0
|  pcBranch        : 0x62
|  pcRegBranch     : 0x0
|  pcPlus4         : 0x58
|  branchSrc       : b0
|___________________________



___________________________
|decoder Module:
|  branchSrc          : b0
|  opcode             : b110011
|  funct3             : b10
|  regSrc             : b0
|  immSrc             : b0
|  aluSrc             : b0
|  pcSrc              : b0
|  regWriteEnable     : b1
|  aluControl         : b1001
|  memToReg           : b0
|  memWriteEnable     : b0
|  zeroFlag           : b0
|  lessThanFlag       : b0
|  greaterThanFlag    : b1
|___________________________
___________________________
|riscv Module:
|  instr          : 0x34aa33
|  memWriteEnable : b0
|  memWriteData   : b11
|  memAddress     : b11100
|  memReadData    : 0x0
|___________________________



Memory___________________________
| mem(0) = 0
| mem(1) = 0
| mem(2) = 4
| mem(3) = 0
| mem(4) = 0
| mem(5) = 0
| mem(6) = 0
| mem(7) = 0
| mem(8) = 2
| mem(9) = 0
| mem(10) = 0
| mem(11) = 0
| mem(12) = 0
| mem(13) = 0
| mem(14) = 0
| mem(15) = 0
| mem(16) = 0
| mem(17) = 0
| mem(18) = 0
| mem(19) = 0
| mem(20) = 0
| mem(21) = 0
| mem(22) = 0
| mem(23) = 0
| mem(24) = 0
| mem(25) = 0
| mem(26) = 0
| mem(27) = 0
| mem(28) = 0
| mem(29) = 0
| mem(30) = 0
| mem(31) = 0
|________________________________



___________________________
|dmem Module:
|  memAddress      : 0x1c
|  memWriteData    : 0x3
|  memWriteEnable  : b0
|  memReadData     : 0x0
|___________________________



___________________________
|top Module:
|  instr pulled       : 0x34aa33
|  pc pulled          : b10101
|  memWriteEnable     : b0
|  memWriteData       : 0x3
|  memAddress         : 0x1c
|  memReadData        : 0x0
|___________________________
[[35minfo[0m] [0.839] STARTING NEXT CYCLE: 23
[[35minfo[0m] [0.840] valid = 1



___________________________
|regfile Module:
|  regWriteEnable  : b1
|  regReadAddress1 : b111
|  regReadAddress2 : b10
|  regWriteAddress : b10101
|  regWriteData    : 0x1
|  regReadData1    : 0x7
|  regReadData2    : 0x2
|___________________________



___________________________
| rf(0) = 0
| rf(1) = 4
| rf(2) = 2
| rf(3) = 3
| rf(4) = 6
| rf(5) = 5
| rf(6) = 4
| rf(7) = 7
| rf(8) = 1
| rf(9) = 8
| rf(10) = 10
| rf(11) = 11
| rf(12) = 3
| rf(13) = 7
| rf(14) = 15
| rf(15) = 15
| rf(16) = 8
| rf(17) = 8
| rf(18) = 0
| rf(19) = 1
| rf(20) = 0
| rf(21) = 0
| rf(22) = 0
| rf(23) = 0
| rf(24) = 0
| rf(25) = 0
| rf(26) = 0
| rf(27) = 0
| rf(28) = 0
| rf(29) = 0
| rf(30) = 0
| rf(31) = 0
|___________________________



___________________________
|alu Module:
|  a               : 0x7
|  b               : 0x2
|  out             : 0x1
|  aluControl      : b111
|  zeroFlag        : b0
|  lessThanFlag    : b0
|  greaterThanFlag : b1
|___________________________



___________________________
|extend Module:
|  instr12     : b10000001010
|  instr20     : b100000000001
|  immsrc      : b0
|  extImm      : 0x40a
|___________________________



___________________________
|extend Module:
|  instr12     : b10
|  instr20     : b100000000001
|  immsrc      : b0
|  extImm      : 0x2
|___________________________



___________________________
|datapath Module:
|  inst            : 0x23dab3
|  memToReg        : b0
|  memImm          : b10101
|  memAddress      : 0x1c
|  memReadData     : 0x0
|  memWriteData    : 0x2
|  aluOut          : 0x1
|  pcNext          : 0x5c
|  branchExtImm    : 0x40a
|  extImm          : 0x2
|  regReadData2    : 0x2
|  regWriteData    : 0x1
|  regSrc          : 0x0
|  pcBranch        : 0x466
|  pcRegBranch     : 0x0
|  pcPlus4         : 0x5c
|  branchSrc       : b0
|___________________________



___________________________
|decoder Module:
|  branchSrc          : b0
|  opcode             : b110011
|  funct3             : b101
|  regSrc             : b0
|  immSrc             : b0
|  aluSrc             : b0
|  pcSrc              : b0
|  regWriteEnable     : b1
|  aluControl         : b111
|  memToReg           : b0
|  memWriteEnable     : b0
|  zeroFlag           : b0
|  lessThanFlag       : b0
|  greaterThanFlag    : b1
|___________________________
___________________________
|riscv Module:
|  instr          : 0x23dab3
|  memWriteEnable : b0
|  memWriteData   : b10
|  memAddress     : b11100
|  memReadData    : 0x0
|___________________________



Memory___________________________
| mem(0) = 0
| mem(1) = 0
| mem(2) = 4
| mem(3) = 0
| mem(4) = 0
| mem(5) = 0
| mem(6) = 0
| mem(7) = 0
| mem(8) = 2
| mem(9) = 0
| mem(10) = 0
| mem(11) = 0
| mem(12) = 0
| mem(13) = 0
| mem(14) = 0
| mem(15) = 0
| mem(16) = 0
| mem(17) = 0
| mem(18) = 0
| mem(19) = 0
| mem(20) = 0
| mem(21) = 0
| mem(22) = 0
| mem(23) = 0
| mem(24) = 0
| mem(25) = 0
| mem(26) = 0
| mem(27) = 0
| mem(28) = 0
| mem(29) = 0
| mem(30) = 0
| mem(31) = 0
|________________________________



___________________________
|dmem Module:
|  memAddress      : 0x1c
|  memWriteData    : 0x2
|  memWriteEnable  : b0
|  memReadData     : 0x0
|___________________________



___________________________
|top Module:
|  instr pulled       : 0x23dab3
|  pc pulled          : b10110
|  memWriteEnable     : b0
|  memWriteData       : 0x2
|  memAddress         : 0x1c
|  memReadData        : 0x0
|___________________________
[[35minfo[0m] [0.852] STARTING NEXT CYCLE: 24
[[35minfo[0m] [0.852] valid = 1



___________________________
|regfile Module:
|  regWriteEnable  : b1
|  regReadAddress1 : b1001
|  regReadAddress2 : b10
|  regWriteAddress : b10110
|  regWriteData    : 0x2
|  regReadData1    : 0x8
|  regReadData2    : 0x2
|___________________________



___________________________
| rf(0) = 0
| rf(1) = 4
| rf(2) = 2
| rf(3) = 3
| rf(4) = 6
| rf(5) = 5
| rf(6) = 4
| rf(7) = 7
| rf(8) = 1
| rf(9) = 8
| rf(10) = 10
| rf(11) = 11
| rf(12) = 3
| rf(13) = 7
| rf(14) = 15
| rf(15) = 15
| rf(16) = 8
| rf(17) = 8
| rf(18) = 0
| rf(19) = 1
| rf(20) = 0
| rf(21) = 1
| rf(22) = 0
| rf(23) = 0
| rf(24) = 0
| rf(25) = 0
| rf(26) = 0
| rf(27) = 0
| rf(28) = 0
| rf(29) = 0
| rf(30) = 0
| rf(31) = 0
|___________________________



___________________________
|alu Module:
|  a               : 0x8
|  b               : 0x2
|  out             : 0x2
|  aluControl      : b100
|  zeroFlag        : b0
|  lessThanFlag    : b0
|  greaterThanFlag : b1
|___________________________



___________________________
|extend Module:
|  instr12     : b1000001011
|  instr20     : b101000000001
|  immsrc      : b0
|  extImm      : 0x20b
|___________________________



___________________________
|extend Module:
|  instr12     : b10000000010
|  instr20     : b101000000001
|  immsrc      : b0
|  extImm      : 0x402
|___________________________



___________________________
|datapath Module:
|  inst            : 0x4024db33
|  memToReg        : b0
|  memImm          : b10000010110
|  memAddress      : 0x41e
|  memReadData     : 0x0
|  memWriteData    : 0x2
|  aluOut          : 0x2
|  pcNext          : 0x60
|  branchExtImm    : 0x20b
|  extImm          : 0x402
|  regReadData2    : 0x2
|  regWriteData    : 0x2
|  regSrc          : 0x0
|  pcBranch        : 0x26b
|  pcRegBranch     : 0x2
|  pcPlus4         : 0x60
|  branchSrc       : b0
|___________________________



___________________________
|decoder Module:
|  branchSrc          : b0
|  opcode             : b110011
|  funct3             : b101
|  regSrc             : b0
|  immSrc             : b0
|  aluSrc             : b0
|  pcSrc              : b0
|  regWriteEnable     : b1
|  aluControl         : b100
|  memToReg           : b0
|  memWriteEnable     : b0
|  zeroFlag           : b0
|  lessThanFlag       : b0
|  greaterThanFlag    : b1
|___________________________
___________________________
|riscv Module:
|  instr          : 0x4024db33
|  memWriteEnable : b0
|  memWriteData   : b10
|  memAddress     : b10000011110
|  memReadData    : 0x0
|___________________________



Memory___________________________
| mem(0) = 0
| mem(1) = 0
| mem(2) = 4
| mem(3) = 0
| mem(4) = 0
| mem(5) = 0
| mem(6) = 0
| mem(7) = 0
| mem(8) = 2
| mem(9) = 0
| mem(10) = 0
| mem(11) = 0
| mem(12) = 0
| mem(13) = 0
| mem(14) = 0
| mem(15) = 0
| mem(16) = 0
| mem(17) = 0
| mem(18) = 0
| mem(19) = 0
| mem(20) = 0
| mem(21) = 0
| mem(22) = 0
| mem(23) = 0
| mem(24) = 0
| mem(25) = 0
| mem(26) = 0
| mem(27) = 0
| mem(28) = 0
| mem(29) = 0
| mem(30) = 0
| mem(31) = 0
|________________________________



___________________________
|dmem Module:
|  memAddress      : 0x41e
|  memWriteData    : 0x2
|  memWriteEnable  : b0
|  memReadData     : 0x0
|___________________________



___________________________
|top Module:
|  instr pulled       : 0x4024db33
|  pc pulled          : b10111
|  memWriteEnable     : b0
|  memWriteData       : 0x2
|  memAddress         : 0x41e
|  memReadData        : 0x0
|___________________________
[[35minfo[0m] [0.865] STARTING NEXT CYCLE: 25
[[35minfo[0m] [0.866] valid = 1



___________________________
|regfile Module:
|  regWriteEnable  : b1
|  regReadAddress1 : b1111
|  regReadAddress2 : b10000
|  regWriteAddress : b10111
|  regWriteData    : 0x1
|  regReadData1    : 0xf
|  regReadData2    : 0x8
|___________________________



___________________________
| rf(0) = 0
| rf(1) = 4
| rf(2) = 2
| rf(3) = 3
| rf(4) = 6
| rf(5) = 5
| rf(6) = 4
| rf(7) = 7
| rf(8) = 1
| rf(9) = 8
| rf(10) = 10
| rf(11) = 11
| rf(12) = 3
| rf(13) = 7
| rf(14) = 15
| rf(15) = 15
| rf(16) = 8
| rf(17) = 8
| rf(18) = 0
| rf(19) = 1
| rf(20) = 0
| rf(21) = 1
| rf(22) = 2
| rf(23) = 0
| rf(24) = 0
| rf(25) = 0
| rf(26) = 0
| rf(27) = 0
| rf(28) = 0
| rf(29) = 0
| rf(30) = 0
| rf(31) = 0
|___________________________



___________________________
|alu Module:
|  a               : 0xf
|  b               : 0x10
|  out             : 0x1
|  aluControl      : b1001
|  zeroFlag        : b0
|  lessThanFlag    : b1
|  greaterThanFlag : b0
|___________________________



___________________________
|extend Module:
|  instr12     : b10000001011
|  instr20     : b1000
|  immsrc      : b0
|  extImm      : 0x40b
|___________________________



___________________________
|extend Module:
|  instr12     : b10000
|  instr20     : b1000
|  immsrc      : b0
|  extImm      : 0x10
|___________________________



___________________________
|datapath Module:
|  inst            : 0x107ab93
|  memToReg        : b0
|  memImm          : b10111
|  memAddress      : 0x26
|  memReadData     : 0x0
|  memWriteData    : 0x8
|  aluOut          : 0x1
|  pcNext          : 0x64
|  branchExtImm    : 0x40b
|  extImm          : 0x10
|  regReadData2    : 0x8
|  regWriteData    : 0x1
|  regSrc          : 0x0
|  pcBranch        : 0x46f
|  pcRegBranch     : 0x0
|  pcPlus4         : 0x64
|  branchSrc       : b0
|___________________________



___________________________
|decoder Module:
|  branchSrc          : b0
|  opcode             : b10011
|  funct3             : b10
|  regSrc             : b0
|  immSrc             : b0
|  aluSrc             : b1
|  pcSrc              : b0
|  regWriteEnable     : b1
|  aluControl         : b1001
|  memToReg           : b0
|  memWriteEnable     : b0
|  zeroFlag           : b0
|  lessThanFlag       : b1
|  greaterThanFlag    : b0
|___________________________
___________________________
|riscv Module:
|  instr          : 0x107ab93
|  memWriteEnable : b0
|  memWriteData   : b1000
|  memAddress     : b100110
|  memReadData    : 0x0
|___________________________



Memory___________________________
| mem(0) = 0
| mem(1) = 0
| mem(2) = 4
| mem(3) = 0
| mem(4) = 0
| mem(5) = 0
| mem(6) = 0
| mem(7) = 0
| mem(8) = 2
| mem(9) = 0
| mem(10) = 0
| mem(11) = 0
| mem(12) = 0
| mem(13) = 0
| mem(14) = 0
| mem(15) = 0
| mem(16) = 0
| mem(17) = 0
| mem(18) = 0
| mem(19) = 0
| mem(20) = 0
| mem(21) = 0
| mem(22) = 0
| mem(23) = 0
| mem(24) = 0
| mem(25) = 0
| mem(26) = 0
| mem(27) = 0
| mem(28) = 0
| mem(29) = 0
| mem(30) = 0
| mem(31) = 0
|________________________________



___________________________
|dmem Module:
|  memAddress      : 0x26
|  memWriteData    : 0x8
|  memWriteEnable  : b0
|  memReadData     : 0x0
|___________________________



___________________________
|top Module:
|  instr pulled       : 0x107ab93
|  pc pulled          : b11000
|  memWriteEnable     : b0
|  memWriteData       : 0x8
|  memAddress         : 0x26
|  memReadData        : 0x0
|___________________________
[[35minfo[0m] [0.943] STARTING NEXT CYCLE: 26
[[35minfo[0m] [0.943] valid = 1



___________________________
|regfile Module:
|  regWriteEnable  : b1
|  regReadAddress1 : b1111
|  regReadAddress2 : b1100
|  regWriteAddress : b11000
|  regWriteData    : 0x0
|  regReadData1    : 0xf
|  regReadData2    : 0x3
|___________________________



___________________________
| rf(0) = 0
| rf(1) = 4
| rf(2) = 2
| rf(3) = 3
| rf(4) = 6
| rf(5) = 5
| rf(6) = 4
| rf(7) = 7
| rf(8) = 1
| rf(9) = 8
| rf(10) = 10
| rf(11) = 11
| rf(12) = 3
| rf(13) = 7
| rf(14) = 15
| rf(15) = 15
| rf(16) = 8
| rf(17) = 8
| rf(18) = 0
| rf(19) = 1
| rf(20) = 0
| rf(21) = 1
| rf(22) = 2
| rf(23) = 1
| rf(24) = 0
| rf(25) = 0
| rf(26) = 0
| rf(27) = 0
| rf(28) = 0
| rf(29) = 0
| rf(30) = 0
| rf(31) = 0
|___________________________



___________________________
|alu Module:
|  a               : 0xf
|  b               : 0xc
|  out             : 0x0
|  aluControl      : b1001
|  zeroFlag        : b0
|  lessThanFlag    : b0
|  greaterThanFlag : b1
|___________________________



___________________________
|extend Module:
|  instr12     : b1100
|  instr20     : b110
|  immsrc      : b0
|  extImm      : 0xc
|___________________________



___________________________
|extend Module:
|  instr12     : b1100
|  instr20     : b110
|  immsrc      : b0
|  extImm      : 0xc
|___________________________



___________________________
|datapath Module:
|  inst            : 0xc7ac13
|  memToReg        : b0
|  memImm          : b11000
|  memAddress      : 0x27
|  memReadData     : 0x0
|  memWriteData    : 0x3
|  aluOut          : 0x0
|  pcNext          : 0x68
|  branchExtImm    : 0xc
|  extImm          : 0xc
|  regReadData2    : 0x3
|  regWriteData    : 0x0
|  regSrc          : 0x0
|  pcBranch        : 0x74
|  pcRegBranch     : 0x0
|  pcPlus4         : 0x68
|  branchSrc       : b0
|___________________________



___________________________
|decoder Module:
|  branchSrc          : b0
|  opcode             : b10011
|  funct3             : b10
|  regSrc             : b0
|  immSrc             : b0
|  aluSrc             : b1
|  pcSrc              : b0
|  regWriteEnable     : b1
|  aluControl         : b1001
|  memToReg           : b0
|  memWriteEnable     : b0
|  zeroFlag           : b0
|  lessThanFlag       : b0
|  greaterThanFlag    : b1
|___________________________
___________________________
|riscv Module:
|  instr          : 0xc7ac13
|  memWriteEnable : b0
|  memWriteData   : b11
|  memAddress     : b100111
|  memReadData    : 0x0
|___________________________



Memory___________________________
| mem(0) = 0
| mem(1) = 0
| mem(2) = 4
| mem(3) = 0
| mem(4) = 0
| mem(5) = 0
| mem(6) = 0
| mem(7) = 0
| mem(8) = 2
| mem(9) = 0
| mem(10) = 0
| mem(11) = 0
| mem(12) = 0
| mem(13) = 0
| mem(14) = 0
| mem(15) = 0
| mem(16) = 0
| mem(17) = 0
| mem(18) = 0
| mem(19) = 0
| mem(20) = 0
| mem(21) = 0
| mem(22) = 0
| mem(23) = 0
| mem(24) = 0
| mem(25) = 0
| mem(26) = 0
| mem(27) = 0
| mem(28) = 0
| mem(29) = 0
| mem(30) = 0
| mem(31) = 0
|________________________________



___________________________
|dmem Module:
|  memAddress      : 0x27
|  memWriteData    : 0x3
|  memWriteEnable  : b0
|  memReadData     : 0x0
|___________________________



___________________________
|top Module:
|  instr pulled       : 0xc7ac13
|  pc pulled          : b11001
|  memWriteEnable     : b0
|  memWriteData       : 0x3
|  memAddress         : 0x27
|  memReadData        : 0x0
|___________________________
[[35minfo[0m] [1.061] STARTING NEXT CYCLE: 27
[[35minfo[0m] [1.061] valid = 1



___________________________
|regfile Module:
|  regWriteEnable  : b1
|  regReadAddress1 : b1111
|  regReadAddress2 : b11
|  regWriteAddress : b11001
|  regWriteData    : 0x78
|  regReadData1    : 0xf
|  regReadData2    : 0x3
|___________________________



___________________________
| rf(0) = 0
| rf(1) = 4
| rf(2) = 2
| rf(3) = 3
| rf(4) = 6
| rf(5) = 5
| rf(6) = 4
| rf(7) = 7
| rf(8) = 1
| rf(9) = 8
| rf(10) = 10
| rf(11) = 11
| rf(12) = 3
| rf(13) = 7
| rf(14) = 15
| rf(15) = 15
| rf(16) = 8
| rf(17) = 8
| rf(18) = 0
| rf(19) = 1
| rf(20) = 0
| rf(21) = 1
| rf(22) = 2
| rf(23) = 1
| rf(24) = 0
| rf(25) = 0
| rf(26) = 0
| rf(27) = 0
| rf(28) = 0
| rf(29) = 0
| rf(30) = 0
| rf(31) = 0
|___________________________



___________________________
|alu Module:
|  a               : 0xf
|  b               : 0x3
|  out             : 0x78
|  aluControl      : b11
|  zeroFlag        : b0
|  lessThanFlag    : b0
|  greaterThanFlag : b1
|___________________________



___________________________
|extend Module:
|  instr12     : b10000001100
|  instr20     : b110000000001
|  immsrc      : b0
|  extImm      : 0x40c
|___________________________



___________________________
|extend Module:
|  instr12     : b11
|  instr20     : b110000000001
|  immsrc      : b0
|  extImm      : 0x3
|___________________________



___________________________
|datapath Module:
|  inst            : 0x379c93
|  memToReg        : b0
|  memImm          : b11001
|  memAddress      : 0x28
|  memReadData     : 0x0
|  memWriteData    : 0x3
|  aluOut          : 0x78
|  pcNext          : 0x6c
|  branchExtImm    : 0x40c
|  extImm          : 0x3
|  regReadData2    : 0x3
|  regWriteData    : 0x78
|  regSrc          : 0x0
|  pcBranch        : 0x478
|  pcRegBranch     : 0x78
|  pcPlus4         : 0x6c
|  branchSrc       : b0
|___________________________



___________________________
|decoder Module:
|  branchSrc          : b0
|  opcode             : b10011
|  funct3             : b1
|  regSrc             : b0
|  immSrc             : b0
|  aluSrc             : b1
|  pcSrc              : b0
|  regWriteEnable     : b1
|  aluControl         : b11
|  memToReg           : b0
|  memWriteEnable     : b0
|  zeroFlag           : b0
|  lessThanFlag       : b0
|  greaterThanFlag    : b1
|___________________________
___________________________
|riscv Module:
|  instr          : 0x379c93
|  memWriteEnable : b0
|  memWriteData   : b11
|  memAddress     : b101000
|  memReadData    : 0x0
|___________________________



Memory___________________________
| mem(0) = 0
| mem(1) = 0
| mem(2) = 4
| mem(3) = 0
| mem(4) = 0
| mem(5) = 0
| mem(6) = 0
| mem(7) = 0
| mem(8) = 2
| mem(9) = 0
| mem(10) = 0
| mem(11) = 0
| mem(12) = 0
| mem(13) = 0
| mem(14) = 0
| mem(15) = 0
| mem(16) = 0
| mem(17) = 0
| mem(18) = 0
| mem(19) = 0
| mem(20) = 0
| mem(21) = 0
| mem(22) = 0
| mem(23) = 0
| mem(24) = 0
| mem(25) = 0
| mem(26) = 0
| mem(27) = 0
| mem(28) = 0
| mem(29) = 0
| mem(30) = 0
| mem(31) = 0
|________________________________



___________________________
|dmem Module:
|  memAddress      : 0x28
|  memWriteData    : 0x3
|  memWriteEnable  : b0
|  memReadData     : 0x0
|___________________________



___________________________
|top Module:
|  instr pulled       : 0x379c93
|  pc pulled          : b11010
|  memWriteEnable     : b0
|  memWriteData       : 0x3
|  memAddress         : 0x28
|  memReadData        : 0x0
|___________________________
[[35minfo[0m] [1.073] STARTING NEXT CYCLE: 28
[[35minfo[0m] [1.073] valid = 1



___________________________
|regfile Module:
|  regWriteEnable  : b1
|  regReadAddress1 : b1111
|  regReadAddress2 : b11
|  regWriteAddress : b11010
|  regWriteData    : 0x1
|  regReadData1    : 0xf
|  regReadData2    : 0x3
|___________________________



___________________________
| rf(0) = 0
| rf(1) = 4
| rf(2) = 2
| rf(3) = 3
| rf(4) = 6
| rf(5) = 5
| rf(6) = 4
| rf(7) = 7
| rf(8) = 1
| rf(9) = 8
| rf(10) = 10
| rf(11) = 11
| rf(12) = 3
| rf(13) = 7
| rf(14) = 15
| rf(15) = 15
| rf(16) = 8
| rf(17) = 8
| rf(18) = 0
| rf(19) = 1
| rf(20) = 0
| rf(21) = 1
| rf(22) = 2
| rf(23) = 1
| rf(24) = 0
| rf(25) = 120
| rf(26) = 0
| rf(27) = 0
| rf(28) = 0
| rf(29) = 0
| rf(30) = 0
| rf(31) = 0
|___________________________



___________________________
|alu Module:
|  a               : 0xf
|  b               : 0x3
|  out             : 0x1
|  aluControl      : b111
|  zeroFlag        : b0
|  lessThanFlag    : b0
|  greaterThanFlag : b1
|___________________________



___________________________
|extend Module:
|  instr12     : b1101
|  instr20     : b110000000001
|  immsrc      : b0
|  extImm      : 0xd
|___________________________



___________________________
|extend Module:
|  instr12     : b11
|  instr20     : b110000000001
|  immsrc      : b0
|  extImm      : 0x3
|___________________________



___________________________
|datapath Module:
|  inst            : 0x37dd13
|  memToReg        : b0
|  memImm          : b11010
|  memAddress      : 0x29
|  memReadData     : 0x0
|  memWriteData    : 0x3
|  aluOut          : 0x1
|  pcNext          : 0x70
|  branchExtImm    : 0xd
|  extImm          : 0x3
|  regReadData2    : 0x3
|  regWriteData    : 0x1
|  regSrc          : 0x0
|  pcBranch        : 0x7d
|  pcRegBranch     : 0x0
|  pcPlus4         : 0x70
|  branchSrc       : b0
|___________________________



___________________________
|decoder Module:
|  branchSrc          : b0
|  opcode             : b10011
|  funct3             : b101
|  regSrc             : b0
|  immSrc             : b0
|  aluSrc             : b1
|  pcSrc              : b0
|  regWriteEnable     : b1
|  aluControl         : b111
|  memToReg           : b0
|  memWriteEnable     : b0
|  zeroFlag           : b0
|  lessThanFlag       : b0
|  greaterThanFlag    : b1
|___________________________
___________________________
|riscv Module:
|  instr          : 0x37dd13
|  memWriteEnable : b0
|  memWriteData   : b11
|  memAddress     : b101001
|  memReadData    : 0x0
|___________________________



Memory___________________________
| mem(0) = 0
| mem(1) = 0
| mem(2) = 4
| mem(3) = 0
| mem(4) = 0
| mem(5) = 0
| mem(6) = 0
| mem(7) = 0
| mem(8) = 2
| mem(9) = 0
| mem(10) = 0
| mem(11) = 0
| mem(12) = 0
| mem(13) = 0
| mem(14) = 0
| mem(15) = 0
| mem(16) = 0
| mem(17) = 0
| mem(18) = 0
| mem(19) = 0
| mem(20) = 0
| mem(21) = 0
| mem(22) = 0
| mem(23) = 0
| mem(24) = 0
| mem(25) = 0
| mem(26) = 0
| mem(27) = 0
| mem(28) = 0
| mem(29) = 0
| mem(30) = 0
| mem(31) = 0
|________________________________



___________________________
|dmem Module:
|  memAddress      : 0x29
|  memWriteData    : 0x3
|  memWriteEnable  : b0
|  memReadData     : 0x0
|___________________________



___________________________
|top Module:
|  instr pulled       : 0x37dd13
|  pc pulled          : b11011
|  memWriteEnable     : b0
|  memWriteData       : 0x3
|  memAddress         : 0x29
|  memReadData        : 0x0
|___________________________
[[35minfo[0m] [1.087] STARTING NEXT CYCLE: 29
[[35minfo[0m] [1.087] valid = 1



___________________________
|regfile Module:
|  regWriteEnable  : b1
|  regReadAddress1 : b1111
|  regReadAddress2 : b11
|  regWriteAddress : b11011
|  regWriteData    : 0x1
|  regReadData1    : 0xf
|  regReadData2    : 0x3
|___________________________



___________________________
| rf(0) = 0
| rf(1) = 4
| rf(2) = 2
| rf(3) = 3
| rf(4) = 6
| rf(5) = 5
| rf(6) = 4
| rf(7) = 7
| rf(8) = 1
| rf(9) = 8
| rf(10) = 10
| rf(11) = 11
| rf(12) = 3
| rf(13) = 7
| rf(14) = 15
| rf(15) = 15
| rf(16) = 8
| rf(17) = 8
| rf(18) = 0
| rf(19) = 1
| rf(20) = 0
| rf(21) = 1
| rf(22) = 2
| rf(23) = 1
| rf(24) = 0
| rf(25) = 120
| rf(26) = 1
| rf(27) = 0
| rf(28) = 0
| rf(29) = 0
| rf(30) = 0
| rf(31) = 0
|___________________________



___________________________
|alu Module:
|  a               : 0xf
|  b               : 0x403
|  out             : 0x1
|  aluControl      : b100
|  zeroFlag        : b0
|  lessThanFlag    : b1
|  greaterThanFlag : b0
|___________________________



___________________________
|extend Module:
|  instr12     : b11000001101
|  instr20     : b111000000001
|  immsrc      : b0
|  extImm      : 0x60d
|___________________________



___________________________
|extend Module:
|  instr12     : b10000000011
|  instr20     : b111000000001
|  immsrc      : b0
|  extImm      : 0x403
|___________________________



___________________________
|datapath Module:
|  inst            : 0x4037dd93
|  memToReg        : b0
|  memImm          : b10000011011
|  memAddress      : 0x42a
|  memReadData     : 0x0
|  memWriteData    : 0x3
|  aluOut          : 0x1
|  pcNext          : 0x74
|  branchExtImm    : 0x60d
|  extImm          : 0x403
|  regReadData2    : 0x3
|  regWriteData    : 0x1
|  regSrc          : 0x0
|  pcBranch        : 0x681
|  pcRegBranch     : 0x0
|  pcPlus4         : 0x74
|  branchSrc       : b0
|___________________________



___________________________
|decoder Module:
|  branchSrc          : b0
|  opcode             : b10011
|  funct3             : b101
|  regSrc             : b0
|  immSrc             : b0
|  aluSrc             : b1
|  pcSrc              : b0
|  regWriteEnable     : b1
|  aluControl         : b100
|  memToReg           : b0
|  memWriteEnable     : b0
|  zeroFlag           : b0
|  lessThanFlag       : b1
|  greaterThanFlag    : b0
|___________________________
___________________________
|riscv Module:
|  instr          : 0x4037dd93
|  memWriteEnable : b0
|  memWriteData   : b11
|  memAddress     : b10000101010
|  memReadData    : 0x0
|___________________________



Memory___________________________
| mem(0) = 0
| mem(1) = 0
| mem(2) = 4
| mem(3) = 0
| mem(4) = 0
| mem(5) = 0
| mem(6) = 0
| mem(7) = 0
| mem(8) = 2
| mem(9) = 0
| mem(10) = 0
| mem(11) = 0
| mem(12) = 0
| mem(13) = 0
| mem(14) = 0
| mem(15) = 0
| mem(16) = 0
| mem(17) = 0
| mem(18) = 0
| mem(19) = 0
| mem(20) = 0
| mem(21) = 0
| mem(22) = 0
| mem(23) = 0
| mem(24) = 0
| mem(25) = 0
| mem(26) = 0
| mem(27) = 0
| mem(28) = 0
| mem(29) = 0
| mem(30) = 0
| mem(31) = 0
|________________________________



___________________________
|dmem Module:
|  memAddress      : 0x42a
|  memWriteData    : 0x3
|  memWriteEnable  : b0
|  memReadData     : 0x0
|___________________________



___________________________
|top Module:
|  instr pulled       : 0x4037dd93
|  pc pulled          : b11100
|  memWriteEnable     : b0
|  memWriteData       : 0x3
|  memAddress         : 0x42a
|  memReadData        : 0x0
|___________________________
[[35minfo[0m] [1.104] STARTING NEXT CYCLE: 30
[[35minfo[0m] [1.105] valid = 1



___________________________
|regfile Module:
|  regWriteEnable  : b1
|  regReadAddress1 : b10
|  regReadAddress2 : b0
|  regWriteAddress : b11100
|  regWriteData    : 0x0
|  regReadData1    : 0x2
|  regReadData2    : 0x0
|___________________________



___________________________
| rf(0) = 0
| rf(1) = 4
| rf(2) = 2
| rf(3) = 3
| rf(4) = 6
| rf(5) = 5
| rf(6) = 4
| rf(7) = 7
| rf(8) = 1
| rf(9) = 8
| rf(10) = 10
| rf(11) = 11
| rf(12) = 3
| rf(13) = 7
| rf(14) = 15
| rf(15) = 15
| rf(16) = 8
| rf(17) = 8
| rf(18) = 0
| rf(19) = 1
| rf(20) = 0
| rf(21) = 1
| rf(22) = 2
| rf(23) = 1
| rf(24) = 0
| rf(25) = 120
| rf(26) = 1
| rf(27) = 1
| rf(28) = 0
| rf(29) = 0
| rf(30) = 0
| rf(31) = 0
|___________________________



___________________________
|alu Module:
|  a               : 0x2
|  b               : 0x0
|  out             : 0x2
|  aluControl      : b10
|  zeroFlag        : b0
|  lessThanFlag    : b0
|  greaterThanFlag : b1
|___________________________



___________________________
|extend Module:
|  instr12     : b1110
|  instr20     : b0
|  immsrc      : b0
|  extImm      : 0xe
|___________________________



___________________________
|extend Module:
|  instr12     : b0
|  instr20     : b0
|  immsrc      : b0
|  extImm      : 0x0
|___________________________



___________________________
|datapath Module:
|  inst            : 0x12e03
|  memToReg        : b1
|  memImm          : b11100
|  memAddress      : 0x2
|  memReadData     : 0x0
|  memWriteData    : 0x0
|  aluOut          : 0x2
|  pcNext          : 0x78
|  branchExtImm    : 0xe
|  extImm          : 0x0
|  regReadData2    : 0x0
|  regWriteData    : 0x0
|  regSrc          : 0x0
|  pcBranch        : 0x86
|  pcRegBranch     : 0x2
|  pcPlus4         : 0x78
|  branchSrc       : b0
|___________________________



___________________________
|decoder Module:
|  branchSrc          : b0
|  opcode             : b11
|  funct3             : b10
|  regSrc             : b0
|  immSrc             : b0
|  aluSrc             : b1
|  pcSrc              : b0
|  regWriteEnable     : b1
|  aluControl         : b10
|  memToReg           : b1
|  memWriteEnable     : b0
|  zeroFlag           : b0
|  lessThanFlag       : b0
|  greaterThanFlag    : b1
|___________________________
___________________________
|riscv Module:
|  instr          : 0x12e03
|  memWriteEnable : b0
|  memWriteData   : b0
|  memAddress     : b10
|  memReadData    : 0x0
|___________________________



Memory___________________________
| mem(0) = 0
| mem(1) = 0
| mem(2) = 4
| mem(3) = 0
| mem(4) = 0
| mem(5) = 0
| mem(6) = 0
| mem(7) = 0
| mem(8) = 2
| mem(9) = 0
| mem(10) = 0
| mem(11) = 0
| mem(12) = 0
| mem(13) = 0
| mem(14) = 0
| mem(15) = 0
| mem(16) = 0
| mem(17) = 0
| mem(18) = 0
| mem(19) = 0
| mem(20) = 0
| mem(21) = 0
| mem(22) = 0
| mem(23) = 0
| mem(24) = 0
| mem(25) = 0
| mem(26) = 0
| mem(27) = 0
| mem(28) = 0
| mem(29) = 0
| mem(30) = 0
| mem(31) = 0
|________________________________



___________________________
|dmem Module:
|  memAddress      : 0x2
|  memWriteData    : 0x0
|  memWriteEnable  : b0
|  memReadData     : 0x0
|___________________________



___________________________
|top Module:
|  instr pulled       : 0x12e03
|  pc pulled          : b11101
|  memWriteEnable     : b0
|  memWriteData       : 0x0
|  memAddress         : 0x2
|  memReadData        : 0x0
|___________________________
[[35minfo[0m] [1.271] STARTING NEXT CYCLE: 31
[[35minfo[0m] [1.272] valid = 1



___________________________
|regfile Module:
|  regWriteEnable  : b1
|  regReadAddress1 : b1
|  regReadAddress2 : b100
|  regWriteAddress : b11101
|  regWriteData    : 0x4
|  regReadData1    : 0x4
|  regReadData2    : 0x6
|___________________________



___________________________
| rf(0) = 0
| rf(1) = 4
| rf(2) = 2
| rf(3) = 3
| rf(4) = 6
| rf(5) = 5
| rf(6) = 4
| rf(7) = 7
| rf(8) = 1
| rf(9) = 8
| rf(10) = 10
| rf(11) = 11
| rf(12) = 3
| rf(13) = 7
| rf(14) = 15
| rf(15) = 15
| rf(16) = 8
| rf(17) = 8
| rf(18) = 0
| rf(19) = 1
| rf(20) = 0
| rf(21) = 1
| rf(22) = 2
| rf(23) = 1
| rf(24) = 0
| rf(25) = 120
| rf(26) = 1
| rf(27) = 1
| rf(28) = 0
| rf(29) = 0
| rf(30) = 0
| rf(31) = 0
|___________________________



___________________________
|alu Module:
|  a               : 0x4
|  b               : 0x4
|  out             : 0x8
|  aluControl      : b10
|  zeroFlag        : b0
|  lessThanFlag    : b0
|  greaterThanFlag : b0
|___________________________



___________________________
|extend Module:
|  instr12     : b10000001110
|  instr20     : b10
|  immsrc      : b0
|  extImm      : 0x40e
|___________________________



___________________________
|extend Module:
|  instr12     : b100
|  instr20     : b10
|  immsrc      : b0
|  extImm      : 0x4
|___________________________



___________________________
|datapath Module:
|  inst            : 0x40ae83
|  memToReg        : b1
|  memImm          : b11101
|  memAddress      : 0x8
|  memReadData     : 0x4
|  memWriteData    : 0x6
|  aluOut          : 0x8
|  pcNext          : 0x7c
|  branchExtImm    : 0x40e
|  extImm          : 0x4
|  regReadData2    : 0x6
|  regWriteData    : 0x4
|  regSrc          : 0x0
|  pcBranch        : 0x48a
|  pcRegBranch     : 0x8
|  pcPlus4         : 0x7c
|  branchSrc       : b0
|___________________________



___________________________
|decoder Module:
|  branchSrc          : b0
|  opcode             : b11
|  funct3             : b10
|  regSrc             : b0
|  immSrc             : b0
|  aluSrc             : b1
|  pcSrc              : b0
|  regWriteEnable     : b1
|  aluControl         : b10
|  memToReg           : b1
|  memWriteEnable     : b0
|  zeroFlag           : b0
|  lessThanFlag       : b0
|  greaterThanFlag    : b0
|___________________________
___________________________
|riscv Module:
|  instr          : 0x40ae83
|  memWriteEnable : b0
|  memWriteData   : b110
|  memAddress     : b1000
|  memReadData    : 0x4
|___________________________



Memory___________________________
| mem(0) = 0
| mem(1) = 0
| mem(2) = 4
| mem(3) = 0
| mem(4) = 0
| mem(5) = 0
| mem(6) = 0
| mem(7) = 0
| mem(8) = 2
| mem(9) = 0
| mem(10) = 0
| mem(11) = 0
| mem(12) = 0
| mem(13) = 0
| mem(14) = 0
| mem(15) = 0
| mem(16) = 0
| mem(17) = 0
| mem(18) = 0
| mem(19) = 0
| mem(20) = 0
| mem(21) = 0
| mem(22) = 0
| mem(23) = 0
| mem(24) = 0
| mem(25) = 0
| mem(26) = 0
| mem(27) = 0
| mem(28) = 0
| mem(29) = 0
| mem(30) = 0
| mem(31) = 0
|________________________________



___________________________
|dmem Module:
|  memAddress      : 0x8
|  memWriteData    : 0x6
|  memWriteEnable  : b0
|  memReadData     : 0x4
|___________________________



___________________________
|top Module:
|  instr pulled       : 0x40ae83
|  pc pulled          : b11110
|  memWriteEnable     : b0
|  memWriteData       : 0x6
|  memAddress         : 0x8
|  memReadData        : 0x4
|___________________________
[[35minfo[0m] [1.285] STARTING NEXT CYCLE: 32
[[35minfo[0m] [1.285] valid = 1



___________________________
|regfile Module:
|  regWriteEnable  : b1
|  regReadAddress1 : b1
|  regReadAddress2 : b0
|  regWriteAddress : b11110
|  regWriteData    : 0xa080
|  regReadData1    : 0x4
|  regReadData2    : 0x0
|___________________________



___________________________
| rf(0) = 0
| rf(1) = 4
| rf(2) = 2
| rf(3) = 3
| rf(4) = 6
| rf(5) = 5
| rf(6) = 4
| rf(7) = 7
| rf(8) = 1
| rf(9) = 8
| rf(10) = 10
| rf(11) = 11
| rf(12) = 3
| rf(13) = 7
| rf(14) = 15
| rf(15) = 15
| rf(16) = 8
| rf(17) = 8
| rf(18) = 0
| rf(19) = 1
| rf(20) = 0
| rf(21) = 1
| rf(22) = 2
| rf(23) = 1
| rf(24) = 0
| rf(25) = 120
| rf(26) = 1
| rf(27) = 1
| rf(28) = 0
| rf(29) = 4
| rf(30) = 0
| rf(31) = 0
|___________________________



___________________________
|alu Module:
|  a               : 0x80
|  b               : 0xa000
|  out             : 0xa080
|  aluControl      : b10
|  zeroFlag        : b0
|  lessThanFlag    : b1
|  greaterThanFlag : b0
|___________________________



___________________________
|extend Module:
|  instr12     : b1111
|  instr20     : b0
|  immsrc      : b10
|  extImm      : 0x0
|___________________________



___________________________
|extend Module:
|  instr12     : b0
|  instr20     : b0
|  immsrc      : b10
|  extImm      : 0x0
|___________________________



___________________________
|datapath Module:
|  inst            : 0xaf17
|  memToReg        : b0
|  memImm          : b11110
|  memAddress      : 0x22
|  memReadData     : 0x2
|  memWriteData    : 0x0
|  aluOut          : 0xa080
|  pcNext          : 0x80
|  branchExtImm    : 0x0
|  extImm          : 0xa000
|  regReadData2    : 0x0
|  regWriteData    : 0xa080
|  regSrc          : 0x0
|  pcBranch        : 0x80
|  pcRegBranch     : 0xa080
|  pcPlus4         : 0x80
|  branchSrc       : b0
|___________________________



___________________________
|decoder Module:
|  branchSrc          : b0
|  opcode             : b10111
|  funct3             : b10
|  regSrc             : b0
|  immSrc             : b10
|  aluSrc             : b1
|  pcSrc              : b1
|  regWriteEnable     : b1
|  aluControl         : b10
|  memToReg           : b0
|  memWriteEnable     : b0
|  zeroFlag           : b0
|  lessThanFlag       : b1
|  greaterThanFlag    : b0
|___________________________
___________________________
|riscv Module:
|  instr          : 0xaf17
|  memWriteEnable : b0
|  memWriteData   : b0
|  memAddress     : b100010
|  memReadData    : 0x2
|___________________________



Memory___________________________
| mem(0) = 0
| mem(1) = 0
| mem(2) = 4
| mem(3) = 0
| mem(4) = 0
| mem(5) = 0
| mem(6) = 0
| mem(7) = 0
| mem(8) = 2
| mem(9) = 0
| mem(10) = 0
| mem(11) = 0
| mem(12) = 0
| mem(13) = 0
| mem(14) = 0
| mem(15) = 0
| mem(16) = 0
| mem(17) = 0
| mem(18) = 0
| mem(19) = 0
| mem(20) = 0
| mem(21) = 0
| mem(22) = 0
| mem(23) = 0
| mem(24) = 0
| mem(25) = 0
| mem(26) = 0
| mem(27) = 0
| mem(28) = 0
| mem(29) = 0
| mem(30) = 0
| mem(31) = 0
|________________________________



___________________________
|dmem Module:
|  memAddress      : 0x22
|  memWriteData    : 0x0
|  memWriteEnable  : b0
|  memReadData     : 0x2
|___________________________



___________________________
|top Module:
|  instr pulled       : 0xaf17
|  pc pulled          : b11111
|  memWriteEnable     : b0
|  memWriteData       : 0x0
|  memAddress         : 0x22
|  memReadData        : 0x2
|___________________________



___________________________
|regfile Module:
|  regWriteEnable  : b0
|  regReadAddress1 : b0
|  regReadAddress2 : b0
|  regWriteAddress : b0
|  regWriteData    : 0x0
|  regReadData1    : 0x0
|  regReadData2    : 0x0
|___________________________



___________________________
| rf(0) = 0
| rf(1) = 4
| rf(2) = 2
| rf(3) = 3
| rf(4) = 6
| rf(5) = 5
| rf(6) = 4
| rf(7) = 7
| rf(8) = 1
| rf(9) = 8
| rf(10) = 10
| rf(11) = 11
| rf(12) = 3
| rf(13) = 7
| rf(14) = 15
| rf(15) = 15
| rf(16) = 8
| rf(17) = 8
| rf(18) = 0
| rf(19) = 1
| rf(20) = 0
| rf(21) = 1
| rf(22) = 2
| rf(23) = 1
| rf(24) = 0
| rf(25) = 120
| rf(26) = 1
| rf(27) = 1
| rf(28) = 0
| rf(29) = 4
| rf(30) = 41088
| rf(31) = 0
|___________________________



___________________________
|alu Module:
|  a               : 0x0
|  b               : 0x0
|  out             : 0x0
|  aluControl      : b0
|  zeroFlag        : b1
|  lessThanFlag    : b0
|  greaterThanFlag : b0
|___________________________



___________________________
|extend Module:
|  instr12     : b0
|  instr20     : b0
|  immsrc      : b0
|  extImm      : 0x0
|___________________________



___________________________
|extend Module:
|  instr12     : b0
|  instr20     : b0
|  immsrc      : b0
|  extImm      : 0x0
|___________________________



___________________________
|datapath Module:
|  inst            : 0x73
|  memToReg        : b0
|  memImm          : b0
|  memAddress      : 0x0
|  memReadData     : 0x0
|  memWriteData    : 0x0
|  aluOut          : 0x0
|  pcNext          : 0x84
|  branchExtImm    : 0x0
|  extImm          : 0x0
|  regReadData2    : 0x0
|  regWriteData    : 0x0
|  regSrc          : 0x0
|  pcBranch        : 0x84
|  pcRegBranch     : 0x0
|  pcPlus4         : 0x84
|  branchSrc       : b0
|___________________________



___________________________
|decoder Module:
|  branchSrc          : b0
|  opcode             : b1110011
|  funct3             : b0
|  regSrc             : b0
|  immSrc             : b0
|  aluSrc             : b0
|  pcSrc              : b0
|  regWriteEnable     : b0
|  aluControl         : b0
|  memToReg           : b0
|  memWriteEnable     : b0
|  zeroFlag           : b1
|  lessThanFlag       : b0
|  greaterThanFlag    : b0
|___________________________
___________________________
|riscv Module:
|  instr          : 0x73
|  memWriteEnable : b0
|  memWriteData   : b0
|  memAddress     : b0
|  memReadData    : 0x0
|___________________________



Memory___________________________
| mem(0) = 0
| mem(1) = 0
| mem(2) = 4
| mem(3) = 0
| mem(4) = 0
| mem(5) = 0
| mem(6) = 0
| mem(7) = 0
| mem(8) = 2
| mem(9) = 0
| mem(10) = 0
| mem(11) = 0
| mem(12) = 0
| mem(13) = 0
| mem(14) = 0
| mem(15) = 0
| mem(16) = 0
| mem(17) = 0
| mem(18) = 0
| mem(19) = 0
| mem(20) = 0
| mem(21) = 0
| mem(22) = 0
| mem(23) = 0
| mem(24) = 0
| mem(25) = 0
| mem(26) = 0
| mem(27) = 0
| mem(28) = 0
| mem(29) = 0
| mem(30) = 0
| mem(31) = 0
|________________________________



___________________________
|dmem Module:
|  memAddress      : 0x0
|  memWriteData    : 0x0
|  memWriteEnable  : b0
|  memReadData     : 0x0
|___________________________



___________________________
|top Module:
|  instr pulled       : 0x73
|  pc pulled          : b100000
|  memWriteEnable     : b0
|  memWriteData       : 0x0
|  memAddress         : 0x0
|  memReadData        : 0x0
|___________________________
[[35minfo[0m] [1.315] Program completed in 33 cycles. Exiting.
test top Success: 0 tests passed in 38 cycles in 1.400305 seconds 27.14 Hz
[[35minfo[0m] [1.318] RAN 33 CYCLES PASSED
[[35minfo[0m] [0.000] Elaborating design...
[[35minfo[0m] [0.189] Done elaborating.
Total FIRRTL Compile Time: 10378.2 ms
[0m[[0m[32msuccess[0m] [0m[0mTotal time: 78 s, completed Jun 8, 2020, 12:42:56 AM[0m
