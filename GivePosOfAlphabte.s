        .data
take:   .asciz "%c"
alpha:  .word 0
msg:    .asciz "\nEnter alphabte\n"
pos:    .asciz "position:%d"
temp:   .asciz "%d"
        .text

        .global main
main:   stmfd sp!,{lr}
        ldr r0,=msg
        bl printf
        
        ldr r0,=take
        ldr r1,=alpha
        bl scanf
        ldr r7,=alpha
        ldr r7,[r7]   
        cmp r7,#97
        blt capital
        sub r7,r7,#97
        add r1,r7,#1
        ldr r0,=pos
        bl printf
	b end

capital:sub r5,r7,#65
        add r1,r5,#1
         ldr r0,=pos
        bl printf
        
end:
        mov r0,#0
        ldmfd sp!,{lr}
        mov pc,lr



