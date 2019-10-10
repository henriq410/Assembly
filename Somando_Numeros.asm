#Exemplo Aula
#Somando Números

.data

msg1: .asciiz "Digite um número: "
msg2: .asciiz "Digite outro número: "
msg3: .asciiz "O resultado é "

.text

li $v0, 4	#Imprimw uma variável
la $a0, msg1	#Carrega a variável no $a0
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