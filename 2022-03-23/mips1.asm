#s 2-1
.data

msg1: .asciiz "Inserire un numero: "


.text

	li $v0 4 
	la $a0 msg1
	syscall 
	
	li $v0 5
	syscall 
	
	addi $s0 $v0 1
	li $v0 1
	add $a0 $s0 $zero
	syscall 
	
	li $v0 10
	syscall 