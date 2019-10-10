#Calcular Área do Retângulo

.data

base: .asciiz "Base: "
altura: .asciiz "Altura: "
area: .asciiz "Área do Retângulo: "

.text

li $v0, 4 	#Imprime uma variável String
la $a0, base 	#$a0 recebe a String da variável
syscall 	#Executa
li $v0, 5	#Lê número Inteiro
syscall
move $t0, $v0 	#Limpa o valor de $v0
li $v0, 4
la $a0, altura
syscall
li $v0, 5
syscall
move $t1, $v0
mul $t2,$t1,$t0
li $v0, 4
la $a0, area
syscall
li $v0, 1	#Imprime um inteiro
la $a0, ($t2)
syscall
li $v0, 10 	#Finaliza o Programa
syscall

