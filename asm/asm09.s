.globl main

.data
hello:
    .asciiz "hello, world\n\n\n"   	# Define a null-terminated string "hello, world\n\n\n"
message:
    .asciiz "HELLO\n"             	# Define a null-terminated string "HELLO\n"

.text

print_int:
    li a0, 1       			# Load the argument 1 into register a0 (for printing integer)
    ecall               	# Make a system call to print integer
    ret            			# Return from the function

print_hex:
    li a0, 34             	# Load the argument 34 into register a0 (for printing hexadecimal)
    ecall                 	# Make a system call to print hexadecimal
    ret                   	# Return from the function

print_chr:
    li a0, 11               # Load the argument 11 into register a0 (for printing character)
    ecall                   # Make a system call to print character
    ret                     # Return from the function

print_str:
    li a0, 4                # Load the argument 4 into register a0 (for printing string)
    ecall                   # Make a system call to print string
    ret                     # Return from the function

exit:
    li a0, 10               # Load the argument 10 into register a0 (for program exit)
    ecall                   # Make a system call to exit the program
    ret                     # Return from the function

add2r:
    add a0, a0, a1          # Add the values in a0 and a1 and store the result in a0
    ret                     # Return from the function

main:
    li a0, 5                # Load the value 5 into register a0
    li a1, 3                # Load the value 3 into register a1
    jal ra, add2r           # Jump and link to the add2r function

    mv a1, a0                # Move the result from a0 to a1
    jal ra, print_int        # Jump and link to the print_int function

    # la a1, hello          # Load the address of the "hello" string into a1
    # jal ra, print_str     # Jump and link to the print_str function to print the "hello" string

    # la a1, message        # Load the address of the "message" string into a1
    # jal ra, print_str     # Jump and link to the print_str function to print the "message" string
    nop                     # No operation (useful as a placeholder)
