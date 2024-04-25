.text 
    main:

        li $t0, 15
        li $t1, 30 

        add $t3, $t0, $t1

        move $a0, $t3

        li $v0, 1
        syscall

        #encerrar
        li $v0, 10 
        syscall 



# Faça o registrador $t0 e $t1 receberem os valores 15, e 30 respectivamente. 
# E então faça um programa para somar $t0 e $1, jogando o resultado da soma em $t3.