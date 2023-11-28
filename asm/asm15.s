# -------------------
# 7-Segment Display Code Mapping
# -------------------
# Digit     Code
# -------------------
# 0         0x3F
# 1         0x06
# 2         0x5B
# 3         0x4F
# 4         0x66
# 5         0x6D
# 6         0x7D
# 7         0x07
# 8         0x7F
# 9         0x6F
# ------------------
# A         0x77
# B         0x7C
# C         0x39
# D         0x5E
# E         0x79
# F         0x71
# ------------------

.globl main

.data
table:
    .byte 0x3F, 0x06, 0x5B, 0x4F, 0x66, 0x6D, 0x7D, 0x07, 0x7F, 0x6F, 0x77, 0x7C, 0x39, 0x5E, 0x79, 0x71

.text

# Sub-rutine
# Performs loop-delay
# Input: a0 - the delay count
delay:
    addi a0, a0, -1     # Decrement the delay count
    bnez a0, delay      # Branch back to delay if a0 is not zero
    ret                 # Return from the subroutine

# Sub-routine
# Purpose: Returns the 7-segment display code for a given value (0..F)
# Input:   a0 - Value (0..F)
# Output:  a0 - Display code
get_code:
    la a1, table     # Load the address of the code table
    add a1, a1, a0   # Calculate the offset in the table based on the value
    lb a0, 0(a1)     # Load the 7-segment display code at the calculated offset into a0
    ret

# Sub-routine
# Purpose: Display a two-digit number on a 7-segment display
# Input:   a0 - Number to be displayed on 7-Segment 1
# Output:  a1 - Number to be displayed on 7-Segment 2
# Effects: t0, t1, t2, a0, a1, a2
display:
    # Save return address
    mv t2, ra

    # Save a0, a1
    mv t0, a0
    mv t1, a1

    # Get code for Segment 1
    mv a0, t0
    jal ra, get_code
    mv t0, a0

    # Get code for Segment 0
    mv a0, t1
    jal ra, get_code
    mv t1, a0

    # Display data
    slli a1, t0, 8   # Shift the code for Segment 1 to the left by 8 bits
    or a1, a1, t1    # Combine the codes for Segment 1 and Segment 0
                    # a1 = 0x076D

    # System call for display
    li a0, 0x120      # System call number for displaying data
    li a2, 0xFFFF     # Number of characters to display (not specified in the code)
    ecall

    # Restore return address
    mv ra, t2
    ret

# Sub-rutine
# Splits number (0..99) in to individual number (0..9)
# Input:   a0 - Number (0..99)
# Output:  a0 - Tens place (0..9)
#          a1 - Ones place (0..9)
split:
    li a2, 10
    divu a1, a0, a2
    mv t0, a1
    remu a1, a0, a2
    mv a0, t0
    ret

main:
    li t3, 42
loop:
    li a0, 0x122
    ecall

    li a1, 0b01
    beq a0, a1, b0_on

    li a1, 0b10
    beq a0, a1, b1_on

    li a1, 0b11
    beq a0, a1, b01_on

    j update

b0_on:
    addi t3, t3, 1
    j update
b1_on:
    addi t3, t3, -1
    j update
b01_on:
    li t3, 0
update:
    mv a0, t3
    jal ra, split
    jal ra, display
    j loop
