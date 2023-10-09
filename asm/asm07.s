
# a1 contains x in bits 31-16 and y in bits 15-0`
# a2 contains r in bits 23-16, g in bits 15-8 and b in bits 7-0


.text
    .globl main

# Delay function
# Arguments:
#   t6: Number of iterations for the delay
delay:
	li t6, 2000
nz_loop:
	addi t6, t6, -1
	bnez t6, nz_loop
	ret


# Blue -> Green -> Red loop...
main:
main_loop:
	li t0, 0x000000FF		# start with blue
rgb_loop:
	li a0, 0x00000100		# system/environment call code
	li a1, 0x00000000		# row0, col0 (top-left)
	mv a2, t0				# RGB data
	ecall					# environment call
	jal ra, delay			# delay
	slli t0, t0, 8			# shift-left
	li t5, 0xFF000000		# rgb_loop termination value
	bne t0, t5, rgb_loop	# t0 != t5?, jump to rgb_loop
	j main_loop				# jump to main_loop


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
