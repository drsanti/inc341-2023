.text
.globl main

add:
	addi a0, a1, 3    # Add 3 to the value in register a1 and store the result in a0
	jalr t0, t0, 0    # Jump and link to the address in register t0 to return from the function

main:
	li a1, 5          # Load immediate value 5 into register a1
	jal t0, add       # Jump and link to the 'add' function
	nop               # No operation, used as a placeholder for delay or synchronization



#----------------------
#  Main topics
#----------------------
# What is function?
# How to create a function?
# How to call a function?
# Operations of the function call and return.

#----------------------
# What are they?
#----------------------
# .text 	->  code section or code segment
# .globl	->  global label or global symbol
# label		->  reference points in the program

#----------------------
# How they work?
#----------------------
# add		->  perform addition between two registers
# addi		->  perform addition with an immediate value
# jal		->  jump-and-link operation (function or subroutine call)
# jalr		->  jump-and-link register (function or subroutine return)
# ret		->  return from a function or subroutine

