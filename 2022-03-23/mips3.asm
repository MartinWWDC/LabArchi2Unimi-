.data


.text
	#s0 <- 1*3
	li $s0 1
	li $t0 3
	
	mult $s0 $t0
	mflo $s0  
	#Push  $s0
	
	addi $sp $sp -4
	sw $s0 0($sp)
	#s0 <- 2*3
	li $s0 2
	li $t0 3
	
	mult $s0 $t0
	mflo $s0  
	
	#Push  $s0
	
	addi $sp $sp -4
	sw $s0 0($sp)
	
	#s0 <- 3*3
	li $s0 3
	li $t0 3
	
	mult $s0 $t0
	mflo $s0  
	
	#pop $t0
	lw $t0 0($sp)
	addi $sp $sp 4
	
	add $s0 $t0 $s0 
	lw $t0 0($sp)
	addi $sp $sp 4
	
	add $s0 $t0 $s0 
	
	
	
	li $v0 1
	addi $a0 $s0 0
	syscall 
	
	li $v0 10
	syscall 