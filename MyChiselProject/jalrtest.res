[0m[[0m[0minfo[0m] [0m[0mLoading settings from plugins.sbt ...[0m
[0m[[0m[0minfo[0m] [0m[0mLoading project definition from /home/rjridle/chisel/RISCV_Chisel/single_cycle/risc-v-chisel/MyChiselProject/project[0m
[0m[[0m[0minfo[0m] [0m[0mLoading settings from build.sbt ...[0m
[0m[[0m[0minfo[0m] [0m[0mSet current project to RISCV_Single_Cycle (in build file:/home/rjridle/chisel/RISCV_Chisel/single_cycle/risc-v-chisel/MyChiselProject/)[0m
[0m[[0m[0minfo[0m] [0m[0mCompiling 1 Scala source to /home/rjridle/chisel/RISCV_Chisel/single_cycle/risc-v-chisel/MyChiselProject/target/scala-2.11/classes ...[0m
[0m[[0m[33mwarn[0m] [0m[0mthere were 445 feature warnings; re-run with -feature for details[0m
[0m[[0m[33mwarn[0m] [0m[0mone warning found[0m
[0m[[0m[0minfo[0m] [0m[0mDone compiling.[0m
[0m[[0m[33mwarn[0m] [0m[0mMultiple main classes detected.  Run 'show discoveredMainClasses' to see the list[0m
[0m[[0m[0minfo[0m] [0m[0mPackaging /home/rjridle/chisel/RISCV_Chisel/single_cycle/risc-v-chisel/MyChiselProject/target/scala-2.11/riscv_single_cycle_2.11-3.1.1.jar ...[0m
[0m[[0m[0minfo[0m] [0m[0mDone packaging.[0m
[0m[[0m[0minfo[0m] [0m[0mRunning riscvSingle.top [0m
[[35minfo[0m] [0.001] Elaborating design...
[[35minfo[0m] [0.605] Done elaborating.
Total FIRRTL Compile Time: 703.2 ms
Total FIRRTL Compile Time: 389.9 ms
file loaded in 0.560385801 seconds, 662 symbols, 489 statements
[[35minfo[0m] [0.001] SEED 1585859532168
[[35minfo[0m] [0.001] **********STARTING riscvSingleTest*******
[[35minfo[0m] [0.003] Starting valid = 1
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
|  zero        : b0
|  lt          : b1
|  gt          : b0
|___________________________
___________________________
|riscv Module:
|  instr       : 0x400093
|  readData    : 0x0
|___________________________



___________________________
|top Module:
|  instr pulled: 0x400093
|  pc pulled   : b0
|  mem in      : b0
|  mem out     : b0
|___________________________
[[35minfo[0m] [0.008] STARTING NEXT CYCLE: 2
[[35minfo[0m] [0.008] valid = 1



___________________________
|extend Module:
|  instr12     : b1010
|  instr20     : b1010
|  immsrc      : b0
|  extImm      : 0xa
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
|  instr12     : b10100
|  instr20     : b1010
|  immsrc      : b0
|  extImm      : 0x14
|___________________________



___________________________
|alu Module:
|  a           : 0x4
|  b           : 0x14
|  sum         : 0x18
|  out         : 0x18
|  aluControl  : b10
|  zero        : b0
|  lt          : b1
|  gt          : b0
|___________________________



___________________________
|datapath Module:
|  inst            : 0x1408a67
|  memToReg        : b0
|  readData        : 0x0
|  aluOut          : 0x18
|  result          : 0x18
|  pcNext          : 0x18
|  branchExtImm    : 0xa
|  extImm          : b14
|  rd2             : b0
|  pcBranch        : 0xe
|  pcRegBranch     : 0x18
|  pcPlus4         : 0x8
|  branchSrc       : b10
|  ra4             : 0x8
|___________________________



___________________________
|decoder Module:
|  branchSrc   : b10
|  opcode      : b1100111
|  funct3      : b0
|  regSrc      : b0
|  immSrc      : b0
|  aluSrc      : b1
|  pcSrc       : b0
|  aluControl  : b10
|  memToReg    : b0
|  zero        : b0
|  lt          : b1
|  gt          : b0
|___________________________
___________________________
|riscv Module:
|  instr       : 0x1408a67
|  readData    : 0x0
|___________________________



___________________________
|top Module:
|  instr pulled: 0x1408a67
|  pc pulled   : b1
|  mem in      : b0
|  mem out     : b0
|___________________________
[[35minfo[0m] [0.011] STARTING NEXT CYCLE: 3
[[35minfo[0m] [0.011] valid = 1



___________________________
|extend Module:
|  instr12     : b11
|  instr20     : b11
|  immsrc      : b0
|  extImm      : 0x3
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
| rf(20) = 8
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
|  instr12     : b110
|  instr20     : b11
|  immsrc      : b0
|  extImm      : 0x6
|___________________________



___________________________
|alu Module:
|  a           : 0x0
|  b           : 0x6
|  sum         : 0x6
|  out         : 0x6
|  aluControl  : b10
|  zero        : b0
|  lt          : b1
|  gt          : b0
|___________________________



___________________________
|datapath Module:
|  inst            : 0x600313
|  memToReg        : b0
|  readData        : 0x0
|  aluOut          : 0x6
|  result          : 0x6
|  pcNext          : 0x1c
|  branchExtImm    : 0x3
|  extImm          : b6
|  rd2             : b0
|  pcBranch        : 0x1b
|  pcRegBranch     : 0x6
|  pcPlus4         : 0x1c
|  branchSrc       : b0
|  ra4             : 0x6
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
|  zero        : b0
|  lt          : b1
|  gt          : b0
|___________________________
___________________________
|riscv Module:
|  instr       : 0x600313
|  readData    : 0x0
|___________________________



___________________________
|top Module:
|  instr pulled: 0x600313
|  pc pulled   : b110
|  mem in      : b0
|  mem out     : b0
|___________________________
[[35minfo[0m] [0.015] STARTING NEXT CYCLE: 4
[[35minfo[0m] [0.015] valid = 1



___________________________
|extend Module:
|  instr12     : b10000000011
|  instr20     : b10000000011
|  immsrc      : b0
|  extImm      : 0x403
|___________________________



___________________________
| rf(0) = 0
| rf(1) = 4
| rf(2) = 0
| rf(3) = 0
| rf(4) = 0
| rf(5) = 0
| rf(6) = 6
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
| rf(20) = 8
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
|  pcNext          : 0x20
|  branchExtImm    : 0x403
|  extImm          : b7
|  rd2             : b0
|  pcBranch        : 0x41f
|  pcRegBranch     : 0x6
|  pcPlus4         : 0x20
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
|  zero        : b0
|  lt          : b1
|  gt          : b0
|___________________________
___________________________
|riscv Module:
|  instr       : 0x700393
|  readData    : 0x0
|___________________________



___________________________
|top Module:
|  instr pulled: 0x700393
|  pc pulled   : b111
|  mem in      : b0
|  mem out     : b0
|___________________________
[[35minfo[0m] [0.018] STARTING NEXT CYCLE: 5
[[35minfo[0m] [0.018] valid = 1



___________________________
|extend Module:
|  instr12     : b1010
|  instr20     : b0
|  immsrc      : b11
|  extImm      : 0x0
|___________________________



___________________________
| rf(0) = 0
| rf(1) = 4
| rf(2) = 0
| rf(3) = 0
| rf(4) = 0
| rf(5) = 0
| rf(6) = 6
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
| rf(20) = 8
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
|  instr12     : b0
|  instr20     : b0
|  immsrc      : b11
|  extImm      : 0x0
|___________________________



___________________________
|alu Module:
|  a           : 0x24
|  b           : 0xa000
|  sum         : 0xa024
|  out         : 0xa024
|  aluControl  : b10
|  zero        : b0
|  lt          : b1
|  gt          : b0
|___________________________



___________________________
|datapath Module:
|  inst            : 0xaa17
|  memToReg        : b0
|  readData        : 0x0
|  aluOut          : 0xa024
|  result          : 0xa024
|  pcNext          : 0x24
|  branchExtImm    : 0x0
|  extImm          : ba000
|  rd2             : b0
|  pcBranch        : 0x20
|  pcRegBranch     : 0xa024
|  pcPlus4         : 0x24
|  branchSrc       : b0
|  ra4             : 0xa024
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
|  zero        : b0
|  lt          : b1
|  gt          : b0
|___________________________
___________________________
|riscv Module:
|  instr       : 0xaa17
|  readData    : 0x0
|___________________________



___________________________
|top Module:
|  instr pulled: 0xaa17
|  pc pulled   : b1000
|  mem in      : b0
|  mem out     : b0
|___________________________
[[35minfo[0m] [0.022] Program completed in 6 cycles. Exiting.
test top Success: 0 tests passed in 10 cycles in 0.037628 seconds 265.76 Hz
[[35minfo[0m] [0.023] RAN 5 CYCLES PASSED
[[35minfo[0m] [0.000] Elaborating design...
[[35minfo[0m] [0.065] Done elaborating.
Total FIRRTL Compile Time: 303.3 ms
[0m[[0m[32msuccess[0m] [0m[0mTotal time: 14 s, completed Apr 2, 2020, 3:32:14 PM[0m
