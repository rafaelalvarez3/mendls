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
.section ".text.boot"           //* This specifies that everything defined in boot.S 
                                //* should go in the .text.boot section of the
                                //* binary.
                                //*
.global _start                  //* This specifies that _start is a name that should
                                //* be visible from outside of the assembly file.
                                //* When the kernel is started, execution begins
                                //* at the function _start.
                                //*
//* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
//*
//* These are the first instructions of the kernel. They send 3 of the 4 cores to halt.
//* This effectively shuts them down to simplify the development process.
//*

_start:                         //*
    mrs     x1, mpidr_el1       //* The mrs (move from system register) instruction
    and     x1, x1, #3          //* reads the system register (mpidr_el1) into general    
    cbz     x1, 2f              //* purpose register x1.
                                //*
                                //* The mpidr_el1 (multiprocessor affinity register)
                                //* provides an additional PE (processing element)
                                //* identification mechanism.
                                //* 
                                //* This checks to see if the processor ID is 0,
                                //* so the kernel can execute on the main core.
                                //* 
                                //* 
1:                              //* 
    wfe                         //* 
    b       1b                  //* 
                                //* 
                                //* 
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
