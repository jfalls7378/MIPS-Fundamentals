# [Setup]
li $t0, 5
li $t1, 6
li $t3, 268500992
li $t4, 268501024
sw $t0, 0($t3)
sw $t1, 0($t4)
# Clear
li $t0, 0
li $t1, 0
li $t3, 0
li $t4, 0
# [Start program]
# Purpose: Pull the two summands from memory, and produce a sum
# and save the sum to memor y
# 0. Load the two imm memory addresses into registers
li $t3, 268500992
li $t4, 268501024
li $t5, 268501056
# 1. Load the two summands from mem and place them into registers
lw $t0, 0($t3)
lw $t1, 0($t4)
# 2. Sum the registers together and place the sum in another register
add $t2, $t0, $t1
# 3. Store the sum into memory
sw $t2, 0($t5)
