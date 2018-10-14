       .data
msg:    .asciz "enter string %s"
        .text
        .global main
main:   
        ldr r0,=msg
        bl scanf
        mov r0,#0
        mov r1,#5
reverse:cmp r0,r1
        bge end
        stmfd sp!,{lr}
        ldrb r3,[r0]
        ldrb ip,[r1]
        strb ip,[r0]
        strb r3,[r1]
        add r0,r0,#1
        sub r1,r1,#1
        bl reverse
          ldmfd sp!,{lr}
end:    mov pc,lr

