.globl main

.text

led:
	li a0, 0x0121
	ecall
	ret

main:
	li a1, 0b0001
	jal ra, led

	li a1, 0b0010
	jal ra, led

	li a1, 0b0011
	jal ra, led

	li a1, 0b0000
	jal ra, led

	j main

