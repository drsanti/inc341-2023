# Deirective
.text
    .globl main	# Entry point

# `add` function
add:
add a0, a0, a1
ret

# `main` function
main:
li a0, 5
li a1, 7
jal ra, add
mv a6, a0


li a0, 5
li a1, 7
jal ra, add
mv a7, a0
nop

