li $t9, '\n'

li $t0, 0 
li $t1, 101
li $t2, 1

loop:

#print integer
li $v0, 1
move $a0, $t2
syscall
#increment
addi $t2, $t2, 1

#print new line
li $v0, 11
move $a0, $t9
syscall

bne $t2, $t1, loop