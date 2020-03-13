_start:
	li x4, 0xA
	li x3, 0
	li x2, 1
	li x1, 0
fib:
	beq x4, x0, finish
	add x3, x2, x1
	mv x1, x2
	mv x2, x3
	addi x4, x4, -1
	j fib
finish:
	addi x10, x10, 128
	ecall
