import MMIO

@RegisterBlock
struct GPIO {
    
    @RegisterBlock(offset: 0x200000)
    var gpfsel0: Register<GPFSEL0>
    
    @RegisterBlock(offset: 0x200004)
    var gpfsel1: Register<GPFSEL1>
    
    @RegisterBlock(offset: 0x200008)
    var gpfsel2: Register<GPFSEL2>
    
    @RegisterBlock(offset: 0x20000c)
    var gpfsel3: Register<GPFSEL3>
    
    @RegisterBlock(offset: 0x200010)
    var gpfsel4: Register<GPFSEL4>
    
    @RegisterBlock(offset: 0x200014)
    var gpfsel5: Register<GPFSEL5>
    
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
    
    @RegisterBlock(offset: 0x20004c)
    var gpren0: Register<GPREN0>
    
    @RegisterBlock(offset: 0x200050)
    var gpren1: Register<GPREN1>
    
    @RegisterBlock(offset: 0x200058)
    var gpfen0: Register<GPFEN0>
    
    @RegisterBlock(offset: 0x20005c)
    var gpfen1: Register<GPFEN1>
    
    @RegisterBlock(offset: 0x200064)
    var gphen0: Register<GPHEN0>
    
    @RegisterBlock(offset: 0x200068)
    var gphen1: Register<GPHEN1>
    
    @RegisterBlock(offset: 0x200070)
    var gplen0: Register<GPLEN0>
    
    @RegisterBlock(offset: 0x200074)
    var gplen1: Register<GPLEN1>
    
    @RegisterBlock(offset: 0x20007c)
    var gparen0: Register<GPAREN0>
    
    @RegisterBlock(offset: 0x200080)
    var gparen1: Register<GPAREN1>
    
    @RegisterBlock(offset: 0x200088)
    var gpafen0: Register<GPAFEN0>
    
    @RegisterBlock(offset: 0x20008c)
    var gpafen1: Register<GPAFEN1>
    
    @RegisterBlock(offset: 0x2000e4)
    var gpio_pup_pdn_cntrl_reg0: Register<GPIO_PUP_PDN_CNTRL_REG0>
    
    @RegisterBlock(offset: 0x2000e8)
    var gpio_pup_pdn_cntrl_reg1: Register<GPIO_PUP_PDN_CNTRL_REG1>
    
    @RegisterBlock(offset: 0x2000ec)
    var gpio_pup_pdn_cntrl_reg2: Register<GPIO_PUP_PDN_CNTRL_REG2>
    
    @RegisterBlock(offset: 0x2000f0)
    var gpio_pup_pdn_cntrl_reg3: Register<GPIO_PUP_PDN_CNTRL_REG3>
    
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
    /* GPIO PIN 10 | PHYSICAL PIN xx */
    @ReadWrite(bits: 0..<1, as: Bool.self)
    var fsel10b1: FSEL10b1
    @ReadWrite(bits: 1..<2, as: Bool.self)
    var fsel10b2: FSEL10b2
    @ReadWrite(bits: 2..<3, as: Bool.self)
    var fsel10b3: FSEL10b3
    
    /* GPIO PIN 11 | PHYSICAL PIN xx */
    @ReadWrite(bits: 3..<4, as: Bool.self)
    var fsel11b1: FSEL11b1
    @ReadWrite(bits: 4..<5, as: Bool.self)
    var fsel11b2: FSEL11b2
    @ReadWrite(bits: 5..<6, as: Bool.self)
    var fsel11b3: FSEL11b3
    
    /* GPIO PIN 12 | PHYSICAL PIN xx */
    @ReadWrite(bits: 6..<7, as: Bool.self)
    var fsel12b1: FSEL12b1
    @ReadWrite(bits: 7..<8, as: Bool.self)
    var fsel12b2: FSEL12b2
    @ReadWrite(bits: 8..<9, as: Bool.self)
    var fsel12b3: FSEL12b3
    
    /* GPIO PIN 13 | PHYSICAL PIN xx */
    @ReadWrite(bits: 9..<10, as: Bool.self)
    var fsel13b1: FSEL13b1
    @ReadWrite(bits: 10..<11, as: Bool.self)
    var fsel13b2: FSEL13b2
    @ReadWrite(bits: 11..<12, as: Bool.self)
    var fsel13b3: FSEL13b3
    
    /* GPIO PIN 14 | PHYSICAL PIN xx */
    @ReadWrite(bits: 12..<13, as: Bool.self)
    var fsel14b1: FSEL14b1
    @ReadWrite(bits: 13..<14, as: Bool.self)
    var fsel14b2: FSEL14b2
    @ReadWrite(bits: 14..<15, as: Bool.self)
    var fsel14b3: FSEL14b3
    
    /* GPIO PIN 15 | PHYSICAL PIN xx */
    @ReadWrite(bits: 15..<16, as: Bool.self)
    var fsel15b1: FSEL15b1
    @ReadWrite(bits: 16..<17, as: Bool.self)
    var fsel15b2: FSEL15b2
    @ReadWrite(bits: 17..<18, as: Bool.self)
    var fsel15b3: FSEL15b3
    
    /* GPIO PIN 16 | PHYSICAL PIN xx */
    @ReadWrite(bits: 18..<19, as: Bool.self)
    var fsel16b1: FSEL16b1
    @ReadWrite(bits: 19..<20, as: Bool.self)
    var fsel16b2: FSEL16b2
    @ReadWrite(bits: 20..<21, as: Bool.self)
    var fsel16b3: FSEL16b3
    
    /* GPIO PIN 17 | PHYSICAL PIN  */
    @ReadWrite(bits: 21..<22, as: Bool.self)
    var fsel17b1: FSEL17b1
    @ReadWrite(bits: 22..<23, as: Bool.self)
    var fsel17b2: FSEL17b2
    @ReadWrite(bits: 23..<24, as: Bool.self)
    var fsel17b3: FSEL17b3
    
    /* GPIO PIN 18 | PHYSICAL PIN  */
    @ReadWrite(bits: 24..<25, as: Bool.self)
    var fsel18b1: FSEL18b1
    @ReadWrite(bits: 25..<26, as: Bool.self)
    var fsel18b2: FSEL18b2
    @ReadWrite(bits: 26..<27, as: Bool.self)
    var fsel18b3: FSEL18b3

    /* GPIO PIN 19 | PHYSICAL PIN  */
    @ReadWrite(bits: 27..<28, as: Bool.self)
    var fsel19b1: FSEL19b1
    @ReadWrite(bits: 28..<29, as: Bool.self)
    var fsel19b2: FSEL19b2
    @ReadWrite(bits: 29..<30, as: Bool.self)
    var fsel19b3: FSEL19b3
    
    // Bits 31:30 are reserved.
}
/* ---------------------------------------------------------------------------------- */
@Register(bitWidth: 32)
struct GPFSEL2 {
    /* GPIO PIN 20 | PHYSICAL PIN 38 */
    @ReadWrite(bits: 0..<1, as: Bool.self)
    var fsel20b1: FSEL20b1
    @ReadWrite(bits: 1..<2, as: Bool.self)
    var fsel20b2: FSEL20b2
    @ReadWrite(bits: 2..<3, as: Bool.self)
    var fsel20b3: FSEL20b3
    
    /* GPIO PIN 21 | PHYSICAL PIN 40 */
    @ReadWrite(bits: 3..<4, as: Bool.self)
    var fsel21b1: FSEL21b1
    @ReadWrite(bits: 4..<5, as: Bool.self)
    var fsel21b2: FSEL21b2
    @ReadWrite(bits: 5..<6, as: Bool.self)
    var fsel21b3: FSEL21b3
    
    /* GPIO PIN 22 | PHYSICAL PIN 15 */
    @ReadWrite(bits: 6..<7, as: Bool.self)
    var fsel22b1: FSEL22b1
    @ReadWrite(bits: 7..<8, as: Bool.self)
    var fsel22b2: FSEL22b2
    @ReadWrite(bits: 8..<9, as: Bool.self)
    var fsel22b3: FSEL22b3
    
    /* GPIO PIN 23 | PHYSICAL PIN 16 */
    @ReadWrite(bits: 9..<10, as: Bool.self)
    var fsel23b1: FSEL23b1
    @ReadWrite(bits: 10..<11, as: Bool.self)
    var fsel23b2: FSEL23b2
    @ReadWrite(bits: 11..<12, as: Bool.self)
    var fsel23b3: FSEL23b3
    
    /* GPIO PIN 24 | PHYSICAL PIN 18 */
    @ReadWrite(bits: 12..<13, as: Bool.self)
    var fsel24b1: FSEL24b1
    @ReadWrite(bits: 13..<14, as: Bool.self)
    var fsel24b2: FSEL24b2
    @ReadWrite(bits: 14..<15, as: Bool.self)
    var fsel24b3: FSEL24b3
    
    /* GPIO PIN 25 | PHYSICAL PIN 22 */
    @ReadWrite(bits: 15..<16, as: Bool.self)
    var fsel25b1: FSEL25b1
    @ReadWrite(bits: 16..<17, as: Bool.self)
    var fsel25b2: FSEL25b2
    @ReadWrite(bits: 17..<18, as: Bool.self)
    var fsel25b3: FSEL25b3
    
    /* GPIO PIN 26 | PHYSICAL PIN 37 */
    @ReadWrite(bits: 18..<19, as: Bool.self)
    var fsel26b1: FSEL26b1
    @ReadWrite(bits: 19..<20, as: Bool.self)
    var fsel26b2: FSEL26b2
    @ReadWrite(bits: 20..<21, as: Bool.self)
    var fsel26b3: FSEL26b3
    
    /* GPIO PIN 27 | PHYSICAL PIN  */
    @ReadWrite(bits: 21..<22, as: Bool.self)
    var fsel27b1: FSEL27b1
    @ReadWrite(bits: 22..<23, as: Bool.self)
    var fsel27b2: FSEL27b2
    @ReadWrite(bits: 23..<24, as: Bool.self)
    var fsel27b3: FSEL27b3
    
    /* GPIO PIN 28 | PHYSICAL PIN  */
    @ReadWrite(bits: 24..<25, as: Bool.self)
    var fsel28b1: FSEL28b1
    @ReadWrite(bits: 25..<26, as: Bool.self)
    var fsel28b2: FSEL28b2
    @ReadWrite(bits: 26..<27, as: Bool.self)
    var fsel28b3: FSEL28b3

    /* GPIO PIN 29 | PHYSICAL PIN  */
    @ReadWrite(bits: 27..<28, as: Bool.self)
    var fsel29b1: FSEL29b1
    @ReadWrite(bits: 28..<29, as: Bool.self)
    var fsel29b2: FSEL29b2
    @ReadWrite(bits: 29..<30, as: Bool.self)
    var fsel29b3: FSEL29b3
    
    // Bits 31:30 are reserved.
}
/* ---------------------------------------------------------------------------------- */

