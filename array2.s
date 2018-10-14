        .data
limit:  .word 50
        .text
        .global main
main:   stmfd sp!,{lr}
        ldr r1,=limit
        ldr r1,[r1]
        mov r2,#0
loop:   cmp r2,r1
        bgt end
        mov r0,r2
        bl printf
        add r2,r2,#1
        blt loop
end:    mov r0,#0
        ldmfd sp!,{lr}
        mov pc,lr
