_start:
	li x10, 4
	li x19, 1
loop:
	bge x19, x10, end
	add x18, x18, x10
	addi x19, x19, 2
	j loop
end:
	addi x1, x1, 0x000000AA
	j endthree
endtwo:
	addi x2, x2, 8
	addi x3, x3, 16
endthree:
	addi x20, x20, 256
