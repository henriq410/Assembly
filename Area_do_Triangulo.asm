#Calculo da Área do Tringulo

.data

msg1: .asciiz "Digite a base: "
msg2: .asciiz "Digite a altura: "
msg3: .asciiz "A área do triangulo é: "

.text

li $v0, 4
la $a0, msg1
syscall
li $v0, 5
syscall
move $t0, $v0
li $v0, 4
la $a0, msg2
syscall
li $v0, 5
syscall
move $t1, $v0
mul $t2,$t1,$t0
li $t5, 2	
div $t3,$t2,$t5
li $v0, 4
la $a0, msg3
syscall
li $v0, 1
la $a0, ($t3)
syscall
li $v0, 10
syscall