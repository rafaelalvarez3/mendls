import MMIO

@RegisterBlock
struct GPIO {
    
    @RegisterBlock(offset: 0x200004)
    var gpfsel1: Register<GPFSEL1>
    
    @RegisterBlock(offset: 0x20001c)
    var gpset0: Register<GPSET0>
    
    @RegisterBlock(offset: 0x200020)
    var gpset1: Register<GPSET1>
    
    @RegisterBlock(offset: 0x200028)
    var gpclr0: Register<GPCLR0>
    
    @RegisterBlock(offset: 0x20002c)
    var gpclr1: Register<GPCLR1>
    
    @RegisterBlock(offset: 0x200034)
    var gplev0: Register<GPLEV0>
    
    @RegisterBlock(offset: 0x200038)
    var gplev1: Register<GPLEV1>
    
    @RegisterBlock(offset: 0x200040)
    var gpeds0: Register<GPEDS0>
    
    @RegisterBlock(offset: 0x200044)
    var gpeds1: Register<GPEDS1>
    
    @RegisterBlock(offset: 0x200064)
    var gphen0: Register<GPHEN0>
    
    @RegisterBlock(offset: 0x200068)
    var gphen1: Register<GPHEN1>
    
}
/* ---------------------------------------------------------------------------------- */
@Register(bitWidth: 32)
struct GPSET0 {
    @ReadWrite(bits: 10..<11, as: Bool.self)
    var set: SET
}

@Register(bitWidth: 32)
struct GPCLR0 {
    @ReadWrite(bits: 10..<11, as: Bool.self)
    var clear: CLEAR
}

@Register(bitWidth: 32)
struct GPSET1 {
    @ReadWrite(bits: 10..<11, as: Bool.self)
    var set: SET
}

@Register(bitWidth: 32)
struct GPCLR1 {
    @ReadWrite(bits: 10..<11, as: Bool.self)
    var clear: CLEAR
}
/* ---------------------------------------------------------------------------------- */
@Register(bitWidth: 32)
struct GPFSEL1 {
    /* GPIO PIN 10 | PHYSICAL PIN 19 */
    @ReadWrite(bits: 0..<1, as: Bool.self)
    var fsel10b1: FSEL10b1
    @ReadWrite(bits: 1..<2, as: Bool.self)
    var fsel10b2: FSEL10b2
    @ReadWrite(bits: 2..<3, as: Bool.self)
    var fsel10b3: FSEL10b3
    
    /* GPIO PIN 11 | PHYSICAL PIN 23 */
    @ReadWrite(bits: 3..<4, as: Bool.self)
    var fsel11b1: FSEL11b1
    @ReadWrite(bits: 4..<5, as: Bool.self)
    var fsel11b2: FSEL11b2
    @ReadWrite(bits: 5..<6, as: Bool.self)
    var fsel11b3: FSEL11b3
    
    /* GPIO PIN 12 | PHYSICAL PIN 32 */
    @ReadWrite(bits: 6..<7, as: Bool.self)
    var fsel12b1: FSEL12b1
    @ReadWrite(bits: 7..<8, as: Bool.self)
    var fsel12b2: FSEL12b2
    @ReadWrite(bits: 8..<9, as: Bool.self)
    var fsel12b3: FSEL12b3
    
    /* GPIO PIN 13 | PHYSICAL PIN 33 */
    @ReadWrite(bits: 9..<10, as: Bool.self)
    var fsel13b1: FSEL13b1
    @ReadWrite(bits: 10..<11, as: Bool.self)
    var fsel13b2: FSEL13b2
    @ReadWrite(bits: 11..<12, as: Bool.self)
    var fsel13b3: FSEL13b3
    
    /* GPIO PIN 14 | PHYSICAL PIN 08 */
    @ReadWrite(bits: 12..<13, as: Bool.self)
    var fsel14b1: FSEL14b1
    @ReadWrite(bits: 13..<14, as: Bool.self)
    var fsel14b2: FSEL14b2
    @ReadWrite(bits: 14..<15, as: Bool.self)
    var fsel14b3: FSEL14b3
    
    /* GPIO PIN 15 | PHYSICAL PIN 10 */
    @ReadWrite(bits: 15..<16, as: Bool.self)
    var fsel15b1: FSEL15b1
    @ReadWrite(bits: 16..<17, as: Bool.self)
    var fsel15b2: FSEL15b2
    @ReadWrite(bits: 17..<18, as: Bool.self)
    var fsel15b3: FSEL15b3
    
    /* GPIO PIN 16 | PHYSICAL PIN 36 */
    @ReadWrite(bits: 18..<19, as: Bool.self)
    var fsel16b1: FSEL16b1
    @ReadWrite(bits: 19..<20, as: Bool.self)
    var fsel16b2: FSEL16b2
    @ReadWrite(bits: 20..<21, as: Bool.self)
    var fsel16b3: FSEL16b3
    
    /* GPIO PIN 17 | PHYSICAL PIN 11 */
    @ReadWrite(bits: 21..<22, as: Bool.self)
    var fsel17b1: FSEL17b1
    @ReadWrite(bits: 22..<23, as: Bool.self)
    var fsel17b2: FSEL17b2
    @ReadWrite(bits: 23..<24, as: Bool.self)
    var fsel17b3: FSEL17b3
    
    /* GPIO PIN 18 | PHYSICAL PIN 12 */
    @ReadWrite(bits: 24..<25, as: Bool.self)
    var fsel18b1: FSEL18b1
    @ReadWrite(bits: 25..<26, as: Bool.self)
    var fsel18b2: FSEL18b2
    @ReadWrite(bits: 26..<27, as: Bool.self)
    var fsel18b3: FSEL18b3

    /* GPIO PIN 19 | PHYSICAL PIN 35 */
    @ReadWrite(bits: 27..<28, as: Bool.self)
    var fsel19b1: FSEL19b1
    @ReadWrite(bits: 28..<29, as: Bool.self)
    var fsel19b2: FSEL19b2
    @ReadWrite(bits: 29..<30, as: Bool.self)
    var fsel19b3: FSEL19b3
    
    /* RESERVED BITS */
    @Reserved(bits: 30..<31)
    
    @Reserved(bits: 31..<32)
    
}
