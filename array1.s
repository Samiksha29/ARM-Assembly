        .data
str:    .ascii "No:%d "
str2:   .ascii "%d"
no:     .word
        .text
        .global main
main:   stmfd sp!,{lr}
        mov r7,#1
cmp1:   cmp r7,#10
        bge print
        ldr r0,=str2
        ldr r1,=no
        bl scanf
        ldr r1,=no
        ldr r1,[r1]
        str r1,[sp,r7,asl#2]
        add r7,#1
        bl cmp1
print:  cmp r7,#0
	 ble exit
        ldr r0,=str
        ldr r3,[sp,r7,asl#2]
        mov r1,r3
        bl printf
        sub r7,#1
        bl print
exit:   mov r0,#0
        ldmfd sp!,{lr}
        mov pc,lr

