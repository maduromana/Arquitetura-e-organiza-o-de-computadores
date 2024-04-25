.text
main:
    li $t0, 3    # a=3
    li $t1, 4    # b=4
    li $t2, 10   # m = 10 

    move $t2,$t0 # m = a0

    blt $t1, $t1, true
        move $a0, $t2

        li $v0,1
        syscall
        
    #encerrar programa 
    li $v0, 10 
    syscall


    true:
        move $t2, $t1

        move $a0, $t2

        li $v0,1
        syscall

    #encerrar programa 
    li $v0, 10 
    syscall