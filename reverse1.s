        .data
left:   .word 0
right:  .word 7
str:    .asciz "samiksha"
        .text
        .global main
main:   stmfd sp!,{lr}
        sub sp,sp,#4
        ldr r1,=left
        ldr r1,[r1]
        ldr r2,=right
        ldr r2,[r2]
        ldr r0,=str

rev:    cmp r1,r2
        bge end
        ldrb r3,[r0,r1]
        strb r3,[sp,#0]
        ldrb r3,[r0,r2]
 	 strb r3,[r0,r1]
        ldrb r3,[sp,#0]
        strb r3,[r0,r2]
        add r4,r1,#1
        sub r2,r2,#1
        bl rev
end:    bl printf
        ldr lr,[sp,#4]
        add sp,sp,#8
        mov r0,#0
	ldmfd sp!,{lr}
        mov pc,lr
 
