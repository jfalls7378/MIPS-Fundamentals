.text
.globl main

main:
li $t0, 2
li $t1, 0
li $t2, 100

loop:
 bgt $t0, $t2, print_sum
 
 add $t1, $t1, $t0
 addi $t0, $t0, 2
 j loop
 
print_sum:
 li $v0, 1
 move $a0, $t1
 syscall
 
 li $v0, 11
 li $a0, 10
 syscall
 
 li $v0, 10 
 syscall