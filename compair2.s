        .data
a:      .word 10
b:      .word 20
c:      .word 0
        
        .text
        .global main
main:   ldr r1,=a
        ldr r1,[r1]
        ldr r2,=b
        ldr r2,[r2]
        cmp r1,r2
        ldr r0,=c
        movlt r0,#1
        movge r0,#0
        bx lr

