        .data
n:      .word 0
msg:    .asciz "\nEnter no\n"
take:   .asciz "%d"
my:     .word 0
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
                 
end:    cmp r6,r4
        beq exit    
        ldr r0,=take
        ldr r1,[sp,r6,lsl#2]
        bl printf 
	add r6,r6,#1
        b end

exit:   add sp,sp,#20
        mov r0,#0
        ldmfd sp!,{lr}
        mov pc,lr


