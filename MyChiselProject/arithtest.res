[0m[[0m[0minfo[0m] [0m[0mLoading settings from plugins.sbt ...[0m
[0m[[0m[0minfo[0m] [0m[0mLoading project definition from /home/rjridle/chisel/RISCV_Chisel/single_cycle/risc-v-chisel/MyChiselProject/project[0m
[0m[[0m[0minfo[0m] [0m[0mLoading settings from build.sbt ...[0m
[0m[[0m[0minfo[0m] [0m[0mSet current project to RISCV_Single_Cycle (in build file:/home/rjridle/chisel/RISCV_Chisel/single_cycle/risc-v-chisel/MyChiselProject/)[0m
[0m[[0m[0minfo[0m] [0m[0mCompiling 1 Scala source to /home/rjridle/chisel/RISCV_Chisel/single_cycle/risc-v-chisel/MyChiselProject/target/scala-2.11/classes ...[0m
[0m[[0m[33mwarn[0m] [0m[0mthere were 467 feature warnings; re-run with -feature for details[0m
[0m[[0m[33mwarn[0m] [0m[0mone warning found[0m
[0m[[0m[0minfo[0m] [0m[0mDone compiling.[0m
[0m[[0m[33mwarn[0m] [0m[0mMultiple main classes detected.  Run 'show discoveredMainClasses' to see the list[0m
[0m[[0m[0minfo[0m] [0m[0mPackaging /home/rjridle/chisel/RISCV_Chisel/single_cycle/risc-v-chisel/MyChiselProject/target/scala-2.11/riscv_single_cycle_2.11-3.1.1.jar ...[0m
[0m[[0m[0minfo[0m] [0m[0mDone packaging.[0m
[0m[[0m[0minfo[0m] [0m[0mRunning riscvSingle.top [0m
[[35minfo[0m] [0.001] Elaborating design...
[[35minfo[0m] [0.628] Done elaborating.
Total FIRRTL Compile Time: 830.0 ms
Total FIRRTL Compile Time: 470.9 ms
file loaded in 0.691433134 seconds, 962 symbols, 658 statements
[[35minfo[0m] [0.001] SEED 1586205762636
[[35minfo[0m] [0.001] **********STARTING riscvSingleTest*******
[[35minfo[0m] [0.002] Starting valid = 1
[[35minfo[0m] [0.003] CYCLE: 1
[[35minfo[0m] [0.003] STARTING NEXT CYCLE: 1
[[35minfo[0m] [0.003] valid = 1



___________________________
|extend Module:
|  instr12     : b10000000000
|  instr20     : b10
|  immsrc      : b0
|  extImm      : 0x400
|___________________________



___________________________
|regfile Module:
|  we3 : b1
|  ra1 : b0
|  ra2 : b100
|  wa3 : b1
|  wd3 : 0x4
|  r31 : 0x8
|  rd1 : 0x0
|  rd2 : 0x0
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
|extend Module:
|  instr12     : b100
|  instr20     : b10
|  immsrc      : b0
|  extImm      : 0x4
|___________________________



___________________________
|alu Module:
|  a           : 0x0
|  b           : 0x4
|  sum         : 0x4
|  out         : 0x4
|  aluControl  : b10
|  zero        : b0
|  lt          : b1
|  gt          : b0
|___________________________



___________________________
|datapath Module:
|  inst            : 0x400093
|  memToReg        : b0
|  readData        : 0x0
|  aluOut          : 0x4
|  result          : 0x4
|  pcNext          : 0x4
|  branchExtImm    : 0x400
|  extImm          : b4
|  rd2             : b0
|  writeData       : b0
|  memAdd          : b1
|  pcBranch        : 0x400
|  pcRegBranch     : 0x4
|  pcPlus4         : 0x4
|  branchSrc       : b0
|  ra4             : 0x4
|___________________________



___________________________
|decoder Module:
|  branchSrc   : b0
|  opcode      : b10011
|  funct3      : b0
|  regSrc      : b0
|  immSrc      : b0
|  aluSrc      : b1
|  pcSrc       : b0
|  aluControl  : b10
|  memToReg    : b0
|  writeEn     : b0
|  readEn     : b0
|  zero        : b0
|  lt          : b1
|  gt          : b0
|___________________________
___________________________
|riscv Module:
|  instr       : 0x400093
|  writeEn    : b0
|  readEn    : b0
|  writeData   : b0
|  memAdd      : b1
|  readData    : 0x0
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
|top Module:
|  instr pulled: 0x400093
|  pc pulled   : b0
|  writeEn     : b0
|  readEn      : b0
|  mem in      : b0
|  mem add     : b1
|  mem out     : b0
|___________________________
[[35minfo[0m] [0.009] STARTING NEXT CYCLE: 2
[[35minfo[0m] [0.009] valid = 1



___________________________
|extend Module:
|  instr12     : b0
|  instr20     : b10000000000
|  immsrc      : b0
|  extImm      : 0x0
|___________________________



___________________________
|regfile Module:
|  we3 : b0
|  ra1 : b1
|  ra2 : b1
|  wa3 : b0
|  wd3 : 0x0
|  r31 : 0xc
|  rd1 : 0x4
|  rd2 : 0x4
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
|extend Module:
|  instr12     : b1
|  instr20     : b10000000000
|  immsrc      : b0
|  extImm      : 0x1
|___________________________



___________________________
|alu Module:
|  a           : 0x4
|  b           : 0x1
|  sum         : 0x5
|  out         : 0x0
|  aluControl  : b0
|  zero        : b0
|  lt          : b0
|  gt          : b1
|___________________________



___________________________
|datapath Module:
|  inst            : 0x10a023
|  memToReg        : b1
|  readData        : 0x0
|  aluOut          : 0x0
|  result          : 0x0
|  pcNext          : 0x8
|  branchExtImm    : 0x0
|  extImm          : b1
|  rd2             : b4
|  writeData       : b4
|  memAdd          : b4
|  pcBranch        : 0x4
|  pcRegBranch     : 0x0
|  pcPlus4         : 0x8
|  branchSrc       : b0
|  ra4             : 0x0
|___________________________



___________________________
|decoder Module:
|  branchSrc   : b0
|  opcode      : b100011
|  funct3      : b10
|  regSrc      : b0
|  immSrc      : b0
|  aluSrc      : b1
|  pcSrc       : b0
|  aluControl  : b0
|  memToReg    : b0
|  writeEn     : b1
|  readEn     : b0
|  zero        : b0
|  lt          : b0
|  gt          : b1
|___________________________
___________________________
|riscv Module:
|  instr       : 0x10a023
|  writeEn    : b1
|  readEn    : b0
|  writeData   : b100
|  memAdd      : b100
|  readData    : 0x0
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
|top Module:
|  instr pulled: 0x10a023
|  pc pulled   : b1
|  writeEn     : b1
|  readEn      : b0
|  mem in      : b100
|  mem add     : b100
|  mem out     : b0
|___________________________
[[35minfo[0m] [0.015] STARTING NEXT CYCLE: 3
[[35minfo[0m] [0.015] valid = 1



___________________________
|extend Module:
|  instr12     : b1
|  instr20     : b1
|  immsrc      : b0
|  extImm      : 0x1
|___________________________



___________________________
|regfile Module:
|  we3 : b1
|  ra1 : b0
|  ra2 : b10
|  wa3 : b10
|  wd3 : 0x2
|  r31 : 0x10
|  rd1 : 0x0
|  rd2 : 0x0
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
|extend Module:
|  instr12     : b10
|  instr20     : b1
|  immsrc      : b0
|  extImm      : 0x2
|___________________________



___________________________
|alu Module:
|  a           : 0x0
|  b           : 0x2
|  sum         : 0x2
|  out         : 0x2
|  aluControl  : b10
|  zero        : b0
|  lt          : b1
|  gt          : b0
|___________________________



___________________________
|datapath Module:
|  inst            : 0x200113
|  memToReg        : b0
|  readData        : 0x0
|  aluOut          : 0x2
|  result          : 0x2
|  pcNext          : 0xc
|  branchExtImm    : 0x1
|  extImm          : b2
|  rd2             : b0
|  writeData       : b0
|  memAdd          : b2
|  pcBranch        : 0x9
|  pcRegBranch     : 0x2
|  pcPlus4         : 0xc
|  branchSrc       : b0
|  ra4             : 0x2
|___________________________



___________________________
|decoder Module:
|  branchSrc   : b0
|  opcode      : b10011
|  funct3      : b0
|  regSrc      : b0
|  immSrc      : b0
|  aluSrc      : b1
|  pcSrc       : b0
|  aluControl  : b10
|  memToReg    : b0
|  writeEn     : b0
|  readEn     : b0
|  zero        : b0
|  lt          : b1
|  gt          : b0
|___________________________
___________________________
|riscv Module:
|  instr       : 0x200113
|  writeEn    : b0
|  readEn    : b0
|  writeData   : b0
|  memAdd      : b10
|  readData    : 0x0
|___________________________



Memory___________________________
| mem(0) = 0
| mem(1) = 0
| mem(2) = 0
| mem(3) = 0
| mem(4) = 4
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
|top Module:
|  instr pulled: 0x200113
|  pc pulled   : b10
|  writeEn     : b0
|  readEn      : b0
|  mem in      : b0
|  mem add     : b10
|  mem out     : b0
|___________________________
[[35minfo[0m] [0.020] STARTING NEXT CYCLE: 4
[[35minfo[0m] [0.020] valid = 1



___________________________
|extend Module:
|  instr12     : b10
|  instr20     : b1
|  immsrc      : b0
|  extImm      : 0x2
|___________________________



___________________________
|regfile Module:
|  we3 : b0
|  ra1 : b10
|  ra2 : b10
|  wa3 : b100
|  wd3 : 0x0
|  r31 : 0x14
|  rd1 : 0x2
|  rd2 : 0x2
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
|extend Module:
|  instr12     : b10
|  instr20     : b1
|  immsrc      : b0
|  extImm      : 0x2
|___________________________



___________________________
|alu Module:
|  a           : 0x2
|  b           : 0x2
|  sum         : 0x4
|  out         : 0x2
|  aluControl  : b0
|  zero        : b1
|  lt          : b0
|  gt          : b0
|___________________________



___________________________
|datapath Module:
|  inst            : 0x212223
|  memToReg        : b1
|  readData        : 0x0
|  aluOut          : 0x2
|  result          : 0x0
|  pcNext          : 0x10
|  branchExtImm    : 0x2
|  extImm          : b2
|  rd2             : b2
|  writeData       : b2
|  memAdd          : b6
|  pcBranch        : 0xe
|  pcRegBranch     : 0x2
|  pcPlus4         : 0x10
|  branchSrc       : b0
|  ra4             : 0x0
|___________________________



___________________________
|decoder Module:
|  branchSrc   : b0
|  opcode      : b100011
|  funct3      : b10
|  regSrc      : b0
|  immSrc      : b0
|  aluSrc      : b1
|  pcSrc       : b0
|  aluControl  : b0
|  memToReg    : b0
|  writeEn     : b1
|  readEn     : b0
|  zero        : b1
|  lt          : b0
|  gt          : b0
|___________________________
___________________________
|riscv Module:
|  instr       : 0x212223
|  writeEn    : b1
|  readEn    : b0
|  writeData   : b10
|  memAdd      : b110
|  readData    : 0x0
|___________________________



Memory___________________________
| mem(0) = 0
| mem(1) = 0
| mem(2) = 0
| mem(3) = 0
| mem(4) = 4
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
|top Module:
|  instr pulled: 0x212223
|  pc pulled   : b11
|  writeEn     : b1
|  readEn      : b0
|  mem in      : b10
|  mem add     : b110
|  mem out     : b0
|___________________________
[[35minfo[0m] [0.029] STARTING NEXT CYCLE: 5
[[35minfo[0m] [0.029] valid = 1



___________________________
|extend Module:
|  instr12     : b10000000001
|  instr20     : b10000000001
|  immsrc      : b0
|  extImm      : 0x401
|___________________________



___________________________
|regfile Module:
|  we3 : b1
|  ra1 : b0
|  ra2 : b11
|  wa3 : b11
|  wd3 : 0x3
|  r31 : 0x18
|  rd1 : 0x0
|  rd2 : 0x0
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
|extend Module:
|  instr12     : b11
|  instr20     : b10000000001
|  immsrc      : b0
|  extImm      : 0x3
|___________________________



___________________________
|alu Module:
|  a           : 0x0
|  b           : 0x3
|  sum         : 0x3
|  out         : 0x3
|  aluControl  : b10
|  zero        : b0
|  lt          : b1
|  gt          : b0
|___________________________



___________________________
|datapath Module:
|  inst            : 0x300193
|  memToReg        : b0
|  readData        : 0x0
|  aluOut          : 0x3
|  result          : 0x3
|  pcNext          : 0x14
|  branchExtImm    : 0x401
|  extImm          : b3
|  rd2             : b0
|  writeData       : b0
|  memAdd          : b3
|  pcBranch        : 0x411
|  pcRegBranch     : 0x2
|  pcPlus4         : 0x14
|  branchSrc       : b0
|  ra4             : 0x3
|___________________________



___________________________
|decoder Module:
|  branchSrc   : b0
|  opcode      : b10011
|  funct3      : b0
|  regSrc      : b0
|  immSrc      : b0
|  aluSrc      : b1
|  pcSrc       : b0
|  aluControl  : b10
|  memToReg    : b0
|  writeEn     : b0
|  readEn     : b0
|  zero        : b0
|  lt          : b1
|  gt          : b0
|___________________________
___________________________
|riscv Module:
|  instr       : 0x300193
|  writeEn    : b0
|  readEn    : b0
|  writeData   : b0
|  memAdd      : b11
|  readData    : 0x0
|___________________________



Memory___________________________
| mem(0) = 0
| mem(1) = 0
| mem(2) = 0
| mem(3) = 0
| mem(4) = 4
| mem(5) = 0
| mem(6) = 2
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
|top Module:
|  instr pulled: 0x300193
|  pc pulled   : b100
|  writeEn     : b0
|  readEn      : b0
|  mem in      : b0
|  mem add     : b11
|  mem out     : b0
|___________________________
[[35minfo[0m] [0.035] STARTING NEXT CYCLE: 6
[[35minfo[0m] [0.036] valid = 1



___________________________
|extend Module:
|  instr12     : b10
|  instr20     : b1
|  immsrc      : b0
|  extImm      : 0x2
|___________________________



___________________________
|regfile Module:
|  we3 : b1
|  ra1 : b1
|  ra2 : b10
|  wa3 : b100
|  wd3 : 0x6
|  r31 : 0x1c
|  rd1 : 0x4
|  rd2 : 0x2
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
|extend Module:
|  instr12     : b10
|  instr20     : b1
|  immsrc      : b0
|  extImm      : 0x2
|___________________________



___________________________
|alu Module:
|  a           : 0x4
|  b           : 0x2
|  sum         : 0x6
|  out         : 0x6
|  aluControl  : b10
|  zero        : b0
|  lt          : b0
|  gt          : b1
|___________________________



___________________________
|datapath Module:
|  inst            : 0x208233
|  memToReg        : b0
|  readData        : 0x0
|  aluOut          : 0x6
|  result          : 0x6
|  pcNext          : 0x18
|  branchExtImm    : 0x2
|  extImm          : b2
|  rd2             : b2
|  writeData       : b2
|  memAdd          : b8
|  pcBranch        : 0x16
|  pcRegBranch     : 0x6
|  pcPlus4         : 0x18
|  branchSrc       : b0
|  ra4             : 0x6
|___________________________



___________________________
|decoder Module:
|  branchSrc   : b0
|  opcode      : b110011
|  funct3      : b0
|  regSrc      : b0
|  immSrc      : b0
|  aluSrc      : b0
|  pcSrc       : b0
|  aluControl  : b10
|  memToReg    : b0
|  writeEn     : b0
|  readEn     : b0
|  zero        : b0
|  lt          : b0
|  gt          : b1
|___________________________
___________________________
|riscv Module:
|  instr       : 0x208233
|  writeEn    : b0
|  readEn    : b0
|  writeData   : b10
|  memAdd      : b1000
|  readData    : 0x0
|___________________________



Memory___________________________
| mem(0) = 0
| mem(1) = 0
| mem(2) = 0
| mem(3) = 0
| mem(4) = 4
| mem(5) = 0
| mem(6) = 2
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
|top Module:
|  instr pulled: 0x208233
|  pc pulled   : b101
|  writeEn     : b0
|  readEn      : b0
|  mem in      : b10
|  mem add     : b1000
|  mem out     : b0
|___________________________
[[35minfo[0m] [0.039] STARTING NEXT CYCLE: 7
[[35minfo[0m] [0.039] valid = 1



___________________________
|extend Module:
|  instr12     : b10000000010
|  instr20     : b10000000010
|  immsrc      : b0
|  extImm      : 0x402
|___________________________



___________________________
|regfile Module:
|  we3 : b1
|  ra1 : b0
|  ra2 : b101
|  wa3 : b101
|  wd3 : 0x5
|  r31 : 0x20
|  rd1 : 0x0
|  rd2 : 0x0
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
|extend Module:
|  instr12     : b101
|  instr20     : b10000000010
|  immsrc      : b0
|  extImm      : 0x5
|___________________________



___________________________
|alu Module:
|  a           : 0x0
|  b           : 0x5
|  sum         : 0x5
|  out         : 0x5
|  aluControl  : b10
|  zero        : b0
|  lt          : b1
|  gt          : b0
|___________________________



___________________________
|datapath Module:
|  inst            : 0x500293
|  memToReg        : b0
|  readData        : 0x0
|  aluOut          : 0x5
|  result          : 0x5
|  pcNext          : 0x1c
|  branchExtImm    : 0x402
|  extImm          : b5
|  rd2             : b0
|  writeData       : b0
|  memAdd          : b5
|  pcBranch        : 0x41a
|  pcRegBranch     : 0x4
|  pcPlus4         : 0x1c
|  branchSrc       : b0
|  ra4             : 0x5
|___________________________



___________________________
|decoder Module:
|  branchSrc   : b0
|  opcode      : b10011
|  funct3      : b0
|  regSrc      : b0
|  immSrc      : b0
|  aluSrc      : b1
|  pcSrc       : b0
|  aluControl  : b10
|  memToReg    : b0
|  writeEn     : b0
|  readEn     : b0
|  zero        : b0
|  lt          : b1
|  gt          : b0
|___________________________
___________________________
|riscv Module:
|  instr       : 0x500293
|  writeEn    : b0
|  readEn    : b0
|  writeData   : b0
|  memAdd      : b101
|  readData    : 0x0
|___________________________



Memory___________________________
| mem(0) = 0
| mem(1) = 0
| mem(2) = 0
| mem(3) = 0
| mem(4) = 4
| mem(5) = 0
| mem(6) = 2
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
|top Module:
|  instr pulled: 0x500293
|  pc pulled   : b110
|  writeEn     : b0
|  readEn      : b0
|  mem in      : b0
|  mem add     : b101
|  mem out     : b0
|___________________________
[[35minfo[0m] [0.042] STARTING NEXT CYCLE: 8
[[35minfo[0m] [0.042] valid = 1



___________________________
|extend Module:
|  instr12     : b11
|  instr20     : b110000000000
|  immsrc      : b0
|  extImm      : 0x3
|___________________________



___________________________
|regfile Module:
|  we3 : b1
|  ra1 : b100
|  ra2 : b1
|  wa3 : b110
|  wd3 : 0x4
|  r31 : 0x24
|  rd1 : 0x6
|  rd2 : 0x4
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
|extend Module:
|  instr12     : b1
|  instr20     : b110000000000
|  immsrc      : b0
|  extImm      : 0x1
|___________________________



___________________________
|alu Module:
|  a           : 0x6
|  b           : 0x4
|  sum         : 0xa
|  out         : 0x4
|  aluControl  : b0
|  zero        : b0
|  lt          : b0
|  gt          : b1
|___________________________



___________________________
|datapath Module:
|  inst            : 0x127333
|  memToReg        : b0
|  readData        : 0x0
|  aluOut          : 0x4
|  result          : 0x4
|  pcNext          : 0x20
|  branchExtImm    : 0x3
|  extImm          : b1
|  rd2             : b4
|  writeData       : b4
|  memAdd          : bc
|  pcBranch        : 0x1f
|  pcRegBranch     : 0x4
|  pcPlus4         : 0x20
|  branchSrc       : b0
|  ra4             : 0x4
|___________________________



___________________________
|decoder Module:
|  branchSrc   : b0
|  opcode      : b110011
|  funct3      : b111
|  regSrc      : b0
|  immSrc      : b0
|  aluSrc      : b0
|  pcSrc       : b0
|  aluControl  : b0
|  memToReg    : b0
|  writeEn     : b0
|  readEn     : b0
|  zero        : b0
|  lt          : b0
|  gt          : b1
|___________________________
___________________________
|riscv Module:
|  instr       : 0x127333
|  writeEn    : b0
|  readEn    : b0
|  writeData   : b100
|  memAdd      : b1100
|  readData    : 0x0
|___________________________



Memory___________________________
| mem(0) = 0
| mem(1) = 0
| mem(2) = 0
| mem(3) = 0
| mem(4) = 4
| mem(5) = 0
| mem(6) = 2
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
|top Module:
|  instr pulled: 0x127333
|  pc pulled   : b111
|  writeEn     : b0
|  readEn      : b0
|  mem in      : b100
|  mem add     : b1100
|  mem out     : b0
|___________________________
[[35minfo[0m] [0.044] STARTING NEXT CYCLE: 9
[[35minfo[0m] [0.044] valid = 1



___________________________
|extend Module:
|  instr12     : b10000000011
|  instr20     : b10000000011
|  immsrc      : b0
|  extImm      : 0x403
|___________________________



___________________________
|regfile Module:
|  we3 : b1
|  ra1 : b0
|  ra2 : b111
|  wa3 : b111
|  wd3 : 0x7
|  r31 : 0x28
|  rd1 : 0x0
|  rd2 : 0x0
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
|extend Module:
|  instr12     : b111
|  instr20     : b10000000011
|  immsrc      : b0
|  extImm      : 0x7
|___________________________



___________________________
|alu Module:
|  a           : 0x0
|  b           : 0x7
|  sum         : 0x7
|  out         : 0x7
|  aluControl  : b10
|  zero        : b0
|  lt          : b1
|  gt          : b0
|___________________________



___________________________
|datapath Module:
|  inst            : 0x700393
|  memToReg        : b0
|  readData        : 0x0
|  aluOut          : 0x7
|  result          : 0x7
|  pcNext          : 0x24
|  branchExtImm    : 0x403
|  extImm          : b7
|  rd2             : b0
|  writeData       : b0
|  memAdd          : b7
|  pcBranch        : 0x423
|  pcRegBranch     : 0x6
|  pcPlus4         : 0x24
|  branchSrc       : b0
|  ra4             : 0x7
|___________________________



___________________________
|decoder Module:
|  branchSrc   : b0
|  opcode      : b10011
|  funct3      : b0
|  regSrc      : b0
|  immSrc      : b0
|  aluSrc      : b1
|  pcSrc       : b0
|  aluControl  : b10
|  memToReg    : b0
|  writeEn     : b0
|  readEn     : b0
|  zero        : b0
|  lt          : b1
|  gt          : b0
|___________________________
___________________________
|riscv Module:
|  instr       : 0x700393
|  writeEn    : b0
|  readEn    : b0
|  writeData   : b0
|  memAdd      : b111
|  readData    : 0x0
|___________________________



Memory___________________________
| mem(0) = 0
| mem(1) = 0
| mem(2) = 0
| mem(3) = 0
| mem(4) = 4
| mem(5) = 0
| mem(6) = 2
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
|top Module:
|  instr pulled: 0x700393
|  pc pulled   : b1000
|  writeEn     : b0
|  readEn      : b0
|  mem in      : b0
|  mem add     : b111
|  mem out     : b0
|___________________________
[[35minfo[0m] [0.048] STARTING NEXT CYCLE: 10
[[35minfo[0m] [0.048] valid = 1



___________________________
|extend Module:
|  instr12     : b100
|  instr20     : b10
|  immsrc      : b0
|  extImm      : 0x4
|___________________________



___________________________
|regfile Module:
|  we3 : b1
|  ra1 : b111
|  ra2 : b100
|  wa3 : b1000
|  wd3 : 0x1
|  r31 : 0x2c
|  rd1 : 0x7
|  rd2 : 0x6
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
|extend Module:
|  instr12     : b100
|  instr20     : b10
|  immsrc      : b0
|  extImm      : 0x4
|___________________________



___________________________
|alu Module:
|  a           : 0x7
|  b           : 0x6
|  sum         : 0xd
|  out         : 0x1
|  aluControl  : b110
|  zero        : b0
|  lt          : b0
|  gt          : b1
|___________________________



___________________________
|datapath Module:
|  inst            : 0x43c433
|  memToReg        : b0
|  readData        : 0x0
|  aluOut          : 0x1
|  result          : 0x1
|  pcNext          : 0x28
|  branchExtImm    : 0x4
|  extImm          : b4
|  rd2             : b6
|  writeData       : b6
|  memAdd          : bf
|  pcBranch        : 0x28
|  pcRegBranch     : 0x0
|  pcPlus4         : 0x28
|  branchSrc       : b0
|  ra4             : 0x1
|___________________________



___________________________
|decoder Module:
|  branchSrc   : b0
|  opcode      : b110011
|  funct3      : b100
|  regSrc      : b0
|  immSrc      : b0
|  aluSrc      : b0
|  pcSrc       : b0
|  aluControl  : b110
|  memToReg    : b0
|  writeEn     : b0
|  readEn     : b0
|  zero        : b0
|  lt          : b0
|  gt          : b1
|___________________________
___________________________
|riscv Module:
|  instr       : 0x43c433
|  writeEn    : b0
|  readEn    : b0
|  writeData   : b110
|  memAdd      : b1111
|  readData    : 0x0
|___________________________



Memory___________________________
| mem(0) = 0
| mem(1) = 0
| mem(2) = 0
| mem(3) = 0
| mem(4) = 4
| mem(5) = 0
| mem(6) = 2
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
|top Module:
|  instr pulled: 0x43c433
|  pc pulled   : b1001
|  writeEn     : b0
|  readEn      : b0
|  mem in      : b110
|  mem add     : b1111
|  mem out     : b0
|___________________________
[[35minfo[0m] [0.051] STARTING NEXT CYCLE: 11
[[35minfo[0m] [0.051] valid = 1



___________________________
|extend Module:
|  instr12     : b10000000100
|  instr20     : b100
|  immsrc      : b0
|  extImm      : 0x404
|___________________________



___________________________
|regfile Module:
|  we3 : b1
|  ra1 : b0
|  ra2 : b1000
|  wa3 : b1001
|  wd3 : 0x8
|  r31 : 0x30
|  rd1 : 0x0
|  rd2 : 0x1
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
|extend Module:
|  instr12     : b1000
|  instr20     : b100
|  immsrc      : b0
|  extImm      : 0x8
|___________________________



___________________________
|alu Module:
|  a           : 0x0
|  b           : 0x8
|  sum         : 0x8
|  out         : 0x8
|  aluControl  : b10
|  zero        : b0
|  lt          : b1
|  gt          : b0
|___________________________



___________________________
|datapath Module:
|  inst            : 0x800493
|  memToReg        : b0
|  readData        : 0x0
|  aluOut          : 0x8
|  result          : 0x8
|  pcNext          : 0x2c
|  branchExtImm    : 0x404
|  extImm          : b8
|  rd2             : b1
|  writeData       : b1
|  memAdd          : b9
|  pcBranch        : 0x42c
|  pcRegBranch     : 0x8
|  pcPlus4         : 0x2c
|  branchSrc       : b0
|  ra4             : 0x8
|___________________________



___________________________
|decoder Module:
|  branchSrc   : b0
|  opcode      : b10011
|  funct3      : b0
|  regSrc      : b0
|  immSrc      : b0
|  aluSrc      : b1
|  pcSrc       : b0
|  aluControl  : b10
|  memToReg    : b0
|  writeEn     : b0
|  readEn     : b0
|  zero        : b0
|  lt          : b1
|  gt          : b0
|___________________________
___________________________
|riscv Module:
|  instr       : 0x800493
|  writeEn    : b0
|  readEn    : b0
|  writeData   : b1
|  memAdd      : b1001
|  readData    : 0x0
|___________________________



Memory___________________________
| mem(0) = 0
| mem(1) = 0
| mem(2) = 0
| mem(3) = 0
| mem(4) = 4
| mem(5) = 0
| mem(6) = 2
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
|top Module:
|  instr pulled: 0x800493
|  pc pulled   : b1010
|  writeEn     : b0
|  readEn      : b0
|  mem in      : b1
|  mem add     : b1001
|  mem out     : b0
|___________________________
[[35minfo[0m] [0.053] STARTING NEXT CYCLE: 12
[[35minfo[0m] [0.053] valid = 1



___________________________
|extend Module:
|  instr12     : b101
|  instr20     : b1
|  immsrc      : b0
|  extImm      : 0x5
|___________________________



___________________________
|regfile Module:
|  we3 : b1
|  ra1 : b1001
|  ra2 : b10
|  wa3 : b1010
|  wd3 : 0xa
|  r31 : 0x34
|  rd1 : 0x8
|  rd2 : 0x2
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
|extend Module:
|  instr12     : b10
|  instr20     : b1
|  immsrc      : b0
|  extImm      : 0x2
|___________________________



___________________________
|alu Module:
|  a           : 0x8
|  b           : 0x2
|  sum         : 0xa
|  out         : 0xa
|  aluControl  : b1
|  zero        : b0
|  lt          : b0
|  gt          : b1
|___________________________



___________________________
|datapath Module:
|  inst            : 0x24e533
|  memToReg        : b0
|  readData        : 0x0
|  aluOut          : 0xa
|  result          : 0xa
|  pcNext          : 0x30
|  branchExtImm    : 0x5
|  extImm          : b2
|  rd2             : b2
|  writeData       : b2
|  memAdd          : b12
|  pcBranch        : 0x31
|  pcRegBranch     : 0xa
|  pcPlus4         : 0x30
|  branchSrc       : b0
|  ra4             : 0xa
|___________________________



___________________________
|decoder Module:
|  branchSrc   : b0
|  opcode      : b110011
|  funct3      : b110
|  regSrc      : b0
|  immSrc      : b0
|  aluSrc      : b0
|  pcSrc       : b0
|  aluControl  : b1
|  memToReg    : b0
|  writeEn     : b0
|  readEn     : b0
|  zero        : b0
|  lt          : b0
|  gt          : b1
|___________________________
___________________________
|riscv Module:
|  instr       : 0x24e533
|  writeEn    : b0
|  readEn    : b0
|  writeData   : b10
|  memAdd      : b10010
|  readData    : 0x0
|___________________________



Memory___________________________
| mem(0) = 0
| mem(1) = 0
| mem(2) = 0
| mem(3) = 0
| mem(4) = 4
| mem(5) = 0
| mem(6) = 2
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
|top Module:
|  instr pulled: 0x24e533
|  pc pulled   : b1011
|  writeEn     : b0
|  readEn      : b0
|  mem in      : b10
|  mem add     : b10010
|  mem out     : b0
|___________________________
[[35minfo[0m] [0.056] STARTING NEXT CYCLE: 13
[[35minfo[0m] [0.056] valid = 1



___________________________
|extend Module:
|  instr12     : b10000000101
|  instr20     : b10000000101
|  immsrc      : b0
|  extImm      : 0x405
|___________________________



___________________________
|regfile Module:
|  we3 : b1
|  ra1 : b0
|  ra2 : b1011
|  wa3 : b1011
|  wd3 : 0xb
|  r31 : 0x38
|  rd1 : 0x0
|  rd2 : 0x0
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
|extend Module:
|  instr12     : b1011
|  instr20     : b10000000101
|  immsrc      : b0
|  extImm      : 0xb
|___________________________



___________________________
|alu Module:
|  a           : 0x0
|  b           : 0xb
|  sum         : 0xb
|  out         : 0xb
|  aluControl  : b10
|  zero        : b0
|  lt          : b1
|  gt          : b0
|___________________________



___________________________
|datapath Module:
|  inst            : 0xb00593
|  memToReg        : b0
|  readData        : 0x0
|  aluOut          : 0xb
|  result          : 0xb
|  pcNext          : 0x34
|  branchExtImm    : 0x405
|  extImm          : bb
|  rd2             : b0
|  writeData       : b0
|  memAdd          : bb
|  pcBranch        : 0x435
|  pcRegBranch     : 0xa
|  pcPlus4         : 0x34
|  branchSrc       : b0
|  ra4             : 0xb
|___________________________



___________________________
|decoder Module:
|  branchSrc   : b0
|  opcode      : b10011
|  funct3      : b0
|  regSrc      : b0
|  immSrc      : b0
|  aluSrc      : b1
|  pcSrc       : b0
|  aluControl  : b10
|  memToReg    : b0
|  writeEn     : b0
|  readEn     : b0
|  zero        : b0
|  lt          : b1
|  gt          : b0
|___________________________
___________________________
|riscv Module:
|  instr       : 0xb00593
|  writeEn    : b0
|  readEn    : b0
|  writeData   : b0
|  memAdd      : b1011
|  readData    : 0x0
|___________________________



Memory___________________________
| mem(0) = 0
| mem(1) = 0
| mem(2) = 0
| mem(3) = 0
| mem(4) = 4
| mem(5) = 0
| mem(6) = 2
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
|top Module:
|  instr pulled: 0xb00593
|  pc pulled   : b1100
|  writeEn     : b0
|  readEn      : b0
|  mem in      : b0
|  mem add     : b1011
|  mem out     : b0
|___________________________
[[35minfo[0m] [0.059] STARTING NEXT CYCLE: 14
[[35minfo[0m] [0.059] valid = 1



___________________________
|extend Module:
|  instr12     : b110
|  instr20     : b110000000001
|  immsrc      : b0
|  extImm      : 0x6
|___________________________



___________________________
|regfile Module:
|  we3 : b1
|  ra1 : b111
|  ra2 : b11
|  wa3 : b1100
|  wd3 : 0x3
|  r31 : 0x3c
|  rd1 : 0x7
|  rd2 : 0x3
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
|extend Module:
|  instr12     : b11
|  instr20     : b110000000001
|  immsrc      : b0
|  extImm      : 0x3
|___________________________



___________________________
|alu Module:
|  a           : 0x7
|  b           : 0x3
|  sum         : 0xa
|  out         : 0x3
|  aluControl  : b0
|  zero        : b0
|  lt          : b0
|  gt          : b1
|___________________________



___________________________
|datapath Module:
|  inst            : 0x33f613
|  memToReg        : b0
|  readData        : 0x0
|  aluOut          : 0x3
|  result          : 0x3
|  pcNext          : 0x38
|  branchExtImm    : 0x6
|  extImm          : b3
|  rd2             : b3
|  writeData       : b3
|  memAdd          : b13
|  pcBranch        : 0x3a
|  pcRegBranch     : 0x2
|  pcPlus4         : 0x38
|  branchSrc       : b0
|  ra4             : 0x3
|___________________________



___________________________
|decoder Module:
|  branchSrc   : b0
|  opcode      : b10011
|  funct3      : b111
|  regSrc      : b0
|  immSrc      : b0
|  aluSrc      : b1
|  pcSrc       : b0
|  aluControl  : b0
|  memToReg    : b0
|  writeEn     : b0
|  readEn     : b0
|  zero        : b0
|  lt          : b0
|  gt          : b1
|___________________________
___________________________
|riscv Module:
|  instr       : 0x33f613
|  writeEn    : b0
|  readEn    : b0
|  writeData   : b11
|  memAdd      : b10011
|  readData    : 0x0
|___________________________



Memory___________________________
| mem(0) = 0
| mem(1) = 0
| mem(2) = 0
| mem(3) = 0
| mem(4) = 4
| mem(5) = 0
| mem(6) = 2
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
|top Module:
|  instr pulled: 0x33f613
|  pc pulled   : b1101
|  writeEn     : b0
|  readEn      : b0
|  mem in      : b11
|  mem add     : b10011
|  mem out     : b0
|___________________________
[[35minfo[0m] [0.061] STARTING NEXT CYCLE: 15
[[35minfo[0m] [0.061] valid = 1



___________________________
|extend Module:
|  instr12     : b10000000110
|  instr20     : b10000000111
|  immsrc      : b0
|  extImm      : 0x406
|___________________________



___________________________
|regfile Module:
|  we3 : b1
|  ra1 : b1001
|  ra2 : b1111
|  wa3 : b1101
|  wd3 : 0x7
|  r31 : 0x40
|  rd1 : 0x8
|  rd2 : 0x0
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
|extend Module:
|  instr12     : b1111
|  instr20     : b10000000111
|  immsrc      : b0
|  extImm      : 0xf
|___________________________



___________________________
|alu Module:
|  a           : 0x8
|  b           : 0xf
|  sum         : 0x17
|  out         : 0x7
|  aluControl  : b110
|  zero        : b0
|  lt          : b1
|  gt          : b0
|___________________________



___________________________
|datapath Module:
|  inst            : 0xf4c693
|  memToReg        : b0
|  readData        : 0x0
|  aluOut          : 0x7
|  result          : 0x7
|  pcNext          : 0x3c
|  branchExtImm    : 0x406
|  extImm          : bf
|  rd2             : b0
|  writeData       : b0
|  memAdd          : b15
|  pcBranch        : 0x43e
|  pcRegBranch     : 0x6
|  pcPlus4         : 0x3c
|  branchSrc       : b0
|  ra4             : 0x7
|___________________________



___________________________
|decoder Module:
|  branchSrc   : b0
|  opcode      : b10011
|  funct3      : b100
|  regSrc      : b0
|  immSrc      : b0
|  aluSrc      : b1
|  pcSrc       : b0
|  aluControl  : b110
|  memToReg    : b0
|  writeEn     : b0
|  readEn     : b0
|  zero        : b0
|  lt          : b1
|  gt          : b0
|___________________________
___________________________
|riscv Module:
|  instr       : 0xf4c693
|  writeEn    : b0
|  readEn    : b0
|  writeData   : b0
|  memAdd      : b10101
|  readData    : 0x0
|___________________________



Memory___________________________
| mem(0) = 0
| mem(1) = 0
| mem(2) = 0
| mem(3) = 0
| mem(4) = 4
| mem(5) = 0
| mem(6) = 2
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
|top Module:
|  instr pulled: 0xf4c693
|  pc pulled   : b1110
|  writeEn     : b0
|  readEn      : b0
|  mem in      : b0
|  mem add     : b10101
|  mem out     : b0
|___________________________
[[35minfo[0m] [0.064] STARTING NEXT CYCLE: 16
[[35minfo[0m] [0.064] valid = 1



___________________________
|extend Module:
|  instr12     : b111
|  instr20     : b10000000011
|  immsrc      : b0
|  extImm      : 0x7
|___________________________



___________________________
|regfile Module:
|  we3 : b1
|  ra1 : b1001
|  ra2 : b111
|  wa3 : b1110
|  wd3 : 0xf
|  r31 : 0x44
|  rd1 : 0x8
|  rd2 : 0x7
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
|extend Module:
|  instr12     : b111
|  instr20     : b10000000011
|  immsrc      : b0
|  extImm      : 0x7
|___________________________



___________________________
|alu Module:
|  a           : 0x8
|  b           : 0x7
|  sum         : 0xf
|  out         : 0xf
|  aluControl  : b1
|  zero        : b0
|  lt          : b0
|  gt          : b1
|___________________________



___________________________
|datapath Module:
|  inst            : 0x74e713
|  memToReg        : b0
|  readData        : 0x0
|  aluOut          : 0xf
|  result          : 0xf
|  pcNext          : 0x40
|  branchExtImm    : 0x7
|  extImm          : b7
|  rd2             : b7
|  writeData       : b7
|  memAdd          : b16
|  pcBranch        : 0x43
|  pcRegBranch     : 0xe
|  pcPlus4         : 0x40
|  branchSrc       : b0
|  ra4             : 0xf
|___________________________



___________________________
|decoder Module:
|  branchSrc   : b0
|  opcode      : b10011
|  funct3      : b110
|  regSrc      : b0
|  immSrc      : b0
|  aluSrc      : b1
|  pcSrc       : b0
|  aluControl  : b1
|  memToReg    : b0
|  writeEn     : b0
|  readEn     : b0
|  zero        : b0
|  lt          : b0
|  gt          : b1
|___________________________
___________________________
|riscv Module:
|  instr       : 0x74e713
|  writeEn    : b0
|  readEn    : b0
|  writeData   : b111
|  memAdd      : b10110
|  readData    : 0x0
|___________________________



Memory___________________________
| mem(0) = 0
| mem(1) = 0
| mem(2) = 0
| mem(3) = 0
| mem(4) = 4
| mem(5) = 0
| mem(6) = 2
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
|top Module:
|  instr pulled: 0x74e713
|  pc pulled   : b1111
|  writeEn     : b0
|  readEn      : b0
|  mem in      : b111
|  mem add     : b10110
|  mem out     : b0
|___________________________
[[35minfo[0m] [0.067] STARTING NEXT CYCLE: 17
[[35minfo[0m] [0.067] valid = 1



___________________________
|extend Module:
|  instr12     : b10000000111
|  instr20     : b10000000111
|  immsrc      : b0
|  extImm      : 0x407
|___________________________



___________________________
|regfile Module:
|  we3 : b1
|  ra1 : b0
|  ra2 : b1111
|  wa3 : b1111
|  wd3 : 0xf
|  r31 : 0x48
|  rd1 : 0x0
|  rd2 : 0x0
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
|extend Module:
|  instr12     : b1111
|  instr20     : b10000000111
|  immsrc      : b0
|  extImm      : 0xf
|___________________________



___________________________
|alu Module:
|  a           : 0x0
|  b           : 0xf
|  sum         : 0xf
|  out         : 0xf
|  aluControl  : b10
|  zero        : b0
|  lt          : b1
|  gt          : b0
|___________________________



___________________________
|datapath Module:
|  inst            : 0xf00793
|  memToReg        : b0
|  readData        : 0x0
|  aluOut          : 0xf
|  result          : 0xf
|  pcNext          : 0x44
|  branchExtImm    : 0x407
|  extImm          : bf
|  rd2             : b0
|  writeData       : b0
|  memAdd          : bf
|  pcBranch        : 0x447
|  pcRegBranch     : 0xe
|  pcPlus4         : 0x44
|  branchSrc       : b0
|  ra4             : 0xf
|___________________________



___________________________
|decoder Module:
|  branchSrc   : b0
|  opcode      : b10011
|  funct3      : b0
|  regSrc      : b0
|  immSrc      : b0
|  aluSrc      : b1
|  pcSrc       : b0
|  aluControl  : b10
|  memToReg    : b0
|  writeEn     : b0
|  readEn     : b0
|  zero        : b0
|  lt          : b1
|  gt          : b0
|___________________________
___________________________
|riscv Module:
|  instr       : 0xf00793
|  writeEn    : b0
|  readEn    : b0
|  writeData   : b0
|  memAdd      : b1111
|  readData    : 0x0
|___________________________



Memory___________________________
| mem(0) = 0
| mem(1) = 0
| mem(2) = 0
| mem(3) = 0
| mem(4) = 4
| mem(5) = 0
| mem(6) = 2
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
|top Module:
|  instr pulled: 0xf00793
|  pc pulled   : b10000
|  writeEn     : b0
|  readEn      : b0
|  mem in      : b0
|  mem add     : b1111
|  mem out     : b0
|___________________________
[[35minfo[0m] [0.070] STARTING NEXT CYCLE: 18
[[35minfo[0m] [0.070] valid = 1



___________________________
|extend Module:
|  instr12     : b1000001000
|  instr20     : b11000000011
|  immsrc      : b0
|  extImm      : 0x208
|___________________________



___________________________
|regfile Module:
|  we3 : b1
|  ra1 : b1111
|  ra2 : b111
|  wa3 : b10000
|  wd3 : 0x8
|  r31 : 0x4c
|  rd1 : 0xf
|  rd2 : 0x7
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
|extend Module:
|  instr12     : b10000000111
|  instr20     : b11000000011
|  immsrc      : b0
|  extImm      : 0x407
|___________________________



___________________________
|alu Module:
|  a           : 0xf
|  b           : 0x7
|  sum         : 0x8
|  out         : 0x8
|  aluControl  : b1100
|  zero        : b0
|  lt          : b0
|  gt          : b1
|___________________________



___________________________
|datapath Module:
|  inst            : 0x40778833
|  memToReg        : b0
|  readData        : 0x0
|  aluOut          : 0x8
|  result          : 0x8
|  pcNext          : 0x48
|  branchExtImm    : 0x208
|  extImm          : b407
|  rd2             : b7
|  writeData       : b7
|  memAdd          : b41f
|  pcBranch        : 0x24c
|  pcRegBranch     : 0x8
|  pcPlus4         : 0x48
|  branchSrc       : b0
|  ra4             : 0x8
|___________________________



___________________________
|decoder Module:
|  branchSrc   : b0
|  opcode      : b110011
|  funct3      : b0
|  regSrc      : b0
|  immSrc      : b0
|  aluSrc      : b0
|  pcSrc       : b0
|  aluControl  : b1100
|  memToReg    : b0
|  writeEn     : b0
|  readEn     : b0
|  zero        : b0
|  lt          : b0
|  gt          : b1
|___________________________
___________________________
|riscv Module:
|  instr       : 0x40778833
|  writeEn    : b0
|  readEn    : b0
|  writeData   : b111
|  memAdd      : b10000011111
|  readData    : 0x0
|___________________________



Memory___________________________
| mem(0) = 0
| mem(1) = 0
| mem(2) = 0
| mem(3) = 0
| mem(4) = 4
| mem(5) = 0
| mem(6) = 2
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
|top Module:
|  instr pulled: 0x40778833
|  pc pulled   : b10001
|  writeEn     : b0
|  readEn      : b0
|  mem in      : b111
|  mem add     : b10000011111
|  mem out     : b0
|___________________________
[[35minfo[0m] [0.072] STARTING NEXT CYCLE: 19
[[35minfo[0m] [0.073] valid = 1



___________________________
|extend Module:
|  instr12     : b10000001000
|  instr20     : b100000000001
|  immsrc      : b0
|  extImm      : 0x408
|___________________________



___________________________
|regfile Module:
|  we3 : b1
|  ra1 : b10
|  ra2 : b10
|  wa3 : b10001
|  wd3 : 0x8
|  r31 : 0x50
|  rd1 : 0x2
|  rd2 : 0x2
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
|extend Module:
|  instr12     : b10
|  instr20     : b100000000001
|  immsrc      : b0
|  extImm      : 0x2
|___________________________



___________________________
|alu Module:
|  a           : 0x2
|  b           : 0x2
|  sum         : 0x4
|  out         : 0x8
|  aluControl  : b11
|  zero        : b1
|  lt          : b0
|  gt          : b0
|___________________________



___________________________
|datapath Module:
|  inst            : 0x2118b3
|  memToReg        : b0
|  readData        : 0x0
|  aluOut          : 0x8
|  result          : 0x8
|  pcNext          : 0x4c
|  branchExtImm    : 0x408
|  extImm          : b2
|  rd2             : b2
|  writeData       : b2
|  memAdd          : b13
|  pcBranch        : 0x450
|  pcRegBranch     : 0x8
|  pcPlus4         : 0x4c
|  branchSrc       : b0
|  ra4             : 0x8
|___________________________



___________________________
|decoder Module:
|  branchSrc   : b0
|  opcode      : b110011
|  funct3      : b1
|  regSrc      : b0
|  immSrc      : b0
|  aluSrc      : b0
|  pcSrc       : b0
|  aluControl  : b11
|  memToReg    : b0
|  writeEn     : b0
|  readEn     : b0
|  zero        : b1
|  lt          : b0
|  gt          : b0
|___________________________
___________________________
|riscv Module:
|  instr       : 0x2118b3
|  writeEn    : b0
|  readEn    : b0
|  writeData   : b10
|  memAdd      : b10011
|  readData    : 0x0
|___________________________



Memory___________________________
| mem(0) = 0
| mem(1) = 0
| mem(2) = 0
| mem(3) = 0
| mem(4) = 4
| mem(5) = 0
| mem(6) = 2
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
|top Module:
|  instr pulled: 0x2118b3
|  pc pulled   : b10010
|  writeEn     : b0
|  readEn      : b0
|  mem in      : b10
|  mem add     : b10011
|  mem out     : b0
|___________________________
[[35minfo[0m] [0.075] STARTING NEXT CYCLE: 20
[[35minfo[0m] [0.075] valid = 1



___________________________
|extend Module:
|  instr12     : b10000001001
|  instr20     : b10000000001
|  immsrc      : b0
|  extImm      : 0x409
|___________________________



___________________________
|regfile Module:
|  we3 : b1
|  ra1 : b10
|  ra2 : b11
|  wa3 : b10011
|  wd3 : 0x1
|  r31 : 0x54
|  rd1 : 0x2
|  rd2 : 0x3
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
|extend Module:
|  instr12     : b11
|  instr20     : b10000000001
|  immsrc      : b0
|  extImm      : 0x3
|___________________________



___________________________
|alu Module:
|  a           : 0x2
|  b           : 0x3
|  sum         : 0xffffffff
|  out         : 0x1
|  aluControl  : b1001
|  zero        : b0
|  lt          : b1
|  gt          : b0
|___________________________



___________________________
|datapath Module:
|  inst            : 0x3129b3
|  memToReg        : b0
|  readData        : 0x0
|  aluOut          : 0x1
|  result          : 0x1
|  pcNext          : 0x50
|  branchExtImm    : 0x409
|  extImm          : b3
|  rd2             : b3
|  writeData       : b3
|  memAdd          : b15
|  pcBranch        : 0x455
|  pcRegBranch     : 0x0
|  pcPlus4         : 0x50
|  branchSrc       : b0
|  ra4             : 0x1
|___________________________



___________________________
|decoder Module:
|  branchSrc   : b0
|  opcode      : b110011
|  funct3      : b10
|  regSrc      : b0
|  immSrc      : b0
|  aluSrc      : b0
|  pcSrc       : b0
|  aluControl  : b1001
|  memToReg    : b0
|  writeEn     : b0
|  readEn     : b0
|  zero        : b0
|  lt          : b1
|  gt          : b0
|___________________________
___________________________
|riscv Module:
|  instr       : 0x3129b3
|  writeEn    : b0
|  readEn    : b0
|  writeData   : b11
|  memAdd      : b10101
|  readData    : 0x0
|___________________________



Memory___________________________
| mem(0) = 0
| mem(1) = 0
| mem(2) = 0
| mem(3) = 0
| mem(4) = 4
| mem(5) = 0
| mem(6) = 2
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
|top Module:
|  instr pulled: 0x3129b3
|  pc pulled   : b10011
|  writeEn     : b0
|  readEn      : b0
|  mem in      : b11
|  mem add     : b10101
|  mem out     : b0
|___________________________
[[35minfo[0m] [0.077] STARTING NEXT CYCLE: 21
[[35minfo[0m] [0.078] valid = 1



___________________________
|extend Module:
|  instr12     : b1010
|  instr20     : b10000000001
|  immsrc      : b0
|  extImm      : 0xa
|___________________________



___________________________
|regfile Module:
|  we3 : b1
|  ra1 : b1001
|  ra2 : b11
|  wa3 : b10100
|  wd3 : 0x0
|  r31 : 0x58
|  rd1 : 0x8
|  rd2 : 0x3
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
|extend Module:
|  instr12     : b11
|  instr20     : b10000000001
|  immsrc      : b0
|  extImm      : 0x3
|___________________________



___________________________
|alu Module:
|  a           : 0x8
|  b           : 0x3
|  sum         : 0x5
|  out         : 0x0
|  aluControl  : b1001
|  zero        : b0
|  lt          : b0
|  gt          : b1
|___________________________



___________________________
|datapath Module:
|  inst            : 0x34aa33
|  memToReg        : b0
|  readData        : 0x0
|  aluOut          : 0x0
|  result          : 0x0
|  pcNext          : 0x54
|  branchExtImm    : 0xa
|  extImm          : b3
|  rd2             : b3
|  writeData       : b3
|  memAdd          : b1c
|  pcBranch        : 0x5a
|  pcRegBranch     : 0x0
|  pcPlus4         : 0x54
|  branchSrc       : b0
|  ra4             : 0x0
|___________________________



___________________________
|decoder Module:
|  branchSrc   : b0
|  opcode      : b110011
|  funct3      : b10
|  regSrc      : b0
|  immSrc      : b0
|  aluSrc      : b0
|  pcSrc       : b0
|  aluControl  : b1001
|  memToReg    : b0
|  writeEn     : b0
|  readEn     : b0
|  zero        : b0
|  lt          : b0
|  gt          : b1
|___________________________
___________________________
|riscv Module:
|  instr       : 0x34aa33
|  writeEn    : b0
|  readEn    : b0
|  writeData   : b11
|  memAdd      : b11100
|  readData    : 0x0
|___________________________



Memory___________________________
| mem(0) = 0
| mem(1) = 0
| mem(2) = 0
| mem(3) = 0
| mem(4) = 4
| mem(5) = 0
| mem(6) = 2
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
|top Module:
|  instr pulled: 0x34aa33
|  pc pulled   : b10100
|  writeEn     : b0
|  readEn      : b0
|  mem in      : b11
|  mem add     : b11100
|  mem out     : b0
|___________________________
[[35minfo[0m] [0.080] STARTING NEXT CYCLE: 22
[[35minfo[0m] [0.080] valid = 1



___________________________
|extend Module:
|  instr12     : b10000001010
|  instr20     : b100000000001
|  immsrc      : b0
|  extImm      : 0x40a
|___________________________



___________________________
|regfile Module:
|  we3 : b1
|  ra1 : b111
|  ra2 : b10
|  wa3 : b10101
|  wd3 : 0x1
|  r31 : 0x5c
|  rd1 : 0x7
|  rd2 : 0x2
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
|extend Module:
|  instr12     : b10
|  instr20     : b100000000001
|  immsrc      : b0
|  extImm      : 0x2
|___________________________



___________________________
|alu Module:
|  a           : 0x7
|  b           : 0x2
|  sum         : 0x9
|  out         : 0x1
|  aluControl  : b111
|  zero        : b0
|  lt          : b0
|  gt          : b1
|___________________________



___________________________
|datapath Module:
|  inst            : 0x23dab3
|  memToReg        : b0
|  readData        : 0x0
|  aluOut          : 0x1
|  result          : 0x1
|  pcNext          : 0x58
|  branchExtImm    : 0x40a
|  extImm          : b2
|  rd2             : b2
|  writeData       : b2
|  memAdd          : b1c
|  pcBranch        : 0x45e
|  pcRegBranch     : 0x0
|  pcPlus4         : 0x58
|  branchSrc       : b0
|  ra4             : 0x1
|___________________________



___________________________
|decoder Module:
|  branchSrc   : b0
|  opcode      : b110011
|  funct3      : b101
|  regSrc      : b0
|  immSrc      : b0
|  aluSrc      : b0
|  pcSrc       : b0
|  aluControl  : b111
|  memToReg    : b0
|  writeEn     : b0
|  readEn     : b0
|  zero        : b0
|  lt          : b0
|  gt          : b1
|___________________________
___________________________
|riscv Module:
|  instr       : 0x23dab3
|  writeEn    : b0
|  readEn    : b0
|  writeData   : b10
|  memAdd      : b11100
|  readData    : 0x0
|___________________________



Memory___________________________
| mem(0) = 0
| mem(1) = 0
| mem(2) = 0
| mem(3) = 0
| mem(4) = 4
| mem(5) = 0
| mem(6) = 2
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
|top Module:
|  instr pulled: 0x23dab3
|  pc pulled   : b10101
|  writeEn     : b0
|  readEn      : b0
|  mem in      : b10
|  mem add     : b11100
|  mem out     : b0
|___________________________
[[35minfo[0m] [0.083] STARTING NEXT CYCLE: 23
[[35minfo[0m] [0.083] valid = 1



___________________________
|extend Module:
|  instr12     : b1000001011
|  instr20     : b101000000001
|  immsrc      : b0
|  extImm      : 0x20b
|___________________________



___________________________
|regfile Module:
|  we3 : b1
|  ra1 : b1001
|  ra2 : b10
|  wa3 : b10110
|  wd3 : 0x2
|  r31 : 0x60
|  rd1 : 0x8
|  rd2 : 0x2
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
|extend Module:
|  instr12     : b10000000010
|  instr20     : b101000000001
|  immsrc      : b0
|  extImm      : 0x402
|___________________________



___________________________
|alu Module:
|  a           : 0x8
|  b           : 0x2
|  sum         : 0xa
|  out         : 0x2
|  aluControl  : b100
|  zero        : b0
|  lt          : b0
|  gt          : b1
|___________________________



___________________________
|datapath Module:
|  inst            : 0x4024db33
|  memToReg        : b0
|  readData        : 0x0
|  aluOut          : 0x2
|  result          : 0x2
|  pcNext          : 0x5c
|  branchExtImm    : 0x20b
|  extImm          : b402
|  rd2             : b2
|  writeData       : b2
|  memAdd          : b41e
|  pcBranch        : 0x263
|  pcRegBranch     : 0x2
|  pcPlus4         : 0x5c
|  branchSrc       : b0
|  ra4             : 0x2
|___________________________



___________________________
|decoder Module:
|  branchSrc   : b0
|  opcode      : b110011
|  funct3      : b101
|  regSrc      : b0
|  immSrc      : b0
|  aluSrc      : b0
|  pcSrc       : b0
|  aluControl  : b100
|  memToReg    : b0
|  writeEn     : b0
|  readEn     : b0
|  zero        : b0
|  lt          : b0
|  gt          : b1
|___________________________
___________________________
|riscv Module:
|  instr       : 0x4024db33
|  writeEn    : b0
|  readEn    : b0
|  writeData   : b10
|  memAdd      : b10000011110
|  readData    : 0x0
|___________________________



Memory___________________________
| mem(0) = 0
| mem(1) = 0
| mem(2) = 0
| mem(3) = 0
| mem(4) = 4
| mem(5) = 0
| mem(6) = 2
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
|top Module:
|  instr pulled: 0x4024db33
|  pc pulled   : b10110
|  writeEn     : b0
|  readEn      : b0
|  mem in      : b10
|  mem add     : b10000011110
|  mem out     : b0
|___________________________
[[35minfo[0m] [0.086] STARTING NEXT CYCLE: 24
[[35minfo[0m] [0.086] valid = 1



___________________________
|extend Module:
|  instr12     : b10000001011
|  instr20     : b1000
|  immsrc      : b0
|  extImm      : 0x40b
|___________________________



___________________________
|regfile Module:
|  we3 : b1
|  ra1 : b1111
|  ra2 : b10000
|  wa3 : b10111
|  wd3 : 0x1
|  r31 : 0x64
|  rd1 : 0xf
|  rd2 : 0x8
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
|extend Module:
|  instr12     : b10000
|  instr20     : b1000
|  immsrc      : b0
|  extImm      : 0x10
|___________________________



___________________________
|alu Module:
|  a           : 0xf
|  b           : 0x10
|  sum         : 0xffffffff
|  out         : 0x1
|  aluControl  : b1001
|  zero        : b0
|  lt          : b1
|  gt          : b0
|___________________________



___________________________
|datapath Module:
|  inst            : 0x107ab93
|  memToReg        : b0
|  readData        : 0x0
|  aluOut          : 0x1
|  result          : 0x1
|  pcNext          : 0x60
|  branchExtImm    : 0x40b
|  extImm          : b10
|  rd2             : b8
|  writeData       : b8
|  memAdd          : b26
|  pcBranch        : 0x467
|  pcRegBranch     : 0x0
|  pcPlus4         : 0x60
|  branchSrc       : b0
|  ra4             : 0x1
|___________________________



___________________________
|decoder Module:
|  branchSrc   : b0
|  opcode      : b10011
|  funct3      : b10
|  regSrc      : b0
|  immSrc      : b0
|  aluSrc      : b1
|  pcSrc       : b0
|  aluControl  : b1001
|  memToReg    : b0
|  writeEn     : b0
|  readEn     : b0
|  zero        : b0
|  lt          : b1
|  gt          : b0
|___________________________
___________________________
|riscv Module:
|  instr       : 0x107ab93
|  writeEn    : b0
|  readEn    : b0
|  writeData   : b1000
|  memAdd      : b100110
|  readData    : 0x0
|___________________________



Memory___________________________
| mem(0) = 0
| mem(1) = 0
| mem(2) = 0
| mem(3) = 0
| mem(4) = 4
| mem(5) = 0
| mem(6) = 2
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
|top Module:
|  instr pulled: 0x107ab93
|  pc pulled   : b10111
|  writeEn     : b0
|  readEn      : b0
|  mem in      : b1000
|  mem add     : b100110
|  mem out     : b0
|___________________________
[[35minfo[0m] [0.089] STARTING NEXT CYCLE: 25
[[35minfo[0m] [0.089] valid = 1



___________________________
|extend Module:
|  instr12     : b1100
|  instr20     : b110
|  immsrc      : b0
|  extImm      : 0xc
|___________________________



___________________________
|regfile Module:
|  we3 : b1
|  ra1 : b1111
|  ra2 : b1100
|  wa3 : b11000
|  wd3 : 0x0
|  r31 : 0x68
|  rd1 : 0xf
|  rd2 : 0x3
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
|extend Module:
|  instr12     : b1100
|  instr20     : b110
|  immsrc      : b0
|  extImm      : 0xc
|___________________________



___________________________
|alu Module:
|  a           : 0xf
|  b           : 0xc
|  sum         : 0x3
|  out         : 0x0
|  aluControl  : b1001
|  zero        : b0
|  lt          : b0
|  gt          : b1
|___________________________



___________________________
|datapath Module:
|  inst            : 0xc7ac13
|  memToReg        : b0
|  readData        : 0x0
|  aluOut          : 0x0
|  result          : 0x0
|  pcNext          : 0x64
|  branchExtImm    : 0xc
|  extImm          : bc
|  rd2             : b3
|  writeData       : b3
|  memAdd          : b27
|  pcBranch        : 0x6c
|  pcRegBranch     : 0x0
|  pcPlus4         : 0x64
|  branchSrc       : b0
|  ra4             : 0x0
|___________________________



___________________________
|decoder Module:
|  branchSrc   : b0
|  opcode      : b10011
|  funct3      : b10
|  regSrc      : b0
|  immSrc      : b0
|  aluSrc      : b1
|  pcSrc       : b0
|  aluControl  : b1001
|  memToReg    : b0
|  writeEn     : b0
|  readEn     : b0
|  zero        : b0
|  lt          : b0
|  gt          : b1
|___________________________
___________________________
|riscv Module:
|  instr       : 0xc7ac13
|  writeEn    : b0
|  readEn    : b0
|  writeData   : b11
|  memAdd      : b100111
|  readData    : 0x0
|___________________________



Memory___________________________
| mem(0) = 0
| mem(1) = 0
| mem(2) = 0
| mem(3) = 0
| mem(4) = 4
| mem(5) = 0
| mem(6) = 2
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
|top Module:
|  instr pulled: 0xc7ac13
|  pc pulled   : b11000
|  writeEn     : b0
|  readEn      : b0
|  mem in      : b11
|  mem add     : b100111
|  mem out     : b0
|___________________________
[[35minfo[0m] [0.092] STARTING NEXT CYCLE: 26
[[35minfo[0m] [0.092] valid = 1



___________________________
|extend Module:
|  instr12     : b10000001100
|  instr20     : b110000000001
|  immsrc      : b0
|  extImm      : 0x40c
|___________________________



___________________________
|regfile Module:
|  we3 : b1
|  ra1 : b1111
|  ra2 : b11
|  wa3 : b11001
|  wd3 : 0x78
|  r31 : 0x6c
|  rd1 : 0xf
|  rd2 : 0x3
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
|extend Module:
|  instr12     : b11
|  instr20     : b110000000001
|  immsrc      : b0
|  extImm      : 0x3
|___________________________



___________________________
|alu Module:
|  a           : 0xf
|  b           : 0x3
|  sum         : 0x12
|  out         : 0x78
|  aluControl  : b11
|  zero        : b0
|  lt          : b0
|  gt          : b1
|___________________________



___________________________
|datapath Module:
|  inst            : 0x379c93
|  memToReg        : b0
|  readData        : 0x0
|  aluOut          : 0x78
|  result          : 0x78
|  pcNext          : 0x68
|  branchExtImm    : 0x40c
|  extImm          : b3
|  rd2             : b3
|  writeData       : b3
|  memAdd          : b28
|  pcBranch        : 0x470
|  pcRegBranch     : 0x78
|  pcPlus4         : 0x68
|  branchSrc       : b0
|  ra4             : 0x78
|___________________________



___________________________
|decoder Module:
|  branchSrc   : b0
|  opcode      : b10011
|  funct3      : b1
|  regSrc      : b0
|  immSrc      : b0
|  aluSrc      : b1
|  pcSrc       : b0
|  aluControl  : b11
|  memToReg    : b0
|  writeEn     : b0
|  readEn     : b0
|  zero        : b0
|  lt          : b0
|  gt          : b1
|___________________________
___________________________
|riscv Module:
|  instr       : 0x379c93
|  writeEn    : b0
|  readEn    : b0
|  writeData   : b11
|  memAdd      : b101000
|  readData    : 0x0
|___________________________



Memory___________________________
| mem(0) = 0
| mem(1) = 0
| mem(2) = 0
| mem(3) = 0
| mem(4) = 4
| mem(5) = 0
| mem(6) = 2
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
|top Module:
|  instr pulled: 0x379c93
|  pc pulled   : b11001
|  writeEn     : b0
|  readEn      : b0
|  mem in      : b11
|  mem add     : b101000
|  mem out     : b0
|___________________________
[[35minfo[0m] [0.095] STARTING NEXT CYCLE: 27
[[35minfo[0m] [0.095] valid = 1



___________________________
|extend Module:
|  instr12     : b1101
|  instr20     : b110000000001
|  immsrc      : b0
|  extImm      : 0xd
|___________________________



___________________________
|regfile Module:
|  we3 : b1
|  ra1 : b1111
|  ra2 : b11
|  wa3 : b11010
|  wd3 : 0x1
|  r31 : 0x70
|  rd1 : 0xf
|  rd2 : 0x3
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
|extend Module:
|  instr12     : b11
|  instr20     : b110000000001
|  immsrc      : b0
|  extImm      : 0x3
|___________________________



___________________________
|alu Module:
|  a           : 0xf
|  b           : 0x3
|  sum         : 0x12
|  out         : 0x1
|  aluControl  : b111
|  zero        : b0
|  lt          : b0
|  gt          : b1
|___________________________



___________________________
|datapath Module:
|  inst            : 0x37dd13
|  memToReg        : b0
|  readData        : 0x0
|  aluOut          : 0x1
|  result          : 0x1
|  pcNext          : 0x6c
|  branchExtImm    : 0xd
|  extImm          : b3
|  rd2             : b3
|  writeData       : b3
|  memAdd          : b29
|  pcBranch        : 0x75
|  pcRegBranch     : 0x0
|  pcPlus4         : 0x6c
|  branchSrc       : b0
|  ra4             : 0x1
|___________________________



___________________________
|decoder Module:
|  branchSrc   : b0
|  opcode      : b10011
|  funct3      : b101
|  regSrc      : b0
|  immSrc      : b0
|  aluSrc      : b1
|  pcSrc       : b0
|  aluControl  : b111
|  memToReg    : b0
|  writeEn     : b0
|  readEn     : b0
|  zero        : b0
|  lt          : b0
|  gt          : b1
|___________________________
___________________________
|riscv Module:
|  instr       : 0x37dd13
|  writeEn    : b0
|  readEn    : b0
|  writeData   : b11
|  memAdd      : b101001
|  readData    : 0x0
|___________________________



Memory___________________________
| mem(0) = 0
| mem(1) = 0
| mem(2) = 0
| mem(3) = 0
| mem(4) = 4
| mem(5) = 0
| mem(6) = 2
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
|top Module:
|  instr pulled: 0x37dd13
|  pc pulled   : b11010
|  writeEn     : b0
|  readEn      : b0
|  mem in      : b11
|  mem add     : b101001
|  mem out     : b0
|___________________________
[[35minfo[0m] [0.098] STARTING NEXT CYCLE: 28
[[35minfo[0m] [0.098] valid = 1



___________________________
|extend Module:
|  instr12     : b11000001101
|  instr20     : b111000000001
|  immsrc      : b0
|  extImm      : 0x60d
|___________________________



___________________________
|regfile Module:
|  we3 : b1
|  ra1 : b1111
|  ra2 : b11
|  wa3 : b11011
|  wd3 : 0x1
|  r31 : 0x74
|  rd1 : 0xf
|  rd2 : 0x3
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
|extend Module:
|  instr12     : b10000000011
|  instr20     : b111000000001
|  immsrc      : b0
|  extImm      : 0x403
|___________________________



___________________________
|alu Module:
|  a           : 0xf
|  b           : 0x403
|  sum         : 0x412
|  out         : 0x1
|  aluControl  : b100
|  zero        : b0
|  lt          : b1
|  gt          : b0
|___________________________



___________________________
|datapath Module:
|  inst            : 0x4037dd93
|  memToReg        : b0
|  readData        : 0x0
|  aluOut          : 0x1
|  result          : 0x1
|  pcNext          : 0x70
|  branchExtImm    : 0x60d
|  extImm          : b403
|  rd2             : b3
|  writeData       : b3
|  memAdd          : b42a
|  pcBranch        : 0x679
|  pcRegBranch     : 0x0
|  pcPlus4         : 0x70
|  branchSrc       : b0
|  ra4             : 0x1
|___________________________



___________________________
|decoder Module:
|  branchSrc   : b0
|  opcode      : b10011
|  funct3      : b101
|  regSrc      : b0
|  immSrc      : b0
|  aluSrc      : b1
|  pcSrc       : b0
|  aluControl  : b100
|  memToReg    : b0
|  writeEn     : b0
|  readEn     : b0
|  zero        : b0
|  lt          : b1
|  gt          : b0
|___________________________
___________________________
|riscv Module:
|  instr       : 0x4037dd93
|  writeEn    : b0
|  readEn    : b0
|  writeData   : b11
|  memAdd      : b10000101010
|  readData    : 0x0
|___________________________



Memory___________________________
| mem(0) = 0
| mem(1) = 0
| mem(2) = 0
| mem(3) = 0
| mem(4) = 4
| mem(5) = 0
| mem(6) = 2
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
|top Module:
|  instr pulled: 0x4037dd93
|  pc pulled   : b11011
|  writeEn     : b0
|  readEn      : b0
|  mem in      : b11
|  mem add     : b10000101010
|  mem out     : b0
|___________________________
[[35minfo[0m] [0.100] STARTING NEXT CYCLE: 29
[[35minfo[0m] [0.100] valid = 1



___________________________
|extend Module:
|  instr12     : b1110
|  instr20     : b0
|  immsrc      : b0
|  extImm      : 0xe
|___________________________



___________________________
|regfile Module:
|  we3 : b1
|  ra1 : b1
|  ra2 : b0
|  wa3 : b11100
|  wd3 : 0x0
|  r31 : 0x78
|  rd1 : 0x4
|  rd2 : 0x0
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
|extend Module:
|  instr12     : b0
|  instr20     : b0
|  immsrc      : b0
|  extImm      : 0x0
|___________________________



___________________________
|alu Module:
|  a           : 0x4
|  b           : 0x0
|  sum         : 0x4
|  out         : 0x0
|  aluControl  : b0
|  zero        : b0
|  lt          : b0
|  gt          : b1
|___________________________



___________________________
|datapath Module:
|  inst            : 0xae03
|  memToReg        : b0
|  readData        : 0x0
|  aluOut          : 0x0
|  result          : 0x0
|  pcNext          : 0x74
|  branchExtImm    : 0xe
|  extImm          : b0
|  rd2             : b0
|  writeData       : b0
|  memAdd          : b20
|  pcBranch        : 0x7e
|  pcRegBranch     : 0x0
|  pcPlus4         : 0x74
|  branchSrc       : b0
|  ra4             : 0x0
|___________________________



___________________________
|decoder Module:
|  branchSrc   : b0
|  opcode      : b11
|  funct3      : b10
|  regSrc      : b0
|  immSrc      : b0
|  aluSrc      : b1
|  pcSrc       : b0
|  aluControl  : b0
|  memToReg    : b1
|  writeEn     : b0
|  readEn     : b1
|  zero        : b0
|  lt          : b0
|  gt          : b1
|___________________________
___________________________
|riscv Module:
|  instr       : 0xae03
|  writeEn    : b0
|  readEn    : b1
|  writeData   : b0
|  memAdd      : b100000
|  readData    : 0x0
|___________________________



Memory___________________________
| mem(0) = 0
| mem(1) = 0
| mem(2) = 0
| mem(3) = 0
| mem(4) = 4
| mem(5) = 0
| mem(6) = 2
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
|top Module:
|  instr pulled: 0xae03
|  pc pulled   : b11100
|  writeEn     : b0
|  readEn      : b1
|  mem in      : b0
|  mem add     : b100000
|  mem out     : b0
|___________________________
[[35minfo[0m] [0.103] STARTING NEXT CYCLE: 30
[[35minfo[0m] [0.103] valid = 1



___________________________
|extend Module:
|  instr12     : b10000001110
|  instr20     : b10
|  immsrc      : b0
|  extImm      : 0x40e
|___________________________



___________________________
|regfile Module:
|  we3 : b1
|  ra1 : b10
|  ra2 : b100
|  wa3 : b11101
|  wd3 : 0x0
|  r31 : 0x7c
|  rd1 : 0x2
|  rd2 : 0x6
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
|extend Module:
|  instr12     : b100
|  instr20     : b10
|  immsrc      : b0
|  extImm      : 0x4
|___________________________



___________________________
|alu Module:
|  a           : 0x2
|  b           : 0x4
|  sum         : 0x6
|  out         : 0x0
|  aluControl  : b0
|  zero        : b0
|  lt          : b1
|  gt          : b0
|___________________________



___________________________
|datapath Module:
|  inst            : 0x412e83
|  memToReg        : b0
|  readData        : 0x0
|  aluOut          : 0x0
|  result          : 0x0
|  pcNext          : 0x78
|  branchExtImm    : 0x40e
|  extImm          : b4
|  rd2             : b6
|  writeData       : b6
|  memAdd          : b1f
|  pcBranch        : 0x482
|  pcRegBranch     : 0x0
|  pcPlus4         : 0x78
|  branchSrc       : b0
|  ra4             : 0x0
|___________________________



___________________________
|decoder Module:
|  branchSrc   : b0
|  opcode      : b11
|  funct3      : b10
|  regSrc      : b0
|  immSrc      : b0
|  aluSrc      : b1
|  pcSrc       : b0
|  aluControl  : b0
|  memToReg    : b1
|  writeEn     : b0
|  readEn     : b1
|  zero        : b0
|  lt          : b1
|  gt          : b0
|___________________________
___________________________
|riscv Module:
|  instr       : 0x412e83
|  writeEn    : b0
|  readEn    : b1
|  writeData   : b110
|  memAdd      : b11111
|  readData    : 0x0
|___________________________



Memory___________________________
| mem(0) = 0
| mem(1) = 0
| mem(2) = 0
| mem(3) = 0
| mem(4) = 4
| mem(5) = 0
| mem(6) = 2
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
|top Module:
|  instr pulled: 0x412e83
|  pc pulled   : b11101
|  writeEn     : b0
|  readEn      : b1
|  mem in      : b110
|  mem add     : b11111
|  mem out     : b0
|___________________________
[[35minfo[0m] [0.106] STARTING NEXT CYCLE: 31
[[35minfo[0m] [0.106] valid = 1



___________________________
|extend Module:
|  instr12     : b1111
|  instr20     : b0
|  immsrc      : b11
|  extImm      : 0x0
|___________________________



___________________________
|regfile Module:
|  we3 : b1
|  ra1 : b1
|  ra2 : b0
|  wa3 : b11110
|  wd3 : 0xa07c
|  r31 : 0x80
|  rd1 : 0x4
|  rd2 : 0x0
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
|extend Module:
|  instr12     : b0
|  instr20     : b0
|  immsrc      : b11
|  extImm      : 0x0
|___________________________



___________________________
|alu Module:
|  a           : 0x7c
|  b           : 0xa000
|  sum         : 0xa07c
|  out         : 0xa07c
|  aluControl  : b10
|  zero        : b0
|  lt          : b1
|  gt          : b0
|___________________________



___________________________
|datapath Module:
|  inst            : 0xaf17
|  memToReg        : b0
|  readData        : 0x0
|  aluOut          : 0xa07c
|  result          : 0xa07c
|  pcNext          : 0x7c
|  branchExtImm    : 0x0
|  extImm          : ba000
|  rd2             : b0
|  writeData       : b0
|  memAdd          : b22
|  pcBranch        : 0x78
|  pcRegBranch     : 0xa07c
|  pcPlus4         : 0x7c
|  branchSrc       : b0
|  ra4             : 0xa07c
|___________________________



___________________________
|decoder Module:
|  branchSrc   : b0
|  opcode      : b10111
|  funct3      : b10
|  regSrc      : b0
|  immSrc      : b11
|  aluSrc      : b1
|  pcSrc       : b1
|  aluControl  : b10
|  memToReg    : b0
|  writeEn     : b0
|  readEn     : b0
|  zero        : b0
|  lt          : b1
|  gt          : b0
|___________________________
___________________________
|riscv Module:
|  instr       : 0xaf17
|  writeEn    : b0
|  readEn    : b0
|  writeData   : b0
|  memAdd      : b100010
|  readData    : 0x0
|___________________________



Memory___________________________
| mem(0) = 0
| mem(1) = 0
| mem(2) = 0
| mem(3) = 0
| mem(4) = 4
| mem(5) = 0
| mem(6) = 2
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
|top Module:
|  instr pulled: 0xaf17
|  pc pulled   : b11110
|  writeEn     : b0
|  readEn      : b0
|  mem in      : b0
|  mem add     : b100010
|  mem out     : b0
|___________________________
[[35minfo[0m] [0.108] Program completed in 32 cycles. Exiting.
test top Success: 0 tests passed in 36 cycles in 0.128607 seconds 279.92 Hz
[[35minfo[0m] [0.109] RAN 31 CYCLES PASSED
[[35minfo[0m] [0.000] Elaborating design...
[[35minfo[0m] [0.067] Done elaborating.
Total FIRRTL Compile Time: 377.3 ms
[0m[[0m[32msuccess[0m] [0m[0mTotal time: 15 s, completed Apr 6, 2020, 3:42:45 PM[0m
