.section .text
.global _start
_start:
	li x1, 10
	li x2, 5
loop:	
	beq x2, x1, end
	addi x2, x2, 1
	j loop	
end:
	li x10, 100
