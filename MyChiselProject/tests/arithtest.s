li x1, 0x4
sw x1, 0x0(x1)
li x2, 0x2
sw x2, 0x4(x2)
li x3, 0x3
add x4, x1, x2
li x5, 0x5
and x6, x4, x1
li x7, 0x7
xor x8, x7, x4 
li x9, 0x8
or x10, x9, x2
addi x11, x0, 0xB
andi x12, x7, 0x3
xori x13, x9, 0xF
ori x14, x9, 0x7
li x15, 0xF
sub x16, x15, x7
sll x17, x2, x2
slt x19, x2, x3
slt x20, x9, x3
srl x21, x7, x2
sra x22, x9, x2
slti x23, x15, 0x10
slti x24, x15, 0xC
slli x25, x15, 0x3
srli x26, x15, 0x3
srai x27, x15, 0x3
lw x28, 0x0(x1)
lw x29, 0x4(x2)
auipc x30, 0xA
ecall
