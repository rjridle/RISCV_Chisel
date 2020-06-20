[0m[[0m[0minfo[0m] [0m[0mLoading settings from plugins.sbt ...[0m
[0m[[0m[0minfo[0m] [0m[0mLoading project definition from /home/rjridle/risc-v-chisel/MyChiselProject/project[0m
[0m[[0m[0minfo[0m] [0m[0mLoading settings from build.sbt ...[0m
[0m[[0m[0minfo[0m] [0m[0mSet current project to RISCV_Single_Cycle (in build file:/home/rjridle/risc-v-chisel/MyChiselProject/)[0m
[0m[[0m[33mwarn[0m] [0m[0mMultiple main classes detected.  Run 'show discoveredMainClasses' to see the list[0m
[0m[[0m[0minfo[0m] [0m[0mRunning riscvSingle.top [0m
[[35minfo[0m] [0.005] Elaborating design...
[[35minfo[0m] [3.649] Done elaborating.
Total FIRRTL Compile Time: 4034.7 ms
Total FIRRTL Compile Time: 1933.3 ms
file loaded in 2.8060726 seconds, 1347 symbols, 889 statements
[[35minfo[0m] [0.003] SEED 1592674275606
[[35minfo[0m] [0.004] **********STARTING riscvSingleTest*******
[[35minfo[0m] [0.008] CYCLE: 1
[[35minfo[0m] [0.009] STARTING NEXT CYCLE: 1
[[35minfo[0m] [0.009] valid = 1



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
| rf(1) = 0
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
|  memReadData     : 0x0
|  memWriteData    : 0x0
|  aluOut          : 0x0
|  pcNext          : 0x4
|  branchExtImm    : 0x400
|  extImm          : 0x0
|  regReadData2    : 0x0
|  regWriteData    : 0x0
|  regSrc          : 0x0
|  pcBranch        : 0x404
|  pcRegBranch     : 0x0
|  pcPlus4         : 0x4
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
|  instr pulled       : 0xd3
|  pc pulled          : b0
|  memWriteEnable     : b0
|  memWriteData       : 0x0
|  memAddress         : 0x1
|  memReadData        : 0x0
|___________________________
[[35minfo[0m] [0.065] STARTING NEXT CYCLE: 2
[[35minfo[0m] [0.065] valid = 1



___________________________
|regfile Module:
|  regWriteEnable  : b0
|  regReadAddress1 : b0
|  regReadAddress2 : b1
|  regWriteAddress : b10
|  regWriteData    : 0x0
|  regReadData1    : 0x0
|  regReadData2    : 0x0
|___________________________



___________________________
| rf(0) = 0
| rf(1) = 0
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
|  memWriteData    : 0x0
|  aluOut          : 0x0
|  pcNext          : 0x8
|  branchExtImm    : 0x1
|  extImm          : 0x1
|  regReadData2    : 0x0
|  regWriteData    : 0x0
|  regSrc          : 0x0
|  pcBranch        : 0x9
|  pcRegBranch     : 0x0
|  pcPlus4         : 0x8
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
|  instr pulled       : 0x100153
|  pc pulled          : b1
|  memWriteEnable     : b0
|  memWriteData       : 0x0
|  memAddress         : 0x2
|  memReadData        : 0x0
|___________________________
[[35minfo[0m] [0.123] STARTING NEXT CYCLE: 3
[[35minfo[0m] [0.124] valid = 1



___________________________
|regfile Module:
|  regWriteEnable  : b0
|  regReadAddress1 : b1
|  regReadAddress2 : b10
|  regWriteAddress : b11
|  regWriteData    : 0x0
|  regReadData1    : 0x0
|  regReadData2    : 0x0
|___________________________



___________________________
| rf(0) = 0
| rf(1) = 0
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
|  a               : 0x0
|  b               : 0x2
|  out             : 0x0
|  aluControl      : b0
|  zeroFlag        : b0
|  lessThanFlag    : b1
|  greaterThanFlag : b0
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
|  memAddress      : 0x3
|  memReadData     : 0x0
|  memWriteData    : 0x0
|  aluOut          : 0x0
|  pcNext          : 0xc
|  branchExtImm    : 0x401
|  extImm          : 0x2
|  regReadData2    : 0x0
|  regWriteData    : 0x0
|  regSrc          : 0x0
|  pcBranch        : 0x40d
|  pcRegBranch     : 0x0
|  pcPlus4         : 0xc
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
|  instr          : 0x2081d3
|  memWriteEnable : b0
|  memWriteData   : b0
|  memAddress     : b11
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
|  memAddress      : 0x3
|  memWriteData    : 0x0
|  memWriteEnable  : b0
|  memReadData     : 0x0
|___________________________



___________________________
|top Module:
|  instr pulled       : 0x2081d3
|  pc pulled          : b10
|  memWriteEnable     : b0
|  memWriteData       : 0x0
|  memAddress         : 0x3
|  memReadData        : 0x0
|___________________________
[[35minfo[0m] [0.185] STARTING NEXT CYCLE: 4
[[35minfo[0m] [0.185] valid = 1



___________________________
|regfile Module:
|  regWriteEnable  : b0
|  regReadAddress1 : b10
|  regReadAddress2 : b11
|  regWriteAddress : b100
|  regWriteData    : 0x0
|  regReadData1    : 0x0
|  regReadData2    : 0x0
|___________________________



___________________________
| rf(0) = 0
| rf(1) = 0
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
|  a               : 0x0
|  b               : 0x3
|  out             : 0x0
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
|  memAddress      : 0x4
|  memReadData     : 0x0
|  memWriteData    : 0x0
|  aluOut          : 0x0
|  pcNext          : 0x10
|  branchExtImm    : 0x2
|  extImm          : 0x3
|  regReadData2    : 0x0
|  regWriteData    : 0x0
|  regSrc          : 0x0
|  pcBranch        : 0x12
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
|  memWriteData   : b0
|  memAddress     : b100
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
|  memAddress      : 0x4
|  memWriteData    : 0x0
|  memWriteEnable  : b0
|  memReadData     : 0x0
|___________________________



___________________________
|top Module:
|  instr pulled       : 0x310253
|  pc pulled          : b11
|  memWriteEnable     : b0
|  memWriteData       : 0x0
|  memAddress         : 0x4
|  memReadData        : 0x0
|___________________________
[[35minfo[0m] [0.245] STARTING NEXT CYCLE: 5
[[35minfo[0m] [0.248] valid = 1



___________________________
|regfile Module:
|  regWriteEnable  : b0
|  regReadAddress1 : b1
|  regReadAddress2 : b100
|  regWriteAddress : b101
|  regWriteData    : 0x0
|  regReadData1    : 0x0
|  regReadData2    : 0x0
|___________________________



___________________________
| rf(0) = 0
| rf(1) = 0
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
|  a               : 0x0
|  b               : 0x4
|  out             : 0x0
|  aluControl      : b0
|  zeroFlag        : b0
|  lessThanFlag    : b1
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
|  memAddress      : 0x5
|  memReadData     : 0x0
|  memWriteData    : 0x0
|  aluOut          : 0x0
|  pcNext          : 0x14
|  branchExtImm    : 0x402
|  extImm          : 0x4
|  regReadData2    : 0x0
|  regWriteData    : 0x0
|  regSrc          : 0x0
|  pcBranch        : 0x416
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
|  instr          : 0x4082d3
|  memWriteEnable : b0
|  memWriteData   : b0
|  memAddress     : b101
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
|  memAddress      : 0x5
|  memWriteData    : 0x0
|  memWriteEnable  : b0
|  memReadData     : 0x0
|___________________________



___________________________
|top Module:
|  instr pulled       : 0x4082d3
|  pc pulled          : b100
|  memWriteEnable     : b0
|  memWriteData       : 0x0
|  memAddress         : 0x5
|  memReadData        : 0x0
|___________________________
[[35minfo[0m] [0.310] STARTING NEXT CYCLE: 6
[[35minfo[0m] [0.311] valid = 1



___________________________
|regfile Module:
|  regWriteEnable  : b0
|  regReadAddress1 : b0
|  regReadAddress2 : b100
|  regWriteAddress : b110
|  regWriteData    : 0x0
|  regReadData1    : 0x0
|  regReadData2    : 0x0
|___________________________



___________________________
| rf(0) = 0
| rf(1) = 0
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
|  memWriteData    : 0x0
|  aluOut          : 0x0
|  pcNext          : 0x18
|  branchExtImm    : 0x83
|  extImm          : 0x104
|  regReadData2    : 0x0
|  regWriteData    : 0x0
|  regSrc          : 0x0
|  pcBranch        : 0x9b
|  pcRegBranch     : 0x0
|  pcPlus4         : 0x18
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
|  memWriteData   : b0
|  memAddress     : b100000110
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
|  memAddress      : 0x106
|  memWriteData    : 0x0
|  memWriteEnable  : b0
|  memReadData     : 0x0
|___________________________



___________________________
|top Module:
|  instr pulled       : 0x10400353
|  pc pulled          : b101
|  memWriteEnable     : b0
|  memWriteData       : 0x0
|  memAddress         : 0x106
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
| rf(1) = 0
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
|  pcNext          : 0x1c
|  branchExtImm    : 0x0
|  extImm          : 0x0
|  regReadData2    : 0x0
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
|  memAddress      : 0x0
|  memWriteData    : 0x0
|  memWriteEnable  : b0
|  memReadData     : 0x0
|___________________________



___________________________
|top Module:
|  instr pulled       : 0x73
|  pc pulled          : b110
|  memWriteEnable     : b0
|  memWriteData       : 0x0
|  memAddress         : 0x0
|  memReadData        : 0x0
|___________________________
[[35minfo[0m] [0.417] Program completed in 7 cycles. Exiting.
test top Success: 0 tests passed in 12 cycles in 0.470712 seconds 25.49 Hz
[[35minfo[0m] [0.419] RAN 7 CYCLES PASSED
[[35minfo[0m] [0.000] Elaborating design...
[[35minfo[0m] [0.153] Done elaborating.
Total FIRRTL Compile Time: 2093.0 ms
[0m[[0m[32msuccess[0m] [0m[0mTotal time: 20 s, completed Jun 20, 2020, 12:31:32 PM[0m
