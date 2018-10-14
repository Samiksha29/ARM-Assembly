       .data
take:   .asciz "%d"
n:      .word 
msg:    .asciz "\nEnter number>>"
found:  .asciz"\nYes,number is armstrong"
notFound:.asciz "\nNo,number is not a armstrong"

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
        mov r2,#10
	mov r3,#0
        mov r5,#0
        mov r4,#1
        
loop:   cmp r1,#0
        ble compair
        b div
div:    cmp r1,r2
        blt mul1
        sub r1,r1,r2
        add r3,r3,#1
        b div
mul1:   mul r4,r1,r1
        mul r4,r4,r1
        b add1
add1:   add r5,r5,r4
        mov r1,r3
        mov r2,#10
        mov r4,#1
        mov r3,#0
	b loop
compair:ldr r2,=n
        ldr r2,[r2]
        cmp r2,r5
        beq correct
        b  notCorrect

correct:ldr r0,=found
        bl printf
        b end
        
notCorrect:ldr r0,=notFound
        bl printf
        b end

end:    mov r0,#0
        ldmfd sp!,{lr}
        mov pc,lr



