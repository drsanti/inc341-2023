.globl main

.data
	hello:
		.asciiz "hello, world\n\n\n"

.text
main:

	li a0, 4
	la a1, hello
	ecall

	# li a0, 1
	# li a1, 123
	# ecall

	# li a0, 11
	# li a1, 'Z'
	# ecall

	# li a0, 34
	# li a1, 0xABCD1234
	# ecall

	nop








































#----------------------
#  Main topics
#----------------------
# Using `ecall` to print data and exit.
# Develop utility functions for future utilization.
# Learning new directives and instructions.

#----------------------
#  Directives
#----------------------
# .data
# .asciiz

#----------------------
#  Instructions
#----------------------
# la
# add

