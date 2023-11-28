# Memory Segments:
    # https://github.com/ThaumicMekanism/venus/wiki/Memory-Segments

# Assuming the stack starts
    # .data
    # stack_start:
    # .word 0x80000000
 # Initialize the stack pointer
    # la sp, stack_start


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
# Returns display code
# Input:  a0 - Value (0..F)
# Output: a0 - Display code
get_code:
    la a1, table
    add a1, a1, a0
    lb a0, 0(a1)
    ret


display:

    addi sp, sp, -4
    sw ra, 0(sp)

    # display code of `4`
    li a0, 4
    jal ra, get_code
    mv t0, a0       # 0x004F
    slli t0, t0, 8  # 0x4F00

    # display code of `8`
    li a0, 8
    jal ra, get_code
    mv t1, a0 # 0x006D


    li a0, 0x120
    or a1, t0, t1
    li a2, 0xFFFF
    ecall

    lw ra, 0(sp)
    addi sp, sp, 4
    ret


main:

    jal ra, display

    j main

