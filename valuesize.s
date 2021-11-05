.section .text
.globl _start
_start:
    movw $0b0000000100000010, %bx
    addb %bh, %bl
    movb $0, %bh

    movq %rbx, %rdi

    movq $60, %rax
    syscall
