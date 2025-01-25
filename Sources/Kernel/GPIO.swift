import MMIO

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



@RegisterBlock
struct GPIO {
  @RegisterBlock(offset: 0x20001c)
  var gpset0: Register<GPSET0>
  @RegisterBlock(offset: 0x200028)
  var gpclr0: Register<GPCLR0>
  @RegisterBlock(offset: 0x200008)
  var gpfsel2: Register<GPFSEL2>
}

/* GPIO PIN 25 | PHYSICAL PIN 22 */

@Register(bitWidth: 32)
struct GPFSEL2 {
  @ReadWrite(bits: 15..<16, as: Bool.self)
  var fsel25b1: FSEL25b1
  @ReadWrite(bits: 16..<17, as: Bool.self)
  var fsel25b2: FSEL25b2
  @ReadWrite(bits: 17..<18, as: Bool.self)
  var fsel25b3: FSEL25b3
}
