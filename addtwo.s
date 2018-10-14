        .data 
n1:     .word 2 
n2:     .word 3 
sum:    .asciz "sum : %d"
        .text
        .global main 
main:   stmfd sp!,{lr}
        ldr r1,=n1
        ldr r1,[r1]
        ldr r2,=n2
        ldr r2,[r2]
        add r0,r1,r2
        ldr r0,=sum
        bl printf
        mov r0,#0
        ldmfd sp!,{lr}
        mov pc,lr

