.data
string:.asciz "hello string"
        .text
        .global main
main:   mov r7,#4 @system call no to write
        mov r0,#1 @output is the monitor
        ldr r1,=string @get address of string
        mov r2,#12  @legth of string to be printed
        swi 0
exit:   mov r7,#1
        swi 0

