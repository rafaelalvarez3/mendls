//* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
//*
//* Mendl's Bootstrap
//* Created by Rafael Alvarez on January 21, 2025
//* Abstract: Mendl's Bootstrap (boot.S) is the first thing that the hardware executes
//* in the kernel. This sets up the Swift runtime environment by jumping to Kernel.swift
//* 

//* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
//*
//* These are notes to the linker.
//* 
                                //*
.section ".text.boot"           //* This specifies where this code belongs in the 
                                //* compiled binary.
                                //* 
.global _start                  //* This specifies that _start is a name that should
                                //* be visible from outside of the assembly file.
                                //* 

//* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
//*
//* These are the first instructions of the kernel. They send 3 of the 4 cores to halt.
//* This effectively shuts them down to simplify the development process.
//*

_start:                         //*
    mrs     x1, mpidr_el1       //* The mrs (move from system register) instruction
    and     x1, x1, #3          //* reads the system register into a general purpose    
    cbz     x1, 2f              //* register.
                                //*
                                //* The mpidr_el1 (multiprocessor affinity register)
                                //* provides an additional PE (processing element)
                                //* identification mechanism.
                                //* 
                                //* This checks to see if the processor ID is 0,
                                //* so the kernel can execute on the main core.
                                //* Otherwise it will hang.
                                //*
1:                              //*
    wfe                         //* We are not executing on the main core, so the
    b       1b                  //* kernel will hang in an infinite wait loop.
                                //* Once the kernel makes it to the next instruction,
                                //* it will be executing on the main core.
                                //*
2:
    ldr     x1, =_start
    mov     sp, x1
    
    ldr     x1, =__bss_start
    ldr     w2, =__bss_size

3:
    cbz     w2, 4f
    str     xzr, [x1], #8
    sub     w2, w2, #1
    cbnz    w2, 3b

4:
    bl      main
    b       1b
