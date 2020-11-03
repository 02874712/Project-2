.data
output: .asciiz "\nOutput: "
.text
main:
li $v0 ,  4
la $a0 ,  output
syscall
