.data
    memoria: .space 400 # Reserva espaço para a memória

.text
    .globl main
    
main:
    # Coloca o valor 5 na posição 10 da memória
    li $t0, 10         # $t0 = 10 (índice da memória)
    li $t1, 5          # $t1 = 5 (valor a ser armazenado)
    sw $t1, memoria($t0) # Armazena o valor 5 na posição 10 da memória
    
    # Coloca o valor 20 na posição 40 da memória
    li $t0, 40         # $t0 = 40 (índice da memória)
    li $t1, 20         # $t1 = 20 (valor a ser armazenado)
    sw $t1, memoria($t0) # Armazena o valor 20 na posição 40 da memória
    
    # Soma os conteúdos das posições 10 e 40 da memória e armazena o resultado na posição 100
    lw $t2, memoria(10) # Carrega o valor da posição 10 da memória em $t2
    lw $t3, memoria(40) # Carrega o valor da posição 40 da memória em $t3
    add $t4, $t2, $t3   # Soma $t2 e $t3 e armazena em $t4
    li $t0, 100         # $t0 = 100 (índice da memória)
    sw $t4, memoria($t0) # Armazena o resultado na posição 100 da memória
    
    # Finaliza o programa
    li $v0, 10         # Código do syscall para sair do programa
    syscall