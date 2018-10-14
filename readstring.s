.data
string:.asciz ""
        .text
        .global main
main:
_read:    mov r7,#3
         mov r0,#0
         mov r2,#5
         ldr r1,=string
         swi 0
_write:   mov r7,#4 
         mov r0,#1
         ldr r1,=string
         mov r2,#12     
         swi 0
exit:    mov r7,#1
         swi 0

