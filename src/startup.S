.section    interrupt_vectors
.global     _start
.thumb

stack:      .word   0x20010000   // just somewhere in RAM for now


_start:
    .word   reset_handler + 1 
    .word   default_handler + 1 
    .word   default_handler + 1 
    .word   default_handler + 1 
    .word   default_handler + 1 
    .word   default_handler + 1 
    .word   default_handler + 1 
    .word   default_handler + 1 

default_handler:
    b       default_handler

reset_handler:
    nop
    nop
    b       reset_handler
