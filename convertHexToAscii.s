	.data
string: .asciz "Enter the hex number :"
ip: .asciz "%x"
a: .word 0x0
	.text
	.global main

main:
        stmfd sp!,{lr}
        ldr r0,=string
        bl printf
        ldr r0,=ip
        ldr r1,=a
        bl scanf
        ldr r1,=a
        ldr r1,[r1]
        cmp r1,#0x9
        bgt add64
        add r1,r1,#48
        b end
add64:
        add r1,r1,#55
end:    mov r0,r1
        ldmfd sp!,{lr}
        mov pc,lr
