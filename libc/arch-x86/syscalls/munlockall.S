/* autogenerated by gensyscalls.py */
#include <sys/linux-syscalls.h>

    .text
    .type munlockall, @function
    .globl munlockall
    .align 4

munlockall:
    movl    $__NR_munlockall, %eax
    int     $0x80
    cmpl    $-129, %eax
    jb      1f
    negl    %eax
    pushl   %eax
    call    __set_errno
    addl    $4, %esp
    orl     $-1, %eax
1:
    ret
