        .data
n:      .word 40
        
        .text   
        .global main
main:   ldr r1,=n
        ldr r1,[r1]
        mov r2,r1,asr #4
        mov r0,r2
        bx lr

/*asr #1 divide element by 2
asr #2 divide element by 4
*/


