//--------------------------------------------------------------------------------------//
//
// Mendl's Bootstrap
// Created by Rafael Alvarez on January 21, 2025
// Abstract: Mendl's Bootstrap (boot.S) is the first thing that the hardware executes
// in the kernel. This sets up the Swift runtime environment by jumping to Kernel.swift
// 
//--------------------------------------------------------------------------------------//

// - These are notes to the linker. - //

.section ".text.boot"   // Where this code belongs in the compiled binary.
                        // 
.global _start          // This specifies that _start is a name that should
                        // be visible from outside of the assembly file.

// - These are the first instructions of the kernel. - //
