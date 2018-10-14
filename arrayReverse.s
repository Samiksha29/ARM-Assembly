        .data
n:      .word 0
msg:    .asciz "\nEnter no\n"
take:   .asciz "%d"
my:     .word 0
sum:    .asciz"sum:%d"
        .text
        .global main
        

main:   stmfd sp!,{lr}
        ldr r0,=take
        ldr r1,=n
        bl scanf
        
        ldr r5,=n
        ldr r5,[r5]
        sub sp,sp,#20
        ldr r0,=msg
	 bl printf
        mov r4,#0
        mov r6,#0
        sub r8,r5,#1

loop:   cmp r4,r5
        beq end
        ldr r0,=take
        ldr r1,=my
        bl scanf
          ldr r1,=my
        ldr r1,[r1]
        str r1,[sp,r4,lsl #2]
        add r4,#1
        b loop
        
end:    cmp r8,#0
        blt exit
        ldr r0,=take
        ldr r1,[sp,r8,lsl#2]
	bl printf
        sub r8,r8,#1
        b end

exit:   add sp,sp,#20
	 mov r0,#0
        ldmfd sp!,{lr}
        mov pc,lr



