#Programa para calcularo valor de Delta

.data

msg1: .asciiz "Digite o valor de b: "
msg2: .asciiz "Digite o valor de a: "
msg3: .asciiz "Digite o valor de c: "
msg4: .asciiz "Delta vale: "

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
li $v0, 4
la $a0, msg3
syscall
li $v0, 5
syscall
move $t2, $v0

mul $t3,$t0,$t0
mul $t4,$t1,$t2
mul $t5,$t4,4

sub $t6,$t3,$t5

li $v0, 4
la $a0, msg4
syscall
li $v0, 1
la $a0, ($t6)
syscall
li $v0, 10
syscall
