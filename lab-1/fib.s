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
    push {r3, r4, r5, lr}

    mov r3, r0              @ r3 = r0
    mov r4, r1              @ r4 = r1
    mov r5, r2              @ r5 = r2
    cbz r3, .ret_r1         @ if (r3==0) return r1;

    sub r0, r0, #1
    mov r1, r2
    add r2, r4, r5
    bl fibonacci            @ fibonacci (r0-1, r2, r1+r2)
    pop {r3, r4, r5, pc}        @EPILOG

    @ END CODE MODIFICATION
.ret_r1:
    mov r0, r1
    pop {r3, r4, r5, pc}        @ EPILOG

    .size fibonacci, .-fibonacci
    .end
