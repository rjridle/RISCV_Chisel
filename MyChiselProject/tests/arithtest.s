_start:
	li x0, 1
	li x1, 3
	add x2, x1, x0
	li x3, 11
	or x4, x3, x2
	and x5, x4, x2
	sub x6, x4, x1
	addi x4, x5, 0x7ff
	sw x4, 0x8(x0)
	lw x5, 0x8(x0)
	add x6, x4, x5
	or x7, x5, x6
	li x8, 0x0
	beq x4, x5, end
	addi x8, x8, 0x8
end:
	addi x8, x8, 0x1
