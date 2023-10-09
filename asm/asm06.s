# # Deirective
# .text
#     .globl main	# Entry point

# # `add` function
# add:
# add a0, a0, a1
# ret

# # `main` function
# main:
# li a0, 5
# li a1, 7
# jal ra, add
# mv a6, a0


# li a0, 5
# li a1, 7
# jal ra, add
# mv a7, a0
# nop

############################################
# Led (Blue, Green, Red) Testing
############################################

# # Deirective
.text
    .globl main	# Entry point

# Delay function
# Arguments:
#   t6: Number of iterations for the delay
delay:
	li t6, 2000
nz_loop:
	addi t6, t6, -1
	bnez t6, nz_loop
	ret

# Main function
main:
init:
	li a0, 0x00000100		# system/environment call code
	li a1, 0x00000000		# row0, col0 (top-left)
	li t5, 0xFF000000		# rgb_loop termination value
main_loop:
	li a3, 0x000000FF		# start with blue
rgb_loop:
	mv a2, a3				# RGB data
	ecall					# environment call
	jal ra, delay			# delay
	slli a3, a3, 8			# shift-left
	bne a3, t5, rgb_loop	# a3 != t5?, jump to rgb_loop
	j main_loop				# jump to main_loop