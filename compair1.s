        .data 
a:      .word 10 
b:      .word 20 
c:      .word 15 
x:      .word 0

        .text
        .global main 
main:   ldr r1,=a
        ldr r1,[r1]
        ldr r2,=b
        ldr r2,[r2]
        ldr r3,=c
        ldr r3,[r3]
        ldr r0,=x
        cmp r1,r2
        bge loop
        cmp r1,r3
        bge loop
        mov r0,r1
        bx lr
loop:   cmp r2,r3
        bge loop2
        mov r0,r2
        bx lr
loop2:  mov r0,r3
        bx lr   

