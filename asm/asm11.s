.globl main
.text

main:
	li t0, 9
	li t1, 10
	blt t0, t1, true
false:
	nop
	nop
	j main
true:
	nop
	nop
	j main





### Improved Version 2
# .globl main
# .text
# led:
# 	li a0, 0x0121
# 	ecall
# 	ret

# main:
# 	li t0, 4
# loop1:
# 	li a1, 0b0001
# loop2:
# 	jal ra, led
# 	addi a1, a1, 1
# 	blt a1, t0, loop2
# 	li a1, 0b0000
# 	jal ra, led
# 	j loop1


### Improved Version 1
# .globl main
# .text
# led:
# 	li a0, 0x0121
# 	ecall
# 	ret

# main:
# 	li a1, 0b0001
# loop:
# 	jal ra, led
# 	addi a1, a1, 1
# 	li t0, 4
# 	blt a1, t0, loop
# 	li a1, 0b0000
# 	jal ra, led
# 	j main








### Original Version
# .globl main
# .text
# led:
# 	li a0, 0x0121
# 	ecall
# 	ret

# main:
# 	li a1, 0b0001
# 	jal ra, led
# loop:
# 	addi a1, a1, 1
# 	jal ra, led
# 	li t0, 3
# 	blt a1, t0, loop
# 	li a1, 0b0000
# 	jal ra, led
# 	j main









