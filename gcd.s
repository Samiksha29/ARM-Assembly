        .data
n1:     .word 35
n2:     .word 50
        
        .text
        .global main
main:   
        ldr r1,=n1
        ldr r1,[r1]
        ldr r2,=n2
        ldr r2,[r2]
loop:   cmp r1,r2
        subgt r1,r1,r2
        sublt r2,r2,r1
        bne loop
        mov r0,r1   
        bx lr

    

