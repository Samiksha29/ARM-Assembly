	.data
string:.asciz "helloworld"
        .text
        .global main
main:   mov r7,#4
        ldr r1,=string
        mov r2,#12             @gives no of characterr no to print
exit:   mov r0,#1
        swi 0


