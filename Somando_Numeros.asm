#Exemplo Aula
#Somando N�meros

.data

msg1: .asciiz "Digite um n�mero: "
msg2: .asciiz "Digite outro n�mero: "
msg3: .asciiz "O resultado � "

.text

li $v0, 4	#Imprimw uma vari�vel
la $a0, msg1	#Carrega a vari�vel no $a0
syscall		#Executa
li $v0, 5	#
syscall
move $t0, $v0
li $v0, 4
la $a0, msg2
syscall
li $v0, 5
syscall
move $t1, $v0
add $t2,$t0,$t1
li $v0, 4
la $a0, msg3
syscall
li $v0, 1
la $a0,($t2)
syscall
li $v0, 10
syscall