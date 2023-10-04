li a0, 0x100			# Set pixel
li a1, 0x00000000		# x:<31:16>, y:<15:0>
li a2, 0x00FFFF00		# r: <23:16>, g: <15:8>, b: <7:0>
ecall					# Environment call

li a0, 0x101			# Set all pexels
li a1, 0x0000FFFF		# r: <23:16>, g: <15:8>, b: <7:0>
ecall


li a0, 0x110			# Set LED row
li a1, 0x000B			# Row <11:0>, 0 is bottom row
li a2, 0x000F			# Col <15:0>, 0 is rightmost LED
ecall


li a0, 0x120			# Set seven segment display
li a1, 0x7700			# Display code (A)
li a2, 0xFF00			# Segment mask
ecall


li a0, 0x121			# Set LEDs
li a1, 0x01				# Green LED
ecall
li a1, 0x02				# Red LED
ecall
li a1, 0x03				# Green and Red LEDs
ecall


loop:
	li a0, 0x122		# Read push buttons
	ecall
	mv a1, a0			# LED Data
	li a0, 0x121		# Set LEDs
	ecall
	j loop


readInput:
	li a0, 0x130
	ecall

# readBuffer:
# 	li a1, 0
# 	li a0 0x131
# 	ecall
# 	# a0 == 0: All input has been read (Buffer is emplty)
# 	# a0 == 1: Still waiting for input
# 	# a0 == 2: Input has been detected and one character has been read. a1 == input
# 	# a1 == input

# 	beqz a1, readInput # if no input was detected a1 is 0

# 	li a0, 34	# Print integer
# 	ecall
# 	li a0, 0x0B	# Print string
# 	li a1, 0x0A # \r
# 	ecall
# 	j readBuffer

