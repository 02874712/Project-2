.input:  .space 1000
output: .asciiz "\nOutput: "		#output
invalid: .asciiz " Invalid Input"	#invalid input
.text
main:
beqz input, Outputi		

Output:
li $v0 ,  4
la $a0 ,  output
syscall

Outputi:
li $v0 ,  4
la $a0 ,  output
syscall
li $v0, 4 
la $a0,  invalid
