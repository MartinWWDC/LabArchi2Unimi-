.data
	msg: .asciiz "Inserisci un numero (o neg per uscire):"	
	err: .asciiz "err"
.text 
li $v0 4
la $a0 msg
syscall 

li $v0 5
syscall 

add $s1 $zero $v0 

li $v0 4
la $a0 msg
syscall

li $v0 5
syscall 
add $s2 $zero $v0 

li $v0 4
la $a0 msg
syscall

li $v0 5
syscall 

add $s3 $zero $v0 
bge $s1 $s2 then 
bne $s1 $zero then 

 add $s1 $s1 $s2
 mul $s1 $s1 $s3
	
j end
then: 
li $v0 4
la $a0 err
syscall
end: # resto del programma…

