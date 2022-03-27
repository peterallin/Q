SECTIONS
{
    . = 0x0;
    .text : {
        *(interrupt_vectors)
        *(.text)
    }
}