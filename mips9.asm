.data 
fizz: .asciiz "Fizz"
buzz: .asciiz "Buzz"
newline: .asciiz "\n"

.text 
.globl main

main:
 li $t0, 1 
 li $t1, 100
 
loop: 
 bgt $t0, $t1, done
 #check divisiblity by 15
 li $t2, 15
 div $t0, $t2
 mfhi $t3
 beq $t3, $zero, print_fizzbuzz
  #check divisiblity by 3
  li $t2, 3
 div $t0, $t2
 mfhi $t3
 beq $t3, $zero, print_fizz
  #check divisiblity by 5
  li $t2, 5
 div $t0, $t2
 mfhi $t3
 beq $t3, $zero, print_buzz
 #otherwise print number
 li $v0, 1
 move $a0, $t0 
 syscall
 j print_newline
 
 print_fizzbuzz:
  li $v0, 4
  la $a0, fizz
  syscall
  li $v0, 4
  la $a0, buzz
  syscall
  j print_newline
  
  print_fizz:
  li $v0, 4
  la $a0, fizz
  syscall
  j print_newline
  
  print_buzz:
  li $v0, 4
  la $a0, buzz
  syscall
  j print_newline
  
  print_newline:
  li $v0, 4
  la $a0, newline
  syscall
 
 addi $t0, $t0, 1
 j loop
 
 done: 
 li $v0, 10
 syscall
 
 
