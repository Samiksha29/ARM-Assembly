        .data
n:      .word 4
fib:    .asciz "fib :%d\n"
        .text
        .global main
main:   stmfd sp!,{lr}
        ldr r4,=n
        ldr r4,[r4]
        mov r1,#0
        mov r2,#1
        mov r3,#1
        cmp r4,#0
        beq ans1 
loop:   cmp r3,r4
        bge ans2
        add r2,r2,r1
        sub r1,r2,r1
        add r3,#1
        b loop
ans1:   mov r1,#0
        b end 
ans2:   mov r1,r2
        b end
end:    ldr r0,=fib
        bl printf
        mov r0,#0
        ldmfd sp!,{lr}
        mov pc,lr


