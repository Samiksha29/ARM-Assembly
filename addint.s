        .data
n1:     .word 10
n2:     .word 20
s:      .word 0
sum:    .asciz "the sum is %d+%d=%d\n"
        .text
        .global main
add:    add r3,r2,r1
        b end

main:   stmfd sp!,{lr}
        ldr r1,=n1
        ldr r1,[r1]
        ldr r2,=n2
        ldr r2,[r2]
        ldr r3,=s
        ldr r3,[r3]
        bl add


