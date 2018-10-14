        .data
take:   .asciz "%d"
n:      .word 
str1:   .asciz "\nPrime"
str2:   .asciz "\nNot prime"
msg:    .asciz "\nEnter Number"
        .text
        .global main
main:   stmfd sp!,{lr}
        ldr r0,=msg
        bl printf
        
        ldr r0,=take
        ldr r1,=n
        bl scanf
        ldr r1,=n
        ldr r1,[r1]
        mov r2,#1
        mov r3,#2
        ldr r4,=n
        ldr r4,[r4]
loop:   cmp r1,r2 
        blt end
        b divide

divide:cmp r1,r3
        blt confirm
        sub r1,r1,r3
        b divide

confirm:
        cmp r1,#0
        bne addit
        cmp r3,r4
        beq found
        b notfound

addit:  add r2,r2,#1
        add r3,r3,#1    
        ldr r1,=n
        ldr r1,[r1]
        ldr r4,=n
        ldr r4,[r4]
        b loop

found:  ldr r0,=str1
        bl printf
	b exit 
	
notfound:ldr r0,=str2
        bl printf
        b exit

exit:   mov r0,#0
        ldmfd sp!,{lr}
        mov pc,lr

