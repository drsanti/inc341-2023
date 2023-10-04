
# Standard Instructions vs.Pseudo-Instructions

# Pseudo-Instruction
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


