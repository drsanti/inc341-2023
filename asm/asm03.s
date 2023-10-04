# 1) GitHub
# 2) Registers
# 3) Alias Registers


# GitHub:
# https://github.com/drsanti/risc-v-assembly-programming

li a0, 0x123
li a1, 0x124
li a2, 0x125
li a3, 0x126
mv a5, a0

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