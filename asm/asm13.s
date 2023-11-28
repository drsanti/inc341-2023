.globl main
.text

# Delay
delay:
	addi t6, t6, -1
	bnez t6, delay
	ret

# LED control
led:
	li a0, 0x121
	ecall
	ret

###################
## binary counter
###################
# main:
# 	li a1, 0b00
# loop:
# 	addi a1, a1, 1
# 	jal ra, led

# 	li t6, 500
# 	jal ra, delay

# 	j loop


###################
## G123-R12
###################
main:
stateA:
	li t0, 3
loopA:
	# Green ON
	li a1, 0b01
	jal ra, led
	li t6, 300
	jal ra, delay

	# Green OFF
	li a1, 0b00
	jal ra, led
	li t6, 700
	jal ra, delay

	addi t0, t0, -1
	bnez t0, loopA

stateB:
	li t0, 2
loopB:
	# Red ON
	li a1, 0b10
	jal ra, led
	li t6, 300
	jal ra, delay

	# Red OFF
	li a1, 0b00
	jal ra, led
	li t6, 700
	jal ra, delay

	addi t0, t0, -1
	bnez t0, loopB

	j stateA