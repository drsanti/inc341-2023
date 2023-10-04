# 1) Load an immediate (constant) value into a register
# 2) Register-to-register data transfer

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
