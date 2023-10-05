li a0, 0x1234ABCD   # Load immediate value 0x1234ABCD into register a0
mv a1, a0           # Move the value from register a0 to a1
nop                	# No operation (do nothing)




###################################################
## Pseudo Instructions vs. Standard Instructions ##
###################################################



# Pseudo Instructions:
#  - Pseudo-instructions, also known as pseudo-ops or pseudo-operations, are not part of the official RISC-V ISA specification. Instead, they are a feature provided by some RISC-V assemblers and toolchains to simplify programming or improve code readability.
#  - Pseudo-instructions do not have a one-to-one correspondence with hardware instructions in the processor's instruction set. Instead, they are typically translated into one or more standard instructions by the assembler during the assembly process.
#  - Pseudo-instructions are not guaranteed to be supported by all RISC-V toolchains or processors. Their availability and behavior may vary between different RISC-V development environments.
#  - Pseudo-instructions can be useful for simplifying code, making it more readable, or optimizing specific sequences of standard instructions.


# Standard Instructions:
#  - Standard instructions in RISC-V are part of the official ISA specification and are supported by all compliant RISC-V processors.
#  - These instructions are the fundamental building blocks of RISC-V assembly language programming and provide essential operations such as arithmetic, logic, data movement, and control flow.
#  - Standard instructions are designed to be efficiently implemented in hardware, and they have predictable execution times.



# Examples of Pseudo Instructions
#|---------------------|------------------------------------------|----------------------|
#|  Pseudo-Instruction | Description                              | Example Usage        |
#|---------------------|------------------------------------------|----------------------|
#| `li rd, immediate`  | Load immediate value into a register     | `li a0, 42`          |
#| `mv rd, rs`         | Move value from one register to another  | `mv a1, a2`          |
#| `not rd, rs`        | Bitwise negation of a register           | `not a3, a4`         |
#| `neg rd, rs`        | Two's complement negation of a register  | `neg a5, a6`         |
#| `seqz rd, rs`       | Set if equal to zero                     | `seqz a7, a8`        |
#| `snez rd, rs`       | Set if not equal to zero                 | `snez a9, a10`       |
#| `sltz rd, rs`       | Set if less than zero                    | `sltz a11, a12`      |
#| `sgtz rd, rs`       | Set if greater than zero                 | `sgtz a13, a14`      |
#| `j label`           | Unconditional jump to a label            | `j my_label`         |
#| `jr rs`             | Jump to the address in a register        | `jr ra`              |
#| `jalr rd, rs`       | Jump and link to address in a register   | `jalr a15, a16`      |
#| `la rd, label`      | Load address of a label into a register  | `la a17, my_data`    |
#|---------------------|------------------------------------------|----------------------|

# In summary, standard instructions are the core operations directly supported by the hardware,
# while pseudo-instructions are higher-level abstractions provided by the assembler or compiler
# to simplify programming but are translated into standard instructions during the assembly or
# compilation process.
