.data
    str: .asciiz "Digite um numero: "

.text
    main: 

    #imprime mensagem para o usuario 
    li $v0,4
    la $a0, str
    syscall 

    #le valor interio 
    li $v0, 5
    syscall

    move $t0, $v0  #move pata t0 o valor lido e armazenado em $v0

    move $t1, $zero

    while:

        bgt $t1, $t0, saida

        # se $t1 não foir igual a $t0, imprime o valor e $t1++
            li $v0,1
            move $a0, $t1
             syscall 

            addi $t1, $t1, 1
           
           j while

    saida:
        li $v0, 10
        syscall