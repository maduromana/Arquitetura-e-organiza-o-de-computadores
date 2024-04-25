.text 
    main:   
        
        #recebe valores
        li $t0, 10 
        li $t1, 20 
        li $t2, 6

        addi $a0, $t0, 4
        sub $a1, $t1, $t2
        sub $t3, $a0, $a1

        move $a0, $t3

        li $v0, 1
        syscall

        li $v0, 10 
        syscall 





#Faça o registrador $t0 e $t1 receberem os valores 10, e 20 respectivamente. E então faça um programa para resolver a seguinte expressão:

# $t3 = ($t0 + 4) - ($t1 - 6)
