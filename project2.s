.data
input:  .space 1000
output: .asciiz "\nOutput: "		#output
invalid: .asciiz " Invalid Input"	#invalid input
.text
main:
la $a1, input		#stores address of the input
lb $t0, 0($a1)		#reads first byte of the input
beqz $t0, Outputi	#compares if $t0 == 0, j Outputi 

Output:           #prints output
li $v0 ,  4
la $a0 ,  output
syscall

Outputi:          #if input invalid
li $v0 ,  4
la $a0 ,  output
syscall
li $v0, 4 
la $a0,  invalid
syscall
j End

End: 
li $v0, 10
syscall
