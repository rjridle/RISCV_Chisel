                        REGFILE               MEM
li x1, 0x4                  #1 = 4                                                               
li x2, 0x2                  #2 = 2
sw x2, 0x4(x1)                              #$4 = 0x4
sw x1, 0x0(x2)                              #$6 = 0x2
li x3, 0x3                  #3 = 3
sw x3, 0x0(x1)
add x4, x1, x2              #4 = 6
li x5, 0x5                  #5 = 5
and x6, x4, x1              #6 = 4
li x7, 0x7                  #7 = 7  
xor x8, x7, x4              #8 = 3
li x9, 0x8                  #9 = 8
or x10, x9, x2              #10 = 10
addi x11, x0, 0xB           #11 = 11 
andi x12, x7, 0x3           #12 = 1
xori x13, x9, 0xF           #13 = 7
ori x14, x9, 0x7            #14 = 15
li x15, 0xF                 #15 = 15
sub x16, x15, x7            #16 = 8
sll x17, x2, x2             #17 = 8
                            #18 = 0
slt x19, x2, x3             #19 = 1
slt x20, x9, x3             #20 = 0  
srl x21, x7, x2             #21 = 1
sra x22, x9, x2             #22 = 2
slti x23, x15, 0x10         #23 = 0
slti x24, x15, 0xC          #24 = 1
slli x25, x15, 0x3          #25 = 120
srli x26, x15, 0x3          #26 = 1
srai x27, x15, 0x3          #27 = 1
lw x28, 0x0(x2)             #28 = 4
lw x29, 0x4(x1)             #29 = 2
auipc x30, 0xA              #30 = 10
ecall                   
                            #31 = 0
