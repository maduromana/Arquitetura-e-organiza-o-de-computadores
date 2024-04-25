.data 
    mensagem: .asciiz "Digite um valor inteiro:"


.text 
    main:

    #imprimir mensagem
    li $v0,4
    la $a0, mensagem
    syscall

    #recebe int do teclado
    li $v0, 5
    syscall

    move $t0, $v0

    li $t1, 10

    beq $t0, $t1, igual 
    li $t2, 0
        move $a0, $t2
        li $v0, 1
        syscall

    igual:
        move $a0, $t1
        #imprimir na tela 
        li $v0, 1
        syscall

    #encerra programa
    li $v0, 10 
    syscall