






























.data
hello:
	.asciiz "Hello, World!\n"

.text
	.globl main



# Print integer
# Argument:
#	a1: 32-bit integer
print_int:
	nop

# Print hexadecimal
# Argument:
#	a1: 32-bit integer
print_hex:
	nop

# Print character
# Argument:
#	a1: ascii code (data)
print_chr:
	nop


# Print string
# Argument:
#	a1: address of the string
print_str:
	nop


# Exit the program
exit:
	# Exit the program
	li a0, 10                # System call code for program exit (10)
	ecall


main:
	li a0, 4      	# System call code for printing a string (4)
	la a1, hello 	# Load the address of the string into a1
	ecall

	jal ra, exit





.text
	.globl main

# add:
# 	add a0, a0, a1
# 	ret					# jalr x0 x1 0

# main:
# 	li a0, 5
# 	li a1, 3
# 	jal ra, add
# 	nop


add:
	add a0, a0, a1
	jalr x0 t0 0		# ret

main:
	li a0, 5
	li a1, 3
	jal t0, add			# save address of next instruction in t0
	nop














.text
    .globl main


# Print integer
# Argument:
# 	a1: Interger value
print_int:
	li a0, 1     	# print_int ecall
	ecall
	ret


# Print character
# Argument:
# 	a1: character
print_chr:
	li a0, 11     	# print_character ecall
	ecall
	ret


# Print hexadecimal
# Argument:
# 	a1: Interger value
print_hex:
	li a0, 34     	# printHex ecall
	ecall
	ret


# Print new line (line feed \n)
# Argument:
# 	None
print_lnf:
	li a0, 11     	# print_character ecall
	li a1, 0x0a		# '\n'
	ecall
	ret

# Main
main:
	li a1, 123
	jal ra, print_int
	jal ra, print_lnf

	li a1, 0xABCD
	jal ra, print_hex
	jal ra, print_lnf



	# Initialize the stack pointer (sp)
	li sp, 0x80000000

	# push
	addi sp, sp, -4
	li a0,0x1234567
	sw a0, 0(sp)

	sw ra, 0(sp)

	# push
	addi sp, sp, -4
	li a1, 0x89ABCDEF
	sw a1, 0(sp)

	# pop
	lw t0, 0(sp)

	#
	addi sp, sp, 4

	# pop
	lw t1, 0(sp)

	nop














# a1 contains x in bits 31-16 and y in bits 15-0`
# a2 contains r in bits 23-16, g in bits 15-8 and b in bits 7-0


# .text
#     .globl main

# # Delay function
# # Arguments:
# #   t6: Number of iterations for the delay
# delay:
# 	li t6, 2000
# nz_loop:
# 	addi t6, t6, -1
# 	bnez t6, nz_loop
# 	ret


# # Blue -> Green -> Red loop...
# main:
# main_loop:
# 	li t0, 0x000000FF		# start with blue
# rgb_loop:
# 	li a0, 0x00000100		# system/environment call code
# 	li a1, 0x00000000		# row0, col0 (top-left)
# 	mv a2, t0				# RGB data
# 	ecall					# environment call
# 	jal ra, delay			# delay
# 	slli t0, t0, 8			# shift-left
# 	li t5, 0xFF000000		# rgb_loop termination value
# 	bne t0, t5, rgb_loop	# t0 != t5?, jump to rgb_loop
# 	j main_loop				# jump to main_loop


# # Better code
# main:
# init:
# 	li a0, 0x00000100		# system/environment call code
# 	li a1, 0x00000000		# row0, col0 (top-left)
# 	li t5, 0xFF000000		# rgb_loop termination value
# main_loop:
# 	li a3, 0x000000FF		# start with blue
# rgb_loop:
# 	mv a2, a3				# RGB data
# 	ecall					# environment call
# 	jal ra, delay			# delay
# 	slli a3, a3, 8			# shift-left
# 	bne a3, t5, rgb_loop	# a3 != t5?, jump to rgb_loop
# 	j main_loop				# jump to main_loop
