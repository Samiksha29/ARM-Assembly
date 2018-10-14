        .data
str:    .asciz "yashashri"
        .text
        .global main
main:   stmfd sp!,{lr}
        ldr r0,=str
        mov r1,#0
        mov r5,#8
loop:   cmp r5,r1
        blt end
        ldrb r3,[r0,r1]
        ldrb r4,[r0,r5]
        strb r4,[r0,r1]
        strb r3,[r0,r5]
        sub r5,r5,#1
        add r1,r1,#1
        b loop
end:    bl printf
        mov r0,#0
	ldmfd sp!,{lr}
        mov pc,lr

