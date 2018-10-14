        .data
take:   .asciz "%d"     
result: .asciz "%d\t"
n:      .word 0
msg:    .asciz "\nEnter No>>"   
        
        .text
        .global main
main:   stmfd sp!,{lr}
        ldr r0,=msg
        bl printf
        
        ldr r0,=take
        ldr r1,=n
        bl scanf
        ldr r2,=n
        ldr r2,[r2]
        mov r5,#1
        mov r3,#0
loop:   cmp r5,#10
        bgt end
        mul r3,r2,r5
        mov r1,r3
        ldr r0,=result
        bl printf
        ldr r2,=n
        ldr r2,[r2]
        add r5,#1
        b loop

end:    mov r0,#0
        ldmfd sp!,{lr}
        mov pc,lr


