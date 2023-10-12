# 1) GitHub
# 2) Registers
# 3) Alias Registers


# GitHub:
# https://github.com/drsanti/risc-v-assembly-programming

li a0, 0x123   # Load immediate value 0x123 into register a0
li a1, 0x124   # Load immediate value 0x124 into register a1
li a2, 0x125   # Load immediate value 0x125 into register a2
li a3, 0x126   # Load immediate value 0x126 into register a3
mv a5, a0      # Move the value from a0 into a5 (copy the value in a0 to a5)


# Registers
#|----------|-------------------------------------------|
#|	PC 		|	Program Counter							|
#|	PRIV 	|	Privilege Levels						|
#|	      	|	 00: User/Application 	(U)				|	U: User
#|	      	|	 01: Supervisor 		(S)				|	S: Supervisor
#|	      	|	 10: -									|	M: Machine
#|	      	|	 11: Machine 			(M)				|
#|	CSR 	|	Control and Status Registers			|
#|	Integer	|	Standard RISC-V registers x00-x31		|
#|	Float	|	Floating-pointregisters f00-f31 		|
#|----------|-------------------------------------------|


# Alias Registers (or Register Aliases)
#|----------|-------------------------------------------|
#|	zero 	|	Hard-wired zero							|
#|	ra 		|	Return address							|
#|	sp 		|	Stack pointer							|
#|	gp 		|	Global pointer							|
#|	tp 		|	Thread pointer							|
#|	t0..6 	|	Temporaries								|
#|	s0..11 	|	Saved register							|
#|	a0..7 	|	Function arguments/return values		|
#|----------|-------------------------------------------|