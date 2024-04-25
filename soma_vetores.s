.data
    vector1: .word 10, 20, 30, 40, 50, 60   # V1
    vector2: .word 0, 10, -15, 16, 20, 30   # V2
    resultVector: .space 24  # Espaço para o vetor resultado (6 elementos * 4 bytes cada)
    msg: .asciiz "A soma dos vetores v0 e v1 é:\n"

.text
    .globl main

main:
    # Imprime mensagem inicial
    li $v0, 4
    la $a0, msg
    syscall

    # Prepara os ponteiros para os vetores
    la $t0, vector1        # Endereço de V1
    la $t1, vector2        # Endereço de V2
    la $t2, resultVector   # Endereço do vetor resultado
    li $t3, 6              # Contador para o loop (6 elementos)

sum_loop:
    # Verifica se o loop deve continuar
    beqz $t3, print_result

    # Carrega elementos de cada vetor
    lw $t4, 0($t0)  # Carrega um elemento de V1
    lw $t5, 0($t1)  # Carrega um elemento de V2

    # Soma os elementos
    add $t6, $t4, $t5

    # Armazena o resultado
    sw $t6, 0($t2)

    # Incrementa os endereços para o próximo elemento
    addiu $t0, $t0, 4
    addiu $t1, $t1, 4
    addiu $t2, $t2, 4

    # Decrementa o contador
    addi $t3, $t3, -1

    # Volta ao início do loop
    j sum_loop

print_result:
    # Configura para imprimir o vetor resultante
    li $t7, 6                 # Contador para o loop de impressão
    la $t2, resultVector      # Reset pointer to the start of resultVector

print_loop:
    beqz $t7, exit_program    # Se contador é 0, termina

    # Carrega o elemento a ser impresso
    lw $a0, 0($t2)

    # Imprime o elemento
    li $v0, 1
    syscall

    # Imprime uma vírgula e espaço, exceto após o último elemento
    li $v0, 4
    la $a0, comma_space
    syscall

    # Incrementa o ponteiro para o próximo elemento
    addiu $t2, $t2, 4

    # Decrementa o contador
    addi $t7, $t7, -1

    # Volta ao início do loop
    j print_loop

exit_program:
    # Finaliza o programa
    li $v0, 10
    syscall

.data
    comma_space: .asciiz ", "
