        .data
n:      .word 12
e:      .asciz "The no is even\n"
o:      .asciz "The no is odd\n"

        .text
        .global main
main:   stmfd sp!,{lr}
        ldr r1,=n
        ldr r1,[r1]
        mov r2,#0
loop1:  cmp r2,r1
        bgt odd
        beq even
        add r2,#2
        b loop1
even:   ldr r0,=e
        b print
odd:    ldr r0,=o
	b print
print:  bl printf
        mov r0,#0
        ldmfd sp!,{lr}
        mov pc,lr



