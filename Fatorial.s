.data
    resultado: .asciiz "Fatorial: "

.text

main:
   
    li $t0, 1     # fat = 1
    li $t1, 4     # n = 5

for:
  
    ble $t1, 1, sair  # Se n <= 1, sair

    move $t2, $t0          # $t2 = fat 
    li $t3, 0              # resultado da multiplicação

    move $t4, $t1            # $t4 = contador 

fatorial:
    add $t3, $t3, $t2        # Adiciona $t2 a $t3, equivalente a $t3 += fat
    addi $t4, $t4, -1        # Decrementa $t4
    bgt $t4,$zero, fatorial  # Continua se $t4 > 0


    move $t0, $t3          # Atualiza fat 
    addi $t1, $t1, -1      # n--
    j for                 

sair:

    #imprime mensagem resultado
    li $v0, 4             
    la $a0, resultado        
    syscall

    #imprime resultado
    move $a0, $t0          
    li $v0, 1             
    syscall

    #encerra programa 
    li $v0, 10            
    syscall

