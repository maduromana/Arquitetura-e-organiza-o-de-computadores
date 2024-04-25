.data 
    boasVindas: .asciiz "Seja bem vindo! \nPor favor entre com um valor inteiro para pesquisar no vetor\n\n"
    encontrado: .asciiz "Elemento encontrado\n"
    naoEncontrado: .asciiz "Elemento não encontrado\n"

    vetor: .word 3, 0, 1, 2, -6, -2, 4, 10, 3, 7, 8, -9, -15, -20, -87, -100
    
.text 
main:
    li $t3, -100

    #mensagem de oas vindas 
    li $v0, 4
    la $a0, boasVindas
    syscall

    #receber elemento do teclado 
    li $v0, 5
    syscall 

    move $s0, $v0  # $s0 armazena o elemento inserido pelo usuário

    #inicializa $t0 com o endereço base do vetor
    la $t0, vetor
    li $t1, 0  #$t1 é o índice para o loop


    while:

        lw $t2, 0($t0)  # Carrega o elemento atual do vetor em $t2
        beq $t2, $t3, nao
            beq $t2, $s0, sim 
                addiu $t0, $t0, 4     #vai para o proximo elemento 

                j while
        sim:
            li $v0, 4
            la $a0, encontrado
            syscall
           
           j sair

       nao:
            li $v0, 4
            la $a0, naoEncontrado
            syscall

           j sair

    sair:
         #encerra o programa 
            li $v0, 10
            syscall