.data
     str: .asciiz "Fornceça um numero:"
     par: .asciiz "O numero é par !"
     impar: .asciiz "O numero é impar !"

.text 
    main:
        
        #imprimir mensagem para o usuario 
        li $v0,4
        la $a0, str
        syscall 

        #ler numero do usuario 
        li $v0, 5
        syscall 

        move $t0, $v0

        li $t1, 2

        div $t0, $t1  #divide o valor de t0 por t1

        #valor inteiro vai para lo e resto hi 

        mfhi $t2  #$t2 rece o resto da divisão por 2 

        beq $t2, $zero, imprimepar  #se resto foir = a zero, pule para imprimepar 
               #imprimir mensagem para o usuario 
               li $v0,4
               la $a0, impar
               syscall 

               #encerrar o programa 
               li $v0, 10 
               syscall 

        imprimepar: 
            #imprimir mensagem para o usuario 
            li $v0,4
            la $a0, par
            syscall 

           




