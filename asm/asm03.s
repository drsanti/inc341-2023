
# 1) GitHub
# 2) Registers
# 3) Alias Registers


# GitHub:
# https://github.com/drsanti/risc-v-assembly-programming


# Registers
#|----------|-------------------------------------------|
#|	PC 		|	Program Counter							|
#|	PRIV 	|	Privilege Levels						|
#|	      	|	 00: User/Application (U)				|	U: User
#|	      	|	 01: User/Application (S)				|	S: Supervisor
#|	      	|	 10: -									|	M: Machine
#|	      	|	 11: User/Application (M)				|
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






