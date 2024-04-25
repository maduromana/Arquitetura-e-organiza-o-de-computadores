.text 
    main:
        li $t0, -2    # a=2
        li $t1, 10   # b=10
        li $t2, 0   # x=0 

        bge $t0, $zero, proximo

            move $a0, $t2
            li $v0, 1
            syscall

            li $v0,10
            syscall

        proximo:
            ble $t1, 50, fim
               move $a0, $t2
            li $v0, 1
            syscall

            li $v0,10
            syscall 


        fim:
            addi $t2, $zero, 1   # x=1

            move $a0, $t2
            li $v0, 1
            syscall

            li $v0,10
            syscall


# Codifique em assembly do mips um programa correspondente a :


#    int a = 2;
#    int b = 10;
#    x = 0;
#    if ( a >= 0 && b <= 50 )
#         x = 1;
#    printf("%i", x);
