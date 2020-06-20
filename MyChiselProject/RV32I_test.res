[0m[[0m[0minfo[0m] [0m[0mLoading settings from plugins.sbt ...[0m
[0m[[0m[0minfo[0m] [0m[0mLoading project definition from /home/rjridle/risc-v-chisel/MyChiselProject/project[0m
[0m[[0m[0minfo[0m] [0m[0mLoading settings from build.sbt ...[0m
[0m[[0m[0minfo[0m] [0m[0mSet current project to RISCV_Single_Cycle (in build file:/home/rjridle/risc-v-chisel/MyChiselProject/)[0m
[0m[[0m[0minfo[0m] [0m[0mCompiling 1 Scala source to /home/rjridle/risc-v-chisel/MyChiselProject/target/scala-2.11/classes ...[0m
[0m[[0m[33mwarn[0m] [0m[0mthere were 515 feature warnings; re-run with -feature for details[0m
[0m[[0m[33mwarn[0m] [0m[0mone warning found[0m
[0m[[0m[0minfo[0m] [0m[0mDone compiling.[0m
[0m[[0m[33mwarn[0m] [0m[0mMultiple main classes detected.  Run 'show discoveredMainClasses' to see the list[0m
[0m[[0m[0minfo[0m] [0m[0mPackaging /home/rjridle/risc-v-chisel/MyChiselProject/target/scala-2.11/riscv_single_cycle_2.11-3.1.1.jar ...[0m
[0m[[0m[0minfo[0m] [0m[0mDone packaging.[0m
[0m[[0m[0minfo[0m] [0m[0mRunning riscvSingle.top [0m
[[35minfo[0m] [0.053] Elaborating design...
[[35minfo[0m] [3.898] Done elaborating.
Total FIRRTL Compile Time: 6411.9 ms
Total FIRRTL Compile Time: 1331.4 ms
file loaded in 2.0208136 seconds, 1347 symbols, 889 statements
[[35minfo[0m] [0.003] SEED 1592674667990
[[35minfo[0m] [0.003] **********STARTING riscvSingleTest*******
[[35minfo[0m] [0.008] CYCLE: 1
[[35minfo[0m] [0.008] STARTING NEXT CYCLE: 1
[[35minfo[0m] [0.011] valid = 1



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
|fpuRegfile Module:
|  fpuRegWriteEnable  : b0
|  fpuRegReadAddress1 : b0
|  fpuRegReadAddress2 : b100
|  fpuRegWriteAddress : b1
|  fpuRegWriteData    : 0x3dcccccd
|  fpuRegReadData1    : 0x3dcccccd
|  fpuRegReadData2    : 0x0
|___________________________



___________________________
| fpu_rf(0) = 3dcccccd
| fpu_rf(1) = 0
| fpu_rf(2) = 0
| fpu_rf(3) = 0
| fpu_rf(4) = 0
| fpu_rf(5) = 0
| fpu_rf(6) = 0
| fpu_rf(7) = 0
| fpu_rf(8) = 0
| fpu_rf(9) = 0
| fpu_rf(10) = 0
| fpu_rf(11) = 0
| fpu_rf(12) = 0
| fpu_rf(13) = 0
| fpu_rf(14) = 0
| fpu_rf(15) = 0
| fpu_rf(16) = 0
| fpu_rf(17) = 0
| fpu_rf(18) = 0
| fpu_rf(19) = 0
| fpu_rf(20) = 0
| fpu_rf(21) = 0
| fpu_rf(22) = 0
| fpu_rf(23) = 0
| fpu_rf(24) = 0
| fpu_rf(25) = 0
| fpu_rf(26) = 0
| fpu_rf(27) = 0
| fpu_rf(28) = 0
| fpu_rf(29) = 0
| fpu_rf(30) = 0
| fpu_rf(31) = 0
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
|fpadd Module:
|  a          : 0x3dcccccd
|  b          : 0x0
|  mant_a     : b110011001100110011001101
|  mant_b     : b100000000000000000000000
|  exp_a      : b1111011
|  exp_b      : b0
|  aminusb    : b0
|  bminusa    : b1111011
|  alessb     : b0
|  exp_pre    : b1111011
|  shamt      : b1111011
|  shiftedval : b0
|  ovf        : b1
|  shmant     : 0x0
|  addval     : 0xcccccd
|  addresult  : 0xcccccd
|  result     : 0x666666800000
|  exponent   : b1111011
|  fract      : b10011001100110011001101
|  s          : 0x3dcccccd
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
|  fpuControl         : b0
|  fpuRegWriteEnable  : b0
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
[[35minfo[0m] [0.059] STARTING NEXT CYCLE: 2
[[35minfo[0m] [0.060] valid = 1



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
|fpuRegfile Module:
|  fpuRegWriteEnable  : b0
|  fpuRegReadAddress1 : b0
|  fpuRegReadAddress2 : b10
|  fpuRegWriteAddress : b10
|  fpuRegWriteData    : 0x3dcccccd
|  fpuRegReadData1    : 0x3dcccccd
|  fpuRegReadData2    : 0x0
|___________________________



___________________________
| fpu_rf(0) = 3dcccccd
| fpu_rf(1) = 0
| fpu_rf(2) = 0
| fpu_rf(3) = 0
| fpu_rf(4) = 0
| fpu_rf(5) = 0
| fpu_rf(6) = 0
| fpu_rf(7) = 0
| fpu_rf(8) = 0
| fpu_rf(9) = 0
| fpu_rf(10) = 0
| fpu_rf(11) = 0
| fpu_rf(12) = 0
| fpu_rf(13) = 0
| fpu_rf(14) = 0
| fpu_rf(15) = 0
| fpu_rf(16) = 0
| fpu_rf(17) = 0
| fpu_rf(18) = 0
| fpu_rf(19) = 0
| fpu_rf(20) = 0
| fpu_rf(21) = 0
| fpu_rf(22) = 0
| fpu_rf(23) = 0
| fpu_rf(24) = 0
| fpu_rf(25) = 0
| fpu_rf(26) = 0
| fpu_rf(27) = 0
| fpu_rf(28) = 0
| fpu_rf(29) = 0
| fpu_rf(30) = 0
| fpu_rf(31) = 0
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
|fpadd Module:
|  a          : 0x3dcccccd
|  b          : 0x0
|  mant_a     : b110011001100110011001101
|  mant_b     : b100000000000000000000000
|  exp_a      : b1111011
|  exp_b      : b0
|  aminusb    : b0
|  bminusa    : b1111011
|  alessb     : b0
|  exp_pre    : b1111011
|  shamt      : b1111011
|  shiftedval : b0
|  ovf        : b1
|  shmant     : 0x0
|  addval     : 0xcccccd
|  addresult  : 0xcccccd
|  result     : 0x666666800000
|  exponent   : b1111011
|  fract      : b10011001100110011001101
|  s          : 0x3dcccccd
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
|  fpuControl         : b0
|  fpuRegWriteEnable  : b0
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
[[35minfo[0m] [0.099] STARTING NEXT CYCLE: 3
[[35minfo[0m] [0.099] valid = 1



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
|fpuRegfile Module:
|  fpuRegWriteEnable  : b0
|  fpuRegReadAddress1 : b1
|  fpuRegReadAddress2 : b10
|  fpuRegWriteAddress : b100
|  fpuRegWriteData    : 0x800000
|  fpuRegReadData1    : 0x0
|  fpuRegReadData2    : 0x0
|___________________________



___________________________
| fpu_rf(0) = 3dcccccd
| fpu_rf(1) = 0
| fpu_rf(2) = 0
| fpu_rf(3) = 0
| fpu_rf(4) = 0
| fpu_rf(5) = 0
| fpu_rf(6) = 0
| fpu_rf(7) = 0
| fpu_rf(8) = 0
| fpu_rf(9) = 0
| fpu_rf(10) = 0
| fpu_rf(11) = 0
| fpu_rf(12) = 0
| fpu_rf(13) = 0
| fpu_rf(14) = 0
| fpu_rf(15) = 0
| fpu_rf(16) = 0
| fpu_rf(17) = 0
| fpu_rf(18) = 0
| fpu_rf(19) = 0
| fpu_rf(20) = 0
| fpu_rf(21) = 0
| fpu_rf(22) = 0
| fpu_rf(23) = 0
| fpu_rf(24) = 0
| fpu_rf(25) = 0
| fpu_rf(26) = 0
| fpu_rf(27) = 0
| fpu_rf(28) = 0
| fpu_rf(29) = 0
| fpu_rf(30) = 0
| fpu_rf(31) = 0
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
|fpadd Module:
|  a          : 0x0
|  b          : 0x0
|  mant_a     : b100000000000000000000000
|  mant_b     : b100000000000000000000000
|  exp_a      : b0
|  exp_b      : b0
|  aminusb    : b100000000000000000000000
|  bminusa    : b0
|  alessb     : b0
|  exp_pre    : b0
|  shamt      : b0
|  shiftedval : b100000000000000000000000
|  ovf        : b0
|  shmant     : 0x800000
|  addval     : 0x800000
|  addresult  : 0x1000000
|  result     : 0x400000000000
|  exponent   : b1
|  fract      : b0
|  s          : 0x800000
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
|  fpuControl         : b0
|  fpuRegWriteEnable  : b0
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
[[35minfo[0m] [0.163] STARTING NEXT CYCLE: 4
[[35minfo[0m] [0.163] valid = 1



___________________________
|regfile Module:
|  regWriteEnable  : b0
|  regReadAddress1 : b0
|  regReadAddress2 : b0
|  regWriteAddress : b1
|  regWriteData    : 0x0
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
|fpuRegfile Module:
|  fpuRegWriteEnable  : b1
|  fpuRegReadAddress1 : b0
|  fpuRegReadAddress2 : b0
|  fpuRegWriteAddress : b1
|  fpuRegWriteData    : 0x3e4ccccd
|  fpuRegReadData1    : 0x3dcccccd
|  fpuRegReadData2    : 0x3dcccccd
|___________________________



___________________________
| fpu_rf(0) = 3dcccccd
| fpu_rf(1) = 0
| fpu_rf(2) = 0
| fpu_rf(3) = 0
| fpu_rf(4) = 0
| fpu_rf(5) = 0
| fpu_rf(6) = 0
| fpu_rf(7) = 0
| fpu_rf(8) = 0
| fpu_rf(9) = 0
| fpu_rf(10) = 0
| fpu_rf(11) = 0
| fpu_rf(12) = 0
| fpu_rf(13) = 0
| fpu_rf(14) = 0
| fpu_rf(15) = 0
| fpu_rf(16) = 0
| fpu_rf(17) = 0
| fpu_rf(18) = 0
| fpu_rf(19) = 0
| fpu_rf(20) = 0
| fpu_rf(21) = 0
| fpu_rf(22) = 0
| fpu_rf(23) = 0
| fpu_rf(24) = 0
| fpu_rf(25) = 0
| fpu_rf(26) = 0
| fpu_rf(27) = 0
| fpu_rf(28) = 0
| fpu_rf(29) = 0
| fpu_rf(30) = 0
| fpu_rf(31) = 0
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
|fpadd Module:
|  a          : 0x3dcccccd
|  b          : 0x3dcccccd
|  mant_a     : b110011001100110011001101
|  mant_b     : b110011001100110011001101
|  exp_a      : b1111011
|  exp_b      : b1111011
|  aminusb    : b110011001100110011001101
|  bminusa    : b0
|  alessb     : b0
|  exp_pre    : b1111011
|  shamt      : b0
|  shiftedval : b110011001100110011001101
|  ovf        : b0
|  shmant     : 0xcccccd
|  addval     : 0xcccccd
|  addresult  : 0x199999a
|  result     : 0xa3d70a8f5c29
|  exponent   : b1111100
|  fract      : b10011001100110011001101
|  s          : 0x3e4ccccd
|___________________________



___________________________
|extend Module:
|  instr12     : b10000000000
|  instr20     : b0
|  immsrc      : b0
|  extImm      : 0x400
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
|  inst            : 0xd3
|  memToReg        : b0
|  memImm          : b1
|  memAddress      : 0x1
|  memReadData     : 0x2
|  memWriteData    : 0x0
|  aluOut          : 0x0
|  pcNext          : 0x10
|  branchExtImm    : 0x400
|  extImm          : 0x0
|  regReadData2    : 0x0
|  regWriteData    : 0x0
|  regSrc          : 0x0
|  pcBranch        : 0x410
|  pcRegBranch     : 0x0
|  pcPlus4         : 0x10
|  branchSrc       : b0
|___________________________



___________________________
|decoder Module:
|  branchSrc          : b0
|  opcode             : b1010011
|  funct3             : b0
|  regSrc             : b0
|  immSrc             : b0
|  aluSrc             : b1
|  pcSrc              : b0
|  regWriteEnable     : b0
|  aluControl         : b0
|  memToReg           : b0
|  memWriteEnable     : b0
|  zeroFlag           : b1
|  lessThanFlag       : b0
|  greaterThanFlag    : b0
|  fpuControl         : b0
|  fpuRegWriteEnable  : b1
|___________________________
___________________________
|riscv Module:
|  instr          : 0xd3
|  memWriteEnable : b0
|  memWriteData   : b0
|  memAddress     : b1
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
|  memAddress      : 0x1
|  memWriteData    : 0x0
|  memWriteEnable  : b0
|  memReadData     : 0x2
|___________________________



___________________________
|top Module:
|  instr pulled       : 0xd3
|  pc pulled          : b11
|  memWriteEnable     : b0
|  memWriteData       : 0x0
|  memAddress         : 0x1
|  memReadData        : 0x2
|___________________________
[[35minfo[0m] [0.195] STARTING NEXT CYCLE: 5
[[35minfo[0m] [0.195] valid = 1



___________________________
|regfile Module:
|  regWriteEnable  : b0
|  regReadAddress1 : b0
|  regReadAddress2 : b1
|  regWriteAddress : b10
|  regWriteData    : 0x0
|  regReadData1    : 0x0
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
|fpuRegfile Module:
|  fpuRegWriteEnable  : b1
|  fpuRegReadAddress1 : b0
|  fpuRegReadAddress2 : b1
|  fpuRegWriteAddress : b10
|  fpuRegWriteData    : 0x3e999999
|  fpuRegReadData1    : 0x3dcccccd
|  fpuRegReadData2    : 0x3e4ccccd
|___________________________



___________________________
| fpu_rf(0) = 3dcccccd
| fpu_rf(1) = 3e4ccccd
| fpu_rf(2) = 0
| fpu_rf(3) = 0
| fpu_rf(4) = 0
| fpu_rf(5) = 0
| fpu_rf(6) = 0
| fpu_rf(7) = 0
| fpu_rf(8) = 0
| fpu_rf(9) = 0
| fpu_rf(10) = 0
| fpu_rf(11) = 0
| fpu_rf(12) = 0
| fpu_rf(13) = 0
| fpu_rf(14) = 0
| fpu_rf(15) = 0
| fpu_rf(16) = 0
| fpu_rf(17) = 0
| fpu_rf(18) = 0
| fpu_rf(19) = 0
| fpu_rf(20) = 0
| fpu_rf(21) = 0
| fpu_rf(22) = 0
| fpu_rf(23) = 0
| fpu_rf(24) = 0
| fpu_rf(25) = 0
| fpu_rf(26) = 0
| fpu_rf(27) = 0
| fpu_rf(28) = 0
| fpu_rf(29) = 0
| fpu_rf(30) = 0
| fpu_rf(31) = 0
|___________________________



___________________________
|alu Module:
|  a               : 0x0
|  b               : 0x1
|  out             : 0x0
|  aluControl      : b0
|  zeroFlag        : b0
|  lessThanFlag    : b1
|  greaterThanFlag : b0
|___________________________



___________________________
|fpadd Module:
|  a          : 0x3dcccccd
|  b          : 0x3e4ccccd
|  mant_a     : b110011001100110011001101
|  mant_b     : b110011001100110011001101
|  exp_a      : b1111011
|  exp_b      : b1111100
|  aminusb    : b11001100110011001100110
|  bminusa    : b1
|  alessb     : b1
|  exp_pre    : b1111100
|  shamt      : b1
|  shiftedval : b11001100110011001100110
|  ovf        : b0
|  shmant     : 0x666666
|  addval     : 0xcccccd
|  addresult  : 0x1333333
|  result     : 0xa3d70a8f5c29
|  exponent   : b1111101
|  fract      : b110011001100110011001
|  s          : 0x3e999999
|___________________________



___________________________
|extend Module:
|  instr12     : b1
|  instr20     : b10000000000
|  immsrc      : b0
|  extImm      : 0x1
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
|  inst            : 0x100153
|  memToReg        : b0
|  memImm          : b10
|  memAddress      : 0x2
|  memReadData     : 0x0
|  memWriteData    : 0x4
|  aluOut          : 0x0
|  pcNext          : 0x14
|  branchExtImm    : 0x1
|  extImm          : 0x1
|  regReadData2    : 0x4
|  regWriteData    : 0x0
|  regSrc          : 0x0
|  pcBranch        : 0x15
|  pcRegBranch     : 0x0
|  pcPlus4         : 0x14
|  branchSrc       : b0
|___________________________



___________________________
|decoder Module:
|  branchSrc          : b0
|  opcode             : b1010011
|  funct3             : b0
|  regSrc             : b0
|  immSrc             : b0
|  aluSrc             : b1
|  pcSrc              : b0
|  regWriteEnable     : b0
|  aluControl         : b0
|  memToReg           : b0
|  memWriteEnable     : b0
|  zeroFlag           : b0
|  lessThanFlag       : b1
|  greaterThanFlag    : b0
|  fpuControl         : b0
|  fpuRegWriteEnable  : b1
|___________________________
___________________________
|riscv Module:
|  instr          : 0x100153
|  memWriteEnable : b0
|  memWriteData   : b100
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
|  memWriteEnable  : b0
|  memReadData     : 0x0
|___________________________



___________________________
|top Module:
|  instr pulled       : 0x100153
|  pc pulled          : b100
|  memWriteEnable     : b0
|  memWriteData       : 0x4
|  memAddress         : 0x2
|  memReadData        : 0x0
|___________________________
[[35minfo[0m] [0.234] STARTING NEXT CYCLE: 6
[[35minfo[0m] [0.234] valid = 1



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
|fpuRegfile Module:
|  fpuRegWriteEnable  : b0
|  fpuRegReadAddress1 : b10
|  fpuRegReadAddress2 : b1
|  fpuRegWriteAddress : b0
|  fpuRegWriteData    : 0x3effffff
|  fpuRegReadData1    : 0x3e999999
|  fpuRegReadData2    : 0x3e4ccccd
|___________________________



___________________________
| fpu_rf(0) = 3dcccccd
| fpu_rf(1) = 3e4ccccd
| fpu_rf(2) = 3e999999
| fpu_rf(3) = 0
| fpu_rf(4) = 0
| fpu_rf(5) = 0
| fpu_rf(6) = 0
| fpu_rf(7) = 0
| fpu_rf(8) = 0
| fpu_rf(9) = 0
| fpu_rf(10) = 0
| fpu_rf(11) = 0
| fpu_rf(12) = 0
| fpu_rf(13) = 0
| fpu_rf(14) = 0
| fpu_rf(15) = 0
| fpu_rf(16) = 0
| fpu_rf(17) = 0
| fpu_rf(18) = 0
| fpu_rf(19) = 0
| fpu_rf(20) = 0
| fpu_rf(21) = 0
| fpu_rf(22) = 0
| fpu_rf(23) = 0
| fpu_rf(24) = 0
| fpu_rf(25) = 0
| fpu_rf(26) = 0
| fpu_rf(27) = 0
| fpu_rf(28) = 0
| fpu_rf(29) = 0
| fpu_rf(30) = 0
| fpu_rf(31) = 0
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
|fpadd Module:
|  a          : 0x3e999999
|  b          : 0x3e4ccccd
|  mant_a     : b100110011001100110011001
|  mant_b     : b110011001100110011001101
|  exp_a      : b1111101
|  exp_b      : b1111100
|  aminusb    : b11001100110011001100110
|  bminusa    : b1
|  alessb     : b0
|  exp_pre    : b1111101
|  shamt      : b1
|  shiftedval : b11001100110011001100110
|  ovf        : b0
|  shmant     : 0x666666
|  addval     : 0x999999
|  addresult  : 0xffffff
|  result     : 0x7ae14751eb85
|  exponent   : b1111101
|  fract      : b11111111111111111111111
|  s          : 0x3effffff
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
|  memReadData     : 0x0
|  memWriteData    : 0x4
|  aluOut          : 0x0
|  pcNext          : 0x18
|  branchExtImm    : 0x0
|  extImm          : 0x1
|  regReadData2    : 0x4
|  regWriteData    : 0x0
|  regSrc          : 0x0
|  pcBranch        : 0x18
|  pcRegBranch     : 0x0
|  pcPlus4         : 0x18
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
|  fpuControl         : b0
|  fpuRegWriteEnable  : b0
|___________________________
___________________________
|riscv Module:
|  instr          : 0x112023
|  memWriteEnable : b1
|  memWriteData   : b100
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
|  memReadData     : 0x0
|___________________________



___________________________
|top Module:
|  instr pulled       : 0x112023
|  pc pulled          : b101
|  memWriteEnable     : b1
|  memWriteData       : 0x4
|  memAddress         : 0x2
|  memReadData        : 0x0
|___________________________
[[35minfo[0m] [0.259] STARTING NEXT CYCLE: 7
[[35minfo[0m] [0.259] valid = 1



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
|fpuRegfile Module:
|  fpuRegWriteEnable  : b0
|  fpuRegReadAddress1 : b10
|  fpuRegReadAddress2 : b1
|  fpuRegWriteAddress : b0
|  fpuRegWriteData    : 0x3effffff
|  fpuRegReadData1    : 0x3e999999
|  fpuRegReadData2    : 0x3e4ccccd
|___________________________



___________________________
| fpu_rf(0) = 3dcccccd
| fpu_rf(1) = 3e4ccccd
| fpu_rf(2) = 3e999999
| fpu_rf(3) = 0
| fpu_rf(4) = 0
| fpu_rf(5) = 0
| fpu_rf(6) = 0
| fpu_rf(7) = 0
| fpu_rf(8) = 0
| fpu_rf(9) = 0
| fpu_rf(10) = 0
| fpu_rf(11) = 0
| fpu_rf(12) = 0
| fpu_rf(13) = 0
| fpu_rf(14) = 0
| fpu_rf(15) = 0
| fpu_rf(16) = 0
| fpu_rf(17) = 0
| fpu_rf(18) = 0
| fpu_rf(19) = 0
| fpu_rf(20) = 0
| fpu_rf(21) = 0
| fpu_rf(22) = 0
| fpu_rf(23) = 0
| fpu_rf(24) = 0
| fpu_rf(25) = 0
| fpu_rf(26) = 0
| fpu_rf(27) = 0
| fpu_rf(28) = 0
| fpu_rf(29) = 0
| fpu_rf(30) = 0
| fpu_rf(31) = 0
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
|fpadd Module:
|  a          : 0x3e999999
|  b          : 0x3e4ccccd
|  mant_a     : b100110011001100110011001
|  mant_b     : b110011001100110011001101
|  exp_a      : b1111101
|  exp_b      : b1111100
|  aminusb    : b11001100110011001100110
|  bminusa    : b1
|  alessb     : b0
|  exp_pre    : b1111101
|  shamt      : b1
|  shiftedval : b11001100110011001100110
|  ovf        : b0
|  shmant     : 0x666666
|  addval     : 0x999999
|  addresult  : 0xffffff
|  result     : 0x7ae14751eb85
|  exponent   : b1111101
|  fract      : b11111111111111111111111
|  s          : 0x3effffff
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
|  pcNext          : 0x1c
|  branchExtImm    : 0x0
|  extImm          : 0x1
|  regReadData2    : 0x4
|  regWriteData    : 0x0
|  regSrc          : 0x0
|  pcBranch        : 0x1c
|  pcRegBranch     : 0x0
|  pcPlus4         : 0x1c
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
|  fpuControl         : b0
|  fpuRegWriteEnable  : b0
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
|  pc pulled          : b110
|  memWriteEnable     : b1
|  memWriteData       : 0x4
|  memAddress         : 0x2
|  memReadData        : 0x4
|___________________________
[[35minfo[0m] [0.286] STARTING NEXT CYCLE: 8
[[35minfo[0m] [0.287] valid = 1



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
|fpuRegfile Module:
|  fpuRegWriteEnable  : b0
|  fpuRegReadAddress1 : b0
|  fpuRegReadAddress2 : b11
|  fpuRegWriteAddress : b11
|  fpuRegWriteData    : 0x3dcccccd
|  fpuRegReadData1    : 0x3dcccccd
|  fpuRegReadData2    : 0x0
|___________________________



___________________________
| fpu_rf(0) = 3dcccccd
| fpu_rf(1) = 3e4ccccd
| fpu_rf(2) = 3e999999
| fpu_rf(3) = 0
| fpu_rf(4) = 0
| fpu_rf(5) = 0
| fpu_rf(6) = 0
| fpu_rf(7) = 0
| fpu_rf(8) = 0
| fpu_rf(9) = 0
| fpu_rf(10) = 0
| fpu_rf(11) = 0
| fpu_rf(12) = 0
| fpu_rf(13) = 0
| fpu_rf(14) = 0
| fpu_rf(15) = 0
| fpu_rf(16) = 0
| fpu_rf(17) = 0
| fpu_rf(18) = 0
| fpu_rf(19) = 0
| fpu_rf(20) = 0
| fpu_rf(21) = 0
| fpu_rf(22) = 0
| fpu_rf(23) = 0
| fpu_rf(24) = 0
| fpu_rf(25) = 0
| fpu_rf(26) = 0
| fpu_rf(27) = 0
| fpu_rf(28) = 0
| fpu_rf(29) = 0
| fpu_rf(30) = 0
| fpu_rf(31) = 0
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
|fpadd Module:
|  a          : 0x3dcccccd
|  b          : 0x0
|  mant_a     : b110011001100110011001101
|  mant_b     : b100000000000000000000000
|  exp_a      : b1111011
|  exp_b      : b0
|  aminusb    : b0
|  bminusa    : b1111011
|  alessb     : b0
|  exp_pre    : b1111011
|  shamt      : b1111011
|  shiftedval : b0
|  ovf        : b1
|  shmant     : 0x0
|  addval     : 0xcccccd
|  addresult  : 0xcccccd
|  result     : 0x666666800000
|  exponent   : b1111011
|  fract      : b10011001100110011001101
|  s          : 0x3dcccccd
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
|  pcNext          : 0x20
|  branchExtImm    : 0x401
|  extImm          : 0x3
|  regReadData2    : 0x0
|  regWriteData    : 0x3
|  regSrc          : 0x0
|  pcBranch        : 0x421
|  pcRegBranch     : 0x2
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
|  fpuControl         : b0
|  fpuRegWriteEnable  : b0
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
|  pc pulled          : b111
|  memWriteEnable     : b0
|  memWriteData       : 0x0
|  memAddress         : 0x3
|  memReadData        : 0x4
|___________________________
[[35minfo[0m] [0.318] STARTING NEXT CYCLE: 9
[[35minfo[0m] [0.321] valid = 1



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
|fpuRegfile Module:
|  fpuRegWriteEnable  : b0
|  fpuRegReadAddress1 : b1
|  fpuRegReadAddress2 : b10
|  fpuRegWriteAddress : b100
|  fpuRegWriteData    : 0x3effffff
|  fpuRegReadData1    : 0x3e4ccccd
|  fpuRegReadData2    : 0x3e999999
|___________________________



___________________________
| fpu_rf(0) = 3dcccccd
| fpu_rf(1) = 3e4ccccd
| fpu_rf(2) = 3e999999
| fpu_rf(3) = 0
| fpu_rf(4) = 0
| fpu_rf(5) = 0
| fpu_rf(6) = 0
| fpu_rf(7) = 0
| fpu_rf(8) = 0
| fpu_rf(9) = 0
| fpu_rf(10) = 0
| fpu_rf(11) = 0
| fpu_rf(12) = 0
| fpu_rf(13) = 0
| fpu_rf(14) = 0
| fpu_rf(15) = 0
| fpu_rf(16) = 0
| fpu_rf(17) = 0
| fpu_rf(18) = 0
| fpu_rf(19) = 0
| fpu_rf(20) = 0
| fpu_rf(21) = 0
| fpu_rf(22) = 0
| fpu_rf(23) = 0
| fpu_rf(24) = 0
| fpu_rf(25) = 0
| fpu_rf(26) = 0
| fpu_rf(27) = 0
| fpu_rf(28) = 0
| fpu_rf(29) = 0
| fpu_rf(30) = 0
| fpu_rf(31) = 0
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
|fpadd Module:
|  a          : 0x3e4ccccd
|  b          : 0x3e999999
|  mant_a     : b110011001100110011001101
|  mant_b     : b100110011001100110011001
|  exp_a      : b1111100
|  exp_b      : b1111101
|  aminusb    : b11001100110011001100110
|  bminusa    : b1
|  alessb     : b1
|  exp_pre    : b1111101
|  shamt      : b1
|  shiftedval : b11001100110011001100110
|  ovf        : b0
|  shmant     : 0x666666
|  addval     : 0x999999
|  addresult  : 0xffffff
|  result     : 0x7ae14751eb85
|  exponent   : b1111101
|  fract      : b11111111111111111111111
|  s          : 0x3effffff
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
|  pcNext          : 0x24
|  branchExtImm    : 0x2
|  extImm          : 0x2
|  regReadData2    : 0x2
|  regWriteData    : 0x6
|  regSrc          : 0x0
|  pcBranch        : 0x26
|  pcRegBranch     : 0x6
|  pcPlus4         : 0x24
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
|  fpuControl         : b0
|  fpuRegWriteEnable  : b0
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
|  pc pulled          : b1000
|  memWriteEnable     : b0
|  memWriteData       : 0x2
|  memAddress         : 0x8
|  memReadData        : 0x0
|___________________________
[[35minfo[0m] [0.349] STARTING NEXT CYCLE: 10
[[35minfo[0m] [0.349] valid = 1



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
|fpuRegfile Module:
|  fpuRegWriteEnable  : b0
|  fpuRegReadAddress1 : b0
|  fpuRegReadAddress2 : b101
|  fpuRegWriteAddress : b101
|  fpuRegWriteData    : 0x3dcccccd
|  fpuRegReadData1    : 0x3dcccccd
|  fpuRegReadData2    : 0x0
|___________________________



___________________________
| fpu_rf(0) = 3dcccccd
| fpu_rf(1) = 3e4ccccd
| fpu_rf(2) = 3e999999
| fpu_rf(3) = 0
| fpu_rf(4) = 0
| fpu_rf(5) = 0
| fpu_rf(6) = 0
| fpu_rf(7) = 0
| fpu_rf(8) = 0
| fpu_rf(9) = 0
| fpu_rf(10) = 0
| fpu_rf(11) = 0
| fpu_rf(12) = 0
| fpu_rf(13) = 0
| fpu_rf(14) = 0
| fpu_rf(15) = 0
| fpu_rf(16) = 0
| fpu_rf(17) = 0
| fpu_rf(18) = 0
| fpu_rf(19) = 0
| fpu_rf(20) = 0
| fpu_rf(21) = 0
| fpu_rf(22) = 0
| fpu_rf(23) = 0
| fpu_rf(24) = 0
| fpu_rf(25) = 0
| fpu_rf(26) = 0
| fpu_rf(27) = 0
| fpu_rf(28) = 0
| fpu_rf(29) = 0
| fpu_rf(30) = 0
| fpu_rf(31) = 0
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
|fpadd Module:
|  a          : 0x3dcccccd
|  b          : 0x0
|  mant_a     : b110011001100110011001101
|  mant_b     : b100000000000000000000000
|  exp_a      : b1111011
|  exp_b      : b0
|  aminusb    : b0
|  bminusa    : b1111011
|  alessb     : b0
|  exp_pre    : b1111011
|  shamt      : b1111011
|  shiftedval : b0
|  ovf        : b1
|  shmant     : 0x0
|  addval     : 0xcccccd
|  addresult  : 0xcccccd
|  result     : 0x666666800000
|  exponent   : b1111011
|  fract      : b10011001100110011001101
|  s          : 0x3dcccccd
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
|  pcNext          : 0x28
|  branchExtImm    : 0x402
|  extImm          : 0x5
|  regReadData2    : 0x0
|  regWriteData    : 0x5
|  regSrc          : 0x0
|  pcBranch        : 0x42a
|  pcRegBranch     : 0x4
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
|  fpuControl         : b0
|  fpuRegWriteEnable  : b0
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
|  pc pulled          : b1001
|  memWriteEnable     : b0
|  memWriteData       : 0x0
|  memAddress         : 0x5
|  memReadData        : 0x2
|___________________________
[[35minfo[0m] [0.376] STARTING NEXT CYCLE: 11
[[35minfo[0m] [0.376] valid = 1



___________________________
|regfile Module:
|  regWriteEnable  : b0
|  regReadAddress1 : b1
|  regReadAddress2 : b10
|  regWriteAddress : b11
|  regWriteData    : 0x0
|  regReadData1    : 0x4
|  regReadData2    : 0x2
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
|fpuRegfile Module:
|  fpuRegWriteEnable  : b1
|  fpuRegReadAddress1 : b1
|  fpuRegReadAddress2 : b10
|  fpuRegWriteAddress : b11
|  fpuRegWriteData    : 0x3effffff
|  fpuRegReadData1    : 0x3e4ccccd
|  fpuRegReadData2    : 0x3e999999
|___________________________



___________________________
| fpu_rf(0) = 3dcccccd
| fpu_rf(1) = 3e4ccccd
| fpu_rf(2) = 3e999999
| fpu_rf(3) = 0
| fpu_rf(4) = 0
| fpu_rf(5) = 0
| fpu_rf(6) = 0
| fpu_rf(7) = 0
| fpu_rf(8) = 0
| fpu_rf(9) = 0
| fpu_rf(10) = 0
| fpu_rf(11) = 0
| fpu_rf(12) = 0
| fpu_rf(13) = 0
| fpu_rf(14) = 0
| fpu_rf(15) = 0
| fpu_rf(16) = 0
| fpu_rf(17) = 0
| fpu_rf(18) = 0
| fpu_rf(19) = 0
| fpu_rf(20) = 0
| fpu_rf(21) = 0
| fpu_rf(22) = 0
| fpu_rf(23) = 0
| fpu_rf(24) = 0
| fpu_rf(25) = 0
| fpu_rf(26) = 0
| fpu_rf(27) = 0
| fpu_rf(28) = 0
| fpu_rf(29) = 0
| fpu_rf(30) = 0
| fpu_rf(31) = 0
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
|fpadd Module:
|  a          : 0x3e4ccccd
|  b          : 0x3e999999
|  mant_a     : b110011001100110011001101
|  mant_b     : b100110011001100110011001
|  exp_a      : b1111100
|  exp_b      : b1111101
|  aminusb    : b11001100110011001100110
|  bminusa    : b1
|  alessb     : b1
|  exp_pre    : b1111101
|  shamt      : b1
|  shiftedval : b11001100110011001100110
|  ovf        : b0
|  shmant     : 0x666666
|  addval     : 0x999999
|  addresult  : 0xffffff
|  result     : 0x7ae14751eb85
|  exponent   : b1111101
|  fract      : b11111111111111111111111
|  s          : 0x3effffff
|___________________________



___________________________
|extend Module:
|  instr12     : b10000000001
|  instr20     : b1
|  immsrc      : b0
|  extImm      : 0x401
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
|  inst            : 0x2081d3
|  memToReg        : b0
|  memImm          : b11
|  memAddress      : 0x7
|  memReadData     : 0x0
|  memWriteData    : 0x2
|  aluOut          : 0x0
|  pcNext          : 0x2c
|  branchExtImm    : 0x401
|  extImm          : 0x2
|  regReadData2    : 0x2
|  regWriteData    : 0x0
|  regSrc          : 0x0
|  pcBranch        : 0x42d
|  pcRegBranch     : 0x0
|  pcPlus4         : 0x2c
|  branchSrc       : b0
|___________________________



___________________________
|decoder Module:
|  branchSrc          : b0
|  opcode             : b1010011
|  funct3             : b0
|  regSrc             : b0
|  immSrc             : b0
|  aluSrc             : b1
|  pcSrc              : b0
|  regWriteEnable     : b0
|  aluControl         : b0
|  memToReg           : b0
|  memWriteEnable     : b0
|  zeroFlag           : b0
|  lessThanFlag       : b0
|  greaterThanFlag    : b1
|  fpuControl         : b0
|  fpuRegWriteEnable  : b1
|___________________________
___________________________
|riscv Module:
|  instr          : 0x2081d3
|  memWriteEnable : b0
|  memWriteData   : b10
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
|  memWriteData    : 0x2
|  memWriteEnable  : b0
|  memReadData     : 0x0
|___________________________



___________________________
|top Module:
|  instr pulled       : 0x2081d3
|  pc pulled          : b1010
|  memWriteEnable     : b0
|  memWriteData       : 0x2
|  memAddress         : 0x7
|  memReadData        : 0x0
|___________________________
[[35minfo[0m] [0.403] STARTING NEXT CYCLE: 12
[[35minfo[0m] [0.403] valid = 1



___________________________
|regfile Module:
|  regWriteEnable  : b0
|  regReadAddress1 : b10
|  regReadAddress2 : b11
|  regWriteAddress : b100
|  regWriteData    : 0x2
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
|fpuRegfile Module:
|  fpuRegWriteEnable  : b1
|  fpuRegReadAddress1 : b10
|  fpuRegReadAddress2 : b11
|  fpuRegWriteAddress : b100
|  fpuRegWriteData    : 0x3f4ccccc
|  fpuRegReadData1    : 0x3e999999
|  fpuRegReadData2    : 0x3effffff
|___________________________



___________________________
| fpu_rf(0) = 3dcccccd
| fpu_rf(1) = 3e4ccccd
| fpu_rf(2) = 3e999999
| fpu_rf(3) = 3effffff
| fpu_rf(4) = 0
| fpu_rf(5) = 0
| fpu_rf(6) = 0
| fpu_rf(7) = 0
| fpu_rf(8) = 0
| fpu_rf(9) = 0
| fpu_rf(10) = 0
| fpu_rf(11) = 0
| fpu_rf(12) = 0
| fpu_rf(13) = 0
| fpu_rf(14) = 0
| fpu_rf(15) = 0
| fpu_rf(16) = 0
| fpu_rf(17) = 0
| fpu_rf(18) = 0
| fpu_rf(19) = 0
| fpu_rf(20) = 0
| fpu_rf(21) = 0
| fpu_rf(22) = 0
| fpu_rf(23) = 0
| fpu_rf(24) = 0
| fpu_rf(25) = 0
| fpu_rf(26) = 0
| fpu_rf(27) = 0
| fpu_rf(28) = 0
| fpu_rf(29) = 0
| fpu_rf(30) = 0
| fpu_rf(31) = 0
|___________________________



___________________________
|alu Module:
|  a               : 0x2
|  b               : 0x3
|  out             : 0x2
|  aluControl      : b0
|  zeroFlag        : b0
|  lessThanFlag    : b1
|  greaterThanFlag : b0
|___________________________



___________________________
|fpadd Module:
|  a          : 0x3e999999
|  b          : 0x3effffff
|  mant_a     : b100110011001100110011001
|  mant_b     : b111111111111111111111111
|  exp_a      : b1111101
|  exp_b      : b1111101
|  aminusb    : b111111111111111111111111
|  bminusa    : b0
|  alessb     : b0
|  exp_pre    : b1111101
|  shamt      : b0
|  shiftedval : b111111111111111111111111
|  ovf        : b0
|  shmant     : 0xffffff
|  addval     : 0x999999
|  addresult  : 0x1999998
|  result     : 0x999998666667
|  exponent   : b1111110
|  fract      : b10011001100110011001100
|  s          : 0x3f4ccccc
|___________________________



___________________________
|extend Module:
|  instr12     : b10
|  instr20     : b10000000001
|  immsrc      : b0
|  extImm      : 0x2
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
|  inst            : 0x310253
|  memToReg        : b0
|  memImm          : b100
|  memAddress      : 0x6
|  memReadData     : 0x0
|  memWriteData    : 0x3
|  aluOut          : 0x2
|  pcNext          : 0x30
|  branchExtImm    : 0x2
|  extImm          : 0x3
|  regReadData2    : 0x3
|  regWriteData    : 0x2
|  regSrc          : 0x0
|  pcBranch        : 0x32
|  pcRegBranch     : 0x2
|  pcPlus4         : 0x30
|  branchSrc       : b0
|___________________________



___________________________
|decoder Module:
|  branchSrc          : b0
|  opcode             : b1010011
|  funct3             : b0
|  regSrc             : b0
|  immSrc             : b0
|  aluSrc             : b1
|  pcSrc              : b0
|  regWriteEnable     : b0
|  aluControl         : b0
|  memToReg           : b0
|  memWriteEnable     : b0
|  zeroFlag           : b0
|  lessThanFlag       : b1
|  greaterThanFlag    : b0
|  fpuControl         : b0
|  fpuRegWriteEnable  : b1
|___________________________
___________________________
|riscv Module:
|  instr          : 0x310253
|  memWriteEnable : b0
|  memWriteData   : b11
|  memAddress     : b110
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
|  memAddress      : 0x6
|  memWriteData    : 0x3
|  memWriteEnable  : b0
|  memReadData     : 0x0
|___________________________



___________________________
|top Module:
|  instr pulled       : 0x310253
|  pc pulled          : b1011
|  memWriteEnable     : b0
|  memWriteData       : 0x3
|  memAddress         : 0x6
|  memReadData        : 0x0
|___________________________
[[35minfo[0m] [0.426] STARTING NEXT CYCLE: 13
[[35minfo[0m] [0.426] valid = 1



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
|fpuRegfile Module:
|  fpuRegWriteEnable  : b0
|  fpuRegReadAddress1 : b100
|  fpuRegReadAddress2 : b1
|  fpuRegWriteAddress : b110
|  fpuRegWriteData    : 0x3f7fffff
|  fpuRegReadData1    : 0x3f4ccccc
|  fpuRegReadData2    : 0x3e4ccccd
|___________________________



___________________________
| fpu_rf(0) = 3dcccccd
| fpu_rf(1) = 3e4ccccd
| fpu_rf(2) = 3e999999
| fpu_rf(3) = 3effffff
| fpu_rf(4) = 3f4ccccc
| fpu_rf(5) = 0
| fpu_rf(6) = 0
| fpu_rf(7) = 0
| fpu_rf(8) = 0
| fpu_rf(9) = 0
| fpu_rf(10) = 0
| fpu_rf(11) = 0
| fpu_rf(12) = 0
| fpu_rf(13) = 0
| fpu_rf(14) = 0
| fpu_rf(15) = 0
| fpu_rf(16) = 0
| fpu_rf(17) = 0
| fpu_rf(18) = 0
| fpu_rf(19) = 0
| fpu_rf(20) = 0
| fpu_rf(21) = 0
| fpu_rf(22) = 0
| fpu_rf(23) = 0
| fpu_rf(24) = 0
| fpu_rf(25) = 0
| fpu_rf(26) = 0
| fpu_rf(27) = 0
| fpu_rf(28) = 0
| fpu_rf(29) = 0
| fpu_rf(30) = 0
| fpu_rf(31) = 0
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
|fpadd Module:
|  a          : 0x3f4ccccc
|  b          : 0x3e4ccccd
|  mant_a     : b110011001100110011001100
|  mant_b     : b110011001100110011001101
|  exp_a      : b1111110
|  exp_b      : b1111100
|  aminusb    : b1100110011001100110011
|  bminusa    : b10
|  alessb     : b0
|  exp_pre    : b1111110
|  shamt      : b10
|  shiftedval : b1100110011001100110011
|  ovf        : b0
|  shmant     : 0x333333
|  addval     : 0xcccccc
|  addresult  : 0xffffff
|  result     : 0xa3d709c28f5c
|  exponent   : b1111110
|  fract      : b11111111111111111111111
|  s          : 0x3f7fffff
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
|  pcNext          : 0x34
|  branchExtImm    : 0x3
|  extImm          : 0x1
|  regReadData2    : 0x4
|  regWriteData    : 0x4
|  regSrc          : 0x0
|  pcBranch        : 0x37
|  pcRegBranch     : 0x4
|  pcPlus4         : 0x34
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
|  fpuControl         : b0
|  fpuRegWriteEnable  : b0
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
|  pc pulled          : b1100
|  memWriteEnable     : b0
|  memWriteData       : 0x4
|  memAddress         : 0xc
|  memReadData        : 0x0
|___________________________
[[35minfo[0m] [0.450] STARTING NEXT CYCLE: 14
[[35minfo[0m] [0.450] valid = 1



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
|fpuRegfile Module:
|  fpuRegWriteEnable  : b0
|  fpuRegReadAddress1 : b0
|  fpuRegReadAddress2 : b111
|  fpuRegWriteAddress : b111
|  fpuRegWriteData    : 0x3dcccccd
|  fpuRegReadData1    : 0x3dcccccd
|  fpuRegReadData2    : 0x0
|___________________________



___________________________
| fpu_rf(0) = 3dcccccd
| fpu_rf(1) = 3e4ccccd
| fpu_rf(2) = 3e999999
| fpu_rf(3) = 3effffff
| fpu_rf(4) = 3f4ccccc
| fpu_rf(5) = 0
| fpu_rf(6) = 0
| fpu_rf(7) = 0
| fpu_rf(8) = 0
| fpu_rf(9) = 0
| fpu_rf(10) = 0
| fpu_rf(11) = 0
| fpu_rf(12) = 0
| fpu_rf(13) = 0
| fpu_rf(14) = 0
| fpu_rf(15) = 0
| fpu_rf(16) = 0
| fpu_rf(17) = 0
| fpu_rf(18) = 0
| fpu_rf(19) = 0
| fpu_rf(20) = 0
| fpu_rf(21) = 0
| fpu_rf(22) = 0
| fpu_rf(23) = 0
| fpu_rf(24) = 0
| fpu_rf(25) = 0
| fpu_rf(26) = 0
| fpu_rf(27) = 0
| fpu_rf(28) = 0
| fpu_rf(29) = 0
| fpu_rf(30) = 0
| fpu_rf(31) = 0
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
|fpadd Module:
|  a          : 0x3dcccccd
|  b          : 0x0
|  mant_a     : b110011001100110011001101
|  mant_b     : b100000000000000000000000
|  exp_a      : b1111011
|  exp_b      : b0
|  aminusb    : b0
|  bminusa    : b1111011
|  alessb     : b0
|  exp_pre    : b1111011
|  shamt      : b1111011
|  shiftedval : b0
|  ovf        : b1
|  shmant     : 0x0
|  addval     : 0xcccccd
|  addresult  : 0xcccccd
|  result     : 0x666666800000
|  exponent   : b1111011
|  fract      : b10011001100110011001101
|  s          : 0x3dcccccd
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
|  pcNext          : 0x38
|  branchExtImm    : 0x403
|  extImm          : 0x7
|  regReadData2    : 0x0
|  regWriteData    : 0x7
|  regSrc          : 0x0
|  pcBranch        : 0x43b
|  pcRegBranch     : 0x6
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
|  fpuControl         : b0
|  fpuRegWriteEnable  : b0
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
|  pc pulled          : b1101
|  memWriteEnable     : b0
|  memWriteData       : 0x0
|  memAddress         : 0x7
|  memReadData        : 0x0
|___________________________
[[35minfo[0m] [0.471] STARTING NEXT CYCLE: 15
[[35minfo[0m] [0.472] valid = 1



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
|fpuRegfile Module:
|  fpuRegWriteEnable  : b0
|  fpuRegReadAddress1 : b111
|  fpuRegReadAddress2 : b100
|  fpuRegWriteAddress : b1000
|  fpuRegWriteData    : 0x3f4ccccc
|  fpuRegReadData1    : 0x0
|  fpuRegReadData2    : 0x3f4ccccc
|___________________________



___________________________
| fpu_rf(0) = 3dcccccd
| fpu_rf(1) = 3e4ccccd
| fpu_rf(2) = 3e999999
| fpu_rf(3) = 3effffff
| fpu_rf(4) = 3f4ccccc
| fpu_rf(5) = 0
| fpu_rf(6) = 0
| fpu_rf(7) = 0
| fpu_rf(8) = 0
| fpu_rf(9) = 0
| fpu_rf(10) = 0
| fpu_rf(11) = 0
| fpu_rf(12) = 0
| fpu_rf(13) = 0
| fpu_rf(14) = 0
| fpu_rf(15) = 0
| fpu_rf(16) = 0
| fpu_rf(17) = 0
| fpu_rf(18) = 0
| fpu_rf(19) = 0
| fpu_rf(20) = 0
| fpu_rf(21) = 0
| fpu_rf(22) = 0
| fpu_rf(23) = 0
| fpu_rf(24) = 0
| fpu_rf(25) = 0
| fpu_rf(26) = 0
| fpu_rf(27) = 0
| fpu_rf(28) = 0
| fpu_rf(29) = 0
| fpu_rf(30) = 0
| fpu_rf(31) = 0
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
|fpadd Module:
|  a          : 0x0
|  b          : 0x3f4ccccc
|  mant_a     : b100000000000000000000000
|  mant_b     : b110011001100110011001100
|  exp_a      : b0
|  exp_b      : b1111110
|  aminusb    : b0
|  bminusa    : b1111110
|  alessb     : b1
|  exp_pre    : b1111110
|  shamt      : b1111110
|  shiftedval : b0
|  ovf        : b1
|  shmant     : 0x0
|  addval     : 0xcccccc
|  addresult  : 0xcccccc
|  result     : 0x666666000000
|  exponent   : b1111110
|  fract      : b10011001100110011001100
|  s          : 0x3f4ccccc
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
|  pcNext          : 0x3c
|  branchExtImm    : 0x4
|  extImm          : 0x4
|  regReadData2    : 0x6
|  regWriteData    : 0x1
|  regSrc          : 0x0
|  pcBranch        : 0x40
|  pcRegBranch     : 0x0
|  pcPlus4         : 0x3c
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
|  fpuControl         : b0
|  fpuRegWriteEnable  : b0
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
|  pc pulled          : b1110
|  memWriteEnable     : b0
|  memWriteData       : 0x6
|  memAddress         : 0xf
|  memReadData        : 0x0
|___________________________
[[35minfo[0m] [0.493] STARTING NEXT CYCLE: 16
[[35minfo[0m] [0.493] valid = 1



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
|fpuRegfile Module:
|  fpuRegWriteEnable  : b0
|  fpuRegReadAddress1 : b0
|  fpuRegReadAddress2 : b1000
|  fpuRegWriteAddress : b1001
|  fpuRegWriteData    : 0x3dcccccd
|  fpuRegReadData1    : 0x3dcccccd
|  fpuRegReadData2    : 0x0
|___________________________



___________________________
| fpu_rf(0) = 3dcccccd
| fpu_rf(1) = 3e4ccccd
| fpu_rf(2) = 3e999999
| fpu_rf(3) = 3effffff
| fpu_rf(4) = 3f4ccccc
| fpu_rf(5) = 0
| fpu_rf(6) = 0
| fpu_rf(7) = 0
| fpu_rf(8) = 0
| fpu_rf(9) = 0
| fpu_rf(10) = 0
| fpu_rf(11) = 0
| fpu_rf(12) = 0
| fpu_rf(13) = 0
| fpu_rf(14) = 0
| fpu_rf(15) = 0
| fpu_rf(16) = 0
| fpu_rf(17) = 0
| fpu_rf(18) = 0
| fpu_rf(19) = 0
| fpu_rf(20) = 0
| fpu_rf(21) = 0
| fpu_rf(22) = 0
| fpu_rf(23) = 0
| fpu_rf(24) = 0
| fpu_rf(25) = 0
| fpu_rf(26) = 0
| fpu_rf(27) = 0
| fpu_rf(28) = 0
| fpu_rf(29) = 0
| fpu_rf(30) = 0
| fpu_rf(31) = 0
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
|fpadd Module:
|  a          : 0x3dcccccd
|  b          : 0x0
|  mant_a     : b110011001100110011001101
|  mant_b     : b100000000000000000000000
|  exp_a      : b1111011
|  exp_b      : b0
|  aminusb    : b0
|  bminusa    : b1111011
|  alessb     : b0
|  exp_pre    : b1111011
|  shamt      : b1111011
|  shiftedval : b0
|  ovf        : b1
|  shmant     : 0x0
|  addval     : 0xcccccd
|  addresult  : 0xcccccd
|  result     : 0x666666800000
|  exponent   : b1111011
|  fract      : b10011001100110011001101
|  s          : 0x3dcccccd
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
|  pcNext          : 0x40
|  branchExtImm    : 0x404
|  extImm          : 0x8
|  regReadData2    : 0x1
|  regWriteData    : 0x8
|  regSrc          : 0x0
|  pcBranch        : 0x444
|  pcRegBranch     : 0x8
|  pcPlus4         : 0x40
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
|  fpuControl         : b0
|  fpuRegWriteEnable  : b0
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
|  pc pulled          : b1111
|  memWriteEnable     : b0
|  memWriteData       : 0x1
|  memAddress         : 0x9
|  memReadData        : 0x0
|___________________________
[[35minfo[0m] [0.519] STARTING NEXT CYCLE: 17
[[35minfo[0m] [0.519] valid = 1



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
|fpuRegfile Module:
|  fpuRegWriteEnable  : b0
|  fpuRegReadAddress1 : b1001
|  fpuRegReadAddress2 : b10
|  fpuRegWriteAddress : b1010
|  fpuRegWriteData    : 0x3e999999
|  fpuRegReadData1    : 0x0
|  fpuRegReadData2    : 0x3e999999
|___________________________



___________________________
| fpu_rf(0) = 3dcccccd
| fpu_rf(1) = 3e4ccccd
| fpu_rf(2) = 3e999999
| fpu_rf(3) = 3effffff
| fpu_rf(4) = 3f4ccccc
| fpu_rf(5) = 0
| fpu_rf(6) = 0
| fpu_rf(7) = 0
| fpu_rf(8) = 0
| fpu_rf(9) = 0
| fpu_rf(10) = 0
| fpu_rf(11) = 0
| fpu_rf(12) = 0
| fpu_rf(13) = 0
| fpu_rf(14) = 0
| fpu_rf(15) = 0
| fpu_rf(16) = 0
| fpu_rf(17) = 0
| fpu_rf(18) = 0
| fpu_rf(19) = 0
| fpu_rf(20) = 0
| fpu_rf(21) = 0
| fpu_rf(22) = 0
| fpu_rf(23) = 0
| fpu_rf(24) = 0
| fpu_rf(25) = 0
| fpu_rf(26) = 0
| fpu_rf(27) = 0
| fpu_rf(28) = 0
| fpu_rf(29) = 0
| fpu_rf(30) = 0
| fpu_rf(31) = 0
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
|fpadd Module:
|  a          : 0x0
|  b          : 0x3e999999
|  mant_a     : b100000000000000000000000
|  mant_b     : b100110011001100110011001
|  exp_a      : b0
|  exp_b      : b1111101
|  aminusb    : b0
|  bminusa    : b1111101
|  alessb     : b1
|  exp_pre    : b1111101
|  shamt      : b1111101
|  shiftedval : b0
|  ovf        : b1
|  shmant     : 0x0
|  addval     : 0x999999
|  addresult  : 0x999999
|  result     : 0x4ccccc800000
|  exponent   : b1111101
|  fract      : b110011001100110011001
|  s          : 0x3e999999
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
|  pcNext          : 0x44
|  branchExtImm    : 0x5
|  extImm          : 0x2
|  regReadData2    : 0x2
|  regWriteData    : 0xa
|  regSrc          : 0x0
|  pcBranch        : 0x49
|  pcRegBranch     : 0xa
|  pcPlus4         : 0x44
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
|  fpuControl         : b0
|  fpuRegWriteEnable  : b0
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
|  pc pulled          : b10000
|  memWriteEnable     : b0
|  memWriteData       : 0x2
|  memAddress         : 0x12
|  memReadData        : 0x0
|___________________________
[[35minfo[0m] [0.541] STARTING NEXT CYCLE: 18
[[35minfo[0m] [0.541] valid = 1



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
|fpuRegfile Module:
|  fpuRegWriteEnable  : b0
|  fpuRegReadAddress1 : b0
|  fpuRegReadAddress2 : b1011
|  fpuRegWriteAddress : b1011
|  fpuRegWriteData    : 0x3dcccccd
|  fpuRegReadData1    : 0x3dcccccd
|  fpuRegReadData2    : 0x0
|___________________________



___________________________
| fpu_rf(0) = 3dcccccd
| fpu_rf(1) = 3e4ccccd
| fpu_rf(2) = 3e999999
| fpu_rf(3) = 3effffff
| fpu_rf(4) = 3f4ccccc
| fpu_rf(5) = 0
| fpu_rf(6) = 0
| fpu_rf(7) = 0
| fpu_rf(8) = 0
| fpu_rf(9) = 0
| fpu_rf(10) = 0
| fpu_rf(11) = 0
| fpu_rf(12) = 0
| fpu_rf(13) = 0
| fpu_rf(14) = 0
| fpu_rf(15) = 0
| fpu_rf(16) = 0
| fpu_rf(17) = 0
| fpu_rf(18) = 0
| fpu_rf(19) = 0
| fpu_rf(20) = 0
| fpu_rf(21) = 0
| fpu_rf(22) = 0
| fpu_rf(23) = 0
| fpu_rf(24) = 0
| fpu_rf(25) = 0
| fpu_rf(26) = 0
| fpu_rf(27) = 0
| fpu_rf(28) = 0
| fpu_rf(29) = 0
| fpu_rf(30) = 0
| fpu_rf(31) = 0
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
|fpadd Module:
|  a          : 0x3dcccccd
|  b          : 0x0
|  mant_a     : b110011001100110011001101
|  mant_b     : b100000000000000000000000
|  exp_a      : b1111011
|  exp_b      : b0
|  aminusb    : b0
|  bminusa    : b1111011
|  alessb     : b0
|  exp_pre    : b1111011
|  shamt      : b1111011
|  shiftedval : b0
|  ovf        : b1
|  shmant     : 0x0
|  addval     : 0xcccccd
|  addresult  : 0xcccccd
|  result     : 0x666666800000
|  exponent   : b1111011
|  fract      : b10011001100110011001101
|  s          : 0x3dcccccd
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
|  pcNext          : 0x48
|  branchExtImm    : 0x405
|  extImm          : 0xb
|  regReadData2    : 0x0
|  regWriteData    : 0xb
|  regSrc          : 0x0
|  pcBranch        : 0x44d
|  pcRegBranch     : 0xa
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
|  fpuControl         : b0
|  fpuRegWriteEnable  : b0
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
|  pc pulled          : b10001
|  memWriteEnable     : b0
|  memWriteData       : 0x0
|  memAddress         : 0xb
|  memReadData        : 0x0
|___________________________
[[35minfo[0m] [0.573] STARTING NEXT CYCLE: 19
[[35minfo[0m] [0.573] valid = 1



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
|fpuRegfile Module:
|  fpuRegWriteEnable  : b0
|  fpuRegReadAddress1 : b111
|  fpuRegReadAddress2 : b11
|  fpuRegWriteAddress : b1100
|  fpuRegWriteData    : 0x3effffff
|  fpuRegReadData1    : 0x0
|  fpuRegReadData2    : 0x3effffff
|___________________________



___________________________
| fpu_rf(0) = 3dcccccd
| fpu_rf(1) = 3e4ccccd
| fpu_rf(2) = 3e999999
| fpu_rf(3) = 3effffff
| fpu_rf(4) = 3f4ccccc
| fpu_rf(5) = 0
| fpu_rf(6) = 0
| fpu_rf(7) = 0
| fpu_rf(8) = 0
| fpu_rf(9) = 0
| fpu_rf(10) = 0
| fpu_rf(11) = 0
| fpu_rf(12) = 0
| fpu_rf(13) = 0
| fpu_rf(14) = 0
| fpu_rf(15) = 0
| fpu_rf(16) = 0
| fpu_rf(17) = 0
| fpu_rf(18) = 0
| fpu_rf(19) = 0
| fpu_rf(20) = 0
| fpu_rf(21) = 0
| fpu_rf(22) = 0
| fpu_rf(23) = 0
| fpu_rf(24) = 0
| fpu_rf(25) = 0
| fpu_rf(26) = 0
| fpu_rf(27) = 0
| fpu_rf(28) = 0
| fpu_rf(29) = 0
| fpu_rf(30) = 0
| fpu_rf(31) = 0
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
|fpadd Module:
|  a          : 0x0
|  b          : 0x3effffff
|  mant_a     : b100000000000000000000000
|  mant_b     : b111111111111111111111111
|  exp_a      : b0
|  exp_b      : b1111101
|  aminusb    : b0
|  bminusa    : b1111101
|  alessb     : b1
|  exp_pre    : b1111101
|  shamt      : b1111101
|  shiftedval : b0
|  ovf        : b1
|  shmant     : 0x0
|  addval     : 0xffffff
|  addresult  : 0xffffff
|  result     : 0x7fffff800000
|  exponent   : b1111101
|  fract      : b11111111111111111111111
|  s          : 0x3effffff
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
|  pcNext          : 0x4c
|  branchExtImm    : 0x6
|  extImm          : 0x3
|  regReadData2    : 0x3
|  regWriteData    : 0x3
|  regSrc          : 0x0
|  pcBranch        : 0x52
|  pcRegBranch     : 0x2
|  pcPlus4         : 0x4c
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
|  fpuControl         : b0
|  fpuRegWriteEnable  : b0
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
|  pc pulled          : b10010
|  memWriteEnable     : b0
|  memWriteData       : 0x3
|  memAddress         : 0x13
|  memReadData        : 0x0
|___________________________
[[35minfo[0m] [0.597] STARTING NEXT CYCLE: 20
[[35minfo[0m] [0.597] valid = 1



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
|fpuRegfile Module:
|  fpuRegWriteEnable  : b0
|  fpuRegReadAddress1 : b1001
|  fpuRegReadAddress2 : b1111
|  fpuRegWriteAddress : b1101
|  fpuRegWriteData    : 0x800000
|  fpuRegReadData1    : 0x0
|  fpuRegReadData2    : 0x0
|___________________________



___________________________
| fpu_rf(0) = 3dcccccd
| fpu_rf(1) = 3e4ccccd
| fpu_rf(2) = 3e999999
| fpu_rf(3) = 3effffff
| fpu_rf(4) = 3f4ccccc
| fpu_rf(5) = 0
| fpu_rf(6) = 0
| fpu_rf(7) = 0
| fpu_rf(8) = 0
| fpu_rf(9) = 0
| fpu_rf(10) = 0
| fpu_rf(11) = 0
| fpu_rf(12) = 0
| fpu_rf(13) = 0
| fpu_rf(14) = 0
| fpu_rf(15) = 0
| fpu_rf(16) = 0
| fpu_rf(17) = 0
| fpu_rf(18) = 0
| fpu_rf(19) = 0
| fpu_rf(20) = 0
| fpu_rf(21) = 0
| fpu_rf(22) = 0
| fpu_rf(23) = 0
| fpu_rf(24) = 0
| fpu_rf(25) = 0
| fpu_rf(26) = 0
| fpu_rf(27) = 0
| fpu_rf(28) = 0
| fpu_rf(29) = 0
| fpu_rf(30) = 0
| fpu_rf(31) = 0
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
|fpadd Module:
|  a          : 0x0
|  b          : 0x0
|  mant_a     : b100000000000000000000000
|  mant_b     : b100000000000000000000000
|  exp_a      : b0
|  exp_b      : b0
|  aminusb    : b100000000000000000000000
|  bminusa    : b0
|  alessb     : b0
|  exp_pre    : b0
|  shamt      : b0
|  shiftedval : b100000000000000000000000
|  ovf        : b0
|  shmant     : 0x800000
|  addval     : 0x800000
|  addresult  : 0x1000000
|  result     : 0x400000000000
|  exponent   : b1
|  fract      : b0
|  s          : 0x800000
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
|  pcNext          : 0x50
|  branchExtImm    : 0x406
|  extImm          : 0xf
|  regReadData2    : 0x0
|  regWriteData    : 0x7
|  regSrc          : 0x0
|  pcBranch        : 0x456
|  pcRegBranch     : 0x6
|  pcPlus4         : 0x50
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
|  fpuControl         : b0
|  fpuRegWriteEnable  : b0
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
|  pc pulled          : b10011
|  memWriteEnable     : b0
|  memWriteData       : 0x0
|  memAddress         : 0x15
|  memReadData        : 0x0
|___________________________
[[35minfo[0m] [0.625] STARTING NEXT CYCLE: 21
[[35minfo[0m] [0.626] valid = 1



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
|fpuRegfile Module:
|  fpuRegWriteEnable  : b0
|  fpuRegReadAddress1 : b1001
|  fpuRegReadAddress2 : b111
|  fpuRegWriteAddress : b1110
|  fpuRegWriteData    : 0x800000
|  fpuRegReadData1    : 0x0
|  fpuRegReadData2    : 0x0
|___________________________



___________________________
| fpu_rf(0) = 3dcccccd
| fpu_rf(1) = 3e4ccccd
| fpu_rf(2) = 3e999999
| fpu_rf(3) = 3effffff
| fpu_rf(4) = 3f4ccccc
| fpu_rf(5) = 0
| fpu_rf(6) = 0
| fpu_rf(7) = 0
| fpu_rf(8) = 0
| fpu_rf(9) = 0
| fpu_rf(10) = 0
| fpu_rf(11) = 0
| fpu_rf(12) = 0
| fpu_rf(13) = 0
| fpu_rf(14) = 0
| fpu_rf(15) = 0
| fpu_rf(16) = 0
| fpu_rf(17) = 0
| fpu_rf(18) = 0
| fpu_rf(19) = 0
| fpu_rf(20) = 0
| fpu_rf(21) = 0
| fpu_rf(22) = 0
| fpu_rf(23) = 0
| fpu_rf(24) = 0
| fpu_rf(25) = 0
| fpu_rf(26) = 0
| fpu_rf(27) = 0
| fpu_rf(28) = 0
| fpu_rf(29) = 0
| fpu_rf(30) = 0
| fpu_rf(31) = 0
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
|fpadd Module:
|  a          : 0x0
|  b          : 0x0
|  mant_a     : b100000000000000000000000
|  mant_b     : b100000000000000000000000
|  exp_a      : b0
|  exp_b      : b0
|  aminusb    : b100000000000000000000000
|  bminusa    : b0
|  alessb     : b0
|  exp_pre    : b0
|  shamt      : b0
|  shiftedval : b100000000000000000000000
|  ovf        : b0
|  shmant     : 0x800000
|  addval     : 0x800000
|  addresult  : 0x1000000
|  result     : 0x400000000000
|  exponent   : b1
|  fract      : b0
|  s          : 0x800000
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
|  pcNext          : 0x54
|  branchExtImm    : 0x7
|  extImm          : 0x7
|  regReadData2    : 0x7
|  regWriteData    : 0xf
|  regSrc          : 0x0
|  pcBranch        : 0x5b
|  pcRegBranch     : 0xe
|  pcPlus4         : 0x54
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
|  fpuControl         : b0
|  fpuRegWriteEnable  : b0
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
|  pc pulled          : b10100
|  memWriteEnable     : b0
|  memWriteData       : 0x7
|  memAddress         : 0x16
|  memReadData        : 0x0
|___________________________
[[35minfo[0m] [0.648] STARTING NEXT CYCLE: 22
[[35minfo[0m] [0.648] valid = 1



___________________________
|regfile Module:
|  regWriteEnable  : b0
|  regReadAddress1 : b1
|  regReadAddress2 : b100
|  regWriteAddress : b101
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
|fpuRegfile Module:
|  fpuRegWriteEnable  : b1
|  fpuRegReadAddress1 : b1
|  fpuRegReadAddress2 : b100
|  fpuRegWriteAddress : b101
|  fpuRegWriteData    : 0x3f7fffff
|  fpuRegReadData1    : 0x3e4ccccd
|  fpuRegReadData2    : 0x3f4ccccc
|___________________________



___________________________
| fpu_rf(0) = 3dcccccd
| fpu_rf(1) = 3e4ccccd
| fpu_rf(2) = 3e999999
| fpu_rf(3) = 3effffff
| fpu_rf(4) = 3f4ccccc
| fpu_rf(5) = 0
| fpu_rf(6) = 0
| fpu_rf(7) = 0
| fpu_rf(8) = 0
| fpu_rf(9) = 0
| fpu_rf(10) = 0
| fpu_rf(11) = 0
| fpu_rf(12) = 0
| fpu_rf(13) = 0
| fpu_rf(14) = 0
| fpu_rf(15) = 0
| fpu_rf(16) = 0
| fpu_rf(17) = 0
| fpu_rf(18) = 0
| fpu_rf(19) = 0
| fpu_rf(20) = 0
| fpu_rf(21) = 0
| fpu_rf(22) = 0
| fpu_rf(23) = 0
| fpu_rf(24) = 0
| fpu_rf(25) = 0
| fpu_rf(26) = 0
| fpu_rf(27) = 0
| fpu_rf(28) = 0
| fpu_rf(29) = 0
| fpu_rf(30) = 0
| fpu_rf(31) = 0
|___________________________



___________________________
|alu Module:
|  a               : 0x4
|  b               : 0x4
|  out             : 0x4
|  aluControl      : b0
|  zeroFlag        : b0
|  lessThanFlag    : b0
|  greaterThanFlag : b0
|___________________________



___________________________
|fpadd Module:
|  a          : 0x3e4ccccd
|  b          : 0x3f4ccccc
|  mant_a     : b110011001100110011001101
|  mant_b     : b110011001100110011001100
|  exp_a      : b1111100
|  exp_b      : b1111110
|  aminusb    : b1100110011001100110011
|  bminusa    : b10
|  alessb     : b1
|  exp_pre    : b1111110
|  shamt      : b10
|  shiftedval : b1100110011001100110011
|  ovf        : b0
|  shmant     : 0x333333
|  addval     : 0xcccccc
|  addresult  : 0xffffff
|  result     : 0xa3d709c28f5c
|  exponent   : b1111110
|  fract      : b11111111111111111111111
|  s          : 0x3f7fffff
|___________________________



___________________________
|extend Module:
|  instr12     : b10000000010
|  instr20     : b10
|  immsrc      : b0
|  extImm      : 0x402
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
|  inst            : 0x4082d3
|  memToReg        : b0
|  memImm          : b101
|  memAddress      : 0x9
|  memReadData     : 0x0
|  memWriteData    : 0x6
|  aluOut          : 0x4
|  pcNext          : 0x58
|  branchExtImm    : 0x402
|  extImm          : 0x4
|  regReadData2    : 0x6
|  regWriteData    : 0x4
|  regSrc          : 0x0
|  pcBranch        : 0x45a
|  pcRegBranch     : 0x4
|  pcPlus4         : 0x58
|  branchSrc       : b0
|___________________________



___________________________
|decoder Module:
|  branchSrc          : b0
|  opcode             : b1010011
|  funct3             : b0
|  regSrc             : b0
|  immSrc             : b0
|  aluSrc             : b1
|  pcSrc              : b0
|  regWriteEnable     : b0
|  aluControl         : b0
|  memToReg           : b0
|  memWriteEnable     : b0
|  zeroFlag           : b0
|  lessThanFlag       : b0
|  greaterThanFlag    : b0
|  fpuControl         : b0
|  fpuRegWriteEnable  : b1
|___________________________
___________________________
|riscv Module:
|  instr          : 0x4082d3
|  memWriteEnable : b0
|  memWriteData   : b110
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
|  memWriteData    : 0x6
|  memWriteEnable  : b0
|  memReadData     : 0x0
|___________________________



___________________________
|top Module:
|  instr pulled       : 0x4082d3
|  pc pulled          : b10101
|  memWriteEnable     : b0
|  memWriteData       : 0x6
|  memAddress         : 0x9
|  memReadData        : 0x0
|___________________________
[[35minfo[0m] [0.671] STARTING NEXT CYCLE: 23
[[35minfo[0m] [0.671] valid = 1



___________________________
|regfile Module:
|  regWriteEnable  : b0
|  regReadAddress1 : b0
|  regReadAddress2 : b100
|  regWriteAddress : b110
|  regWriteData    : 0x0
|  regReadData1    : 0x0
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
|fpuRegfile Module:
|  fpuRegWriteEnable  : b1
|  fpuRegReadAddress1 : b0
|  fpuRegReadAddress2 : b100
|  fpuRegWriteAddress : b110
|  fpuRegWriteData    : 0x3da3d709
|  fpuRegReadData1    : 0x3dcccccd
|  fpuRegReadData2    : 0x3f4ccccc
|___________________________



___________________________
| fpu_rf(0) = 3dcccccd
| fpu_rf(1) = 3e4ccccd
| fpu_rf(2) = 3e999999
| fpu_rf(3) = 3effffff
| fpu_rf(4) = 3f4ccccc
| fpu_rf(5) = 3f7fffff
| fpu_rf(6) = 0
| fpu_rf(7) = 0
| fpu_rf(8) = 0
| fpu_rf(9) = 0
| fpu_rf(10) = 0
| fpu_rf(11) = 0
| fpu_rf(12) = 0
| fpu_rf(13) = 0
| fpu_rf(14) = 0
| fpu_rf(15) = 0
| fpu_rf(16) = 0
| fpu_rf(17) = 0
| fpu_rf(18) = 0
| fpu_rf(19) = 0
| fpu_rf(20) = 0
| fpu_rf(21) = 0
| fpu_rf(22) = 0
| fpu_rf(23) = 0
| fpu_rf(24) = 0
| fpu_rf(25) = 0
| fpu_rf(26) = 0
| fpu_rf(27) = 0
| fpu_rf(28) = 0
| fpu_rf(29) = 0
| fpu_rf(30) = 0
| fpu_rf(31) = 0
|___________________________



___________________________
|alu Module:
|  a               : 0x0
|  b               : 0x104
|  out             : 0x0
|  aluControl      : b0
|  zeroFlag        : b0
|  lessThanFlag    : b1
|  greaterThanFlag : b0
|___________________________



___________________________
|fpadd Module:
|  a          : 0x3dcccccd
|  b          : 0x3f4ccccc
|  mant_a     : b110011001100110011001101
|  mant_b     : b110011001100110011001100
|  exp_a      : b1111011
|  exp_b      : b1111110
|  aminusb    : b110011001100110011001
|  bminusa    : b11
|  alessb     : b1
|  exp_pre    : b1111110
|  shamt      : b11
|  shiftedval : b110011001100110011001
|  ovf        : b0
|  shmant     : 0x199999
|  addval     : 0xcccccc
|  addresult  : 0xe66665
|  result     : 0xa3d709c28f5c
|  exponent   : b1111011
|  fract      : b1000111101011100001001
|  s          : 0x3da3d709
|___________________________



___________________________
|extend Module:
|  instr12     : b10000011
|  instr20     : b10000010
|  immsrc      : b0
|  extImm      : 0x83
|___________________________



___________________________
|extend Module:
|  instr12     : b100000100
|  instr20     : b10000010
|  immsrc      : b0
|  extImm      : 0x104
|___________________________



___________________________
|datapath Module:
|  inst            : 0x10400353
|  memToReg        : b0
|  memImm          : b100000110
|  memAddress      : 0x106
|  memReadData     : 0x0
|  memWriteData    : 0x6
|  aluOut          : 0x0
|  pcNext          : 0x5c
|  branchExtImm    : 0x83
|  extImm          : 0x104
|  regReadData2    : 0x6
|  regWriteData    : 0x0
|  regSrc          : 0x0
|  pcBranch        : 0xdf
|  pcRegBranch     : 0x0
|  pcPlus4         : 0x5c
|  branchSrc       : b0
|___________________________



___________________________
|decoder Module:
|  branchSrc          : b0
|  opcode             : b1010011
|  funct3             : b0
|  regSrc             : b0
|  immSrc             : b0
|  aluSrc             : b1
|  pcSrc              : b0
|  regWriteEnable     : b0
|  aluControl         : b0
|  memToReg           : b0
|  memWriteEnable     : b0
|  zeroFlag           : b0
|  lessThanFlag       : b1
|  greaterThanFlag    : b0
|  fpuControl         : b10
|  fpuRegWriteEnable  : b1
|___________________________
___________________________
|riscv Module:
|  instr          : 0x10400353
|  memWriteEnable : b0
|  memWriteData   : b110
|  memAddress     : b100000110
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
|  memAddress      : 0x106
|  memWriteData    : 0x6
|  memWriteEnable  : b0
|  memReadData     : 0x0
|___________________________



___________________________
|top Module:
|  instr pulled       : 0x10400353
|  pc pulled          : b10110
|  memWriteEnable     : b0
|  memWriteData       : 0x6
|  memAddress         : 0x106
|  memReadData        : 0x0
|___________________________
[[35minfo[0m] [0.696] STARTING NEXT CYCLE: 24
[[35minfo[0m] [0.696] valid = 1



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
|fpuRegfile Module:
|  fpuRegWriteEnable  : b0
|  fpuRegReadAddress1 : b0
|  fpuRegReadAddress2 : b1111
|  fpuRegWriteAddress : b1111
|  fpuRegWriteData    : 0x3dcccccd
|  fpuRegReadData1    : 0x3dcccccd
|  fpuRegReadData2    : 0x0
|___________________________



___________________________
| fpu_rf(0) = 3dcccccd
| fpu_rf(1) = 3e4ccccd
| fpu_rf(2) = 3e999999
| fpu_rf(3) = 3effffff
| fpu_rf(4) = 3f4ccccc
| fpu_rf(5) = 3f7fffff
| fpu_rf(6) = 3da3d709
| fpu_rf(7) = 0
| fpu_rf(8) = 0
| fpu_rf(9) = 0
| fpu_rf(10) = 0
| fpu_rf(11) = 0
| fpu_rf(12) = 0
| fpu_rf(13) = 0
| fpu_rf(14) = 0
| fpu_rf(15) = 0
| fpu_rf(16) = 0
| fpu_rf(17) = 0
| fpu_rf(18) = 0
| fpu_rf(19) = 0
| fpu_rf(20) = 0
| fpu_rf(21) = 0
| fpu_rf(22) = 0
| fpu_rf(23) = 0
| fpu_rf(24) = 0
| fpu_rf(25) = 0
| fpu_rf(26) = 0
| fpu_rf(27) = 0
| fpu_rf(28) = 0
| fpu_rf(29) = 0
| fpu_rf(30) = 0
| fpu_rf(31) = 0
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
|fpadd Module:
|  a          : 0x3dcccccd
|  b          : 0x0
|  mant_a     : b110011001100110011001101
|  mant_b     : b100000000000000000000000
|  exp_a      : b1111011
|  exp_b      : b0
|  aminusb    : b0
|  bminusa    : b1111011
|  alessb     : b0
|  exp_pre    : b1111011
|  shamt      : b1111011
|  shiftedval : b0
|  ovf        : b1
|  shmant     : 0x0
|  addval     : 0xcccccd
|  addresult  : 0xcccccd
|  result     : 0x666666800000
|  exponent   : b1111011
|  fract      : b10011001100110011001101
|  s          : 0x3dcccccd
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
|  pcNext          : 0x60
|  branchExtImm    : 0x407
|  extImm          : 0xf
|  regReadData2    : 0x0
|  regWriteData    : 0xf
|  regSrc          : 0x0
|  pcBranch        : 0x467
|  pcRegBranch     : 0xe
|  pcPlus4         : 0x60
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
|  fpuControl         : b0
|  fpuRegWriteEnable  : b0
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
|  pc pulled          : b10111
|  memWriteEnable     : b0
|  memWriteData       : 0x0
|  memAddress         : 0xf
|  memReadData        : 0x0
|___________________________
[[35minfo[0m] [0.718] STARTING NEXT CYCLE: 25
[[35minfo[0m] [0.718] valid = 1



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
|fpuRegfile Module:
|  fpuRegWriteEnable  : b0
|  fpuRegReadAddress1 : b1111
|  fpuRegReadAddress2 : b111
|  fpuRegWriteAddress : b10000
|  fpuRegWriteData    : 0x800000
|  fpuRegReadData1    : 0x0
|  fpuRegReadData2    : 0x0
|___________________________



___________________________
| fpu_rf(0) = 3dcccccd
| fpu_rf(1) = 3e4ccccd
| fpu_rf(2) = 3e999999
| fpu_rf(3) = 3effffff
| fpu_rf(4) = 3f4ccccc
| fpu_rf(5) = 3f7fffff
| fpu_rf(6) = 3da3d709
| fpu_rf(7) = 0
| fpu_rf(8) = 0
| fpu_rf(9) = 0
| fpu_rf(10) = 0
| fpu_rf(11) = 0
| fpu_rf(12) = 0
| fpu_rf(13) = 0
| fpu_rf(14) = 0
| fpu_rf(15) = 0
| fpu_rf(16) = 0
| fpu_rf(17) = 0
| fpu_rf(18) = 0
| fpu_rf(19) = 0
| fpu_rf(20) = 0
| fpu_rf(21) = 0
| fpu_rf(22) = 0
| fpu_rf(23) = 0
| fpu_rf(24) = 0
| fpu_rf(25) = 0
| fpu_rf(26) = 0
| fpu_rf(27) = 0
| fpu_rf(28) = 0
| fpu_rf(29) = 0
| fpu_rf(30) = 0
| fpu_rf(31) = 0
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
|fpadd Module:
|  a          : 0x0
|  b          : 0x0
|  mant_a     : b100000000000000000000000
|  mant_b     : b100000000000000000000000
|  exp_a      : b0
|  exp_b      : b0
|  aminusb    : b100000000000000000000000
|  bminusa    : b0
|  alessb     : b0
|  exp_pre    : b0
|  shamt      : b0
|  shiftedval : b100000000000000000000000
|  ovf        : b0
|  shmant     : 0x800000
|  addval     : 0x800000
|  addresult  : 0x1000000
|  result     : 0x400000000000
|  exponent   : b1
|  fract      : b0
|  s          : 0x800000
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
|  pcNext          : 0x64
|  branchExtImm    : 0x208
|  extImm          : 0x407
|  regReadData2    : 0x7
|  regWriteData    : 0x8
|  regSrc          : 0x0
|  pcBranch        : 0x26c
|  pcRegBranch     : 0x8
|  pcPlus4         : 0x64
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
|  fpuControl         : b0
|  fpuRegWriteEnable  : b0
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
|  pc pulled          : b11000
|  memWriteEnable     : b0
|  memWriteData       : 0x7
|  memAddress         : 0x41f
|  memReadData        : 0x0
|___________________________
[[35minfo[0m] [0.740] STARTING NEXT CYCLE: 26
[[35minfo[0m] [0.740] valid = 1



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
|fpuRegfile Module:
|  fpuRegWriteEnable  : b0
|  fpuRegReadAddress1 : b10
|  fpuRegReadAddress2 : b10
|  fpuRegWriteAddress : b10001
|  fpuRegWriteData    : 0x3f199999
|  fpuRegReadData1    : 0x3e999999
|  fpuRegReadData2    : 0x3e999999
|___________________________



___________________________
| fpu_rf(0) = 3dcccccd
| fpu_rf(1) = 3e4ccccd
| fpu_rf(2) = 3e999999
| fpu_rf(3) = 3effffff
| fpu_rf(4) = 3f4ccccc
| fpu_rf(5) = 3f7fffff
| fpu_rf(6) = 3da3d709
| fpu_rf(7) = 0
| fpu_rf(8) = 0
| fpu_rf(9) = 0
| fpu_rf(10) = 0
| fpu_rf(11) = 0
| fpu_rf(12) = 0
| fpu_rf(13) = 0
| fpu_rf(14) = 0
| fpu_rf(15) = 0
| fpu_rf(16) = 0
| fpu_rf(17) = 0
| fpu_rf(18) = 0
| fpu_rf(19) = 0
| fpu_rf(20) = 0
| fpu_rf(21) = 0
| fpu_rf(22) = 0
| fpu_rf(23) = 0
| fpu_rf(24) = 0
| fpu_rf(25) = 0
| fpu_rf(26) = 0
| fpu_rf(27) = 0
| fpu_rf(28) = 0
| fpu_rf(29) = 0
| fpu_rf(30) = 0
| fpu_rf(31) = 0
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
|fpadd Module:
|  a          : 0x3e999999
|  b          : 0x3e999999
|  mant_a     : b100110011001100110011001
|  mant_b     : b100110011001100110011001
|  exp_a      : b1111101
|  exp_b      : b1111101
|  aminusb    : b100110011001100110011001
|  bminusa    : b0
|  alessb     : b0
|  exp_pre    : b1111101
|  shamt      : b0
|  shiftedval : b100110011001100110011001
|  ovf        : b0
|  shmant     : 0x999999
|  addval     : 0x999999
|  addresult  : 0x1333332
|  result     : 0x5c28f50a3d71
|  exponent   : b1111110
|  fract      : b110011001100110011001
|  s          : 0x3f199999
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
|  pcNext          : 0x68
|  branchExtImm    : 0x408
|  extImm          : 0x2
|  regReadData2    : 0x2
|  regWriteData    : 0x8
|  regSrc          : 0x0
|  pcBranch        : 0x470
|  pcRegBranch     : 0x8
|  pcPlus4         : 0x68
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
|  fpuControl         : b0
|  fpuRegWriteEnable  : b0
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
|  pc pulled          : b11001
|  memWriteEnable     : b0
|  memWriteData       : 0x2
|  memAddress         : 0x13
|  memReadData        : 0x0
|___________________________
[[35minfo[0m] [0.764] STARTING NEXT CYCLE: 27
[[35minfo[0m] [0.764] valid = 1



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
|fpuRegfile Module:
|  fpuRegWriteEnable  : b0
|  fpuRegReadAddress1 : b10
|  fpuRegReadAddress2 : b11
|  fpuRegWriteAddress : b10011
|  fpuRegWriteData    : 0x3f4ccccc
|  fpuRegReadData1    : 0x3e999999
|  fpuRegReadData2    : 0x3effffff
|___________________________



___________________________
| fpu_rf(0) = 3dcccccd
| fpu_rf(1) = 3e4ccccd
| fpu_rf(2) = 3e999999
| fpu_rf(3) = 3effffff
| fpu_rf(4) = 3f4ccccc
| fpu_rf(5) = 3f7fffff
| fpu_rf(6) = 3da3d709
| fpu_rf(7) = 0
| fpu_rf(8) = 0
| fpu_rf(9) = 0
| fpu_rf(10) = 0
| fpu_rf(11) = 0
| fpu_rf(12) = 0
| fpu_rf(13) = 0
| fpu_rf(14) = 0
| fpu_rf(15) = 0
| fpu_rf(16) = 0
| fpu_rf(17) = 0
| fpu_rf(18) = 0
| fpu_rf(19) = 0
| fpu_rf(20) = 0
| fpu_rf(21) = 0
| fpu_rf(22) = 0
| fpu_rf(23) = 0
| fpu_rf(24) = 0
| fpu_rf(25) = 0
| fpu_rf(26) = 0
| fpu_rf(27) = 0
| fpu_rf(28) = 0
| fpu_rf(29) = 0
| fpu_rf(30) = 0
| fpu_rf(31) = 0
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
|fpadd Module:
|  a          : 0x3e999999
|  b          : 0x3effffff
|  mant_a     : b100110011001100110011001
|  mant_b     : b111111111111111111111111
|  exp_a      : b1111101
|  exp_b      : b1111101
|  aminusb    : b111111111111111111111111
|  bminusa    : b0
|  alessb     : b0
|  exp_pre    : b1111101
|  shamt      : b0
|  shiftedval : b111111111111111111111111
|  ovf        : b0
|  shmant     : 0xffffff
|  addval     : 0x999999
|  addresult  : 0x1999998
|  result     : 0x999998666667
|  exponent   : b1111110
|  fract      : b10011001100110011001100
|  s          : 0x3f4ccccc
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
|  pcNext          : 0x6c
|  branchExtImm    : 0x409
|  extImm          : 0x3
|  regReadData2    : 0x3
|  regWriteData    : 0x1
|  regSrc          : 0x0
|  pcBranch        : 0x475
|  pcRegBranch     : 0x0
|  pcPlus4         : 0x6c
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
|  fpuControl         : b0
|  fpuRegWriteEnable  : b0
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
|  pc pulled          : b11010
|  memWriteEnable     : b0
|  memWriteData       : 0x3
|  memAddress         : 0x15
|  memReadData        : 0x0
|___________________________
[[35minfo[0m] [0.795] STARTING NEXT CYCLE: 28
[[35minfo[0m] [0.795] valid = 1



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
|fpuRegfile Module:
|  fpuRegWriteEnable  : b0
|  fpuRegReadAddress1 : b1001
|  fpuRegReadAddress2 : b11
|  fpuRegWriteAddress : b10100
|  fpuRegWriteData    : 0x3effffff
|  fpuRegReadData1    : 0x0
|  fpuRegReadData2    : 0x3effffff
|___________________________



___________________________
| fpu_rf(0) = 3dcccccd
| fpu_rf(1) = 3e4ccccd
| fpu_rf(2) = 3e999999
| fpu_rf(3) = 3effffff
| fpu_rf(4) = 3f4ccccc
| fpu_rf(5) = 3f7fffff
| fpu_rf(6) = 3da3d709
| fpu_rf(7) = 0
| fpu_rf(8) = 0
| fpu_rf(9) = 0
| fpu_rf(10) = 0
| fpu_rf(11) = 0
| fpu_rf(12) = 0
| fpu_rf(13) = 0
| fpu_rf(14) = 0
| fpu_rf(15) = 0
| fpu_rf(16) = 0
| fpu_rf(17) = 0
| fpu_rf(18) = 0
| fpu_rf(19) = 0
| fpu_rf(20) = 0
| fpu_rf(21) = 0
| fpu_rf(22) = 0
| fpu_rf(23) = 0
| fpu_rf(24) = 0
| fpu_rf(25) = 0
| fpu_rf(26) = 0
| fpu_rf(27) = 0
| fpu_rf(28) = 0
| fpu_rf(29) = 0
| fpu_rf(30) = 0
| fpu_rf(31) = 0
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
|fpadd Module:
|  a          : 0x0
|  b          : 0x3effffff
|  mant_a     : b100000000000000000000000
|  mant_b     : b111111111111111111111111
|  exp_a      : b0
|  exp_b      : b1111101
|  aminusb    : b0
|  bminusa    : b1111101
|  alessb     : b1
|  exp_pre    : b1111101
|  shamt      : b1111101
|  shiftedval : b0
|  ovf        : b1
|  shmant     : 0x0
|  addval     : 0xffffff
|  addresult  : 0xffffff
|  result     : 0x7fffff800000
|  exponent   : b1111101
|  fract      : b11111111111111111111111
|  s          : 0x3effffff
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
|  pcNext          : 0x70
|  branchExtImm    : 0xa
|  extImm          : 0x3
|  regReadData2    : 0x3
|  regWriteData    : 0x0
|  regSrc          : 0x0
|  pcBranch        : 0x7a
|  pcRegBranch     : 0x0
|  pcPlus4         : 0x70
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
|  fpuControl         : b0
|  fpuRegWriteEnable  : b0
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
|  pc pulled          : b11011
|  memWriteEnable     : b0
|  memWriteData       : 0x3
|  memAddress         : 0x1c
|  memReadData        : 0x0
|___________________________
[[35minfo[0m] [0.836] STARTING NEXT CYCLE: 29
[[35minfo[0m] [0.836] valid = 1



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
|fpuRegfile Module:
|  fpuRegWriteEnable  : b0
|  fpuRegReadAddress1 : b111
|  fpuRegReadAddress2 : b10
|  fpuRegWriteAddress : b10101
|  fpuRegWriteData    : 0x3e999999
|  fpuRegReadData1    : 0x0
|  fpuRegReadData2    : 0x3e999999
|___________________________



___________________________
| fpu_rf(0) = 3dcccccd
| fpu_rf(1) = 3e4ccccd
| fpu_rf(2) = 3e999999
| fpu_rf(3) = 3effffff
| fpu_rf(4) = 3f4ccccc
| fpu_rf(5) = 3f7fffff
| fpu_rf(6) = 3da3d709
| fpu_rf(7) = 0
| fpu_rf(8) = 0
| fpu_rf(9) = 0
| fpu_rf(10) = 0
| fpu_rf(11) = 0
| fpu_rf(12) = 0
| fpu_rf(13) = 0
| fpu_rf(14) = 0
| fpu_rf(15) = 0
| fpu_rf(16) = 0
| fpu_rf(17) = 0
| fpu_rf(18) = 0
| fpu_rf(19) = 0
| fpu_rf(20) = 0
| fpu_rf(21) = 0
| fpu_rf(22) = 0
| fpu_rf(23) = 0
| fpu_rf(24) = 0
| fpu_rf(25) = 0
| fpu_rf(26) = 0
| fpu_rf(27) = 0
| fpu_rf(28) = 0
| fpu_rf(29) = 0
| fpu_rf(30) = 0
| fpu_rf(31) = 0
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
|fpadd Module:
|  a          : 0x0
|  b          : 0x3e999999
|  mant_a     : b100000000000000000000000
|  mant_b     : b100110011001100110011001
|  exp_a      : b0
|  exp_b      : b1111101
|  aminusb    : b0
|  bminusa    : b1111101
|  alessb     : b1
|  exp_pre    : b1111101
|  shamt      : b1111101
|  shiftedval : b0
|  ovf        : b1
|  shmant     : 0x0
|  addval     : 0x999999
|  addresult  : 0x999999
|  result     : 0x4ccccc800000
|  exponent   : b1111101
|  fract      : b110011001100110011001
|  s          : 0x3e999999
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
|  pcNext          : 0x74
|  branchExtImm    : 0x40a
|  extImm          : 0x2
|  regReadData2    : 0x2
|  regWriteData    : 0x1
|  regSrc          : 0x0
|  pcBranch        : 0x47e
|  pcRegBranch     : 0x0
|  pcPlus4         : 0x74
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
|  fpuControl         : b0
|  fpuRegWriteEnable  : b0
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
|  pc pulled          : b11100
|  memWriteEnable     : b0
|  memWriteData       : 0x2
|  memAddress         : 0x1c
|  memReadData        : 0x0
|___________________________
[[35minfo[0m] [0.860] STARTING NEXT CYCLE: 30
[[35minfo[0m] [0.860] valid = 1



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
|fpuRegfile Module:
|  fpuRegWriteEnable  : b0
|  fpuRegReadAddress1 : b1001
|  fpuRegReadAddress2 : b10
|  fpuRegWriteAddress : b10110
|  fpuRegWriteData    : 0x3e999999
|  fpuRegReadData1    : 0x0
|  fpuRegReadData2    : 0x3e999999
|___________________________



___________________________
| fpu_rf(0) = 3dcccccd
| fpu_rf(1) = 3e4ccccd
| fpu_rf(2) = 3e999999
| fpu_rf(3) = 3effffff
| fpu_rf(4) = 3f4ccccc
| fpu_rf(5) = 3f7fffff
| fpu_rf(6) = 3da3d709
| fpu_rf(7) = 0
| fpu_rf(8) = 0
| fpu_rf(9) = 0
| fpu_rf(10) = 0
| fpu_rf(11) = 0
| fpu_rf(12) = 0
| fpu_rf(13) = 0
| fpu_rf(14) = 0
| fpu_rf(15) = 0
| fpu_rf(16) = 0
| fpu_rf(17) = 0
| fpu_rf(18) = 0
| fpu_rf(19) = 0
| fpu_rf(20) = 0
| fpu_rf(21) = 0
| fpu_rf(22) = 0
| fpu_rf(23) = 0
| fpu_rf(24) = 0
| fpu_rf(25) = 0
| fpu_rf(26) = 0
| fpu_rf(27) = 0
| fpu_rf(28) = 0
| fpu_rf(29) = 0
| fpu_rf(30) = 0
| fpu_rf(31) = 0
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
|fpadd Module:
|  a          : 0x0
|  b          : 0x3e999999
|  mant_a     : b100000000000000000000000
|  mant_b     : b100110011001100110011001
|  exp_a      : b0
|  exp_b      : b1111101
|  aminusb    : b0
|  bminusa    : b1111101
|  alessb     : b1
|  exp_pre    : b1111101
|  shamt      : b1111101
|  shiftedval : b0
|  ovf        : b1
|  shmant     : 0x0
|  addval     : 0x999999
|  addresult  : 0x999999
|  result     : 0x4ccccc800000
|  exponent   : b1111101
|  fract      : b110011001100110011001
|  s          : 0x3e999999
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
|  pcNext          : 0x78
|  branchExtImm    : 0x20b
|  extImm          : 0x402
|  regReadData2    : 0x2
|  regWriteData    : 0x2
|  regSrc          : 0x0
|  pcBranch        : 0x283
|  pcRegBranch     : 0x2
|  pcPlus4         : 0x78
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
|  fpuControl         : b0
|  fpuRegWriteEnable  : b0
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
|  pc pulled          : b11101
|  memWriteEnable     : b0
|  memWriteData       : 0x2
|  memAddress         : 0x41e
|  memReadData        : 0x0
|___________________________
[[35minfo[0m] [0.886] STARTING NEXT CYCLE: 31
[[35minfo[0m] [0.886] valid = 1



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
|fpuRegfile Module:
|  fpuRegWriteEnable  : b0
|  fpuRegReadAddress1 : b1111
|  fpuRegReadAddress2 : b10000
|  fpuRegWriteAddress : b10111
|  fpuRegWriteData    : 0x800000
|  fpuRegReadData1    : 0x0
|  fpuRegReadData2    : 0x0
|___________________________



___________________________
| fpu_rf(0) = 3dcccccd
| fpu_rf(1) = 3e4ccccd
| fpu_rf(2) = 3e999999
| fpu_rf(3) = 3effffff
| fpu_rf(4) = 3f4ccccc
| fpu_rf(5) = 3f7fffff
| fpu_rf(6) = 3da3d709
| fpu_rf(7) = 0
| fpu_rf(8) = 0
| fpu_rf(9) = 0
| fpu_rf(10) = 0
| fpu_rf(11) = 0
| fpu_rf(12) = 0
| fpu_rf(13) = 0
| fpu_rf(14) = 0
| fpu_rf(15) = 0
| fpu_rf(16) = 0
| fpu_rf(17) = 0
| fpu_rf(18) = 0
| fpu_rf(19) = 0
| fpu_rf(20) = 0
| fpu_rf(21) = 0
| fpu_rf(22) = 0
| fpu_rf(23) = 0
| fpu_rf(24) = 0
| fpu_rf(25) = 0
| fpu_rf(26) = 0
| fpu_rf(27) = 0
| fpu_rf(28) = 0
| fpu_rf(29) = 0
| fpu_rf(30) = 0
| fpu_rf(31) = 0
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
|fpadd Module:
|  a          : 0x0
|  b          : 0x0
|  mant_a     : b100000000000000000000000
|  mant_b     : b100000000000000000000000
|  exp_a      : b0
|  exp_b      : b0
|  aminusb    : b100000000000000000000000
|  bminusa    : b0
|  alessb     : b0
|  exp_pre    : b0
|  shamt      : b0
|  shiftedval : b100000000000000000000000
|  ovf        : b0
|  shmant     : 0x800000
|  addval     : 0x800000
|  addresult  : 0x1000000
|  result     : 0x400000000000
|  exponent   : b1
|  fract      : b0
|  s          : 0x800000
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
|  pcNext          : 0x7c
|  branchExtImm    : 0x40b
|  extImm          : 0x10
|  regReadData2    : 0x8
|  regWriteData    : 0x1
|  regSrc          : 0x0
|  pcBranch        : 0x487
|  pcRegBranch     : 0x0
|  pcPlus4         : 0x7c
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
|  fpuControl         : b0
|  fpuRegWriteEnable  : b0
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
|  pc pulled          : b11110
|  memWriteEnable     : b0
|  memWriteData       : 0x8
|  memAddress         : 0x26
|  memReadData        : 0x0
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
| rf(25) = 0
| rf(26) = 0
| rf(27) = 0
| rf(28) = 0
| rf(29) = 0
| rf(30) = 0
| rf(31) = 0
|___________________________



___________________________
|fpuRegfile Module:
|  fpuRegWriteEnable  : b0
|  fpuRegReadAddress1 : b0
|  fpuRegReadAddress2 : b0
|  fpuRegWriteAddress : b0
|  fpuRegWriteData    : 0x3e4ccccd
|  fpuRegReadData1    : 0x3dcccccd
|  fpuRegReadData2    : 0x3dcccccd
|___________________________



___________________________
| fpu_rf(0) = 3dcccccd
| fpu_rf(1) = 3e4ccccd
| fpu_rf(2) = 3e999999
| fpu_rf(3) = 3effffff
| fpu_rf(4) = 3f4ccccc
| fpu_rf(5) = 3f7fffff
| fpu_rf(6) = 3da3d709
| fpu_rf(7) = 0
| fpu_rf(8) = 0
| fpu_rf(9) = 0
| fpu_rf(10) = 0
| fpu_rf(11) = 0
| fpu_rf(12) = 0
| fpu_rf(13) = 0
| fpu_rf(14) = 0
| fpu_rf(15) = 0
| fpu_rf(16) = 0
| fpu_rf(17) = 0
| fpu_rf(18) = 0
| fpu_rf(19) = 0
| fpu_rf(20) = 0
| fpu_rf(21) = 0
| fpu_rf(22) = 0
| fpu_rf(23) = 0
| fpu_rf(24) = 0
| fpu_rf(25) = 0
| fpu_rf(26) = 0
| fpu_rf(27) = 0
| fpu_rf(28) = 0
| fpu_rf(29) = 0
| fpu_rf(30) = 0
| fpu_rf(31) = 0
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
|fpadd Module:
|  a          : 0x3dcccccd
|  b          : 0x3dcccccd
|  mant_a     : b110011001100110011001101
|  mant_b     : b110011001100110011001101
|  exp_a      : b1111011
|  exp_b      : b1111011
|  aminusb    : b110011001100110011001101
|  bminusa    : b0
|  alessb     : b0
|  exp_pre    : b1111011
|  shamt      : b0
|  shiftedval : b110011001100110011001101
|  ovf        : b0
|  shmant     : 0xcccccd
|  addval     : 0xcccccd
|  addresult  : 0x199999a
|  result     : 0xa3d70a8f5c29
|  exponent   : b1111100
|  fract      : b10011001100110011001101
|  s          : 0x3e4ccccd
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
|  pcNext          : 0x80
|  branchExtImm    : 0x0
|  extImm          : 0x0
|  regReadData2    : 0x0
|  regWriteData    : 0x0
|  regSrc          : 0x0
|  pcBranch        : 0x80
|  pcRegBranch     : 0x0
|  pcPlus4         : 0x80
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
|  fpuControl         : b0
|  fpuRegWriteEnable  : b0
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
|  pc pulled          : b11111
|  memWriteEnable     : b0
|  memWriteData       : 0x0
|  memAddress         : 0x0
|  memReadData        : 0x0
|___________________________
[[35minfo[0m] [0.939] Program completed in 32 cycles. Exiting.
test top Success: 0 tests passed in 37 cycles in 0.998457 seconds 37.06 Hz
[[35minfo[0m] [0.942] RAN 32 CYCLES PASSED
[[35minfo[0m] [0.000] Elaborating design...
[[35minfo[0m] [0.228] Done elaborating.
Total FIRRTL Compile Time: 2474.1 ms
[0m[[0m[32msuccess[0m] [0m[0mTotal time: 75 s, completed Jun 20, 2020, 12:38:09 PM[0m
