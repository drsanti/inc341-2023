li a0, 0x00000100		# environment call id (code)
li a1, 0x00000000		# row0, col0 (top-left)
li a2, 0x00FF0000		# Red color
ecall
nop
