        .data
a:      .word 0
b:      .word 0
str:    .asciz "%d%d"
msg:    .asciz"division:%d ,remainder:%d"
        .text
        .global main
main:   stmfd sp!,{lr}
        ldr r0,=str
        ldr r1,=a
        ldr r2,=b
        bl scanf
        ldr r1,=a
        ldr r1,[r1]
        ldr r2,=b
        ldr r2,[r2]     
        mov r3,r2,lsr #1
        mov r4,r1,lsr r3
        mov r3,r4
	mul r4,r4,r2
        sub r1,r1,r4
        mov r2,r1
        mov r1,r3
        ldr r0,=msg
        bl printf
        ldmfd sp!,{lr}
        mov pc,lr


