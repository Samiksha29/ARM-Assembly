        .data
i:      .word 10
j:      .word 20
k:      .word 30
final:  .asciz"The numbers are:%d\t%d\t%d"

        .text
        .global main

main:   stmfd sp!,{lr}
        ldr r1,=i
        ldr r2,=j
        ldr r3,=k
        ldr r1,[r1]
        ldr r2,[r2]
        ldr r3,[r3]
        ldr r0,=final
        bl printf
        mov r0,#0
	ldmfd sp!,{lr}
        mov pc,lr

