        .data
n:      .word 6
fact:   .asciz "The factorial is %d\n"

        .text
        .global main
main:   stmfd sp!,{lr}
        ldr r1,=n
        ldr r1,[r1]     @n
        mov r2,#1       @i
        mov r3,#1       @fact
loop:   cmp r2,r1       @i<=n
        bgt end         @i>n
        mul r3,r3,r2
        add r2,r2,#1
        b loop
end:    mov r1,r3
        ldr r0,=fact
        bl printf
	mov r0,#0
        ldmfd sp!,{lr}
        mov pc,lr
        

/*
#include<stdio.h>
int main()
{
int fact,i,n=5;
for(i=1;i<=n;i++
{
fact=fact*i;
}
printf("%d",fact);
}
*/

