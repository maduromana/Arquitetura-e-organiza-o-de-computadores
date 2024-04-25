.data 
    espaco: .asciiz "\n"
.text 
    main:
        li $t0, 10     # i=0 
        li $t1, 5    # j=10
        li $t2, 0     # k =0 


        while:
            # Verifica condição do loop: i < j
            bge $t0, $t1, sair  # Se i >= j, sair do loop
                addi $t0, $t0, 1     # i++
                addi $t2, $t2, 10    # K+=10

                j while 

        sair:

        move $a0, $t0
        li $v0, 1
        syscall 

        li $v0, 4
        la $a0, espaco
        syscall

        move $a0, $t1
        li $v0, 1
        syscall 

        li $v0, 10
        syscall 
