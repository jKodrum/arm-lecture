	.syntax unified
	.arch armv7-a
	.text
	.align 2
	.thumb
	.thumb_func

	.global fibonacci
	.type fibonacci, function

fibonacci:
	@ ADD/MODIFY CODE BELOW
	@ PROLOG
	push {r3, r4, r5, r6, lr}
    mov r3, #-1                 @ r3 = -1
    mov r4, #1                  @ r4 = 1 
    mov r5, #0                  @ r5 = 0
    add r6, r0, #0              @ r6 = r0 + 1

.do_while:
    add r0, r3, r4              @ r0 = r3 + r4
    mov r3, r4                  @ r3 = r4
    mov r4, r0                  @ r4 = r0

    add r5, r5, #1              @ r5++
    cmp r5, r6
    ble .do_while

	pop {r3, r4, r5, r6, pc}		@EPILOG

	@ END CODE MODIFICATION

	.size fibonacci, .-fibonacci
	.end
