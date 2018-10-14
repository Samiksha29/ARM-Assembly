   //program for addition of two 64 bits number
        
        .text
        .global main
main:   mov r2,#0xffffffff
        mov r3,#0x00000001
        mov r4,#0xffffffff
        mov r5,#0xff
        adds r0,r2,r4
        adcs r1,r3,r5
        mov r7,#1
        swi 0
        
        /*register are of 32 bit so to store 64 bit value two register
        are require to store 64 bit value.
        r0 contain addition of lower 64 bit and set carry if any
        adcs add with above carry and set cpsr flag if again carry ocur
        swi is and interrupt which check values of r7
	r7 have values from 0-255 each values is for particular function
        to perform on console
        mov r7,#1 ->1 is bit for printing in console
        so using #1 swi prints output on console*/

