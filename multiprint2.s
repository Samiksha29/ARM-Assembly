       .data
i:      .word 10
j:      .word 20
k:      .word 30
l:      .word 40
m:      .word 50
n:      .word 60
final:  .asciz"The numbers are:%d\t%d\t%d\t%d\t%d\t%d"

        .text
        .global main

main:   stmfd sp!,{lr}
        ldr r0,=n
        ldr r0,[r0]
        str r0,[sp,#-4]!
        ldr r0,=m
        ldr r0,[r0]
        str r0,[sp,#-4]!
	ldr r0,=l
        ldr r0,[r0]
        str r0,[sp,#-4]!
        ldr r1,=i
        ldr r1,[r1]
        ldr r2,=j
        ldr r2,[r2]
        ldr r3,=k
        ldr r3,[r3]
        ldr r0,=final
        bl printf
        add sp,#12
        mov r0,#0
        ldmfd sp!,{lr}
        mov pc,lr



