       .data
a:      .word 5
b:      .word 10
c:      .word 0

        .text
        .global main
main:   ldr r1,=a
        ldr r1,[r1]
        ldr r2,=b
        ldr r2,[r2]
        ldr r0,=c
        cmp r1,r2
        bge loop
        mov r0,#1
        bx lr
loop:   mov r0,#0
        bx lr


