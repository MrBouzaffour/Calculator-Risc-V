        .equ SYS_exit,          93
        .equ SYS_printInt,      244
        .equ SYS_readInt,       245
        .equ SYS_printChar,     246
        .equ SYS_readChar,      247
        .equ SYS_printStr,      248
        .equ SYS_readStr,       249
        .equ NL,        '\n'


.section .rodata

welcomePrompt:  .string "Welcome To Calculator Select an option :"
addPrompt:      .string "1 - Addtion"
subPrompt:      .string "2 - Substraction"
divPrompt:      .string "3 - Devision"
mulPrompt:      .string "4 - Multiplication"
exit_program:   .string "5 - Exit"
firstNumberPrompt:      .string "Enter the first number : "
secondNumberPrompt:     .string "Enter the second number : "
outputPrompt:   .string "The result is : "

.section .data
        option: .word 0



.section .text
        .globl _start

_start:
        # Printing the welcome prompt
        la a0, welcomePrompt
        li a7, SYS_printStr
        ecall

        li a0, NL               # print newline character
        li a7, SYS_printChar
        ecall

options:
        # Printing the addition prompt
        la a0, addPrompt
        li a7, SYS_printStr
        ecall

        li a0, NL               # print newline character
        li a7, SYS_printChar
        ecall

        # Printing the subtraction prompt
        la a0, subPrompt
        li a7, SYS_printStr
        ecall

        li a0, NL               # print newline character
        li a7, SYS_printChar
        ecall

        # Printing the multiplication prompt
        la a0, mulPrompt
        li a7, SYS_printStr
        ecall

        li a0, NL               # print newline character
        li a7, SYS_printChar
        ecall

        la a0, divPrompt
        li a7, SYS_printStr
        ecall

        li a0, NL               # print newline character
        li a7, SYS_printChar
        ecall

        la a0, exit_program
        li a7, SYS_printStr
        ecall

        li a0, NL               # print newline character
        li a7, SYS_printChar
        ecall

        # Reading options

        li a7, SYS_readInt
        ecall
        mv s3, a0

ask_input:
        li t0, 1
        li t1, 2
        li t2, 3
        li t3, 4
        li t4, 5

        beq s3, t4, exit
        # Getting the first Number
        la a0, firstNumberPrompt
        li a7, SYS_printStr
        ecall

        li a0, NL               # print newline character
        li a7, SYS_printChar
        ecall

        li a7, SYS_readInt # Getting the inputs
        ecall
        mv a1, a0

        # Getting the second Number

        la a0, secondNumberPrompt
        li a7, SYS_printStr
        ecall

        li a0, NL               # print newline character
        li a7, SYS_printChar
        ecall

        li a7, SYS_readInt # Getting the inputs
        ecall
        mv a2, a0

        li t0, 1
        li t1, 2
        li t2, 3
        li t3, 4
        li t4, 5

        beq s3, t0,add
        beq s3, t1,sub
        beq s3, t2,mul
        beq s3, t3,div

add:

        add a0, a1, a2          #add the two numbers
        mv a1, a0

        la a0, outputPrompt     #print the output message
        li a7, SYS_printStr
        ecall

        mv a0, a1

        li a7, SYS_printInt     #print the output
        ecall

        li a0, NL               # print newline character
        li a7, SYS_printChar
        ecall

        j options
sub:
        sub a0, a1,a2
        mv a1,a0
        la a0, outputPrompt     #print the output message
        li a7, SYS_printStr
        ecall

        mv a0, a1

        li a7, SYS_printInt     #print the output
        ecall

        li a0, NL               # print newline character
        li a7, SYS_printChar
        ecall

        j options
mul:
        mul a0, a1, a2
        mv a1, a0

        la a0, outputPrompt     #print the output message
        li a7, SYS_printStr
        ecall

        mv a0, a1

        li a7, SYS_printInt     #print the output
        ecall

        li a0, NL               # print newline character
        li a7, SYS_printChar
        ecall

        j options
div:
        div a0, a1, a2
        mv a1, a0
        la a0, outputPrompt     #print the output message
        li a7, SYS_printStr
        ecall

        mv a0, a1

        li a7, SYS_printInt     #print the output
        ecall

        li a0, NL               # print newline character
        li a7, SYS_printChar
        ecall

        j options
exit:
        li a7, SYS_exit
        li a0, 0
        ecall    
