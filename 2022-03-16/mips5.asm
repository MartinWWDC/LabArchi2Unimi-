.data
A: .word 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15
H: .word 8
.text 

	lw $s0 H

	la $t0 A
	
	lw $s2 28($t0)
	 