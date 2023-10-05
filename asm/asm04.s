# li: Load an immediate (constant) value.
li a0, 12         	# Load immediate 12 into register a0
li a1, 0x12AB     	# Load immediate 0x12AB into register a1
li a2, 0b11001111 	# Load immediate binary value 11001111 into register a2
nop              	# No operation (placeholder)



# mv: Move/Copy (Register-to-Register)
li a1, 0x123ABC   	# Load immediate 0x123ABC into register a1
mv a0, a1         	# Move the value of a1 into a0
nop              	# No operation (placeholder)



# Load an immediate (constant) value into a register.
#|--------------------------|
#| li rd, immediate			|
#|--------------------------|
# li:			Load an immediate
# rd: 			Destination register where the immediate value will be loaded.
# immediate: 	Immediate (constant) value to be loaded into the register.
# 				It can be a signed or unsigned 32-bit integer value.


# Register-to-register data transfer
#|--------------------------|
#| mv rd, rs				|
#|--------------------------|
# mv: Move
# rd: Destination register where the value from register rs will be copied.
# rs: Source register from which the value will be copied to rd.
