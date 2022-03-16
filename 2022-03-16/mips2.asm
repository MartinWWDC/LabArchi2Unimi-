.data
A: .word 4
B: .word 25
C: .word 6
D: .word 3
E: .word 2

.text
	lw $s1 C
	lw $s2 B
	add $s0 $s1 $s2
	
	lw $s1 D
	lw $s2 E
	add $s1 $s1 $s2
	
	sub $t0 $s0 $s1
	
	sw $t0 A