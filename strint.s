	.data
print:  .asciz"Hello %d\n"

        .text
        .global main 
main:   stmfd sp!,{lr}
        mov r5,#0 
loop:   cmp r5,#9
        bgt end
        mov r1,r5
        ldr r0,=print
        bl printf
        add r5,r5,#1
        b loop

end:    mov r0,#0
        ldmfd sp!,{lr}
        mov pc,lr


