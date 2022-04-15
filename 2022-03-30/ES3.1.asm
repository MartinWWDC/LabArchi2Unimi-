# far inserire all'utente una sequenza di numeri positivi (o zero) vuole, 
# terminandola con un numero negativo.
# A quel punto, scrivere a schermo il numero di numeri letti.

.data
msg: .asciiz "Inserisci un numero (o neg per uscire):"
msg2: .asciiz " numeri sono stati inseriti."


.text
  li $s1 666
  sw $s1 ($t4)

  li $s1 0   # s1 è il numero di numeri letti
loop:
  li $v0 4
  la $a0 msg
  syscall # OUTPUT DI STRINGA msg

  li $v0 5
  syscall # INPUT DEL NUMERO
  
  move $s0 $v0 # S0 = il numero letto
  
  bltz $s0 fineLoop   # se vale IL CONTRARIO della condizione del while, esci dal loop
  addi $s1 $s1 1  # s1++ (incrementa qui il numero di numeri letti)
  j loop   # avanti con la prossima iterazione!
  
fineLoop:
  li $v0 1
  move $a0 $s1
  syscall  # OUTPUT DI S1
  li $v0 4
  la $a0 msg2
  syscall  # OUTPUT DELLA STRINGA msg2
  
  
  
  
  






